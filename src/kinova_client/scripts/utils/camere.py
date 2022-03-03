#!/home/ziye01/miniconda3/envs/cg/bin/python3
from asyncore import read
import rospy

from kinovasev.msg import realsense
import numpy as np

class mvig_CodePose_reader():
    def __init__(self):
        #rospy.init_node('reader_code_pose_infomation', anonymous=True)
        pass

    def read_startid(self):
        pos=rospy.wait_for_message("/kinovasev_server/realsence_aruco",realsense,timeout=10)
        return pos.startid
    
    def read_endid(self):
        pos=rospy.wait_for_message("/kinovasev_server/realsence_aruco",realsense,timeout=10)
        return pos.endid

    def read_startH(self):
        pos=rospy.wait_for_message("/kinovasev_server/realsence_aruco",realsense,timeout=10)
        return np.array([pos.startH[0],pos.startH[1],pos.startH[2],pos.startH[3],
                         pos.startH[4],pos.startH[5],pos.startH[6],pos.startH[7],
                         pos.startH[8],pos.startH[9],pos.startH[10],pos.startH[11],
                         pos.startH[12],pos.startH[13],pos.startH[14],pos.startH[15]])
    
    def read_EndH(self):
        pos=rospy.wait_for_message("/kinovasev_server/realsence_aruco",realsense,timeout=10)
        return np.array([pos.endH[0],pos.endH[1],pos.endH[2],pos.endH[3],
                         pos.endH[4],pos.endH[5],pos.endH[6],pos.endH[7],
                         pos.endH[8],pos.endH[9],pos.endH[10],pos.endH[11],
                         pos.endH[12],pos.endH[13],pos.endH[14],pos.endH[15]])

'''
if __name__=="__main__":
    reader=mvig_pose_reader()
    while True:
        print(reader.read_startH()[11])
        #print(reader.read_endid())
'''