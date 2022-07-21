#!/home/ziye01/miniconda3/envs/cg/bin/python3
from pickletools import read_string1
import sys
from time import sleep

import rospy

import numpy as np

from controller.generator import RunStatusGenerator
from controller.read_kinova import mvig_kinova_reader

if __name__=="__main__":
    RS=RunStatusGenerator()
    #RS.Stop()
    #RS.Start()
    #RS.SendMaxForce(max_x=10.0,max_y=10.0,max_z=10.0)
    pos=RS.getMaxForce()
    print(pos)
    RS.Start()

    reader=mvig_kinova_reader()
    reader.read_joint_pose()

    reader.read_tool_pose()

    reader.read_tool_wrench()