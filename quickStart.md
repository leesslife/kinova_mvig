* 开启电源
* 1
* 2


### 打开vscode
### 打开本地vscode
* 打开文件夹
* /home/ziye01/lees_ros/kinova_ws
* 在.bashrc以下内容
### 打开远程vscode 
* 确保连接 
* /home/wmrm/lees_ws
### 
## 运行wheelchair轮椅启动    
```
roslaunch wheelchair_pkg wheelchair_controller.launch    
```
## 加载机器手臂的驱动  
* 启动设备  
```
roslaunch kinova_bringup kinova_robot.launch kinova_robotType:=j2s7s300
roslaunch kinova_gazebo robot_launch.launch kinova_robotType:=j2ss7s300 use_effort_controller:=true  #Gazebo 防真
```

## 加载转接服务器  
```
roslaunch kinovasev kinovs_server_mvig.launch
rosrun kinovasev kinova_server   #开启转接服务器
rosrun kinovasev BiCodePose     # 开启摄像头参数
rosrun kinovasev stop_run_kinova  #开启力控参数

```

## 重力补偿参数
Param[0] = 0.151551
Param[1] = -1.54017
Param[2] = -0.00717283
Param[3] = -0.0367928
Param[4] = -0.0108039
Param[5] = -0.686902
Param[6] = -0.0159635
Param[7] = -0.00536006
Param[8] = -0.0180532
Param[9] = -0.198777
Param[10] = 0.00621983
Param[11] = -0.00177073
Param[12] = 0.0349202
Param[13] = -0.728173
Param[14] = 0.0538721
Param[15] = 0.0209395
Param[16] = 0.0389684
Param[17] = 0.166961
Param[18] = 0.0100823