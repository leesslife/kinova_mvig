#!/home/ziye01/miniconda3/envs/cg/bin/python3

# *******************************************************************
# Author: Sahand Rezaei-Shoshtari
# Oct. 2019
# Copyright 2019, Sahand Rezaei-Shoshtari, All rights reserved.
# *******************************************************************

import sys
import rospy
import numpy as np
sys.path.append("./")
from read_kinova import mvig_kinova_reader as MR
from jaco_control.utils import robot, planner


if __name__ == '__main__':
   
    jaco = robot.Robot("j2s7s300", False)
    jaco.init_controller()
    jaco.connect_to_robot()

    # init the planner
    planner = planner.Planner("j2s7s300")
    
    planner.init_moveit()
    mr=MR()
    current_mq_pose=mr.read_tool_pose()
    
    START_pos, orientation =current_mq_pose[0:3],current_mq_pose[3:]
    START_pos[2]=START_pos[2]-0.03
    test_traj = planner.plan_moveit(START_pos, orientation, euler_flag=False, time_scale=1.)
   
    jaco.impedance_control(test_traj, sleep_time=1, control_rate=50)
    '''
    starting_position = [4.7, 3.5, 0., 2., 0., 3.5, 0.]
    #starting_position = np.array([[0.4, 0.4, 0.4, 0.4, 0.5, 0.5, 0.5]])
    traj_pos = np.array([[0., 0., 0., 0., 0., 0., 0.]])
    test_freq = np.array([[0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2]])

    test_traj = planner.create_test_traj(traj_pos, test_freq, starting_position, 100, time_step=0.001)

    jaco.impedance_control(test_traj, sleep_time=1, control_rate=50)
    jaco.shutdown_controller()
    '''
    try:
        rospy.spin()
    except KeyboardInterrupt:
        rospy.loginfo("Shutting down aml_controller node")
       
        
