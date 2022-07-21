
# MVIG_Kinova_Control
## platform 
* ubuntu 20.04
* ros noetic

## 轮椅控制
####  激活主机环境，并启动ros服务器

```bash  
export ROS_HOSTNAME=192.168.2.241(本机IP)
export ROS_MASTER_URI=http://192.168.2.241:11311(Master IP ,也就是PC_IP)
cd /home/path_to/kinova_mvig    
source env.sh 
roscore
``` 

#### 激活从机环境
```bash
cd /home/wmrm/lees_ws/  
source env.sh
```

#### 控制接口 
```bash
cd kinova_client/kinovasev/scripts/kinova_server.py
```

#### 运行wheelchair轮椅启动    
```bash
roslaunch wheelchair_pkg wheelchair_controller.launch  
```


## 手臂控制

#### 启动服务
* 首先得激活环境     
```bash
source /top/devel/setup.bash
```
* 启动设备ros服务   
```bash
roslaunch kinovasev kinova_server_mvig.launch
```
* 使用案例
1. 手臂控制案例
```bash
cd /top/src/kinova_client
```
文件1：example.py->kinova_client.py         
手臂控制方法    
文件2：example.py->read_kinova.py    
手臂数据读取方法   

2. 手臂补偿
文件3:rosCompy