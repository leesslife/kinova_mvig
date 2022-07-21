#!/home/ziye01/miniconda3/envs/cg/bin/python3
from pickletools import read_string1
import sys
from time import sleep

import rospy

import numpy as np

from controller.generator import jointGenerator,CartesianGenerator,FingerGenerator
from controller.torque_control import torqueContoller
from controller.read_kinova import mvig_kinova_reader as MR


from utils.camere import mvig_CodePose_reader as MP
from utils.util_mvig import util_tool
from pyquaternion import Quaternion


def ForceConstrainTest():
    CT=CartesianGenerator()
    while True:
        CT.setCartesianValues(unit="mq",poseValues=[-0.573001048,0.13702388,0.41856186,-0.53280586,0.84514296,0.02607311,-0.0342274],relative=False)
        CT.run()
        CT.setCartesianValues(unit="mq",poseValues=[-0.373001048,0.13702388,0.41856186,-0.53280586,0.84514296,0.02607311,-0.0342274],relative=False)
        CT.run()

def DiCodeBeControl():
    rospy.init_node('kinova_mvig_roboot', anonymous=True)
    # 节点控制
    JG=jointGenerator()
    # 力矩控制
    TQ=torqueContoller()
    # 手指控制
    FG=FingerGenerator()
    # 位置控制
    CT=CartesianGenerator()
    # 位置读取与转换工具
    ut=util_tool()

    mp=MP()
    sleep(0.1)
    FG.setFingerValues(values=[100,100,100])
    FG.run()

    CT.setCartesianValues(unit="mq",poseValues=[-0.573001048,0.13702388,0.41856186,-0.53280586,0.84514296,0.02607311,-0.0342274],relative=False)
    CT.run()
    
    kinovaH2E=np.load('./kinovaH2E.npy')
    current_mat=ut.getCurrent_mat()  # x,y,z,qx,qy,qz,qw
    print(current_mat)
    print(kinovaH2E)
    arrayS2T=mp.read_startH().reshape(4,4)
    pose_mvig_S=ut.H2TForMq(current_mat,kinovaH2E,arrayS2T)
    print(pose_mvig_S)
    arrayE2T=mp.read_EndH().reshape(4,4)
    pose_mvig_E=ut.H2TForMq(current_mat,kinovaH2E,arrayE2T)
    print(pose_mvig_E)
    '''
    if mp.read_endid()==2 and  mp.read_startid()==1:
        arrayS2T=mp.read_startH().reshape(4,4)
        pose_mvig_S=ut.H2TForMq(current_mat,kinovaH2E,arrayS2T)

        arrayE2T=mp.read_EndH().reshape(4,4)
        pose_mvig_E=ut.H2TForMq(current_mat,kinovaH2E,arrayE2T)

        CT.setCartesianValues(unit="mq",poseValues=pose_mvig_S,relative=False)
        CT.run()
        sleep(3)
        CT.setCartesianValues(unit="mq",poseValues=pose_mvig_E,relative=False)
        CT.run()
    '''
    
def joint_move_and_grasp_test():
    
    rospy.init_node('kinova_mvig_roboot', anonymous=True)
    # 节点控制
    JG=jointGenerator()
    # 力矩控制
    TQ=torqueContoller()
    # 手指控制
    FG=FingerGenerator()
    # 位置控制
    CT=CartesianGenerator()
    
    #mr=MR()
    #print(mr.read_tool_pose())
    #JG.setJointValues(jointlists=[[283.17,162.78,0.04,43.36,-94.42,257.47,288.01],
    #                              [290.58,169.50,-16.61,62.48,-105.68,221.15,352.01],
    #                              [290.63,203.84,-20.61,45.546,-127.30,241.96,396.33]])
    #JG.run()
    
    
    
    CT.setCartesianValues(unit="mq",poseValues=[-0.573001048,-0.03702388,0.21856186,-0.53280586,0.84514296,0.02607311,-0.0342274],relative=False)
 
    CT.run()
   
    JG.setJointValues(jointlists=[[290.63,203.84,-20.61,45.55,-127.30,241.96,396.33]])
    JG.run()
    

    sleep(0.1)
    FG.setFingerValues(values=[1,1,1])
    FG.run()

    JG.setJointValues(jointlists=[[290.58,169.50,-16.61,62.48,-105.68,221.15,352.01],
                                  [283.17,162.78,0.0372,43.36,-94.422,257.474,288.013],
                                  [283.17,162.78,0.0372,43.36,-94.422,257.474,288.013],
                                  [290.58,169.50,-16.61,62.48,-105.68,221.15,352.01],
                                  [290.63,203.84,-20.61,45.546,-127.30,241.96,396.33],])
    JG.run()
    
    sleep(0.1)
    FG.setFingerValues(values=[90,90,90])
    FG.run()
    
    TQ.handle_cartesian_ForceCmd(force_cmds=[0,0,7,0,0,0],duration_sec=3.0)
    JG.setJointValues(jointlists=[[290.63,203.84,-20.61,45.546,-127.30,241.96,396.33],])
    JG.run()

    sleep(0.1)
    FG.setFingerValues(values=[1,1,1])
    FG.run()
    
    JG.setJointValues(jointlists=[[290.58,169.50,-16.61,62.48,-105.68,221.15,352.01],
                                  [283.17,162.78,0.0372,43.36,-94.422,257.474,288.013]])
    JG.run()


def cartesion_move_test():
    reader=MR()
    pose_np=reader.read_tool_pose()
    print(pose_np)
    # 笛卡尔坐标系控制
    # mq 四元数
    # mrad 弧度
    # mdeg 角度
    CG=CartesianGenerator()
    # 
    CG.setCartesianValues(unit="mq",poseValues=[0.2114649,
                                                -0.26519099,
                                                0.49920413,
                                                0.65122676,
                                                0.31574818,
                                                0.42213792,
                                                0.54589969])
    CG.run()

if __name__ == "__main__":
#    pass
    #joint_move_and_grasp_test()
    #cartesion_move_test()
    #DiCodeBeControl()
    ForceConstrainTest()

   
    