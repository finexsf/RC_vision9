# RICHBEAM LakiBeam 1

基础教程：  
https://wiki.richbeam.com/zh_CN/  
资源下载：  
https://www.richbeam.com/download/  
LakiBeam ROS1 Drvier:  
https://github.com/RichbeamTechnology/Lakibeam_ROS1_Driver  

![图片](https://github.com/user-attachments/assets/fcd2821b-b3b8-4a0b-b11c-79274cdbf7df)  
![图片](https://github.com/user-attachments/assets/8a270d53-69f1-4717-9e4b-a2d195aace45)  

## 通过 USB Type-C （而非网线）连接时：  

更改设置：  
![图片](https://github.com/user-attachments/assets/59d6a9b7-ad3a-45a8-96dd-1931f9cd439a)
![图片](https://github.com/user-attachments/assets/cc868540-2cd8-4cc9-ae24-15299b4e450d)

launch文件中更改 LiDAR IP 为 192.168.8.2  
![图片](https://github.com/user-attachments/assets/14600c64-ff6d-493b-bea5-04407d744f96)

将代理调到 DIRECT ！！！不要上外网

在终端：
```
cd ~/catkin_ws  
catkin_make  
roslaunch lakibeam1 lakibeam1_scan.launch（run LaserScan node）  
新开一个终端输入：rviz  
```

在rviz界面需要改两个地方：  
1.fixedname 中的 map 改称 laser  
2.选择LaserScan
![图片](https://github.com/user-attachments/assets/d9c2a384-56f0-4bd6-9f9f-b74d826fa330)

最后会看到雷达点云图：  
![图片](https://github.com/user-attachments/assets/f25092ca-7af6-445a-a5f5-1c996211d2bf)


