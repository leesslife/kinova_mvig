#!/home/ziye01/miniconda3/envs/cg/bin/python3
from __future__ import print_function
from ntpath import join
    
import sys
import rospy
from kinovasev.srv import kinova_jointvalue,kinova_posevalue
from kinovasev.srv import kinova_fingervalue
from kinovasev.srv import kinova_jointvelocity,kinova_posevelocity
from kinovasev.srv import kinova_wheelchair_pose,kinova_wheelchair_velocity

def joint_control_client(jointvalue):
    rospy.wait_for_service('/kinovasev_server/j2s7s300_joint_control_server')
    try:
        control = rospy.ServiceProxy('/kinovasev_server/j2s7s300_joint_control_server', kinova_jointvalue)
        resp1 = control(jointvalue.joint_control_mode,
                             jointvalue.joint1,
                             jointvalue.joint2,
                             jointvalue.joint3,
                             jointvalue.joint4,
                             jointvalue.joint5,
                             jointvalue.joint6,
                             jointvalue.joint7)
        return resp1
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
    pass
   # j2s7s300_pose_control_server

def pose_control_client(posevalue):
    rospy.wait_for_service('/kinovasev_server/j2s7s300_pose_control_server')
    try:
        control = rospy.ServiceProxy('/kinovasev_server/j2s7s300_pose_control_server', kinova_posevalue)
        resp1 = control(posevalue.unit,
                        posevalue.pose_value,
                        posevalue.relative_)
        return resp1
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
    pass

def finger_control_client(value):
    rospy.wait_for_service('/kinovasev_server/j2s7s300_finger_control_server')
    try:
        control = rospy.ServiceProxy('/kinovasev_server/j2s7s300_finger_control_server', kinova_fingervalue)
        resp1 = control(value.unit,
                        value.finger_value,
                        value.relative_)
        return resp1
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
    pass

def jointvelocity_control_client(value):
    rospy.wait_for_service('/kinovasev_server/j2s7s300_jointvelocity_control_server')
    try:
        control = rospy.ServiceProxy('/kinovasev_server/j2s7s300_jointvelocity_control_server', kinova_jointvelocity)
        resp1 = control(value.joint1,
                        value.joint2,
                        value.joint3,
                        value.joint4,
                        value.joint5,
                        value.joint6,
                        value.joint7,
                        value.kinova_s)
        return resp1
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
    pass


def posevelocity_control_client(value):
    rospy.wait_for_service('/kinovasev_server/j2s7s300_posevelocity_control_server')
    try:
        control = rospy.ServiceProxy('/kinovasev_server/j2s7s300_posevelocity_control_server', kinova_posevelocity)
        resp1 = control(value.t_x,
                        value.t_y,
                        value.t_z,
                        value.ar,
                        value.ap,
                        value.az,
                        value.kinova_s)
        return resp1
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
    pass


def wheelchair_pos_control_client(value):
    rospy.wait_for_service('/kinovasev_server/wheelchair_pose_control_server')
    try:
        control = rospy.ServiceProxy('/kinovasev_server/wheelchair_pose_control_server', kinova_wheelchair_pose)
        resp1 = control(value.linear_x,
                        value.theta,
                        value.wheel_ms)
        return resp1
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
    pass

def wheelchair_velocity_control_client(value):
    rospy.wait_for_service('/kinovasev_server/wheelchair_velocity_control_server')
    try:
        control = rospy.ServiceProxy('/kinovasev_server/wheelchair_velocity_control_server', kinova_wheelchair_velocity)
        resp1 = control(value.v_x,
                        value.v_theta,
                        value.wheel_ms)
        return resp1
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)


#if __name__ == "__main__":
    
    # 通过节点degree来控制机器人
    '''
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
    ''' 

    # 通过节点radian来控制机器人
    
    #@ control by radian
    # kinova_jointvalue.joint_control_mode="radian"
    # kinova_jointvalue.joint1=5.038765550507629
    # kinova_jointvalue.joint2=2.8797932657906435
    # kinova_jointvalue.joint3=0.5235987755982988
    # kinova_jointvalue.joint4=1.7449801861439307
    # kinova_jointvalue.joint5=4.572762640225143
    # kinova_jointvalue.joint6=4.310963252425994
    # kinova_jointvalue.joint7=5.0230575872396805
    # print(joint_control_client(kinova_jointvalue))
    

    # 通过笛卡尔坐标系与四元数来控制机器人，
    # kinova_posevalue.relative=False 为绝对坐标
    # kinova_posevalue.relative=True  为相对坐标
    # @ pose_control by mq  absolute [x,y,z,x,y,z,w]

    # kinova_posevalue.unit="mq"
    # kinova_posevalue.pose_value=[0.134747773409,
    #                              -0.226587498188,
    #                              0.777273201942,
    #                              0.538109779358,
    #                              0.256971508265,
    #                              0.342067360878,
    #                              0.726218640804]
    # kinova_posevalue.relative_=False   #absolute 
    # print(pose_control_client(kinova_posevalue))

    # 相对坐标pos控制
    # @ pose_control by mq  relative 

    # kinova_posevalue.unit="mq"
    # kinova_posevalue.pose_value=[0,
    #                              0,
    #                              0.1,
    #                              0,
    #                              0,
    #                              0,
    #                              1]
    # kinova_posevalue.relative_=True   #relative
    # pose_control_client(kinova_posevalue)
    
    
    # 位置控制
    # x,y,z,r,p,y 欧拉角控制(弧度控制)
    # 绝对位置控制  kinova_posevalue.relative_=False
    # 相对位置控制   kinova_posevalue.relative_=True
    # @ pose_control by mrad  relative  [x,y,z,r,p,y]
    '''
    kinova_posevalue.unit="mrad"
    kinova_posevalue.pose_value=[0.1,
                                 -0.1,
                                 0.1,
                                 -1.5,
                                 -0.0,
                                 0.,]
    kinova_posevalue.relative_=False   #absolute 
    pose_control_client(kinova_posevalue)
    '''

    # 位置控制
    # x,y,z,r,p,y 欧拉角控制(角度控制)
    # 绝对位置控制  kinova_posevalue.relative_=False
    # 相对位置控制   kinova_posevalue.relative_=True
    # @ pose_control by mrad  relative  [x,y,z,r,p,y]
    
    # kinova_posevalue.unit="mdeg"
    # kinova_posevalue.pose_value=[0,
    #                              0,
    #                              0,
    #                              0,
    #                              0,
    #                              0.,]
    # kinova_posevalue.relative_=True   #relative 
    # print(pose_control_client(kinova_posevalue))

    # @ pose_control by mdeg  absolute  [x,y,z,r,p,y]
    # for i in range(3):
    #     kinova_posevalue.unit="mdeg"
    #     kinova_posevalue.pose_value=[0,
    #                                 0,
    #                                 -0.2,
    #                                 0,
    #                                 0,
    #                                 0.,]
    #     kinova_posevalue.relative_=True   #absolute 
    #     print(pose_control_client(kinova_posevalue))

    '''
    # 爪子的控制
    # 单位1：mm   0-？
    # 单位2：turn 0-6800
    # 单位3：percent  0-100
    # kinova_fingervalue.relative_=True #relative
    # kinova_fingervalue.relative_=False  #absolute
    # @ finger_control by turn 0 -6800 mm [0,0,0]
    #######################################
    # kinova_fingervalue.unit="mm"    # 
    #kinova_fingervalue.unit="percent"  #0-100
    kinova_fingervalue.unit="turn"    #0-6800"
    kinova_fingervalue.finger_value=[0,0,0]
    #kinova_fingervalue.finger_value=[0,0,0]
    # kinova_fingervalue.relative_=True #relative
    kinova_fingervalue.relative_=False  #absolute
    print(finger_control_client(kinova_fingervalue))
    '''
    
    # 节点速度控制
 
    # @ jointvelocity by degree/s
    # kinova_jointvelocity.joint1=2
    # kinova_jointvelocity.joint2=2
    # kinova_jointvelocity.joint3=2
    # kinova_jointvelocity.joint4=2
    # kinova_jointvelocity.joint5=2
    # kinova_jointvelocity.joint6=2
    # kinova_jointvelocity.joint7=2
    # # time
    # kinova_jointvelocity.kinova_s=5
    # print(jointvelocity_control_client(kinova_jointvelocity))

    

    
    # 笛卡尔坐标速度控制 
    # @ jointvelocity by degree m/s m/s m/s rad/s rad/s rad/s

    # kinova_posevelocity.t_x=0.05
    # kinova_posevelocity.t_y=0.0
    # kinova_posevelocity.t_z=0.0
    # kinova_posevelocity.ar=-0
    # kinova_posevelocity.ap=0
    # kinova_posevelocity.az=-0.0
    # kinova_posevelocity.kinova_s=10
    # print(posevelocity_control_client(kinova_posevelocity))

    
    # 小车位置控制
    '''
    # @ wheelchair by pos  m  rad
    kinova_wheelchair_pose.linear_x=0.1
    kinova_wheelchair_pose.theta=0
    kinova_wheelchair_pose.wheel_ms=8000
    print(wheelchair_pos_control_client(kinova_wheelchair_pose))
    '''
    

    # 小车速度控制

    # @ wheelchair by pos  m  rad
    # kinova_wheelchair_velocity.v_x=0.02
    # kinova_wheelchair_velocity.v_theta=0.1
    # kinova_wheelchair_velocity.wheel_ms=8000
    # print(wheelchair_velocity_control_client(kinova_wheelchair_velocity))

    
    
    
    

    
   
    