#!/home/ziye01/miniconda3/envs/cg/bin/python3
from itsdangerous import exc
from numpy import zeros_like
import roslib; roslib.load_manifest('kinova_demo')
import rospy

import actionlib

import kinova_msgs.msg
import geometry_msgs.msg
import tf
import std_msgs.msg
import math
from kinova_msgs.srv import *
import sys
sys.path.append('./')
from kinova_client import joint_control_client,finger_control_client
from torque_control import *
from kinovasev.srv import kinova_jointvalue,kinova_posevalue
from kinovasev.srv import kinova_fingervalue
from kinovasev.srv import kinova_jointvelocity,kinova_posevelocity
from kinovasev.srv import kinova_wheelchair_pose,kinova_wheelchair_velocity
from kinova_msgs.srv import *

def printTorqueVaules(torques):
    print("Torque - {}, {}, {}, {}, {}, {}, {}".format(torques.joint1, 
	                   torques.joint2, torques.joint3, torques.joint4, 
	                   torques.joint5, torques.joint6, torques.joint7))

def ZeroTorque():
    print("torque before setting zero")
    topic_name='/j2s7s300_driver/out/joint_torques'
    sub_once=rospy.Subscriber(topic_name, kinova_msgs.msg.JointAngles, printTorqueVaules)
    rospy.wait_for_message(topic_name, kinova_msgs.msg.JointAngles,timeout=2)
    sub_once.unregister()
    service_address="/j2s7s300_driver/in/set_zero_torques"
    rospy.wait_for_service(service_address)
  
    zeroTorques=rospy.ServiceProxy(service_address,ZeroTorques)
    zeroTorques()

    rospy.sleep(0.5)
    sub_once = rospy.Subscriber(topic_name, kinova_msgs.msg.JointAngles, printTorqueVaules)
    rospy.wait_for_message(topic_name, kinova_msgs.msg.JointAngles, timeout=2)
    sub_once.unregister()

def runCOMParameterEstimation():
    service_address = '/j2s7s300_driver/in/run_COM_parameters_estimation'
    rospy.wait_for_service(service_address)
    try:
        runEstimation = rospy.ServiceProxy(service_address, RunCOMParametersEstimation)
        runEstimation()           
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
        return None
	
if __name__ == '__main__':
    rospy.init_node('torque_compensated_mode')

    kinova_fingervalue.unit="percent" 
    kinova_fingervalue.finger_value=[90,90,90]
    #kinova_fingervalue.finger_value=[0,0,0]
    # kinova_fingervalue.relative_=True #relative
    kinova_fingervalue.relative_=False  #absolute
    print(finger_control_client(kinova_fingervalue))

    #@ control by degree
    kinova_jointvalue.joint_control_mode="degree"
    kinova_jointvalue.joint1=180
    kinova_jointvalue.joint2=180
    kinova_jointvalue.joint3=180
    kinova_jointvalue.joint4=180
    kinova_jointvalue.joint5=180
    kinova_jointvalue.joint6=180
    kinova_jointvalue.joint7=180
    print(joint_control_client(kinova_jointvalue)) 

    ZeroTorque()

    
    runCOMParameterEstimation()
