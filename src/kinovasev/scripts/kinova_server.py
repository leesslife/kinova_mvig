#!/home/ziye01/miniconda3/envs/cg/bin/python3
from __future__ import print_function
import sys

import joints_action_client as JC
import pose_action_client as PC
import fingers_action_client as FC
import rospy

from geometry_msgs.msg import Twist
from geometry_msgs.msg import Pose2D

from kinovasev.srv import kinova_jointvalue,kinova_posevalue
from kinovasev.srv import kinova_jointvelocity,kinova_posevelocity
from kinovasev.srv import kinova_fingervalue
from kinovasev.srv import kinova_wheelchair_pose,kinova_wheelchair_velocity

import kinova_msgs.msg

def handle_joint_value_control(req):
    result=JC.joint_control(unit=req.joint_control_mode,Joint_CMD=[req.joint1,req.joint2,req.joint3,req.joint4,req.joint5,req.joint6,req.joint7])
    return isinstance(result,kinova_msgs.msg._ArmJointAnglesResult.ArmJointAnglesResult)

def handle_pose_value_control(req):
    if req.unit == 'mq':
        if len(req.pose_value) != 7:
            print('Number of input values {} is not equal to 7 (3 position + 4 Quaternion).'.format(len(req.pose_value)))
            sys.exit(0)
    elif (req.unit == 'mrad') | (req.unit == 'mdeg'):
        if len(req.pose_value) != 6:
            print('Number of input values {} is not equal to 6(3 position + 3 EulerAngles).'.format(len(req.pose_value)))
            sys.exit(0)
    else:
        raise Exception('Cartesian value have to be in unit: mq, mdeg or mrad')
    
    PC.getcurrentCartesianCommand("j2s7s300_")
    itemlist=[]
    for i in range(len(req.pose_value)):
        itemlist.append(req.pose_value[i])
    
    pose_mq, pose_mdeg, pose_mrad = PC.unitParser(req.unit, itemlist, req.relative_)
   
    try:   
        poses = [float(n) for n in pose_mq]
        result = PC.cartesian_pose_client(poses[:3], poses[3:])
        return True
    except rospy.ROSInterruptException:
        print("program interrupted before completion")
        return False
    

def handle_finger_value_control(req):
    result=FC.finger_control(unit=req.unit,finger_value=req.finger_value,relative_=req.relative_)
    return isinstance(result,kinova_msgs.msg._SetFingersPositionResult.SetFingersPositionResult)


def handle_joint_velocity_control(req):
    if req.kinova_s<1:
        return False
    pub = rospy.Publisher('/j2s7s300_driver/in/joint_velocity', kinova_msgs.msg.JointVelocity, queue_size=10)
    rate = rospy.Rate(100) # 100hz
    time_cout=0
    while time_cout<req.kinova_s*100:
        jointvelocitylist=kinova_msgs.msg.JointVelocity()
        jointvelocitylist.joint1=req.joint1
        jointvelocitylist.joint2=req.joint2
        jointvelocitylist.joint3=req.joint3
        jointvelocitylist.joint4=req.joint4
        jointvelocitylist.joint5=req.joint5
        jointvelocitylist.joint6=req.joint6
        jointvelocitylist.joint7=req.joint7
        pub.publish(jointvelocitylist)
        time_cout+=1
        rate.sleep()
    return True

def handle_pose_velocity_control(req):
    if req.kinova_s<1:
        return False
    pub = rospy.Publisher('/j2s7s300_driver/in/cartesian_velocity', kinova_msgs.msg.PoseVelocity, queue_size=10)
    rate = rospy.Rate(100) # 100hz
    time_cout=0 
    while time_cout<req.kinova_s*100:
        Posevelocitylist=kinova_msgs.msg.PoseVelocity()
        Posevelocitylist.twist_linear_x=req.t_x
        Posevelocitylist.twist_linear_y=req.t_y
        Posevelocitylist.twist_linear_z=req.t_z
        Posevelocitylist.twist_angular_x=req.ar
        Posevelocitylist.twist_angular_y=req.ap
        Posevelocitylist.twist_angular_z=req.az
        pub.publish(Posevelocitylist)
        time_cout+=1
        print(time_cout)
        rate.sleep()
    return True

def handle_kinova_wheelchair_pose_control(req):
    if req.wheel_ms<100:
        return False
    pub=rospy.Publisher('/wheelchair/cmd_pos',Pose2D,queue_size=30)
    rate = rospy.Rate(1000) # 100hz
    pose2d=Pose2D()
    pose2d.x=req.linear_x
    pose2d.theta=req.theta
    time_cout=0 
    while time_cout<req.wheel_ms:
        pub.publish(pose2d)
        time_cout+=1
        #print(time_cout)
        rate.sleep()
    return True

def handle_kinova_wheelchair_velocity_control(req):
    if req.wheel_ms<100:
        return False
    pub=rospy.Publisher('/wheelchair/cmd_vel',Twist,queue_size=30)
    rate = rospy.Rate(1000) # 100hz
    twist=Twist()
    twist.linear.x=req.v_x
    twist.angular.z=req.v_theta
    time_cout=0 
    while time_cout<req.wheel_ms:
        pub.publish(twist)
        time_cout+=1
        rate.sleep()
    twist.linear.x=0
    twist.angular.z=0
    pub.publish(twist)  
    return True

def joint_server():
    s = rospy.Service('/kinovasev_server/j2s7s300_joint_control_server', kinova_jointvalue,handle_joint_value_control)

def pose_server():
    s = rospy.Service('/kinovasev_server/j2s7s300_pose_control_server',kinova_posevalue,handle_pose_value_control)


def finger_server():
    s= rospy.Service('/kinovasev_server/j2s7s300_finger_control_server',kinova_fingervalue,handle_finger_value_control)


def joint_velocity_server():
    s= rospy.Service('/kinovasev_server/j2s7s300_jointvelocity_control_server',kinova_jointvelocity,handle_joint_velocity_control)


def pose_velocity_server():
    s= rospy.Service('/kinovasev_server/j2s7s300_posevelocity_control_server',kinova_posevelocity,handle_pose_velocity_control)

def wheelchair_pose_control_server():
    s= rospy.Service('/kinovasev_server/wheelchair_pose_control_server',kinova_wheelchair_pose,handle_kinova_wheelchair_pose_control)

def wheelchair_velocity_control_server():
    s= rospy.Service('/kinovasev_server/wheelchair_velocity_control_server',kinova_wheelchair_velocity,handle_kinova_wheelchair_velocity_control)

if __name__ == "__main__":
    rospy.init_node('j2s7s300_control')

    joint_server()

    pose_server()
    
    finger_server()
    
    joint_velocity_server()
    
    pose_velocity_server()
    
    wheelchair_pose_control_server()

    wheelchair_velocity_control_server()

    rospy.spin()