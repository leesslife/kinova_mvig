#!/home/ziye01/miniconda3/envs/cg/bin/python3
from __future__ import print_function
from ntpath import join
    
import sys
import rospy
from kinova_msgs.srv import *
import kinova_msgs.msg
from sensor_msgs.msg import JointState   
import numpy as np

class torqueContoller():
    def __init__(self):
          pass

    def getFeedbackCallback(self,data,args): 
        #generic but joint_state/effort is not published by kinova_driver
        joint_cmd = args[0]
        error_type = args[1]
        max_error = args[2]
        count = args[3]
        for i in range(0,len(joint_cmd)):
            if error_type == 'velocity':
                error = abs(joint_cmd[i] - data.velocity[i]*180/3.1415)
            if error_type == 'torque':
                error = abs(joint_cmd[i] - data.effort[i])     
            if count[0]>50:     
                max_error[i] = max(error,max_error[i])
            count[0] = count[0] +1 

    def getJointTorqueCallback(self,data,args):
        effort = args[0]
        total_effort = args[1]
        for i in range(7):
            effort[i] = data.effort[i]
        total_effort.append(effort)
    # effort = data.effort

    def handle_cartesian_ForceCmd(self,force_cmds, duration_sec):
    
   
        #use service to set torque control parameters	
        service_address = '/j2s7s300_driver/in/set_torque_control_parameters'	
        rospy.wait_for_service(service_address)
        try:
            setTorqueParameters = rospy.ServiceProxy(service_address, SetTorqueControlParameters)
            setTorqueParameters()           
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)
            return None	
    

        #use service to switch to torque control	
        service_address = '/j2s7s300_driver/in/set_torque_control_mode'	
        rospy.wait_for_service(service_address)
        try:
            switchTorquemode = rospy.ServiceProxy(service_address, SetTorqueControlMode)
            switchTorquemode(1)           
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)
            return None	

        #publish cartesian torque commands
        #rospy.init_node("j2s7s300_cartesian_torque_contorller",anonymous=True)
        topic_name = '/j2s7s300_driver/in/cartesian_force'
        pub = rospy.Publisher(topic_name, kinova_msgs.msg.CartesianForce, queue_size=1)
        force = kinova_msgs.msg.CartesianForce()
        force.force_x = force_cmds[0]
        force.force_y = force_cmds[1]
        force.force_z = force_cmds[2]
        force.torque_x = force_cmds[3]
        force.torque_y = force_cmds[4]
        force.torque_z = force_cmds[5]
        count = 0		
        rate = rospy.Rate(4)

        topic_name = '/j2s7s300_driver/out/joint_state'
        effort = [0,0,0,0,0,0,0]
        total_effort = []
        sub = rospy.Subscriber(topic_name, JointState, self.getJointTorqueCallback, (effort, total_effort))

    
        while (count < 4*duration_sec):
            count = count + 1		
            pub.publish(force)
            rate.sleep()

        sub.unregister()
        #print(total_effort)
        np.save('joint_effort_cartesian',total_effort)
        #use service to switch to position control	
        try:           
            switchTorquemode(0)
            return None
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)
            return None

    def handle_joint_ForceCmd(self,jointCmds, duration_sec):	

  
        #use service to set torque control parameters	
        service_address = '/j2s7s300_driver/in/set_torque_control_parameters'	
        rospy.wait_for_service(service_address)
        try:
            setTorqueParameters = rospy.ServiceProxy(service_address, SetTorqueControlParameters)
            setTorqueParameters()           
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)
            return None	
    

        #use service to switch to torque control	
        service_address = '/j2s7s300_driver/in/set_torque_control_mode'	
        rospy.wait_for_service(service_address)
        try:
            switchTorquemode = rospy.ServiceProxy(service_address, SetTorqueControlMode)
            switchTorquemode(1)           
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)
            return None	

        #subscriber to get feedback    
        topic_name = '/j2s7s300_driver/out/joint_state'
        max_error = [0,0,0,0,0,0,0]
        counter = [0]
        sub = rospy.Subscriber(topic_name, JointState, self.getFeedbackCallback, (jointCmds,'torque',max_error,counter))

        topic_name = '/j2s7s300_driver/out/joint_state'
        effort = [0,0,0,0,0,0,0]
        total_effort = []
        sub2 = rospy.Subscriber(topic_name, JointState, self.getJointTorqueCallback, (effort, total_effort))
 
        #publish joint torque commands
        rospy.init_node("j2s7s300_joint_torque_contorller",anonymous=True)
        topic_name = '/j2s7s300_driver/in/joint_torque'
        pub = rospy.Publisher(topic_name, kinova_msgs.msg.JointTorque, queue_size=1)
        jointCmd = kinova_msgs.msg.JointTorque()
        jointCmd.joint1 = jointCmds[0]
        jointCmd.joint2 = jointCmds[1]
        jointCmd.joint3 = jointCmds[2]
        jointCmd.joint4 = jointCmds[3]
        jointCmd.joint5 = jointCmds[4]
        jointCmd.joint6 = jointCmds[5]
        jointCmd.joint7 = jointCmds[6]
        print(jointCmds)
        count = 0		
        rate = rospy.Rate(100)

        while (count<100*duration_sec):		
            pub.publish(jointCmd)
     
            count = count + 1
            rate.sleep()
  
        sub.unregister()
        sub2.unregister()
        #print("max error %f %f %f %f %f %f %f" %(max_error[0], max_error[1], max_error[2], max_error[3], max_error[4], max_error[5], max_error[6]))
        #print(total_effort)
        np.save('joint_effort_joint_5sec',total_effort)
        #use service to switch to position control	
        try:           
            switchTorquemode(0)
            return None
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)
        return None


#if __name__ =="__main__":
  # x,y,z,r,p,y
  # duration_sec=3.0
  #handle_cartesian_ForceCmd(force_cmds=[0,0,0,0,0,0],duration_sec=30.0)
  # joint1-7
  # duration_sec=3.0
  # handle_joint_ForceCmd(jointCmds=[0,0.0,0.0,0.0,0.0,0,0],duration_sec=10.0)
