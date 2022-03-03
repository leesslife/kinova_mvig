#!/home/ziye01/miniconda3/envs/cg/bin/python3
import sys
from time import sleep

from numpy import result_type
#from torch import true_divide
from controller.kinova_client import joint_control_client,finger_control_client,pose_control_client
from controller.torque_control import *

from kinovasev.srv import kinova_jointvalue,kinova_posevalue
from kinovasev.srv import kinova_fingervalue
from kinovasev.srv import kinova_jointvelocity,kinova_posevelocity
from kinovasev.srv import kinova_wheelchair_pose,kinova_wheelchair_velocity

from kinova_msgs.srv import Start,Stop

class jointGenerator():
    def __init__(self):
        pass

    def setJointValues(self,jointlists):
        self.jointlists=jointlists
        kinova_jointvalue.joint_control_mode="degree"
    
    def run(self):
        for i in range(len(self.jointlists)):
            kinova_jointvalue.joint1=self.jointlists[i][0]
            kinova_jointvalue.joint2=self.jointlists[i][1]
            kinova_jointvalue.joint3=self.jointlists[i][2]
            kinova_jointvalue.joint4=self.jointlists[i][3]
            kinova_jointvalue.joint5=self.jointlists[i][4]
            kinova_jointvalue.joint6=self.jointlists[i][5]
            kinova_jointvalue.joint7=self.jointlists[i][6]
            joint_control_client(kinova_jointvalue)  

class CartesianGenerator():
    def __init__(self):
        pass
    
    def setCartesianValues(self,unit="mq",
    poseValues=[0.2114649,-0.26519099,0.49920413,
                0.65122676,0.31574818,0.42213792,
                0.54589969],relative=False):
        self.unit=unit
        self.poseValues=poseValues
        self.relative=relative

    def run(self):
        kinova_posevalue.unit=self.unit
        kinova_posevalue.pose_value=self.poseValues
        kinova_posevalue.relative_=self.relative
        pose_control_client(kinova_posevalue)  

class FingerGenerator():
    def __init__(self):
        pass 

    kinova_fingervalue.unit="percent"    
    kinova_fingervalue.finger_value=[1,1,1]
    kinova_fingervalue.relative_=False  #absolute
    #print(finger_control_client(kinova_fingervalue))

    def setFingerValues(self,unit="percent",values=[0,0,0],relative_=False):
        self.unit=unit
        self.finger_value=values
        self.relative_=relative_
    
    def run(self):
        kinova_fingervalue.unit=self.unit   
        kinova_fingervalue.finger_value=self.finger_value
        kinova_fingervalue.relative_=self.relative_
        finger_control_client(kinova_fingervalue)

class RunStatusGenerator():
    def __init__(self):
        pass

    def Start(self):
        rospy.wait_for_service('/j2s7s300_driver/in/start')
        try:
            start_kinova = rospy.ServiceProxy('/j2s7s300_driver/in/start', Start)
            resp1 = start_kinova()
            return resp1.start_result
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)
        pass

    def Stop(self):
        rospy.wait_for_service('/j2s7s300_driver/in/stop')
        try:
            stop_kinova = rospy.ServiceProxy('/j2s7s300_driver/in/stop', Stop)
            resp1 = stop_kinova()
            return resp1.stop_result
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)
        pass
    
    def getMaxForce(self):
        max_force=rospy.get_param("/kinovasev_server/max_force_constrain")
        return [max_force["force_max_x"],max_force["force_max_y"],max_force["force_max_z"]]

    def SendMaxForce(self,max_x=10.0,max_y=10.0,max_z=10.0):
        rospy.set_param("/kinovasev_server/max_force_constrain/force_max_x",max_x)
        rospy.set_param("/kinovasev_server/max_force_constrain/force_max_y",max_y)
        rospy.set_param("/kinovasev_server/max_force_constrain/force_max_z",max_z)
        pass








