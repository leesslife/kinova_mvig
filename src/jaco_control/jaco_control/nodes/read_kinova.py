#!/home/ziye01/miniconda3/envs/cg/bin/python3
import rospy
import numpy as np
from geometry_msgs.msg import PoseStamped
from kinova_msgs.msg import JointAngles
import time 

class mvig_kinova_reader():
    def __init__(self):
        #rospy.init_node('reader_kinova_infomation', anonymous=True)
        pass

    def read_tool_pose(self):
        pos=rospy.wait_for_message("/j2s7s300_driver/out/tool_pose",PoseStamped,timeout=10)
        return np.array([pos.pose.position.x,
                         pos.pose.position.y,
                         pos.pose.position.z,
                         pos.pose.orientation.x,
                         pos.pose.orientation.y,
                         pos.pose.orientation.z,
                         pos.pose.orientation.w])
    
    def read_joint_pose(self):
        angles=rospy.wait_for_message("/j2s7s300_driver/out/joint_angles",JointAngles,timeout=10)
        return np.array([angles.joint1,angles.joint2,
                         angles.joint3,angles.joint4,
                         angles.joint5,angles.joint6,
                         angles.joint7])
'''
if __name__ == '__main__':
    read= mvig_kinova_reader()
    print(read.read_tool_pose())
    print(read.read_joint_pose())
'''  