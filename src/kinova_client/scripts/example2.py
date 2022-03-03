#!/home/ziye01/miniconda3/envs/cg/bin/python3
from pickletools import read_string1
import sys
from time import sleep

import rospy

import numpy as np

from controller.generator import RunStatusGenerator


if __name__=="__main__":
    RS=RunStatusGenerator()

    pos=RS.getMaxForce()
    print(pos)

    #RS.Stop()
    #RS.Start()
    RS.SendMaxForce(max_x=30.0,max_y=30.0,max_z=30.0)
    #RS.Start()