
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

2. 手臂补偿矫正
文件3:rosCompy

3. 手臂最大力控制
```bash
# 力控制设定在如下文件
cd /src/kinovasev/force_max_set.yaml # 单位牛/N
```

也可以在程序过程中进行动态设置
```python
# /src/kinova_client/example2.py
# 状态生成器
RS=RunStatusGenerator()
# 手动强制停止设备启动
RS.Stop()
# 手动重新启动设备，因为设备超过最大力而停止可以使用命令进行重启
RS.Start()
# 手动设定最大力，三个方向
RS.SendMaxForce(max_x=10.0,max_y=10.0,max_z=10.0)
# 查看最大力
pos=RS.getMaxForce()
print(pos)
RS.Start()
```