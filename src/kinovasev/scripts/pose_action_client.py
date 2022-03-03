#!/home/ziye01/miniconda3/envs/cg/bin/python3
"""A helper program to test cartesian goals for the JACO and MICO arms."""

import roslib; roslib.load_manifest('kinova_demo')
import rospy

import sys
import numpy as np

import actionlib
import kinova_msgs.msg
import std_msgs.msg
import geometry_msgs.msg


import math
import argparse

""" Global variable """
arm_joint_number = 0
finger_number = 0
prefix = 'j2s7s300_'
finger_maxDist = 18.9/2/1000  # max distance for one finger
finger_maxTurn = 6800  # max thread rotation for one finger
currentCartesianCommand = [0.212322831154, -0.257197618484, 0.509646713734, 1.63771402836, 1.11316478252, 0.134094119072] # default home in unit mq


def cartesian_pose_client(position, orientation):
    """Send a cartesian goal to the action server."""
    action_address = '/j2s7s300_driver/pose_action/tool_pose'
    client = actionlib.SimpleActionClient(action_address, kinova_msgs.msg.ArmPoseAction)
    client.wait_for_server()

    goal = kinova_msgs.msg.ArmPoseGoal()
    goal.pose.header = std_msgs.msg.Header(frame_id=(prefix + 'link_base'))
    goal.pose.pose.position = geometry_msgs.msg.Point(
        x=position[0], y=position[1], z=position[2])
    goal.pose.pose.orientation = geometry_msgs.msg.Quaternion(
        x=orientation[0], y=orientation[1], z=orientation[2], w=orientation[3])

    # print('goal.pose in client 1: {}'.format(goal.pose.pose)) # debug
    client.send_goal(goal)
    
    if client.wait_for_result(rospy.Duration(40.0)):
        return client.get_result()
    else:
        client.cancel_all_goals()
        print('        the cartesian action timed-out')
        return None


def QuaternionNorm(Q_raw):
    qx_temp,qy_temp,qz_temp,qw_temp = Q_raw[0:4]
    qnorm = math.sqrt(qx_temp*qx_temp + qy_temp*qy_temp + qz_temp*qz_temp + qw_temp*qw_temp)
    qx_ = qx_temp/qnorm
    qy_ = qy_temp/qnorm
    qz_ = qz_temp/qnorm
    qw_ = qw_temp/qnorm
    Q_normed_ = [qx_, qy_, qz_, qw_]
    return Q_normed_


def Quaternion2EulerXYZ(Q_raw):
    Q_normed = QuaternionNorm(Q_raw)
    qx_ = Q_normed[0]
    qy_ = Q_normed[1]
    qz_ = Q_normed[2]
    qw_ = Q_normed[3]

    tx_ = math.atan2((2 * qw_ * qx_ - 2 * qy_ * qz_), (qw_ * qw_ - qx_ * qx_ - qy_ * qy_ + qz_ * qz_))
    ty_ = math.asin(2 * qw_ * qy_ + 2 * qx_ * qz_)
    tz_ = math.atan2((2 * qw_ * qz_ - 2 * qx_ * qy_), (qw_ * qw_ + qx_ * qx_ - qy_ * qy_ - qz_ * qz_))
    EulerXYZ_ = [tx_,ty_,tz_]
    return EulerXYZ_


def EulerXYZ2Quaternion(EulerXYZ_):
    tx_, ty_, tz_ = EulerXYZ_[0:3]
    sx = math.sin(0.5 * tx_)
    cx = math.cos(0.5 * tx_)
    sy = math.sin(0.5 * ty_)
    cy = math.cos(0.5 * ty_)
    sz = math.sin(0.5 * tz_)
    cz = math.cos(0.5 * tz_)

    qx_ = sx * cy * cz + cx * sy * sz
    qy_ = -sx * cy * sz + cx * sy * cz
    qz_ = sx * sy * cz + cx * cy * sz
    qw_ = -sx * sy * sz + cx * cy * cz

    Q_ = [qx_, qy_, qz_, qw_]
    return Q_



def getcurrentCartesianCommand(prefix_):
    # wait to get current position
    topic_address = '/j2s7s300_driver/out/cartesian_command'

    rospy.Subscriber(topic_address, kinova_msgs.msg.KinovaPose, setcurrentCartesianCommand)
    rospy.wait_for_message(topic_address, kinova_msgs.msg.KinovaPose)
    print("position listener obtained message for Cartesian pose.")

def setcurrentCartesianCommand(feedback):
    global currentCartesianCommand

    currentCartesianCommand_str_list = str(feedback).split("\n")

    for index in range(0,len(currentCartesianCommand_str_list)):
        temp_str=currentCartesianCommand_str_list[index].split(": ")
        currentCartesianCommand[index] = float(temp_str[1])



def unitParser(unit_, pose_value_, relative_):
    """ Argument unit """
    global currentCartesianCommand

    position_ = pose_value_[:3]
    orientation_ = pose_value_[3:]

    for i in range(0,3):
        if relative_:
            position_[i] = pose_value_[i] + currentCartesianCommand[i]
        else:
            position_[i] = pose_value_[i]

    # print('pose_value_ in unitParser 1: {}'.format(pose_value_))  # debug

    if unit_ == 'mq':
        if relative_:
            orientation_XYZ = Quaternion2EulerXYZ(orientation_)
            orientation_xyz_list = [orientation_XYZ[i] + currentCartesianCommand[3+i] for i in range(0,3)]
            orientation_q = EulerXYZ2Quaternion(orientation_xyz_list)
        else:
            orientation_q = orientation_

        orientation_rad = Quaternion2EulerXYZ(orientation_q)
        orientation_deg = list(map(math.degrees, orientation_rad))

    elif unit_ == 'mdeg':
        if relative_:
            orientation_deg_list = list(map(math.degrees, currentCartesianCommand[3:]))
            orientation_deg = [orientation_[i] + orientation_deg_list[i] for i in range(0,3)]
        else:
            orientation_deg = orientation_

        orientation_rad = list(map(math.radians, orientation_deg))
        orientation_q = EulerXYZ2Quaternion(orientation_rad)

    elif unit_ == 'mrad':
        if relative_:
            orientation_rad_list =  currentCartesianCommand[3:]
            orientation_rad = [orientation_[i] + orientation_rad_list[i] for i in range(0,3)]
        else:
            orientation_rad = orientation_

        orientation_deg = list(map(math.degrees, orientation_rad))
        orientation_q = EulerXYZ2Quaternion(orientation_rad)

    else:
        raise Exception("Cartesian value have to be in unit: mq, mdeg or mrad")

    pose_mq_ = position_ + orientation_q
    pose_mdeg_ = position_ + orientation_deg
    pose_mrad_ = position_ + orientation_rad

    # print('pose_mq in unitParser 1: {}'.format(pose_mq_))  # debug
    # 
    return pose_mq_, pose_mdeg_, pose_mrad_



    


