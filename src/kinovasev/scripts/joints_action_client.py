#!/home/ziye01/miniconda3/envs/cg/bin/python3
"""A helper program to test cartesian goals for the JACO and MICO arms."""

import roslib; roslib.load_manifest('kinova_demo')
import rospy

import sys

import math

import actionlib
import kinova_msgs.msg




def joint_angle_client(angle_set):
    """Send a joint angle goal to the action server."""
    action_address = '/j2s7s300_driver/joints_action/joint_angles'
    client = actionlib.SimpleActionClient(action_address,kinova_msgs.msg.ArmJointAnglesAction)
    client.wait_for_server()

    goal = kinova_msgs.msg.ArmJointAnglesGoal()

    goal.angles.joint1 = angle_set[0]
    goal.angles.joint2 = angle_set[1]
    goal.angles.joint3 = angle_set[2]
    goal.angles.joint4 = angle_set[3]
    goal.angles.joint5 = angle_set[4]
    goal.angles.joint6 = angle_set[5]
    goal.angles.joint7 = angle_set[6]

    client.send_goal(goal)
    if client.wait_for_result(rospy.Duration(100.0)):
        return client.get_result()
    else:
        rospy.loginfo('        the joint angle action timed-out')
        client.cancel_all_goals()
        return None


def unitParser(unit="degree", joint_value=[288.7,165,3,99.98,262,247,287.8]):
    if unit == 'degree':
        joint_degree = joint_value
        joint_radian = list(map(math.radians, joint_degree))
    elif unit == 'radian':
        joint_degree_command = list(map(math.degrees, joint_value))
        joint_degree = joint_degree_command
        joint_radian = list(map(math.radians, joint_degree_command))
    else:
        raise Exception("Joint value have to be in degree, or radian")

    return joint_degree, joint_radian


def joint_control(unit="degree",Joint_CMD=[288.7,165,3,99.98,262,247,287.8]):
    if len(Joint_CMD) != 7:
        print('Number of input values {} is not equal to number of joints {}. Please run help to check number of joints with different robot type.'.format(len(args.joint_value), arm_joint_number))
        sys.exit(0)
    Joint_value=Joint_CMD
    joint_degree, joint_radian = unitParser(unit=unit,joint_value=Joint_value)
    result = joint_angle_client(joint_degree)
    return result

'''
if __name__ == '__main__':

    rospy.init_node('j2s7s300_joint_control')

    #Joint_CMD=[288.7,165,30,99.98,262,247,287.8]
    Joint_CMD=[5.038765550507629, 2.8797932657906435, 0.5235987755982988, 1.7449801861439307, 4.572762640225143, 4.310963252425994, 5.0230575872396805]

    result=joint_control("radian",Joint_CMD)
    print(isinstance(result,kinova_msgs.msg._ArmJointAnglesResult.ArmJointAnglesResult))
'''

  
