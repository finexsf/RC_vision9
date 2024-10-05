RICHBEAM LakiBeam 1

基础教程：  
https://wiki.richbeam.com/zh_CN/  
资源下载：  
https://www.richbeam.com/download/  
LakiBeam ROS1 Drvier:  
https://github.com/RichbeamTechnology/Lakibeam_ROS1_Driver  

通过 USB Type-C （而非网线）连接时：  
launch文件中更改 LiDAR IP 为 192.168.8.2  
![图片](https://github.com/user-attachments/assets/14600c64-ff6d-493b-bea5-04407d744f96)

在终端run LaserScan node：roslaunch lakibeam1 lakibeam1_scan.launch  
新开一个终端输入 rviz  
fixedname 中的 map 改称 laser  
![图片](https://github.com/user-attachments/assets/d9c2a384-56f0-4bd6-9f9f-b74d826fa330)

最后会看到雷达点云图：  
![图片](https://github.com/user-attachments/assets/f25092ca-7af6-445a-a5f5-1c996211d2bf)


