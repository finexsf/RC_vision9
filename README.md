# RICHBEAM LakiBeam 1

免驱，只需要配置好雷达ip即可(网线和USB Type-C两种情况的ip不同)  

基础教程：  
https://wiki.richbeam.com/zh_CN/  
资源下载：  
https://www.richbeam.com/download/  
LakiBeam ROS1 Drvier:  
https://github.com/RichbeamTechnology/Lakibeam_ROS1_Driver  

scan：二维数据  
pcd：三维数据(用在二维雷达上 z=54.32mm)  

![图片](https://github.com/user-attachments/assets/fcd2821b-b3b8-4a0b-b11c-79274cdbf7df)  

ROS自定义的坐标系，和雷达定义的不一样，雷达的ROS驱动适配了ROS的坐标系，把雷达的转换成了 -π~π  
![图片](https://github.com/user-attachments/assets/8a270d53-69f1-4717-9e4b-a2d195aace45)  

以产品底面为参考面，激光出射位置高度为54.32mm  
![图片](https://github.com/user-attachments/assets/ce67751a-d219-4545-b564-bfd66ed1b96f)  

![图片](https://github.com/user-attachments/assets/57ab6955-0dd8-450f-b6df-eee399b6c369)  

## 通过 USB Type-C （而非网线）连接时：  

更改设置：  
![图片](https://github.com/user-attachments/assets/59d6a9b7-ad3a-45a8-96dd-1931f9cd439a)  
![图片](https://github.com/user-attachments/assets/cc868540-2cd8-4cc9-ae24-15299b4e450d)  

launch文件中更改 LiDAR IP 为 192.168.8.2  
![图片](https://github.com/user-attachments/assets/14600c64-ff6d-493b-bea5-04407d744f96)  

roslaunch 一定要将代理调到 DIRECT ！！！不要上外网

终端1：  
``` 
roscore
```
终端2:（run LaserScan node）  
```  
cd catkin_ws  
catkin_make
source ~/catkin_ws/devel/setup.bash
roslaunch lakibeam1 lakibeam1_scan.launch
```
ctrl s 暂停（方便看数据）
ctrl z 继续

rosrun 包名 可执行文件名 --> 运行指定的ROS节点，只启动了1个节点  
roslaunch 包名 launch文件名 --> 执行某个包下的 launch 文件，一次性启动了多个节点  

node ---> 节点  
pkg ----> 功能包(包名)  
type ---> 被运行的节点文件(launch 文件)  
name ---> 节点名  
output -> 设置日志的输出目标  

![图片](https://github.com/user-attachments/assets/130250bf-9a08-4dfa-81b3-e7974252b2d2)   

package.xml 下 <name> 也是包名  
![图片](https://github.com/user-attachments/assets/68d749fe-08cc-4340-845f-4663147e9706)  

## 查看雷达数据  

终端3：  
```
rviz
```

在rviz界面需要改两个地方：  
1.fixedname 中的 map 改称 laser  
![图片](https://github.com/user-attachments/assets/6ffb512d-b430-4095-bb60-beb2b7a0cadb)  

2.选择LaserScan
![图片](https://github.com/user-attachments/assets/d9c2a384-56f0-4bd6-9f9f-b74d826fa330)  

最后会看到雷达点云图：  
![图片](https://github.com/user-attachments/assets/f25092ca-7af6-445a-a5f5-1c996211d2bf)  

终端4：  
```
# 查看除了距离 ranges 和  信号强度 intensities (这两者实时输出,不是定义死的)之外的数据
rostopic echo /scan --noarr -c  
```
-π~π 每个距离间隔的角度是 angle_increment 的数值，即可算出每个距离对应的角度  
total data points: 1440  
![图片](https://github.com/user-attachments/assets/ebe40f3d-ae7f-4cd0-9ef7-9752e871f2fe)  
![图片](https://github.com/user-attachments/assets/51f2193f-03e8-4508-a18f-75c7e79e5e6b)  

终端5：  
```
# 查看雷达完整数据
rostopic echo /scan
(或rostopic echo scan)
```

如果太快了不方便观察数据，可以只看一帧的  
```
rostopic echo /scan -n1
```
![图片](https://github.com/user-attachments/assets/4a7f5ad2-41b4-4c6f-bfb4-2b0c9c761cea)  
![图片](https://github.com/user-attachments/assets/7694dc62-5c49-4242-aaf5-30a1c1f7018c)  
![图片](https://github.com/user-attachments/assets/a847b25d-16cf-43e7-9a77-36808b028760)  
![图片](https://github.com/user-attachments/assets/5cd8e697-6e08-4c7f-a6da-d66cdb133626)  

终端6：  
```
rosmsg info sensor_msgs/LaserScan
```
![图片](https://github.com/user-attachments/assets/1e40fac6-62bd-4d36-a97c-629564116254)

终端7：
```
# 可视化显示计算图  
rqt_graph  
```
![图片](https://github.com/user-attachments/assets/743c66f8-e5db-4c48-ac25-b0e973560735)

```
# 也可查看节点名
rosnode list 
```

打印坐标日志：  
![图片](https://github.com/user-attachments/assets/aecd2a1b-559e-4c4e-8a11-fcd7df6560f3)  

距离-->坐标：极坐标系  
https://www.zhihu.com/question/51777959  
二维激光雷达坐标转换：  
1.直接上网搜  
2.https://zhuanlan.zhihu.com/p/317790911  
