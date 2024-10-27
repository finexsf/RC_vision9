;; Auto-generated. Do not edit!


(when (boundp 'lakibeam1::CustomLaserScan)
  (if (not (find-package "LAKIBEAM1"))
    (make-package "LAKIBEAM1"))
  (shadow 'CustomLaserScan (find-package "LAKIBEAM1")))
(unless (find-package "LAKIBEAM1::CUSTOMLASERSCAN")
  (make-package "LAKIBEAM1::CUSTOMLASERSCAN"))

(in-package "ROS")
;;//! \htmlinclude CustomLaserScan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lakibeam1::CustomLaserScan
  :super ros::object
  :slots (_header _angle_min _angle_max _angle_increment _time_increment _scan_time _range_min _range_max _ranges _intensities _distances _angles _x_coords _y_coords ))

(defmethod lakibeam1::CustomLaserScan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angle_min __angle_min) 0.0)
    ((:angle_max __angle_max) 0.0)
    ((:angle_increment __angle_increment) 0.0)
    ((:time_increment __time_increment) 0.0)
    ((:scan_time __scan_time) 0.0)
    ((:range_min __range_min) 0.0)
    ((:range_max __range_max) 0.0)
    ((:ranges __ranges) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:intensities __intensities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:distances __distances) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:x_coords __x_coords) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_coords __y_coords) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _angle_min (float __angle_min))
   (setq _angle_max (float __angle_max))
   (setq _angle_increment (float __angle_increment))
   (setq _time_increment (float __time_increment))
   (setq _scan_time (float __scan_time))
   (setq _range_min (float __range_min))
   (setq _range_max (float __range_max))
   (setq _ranges __ranges)
   (setq _intensities __intensities)
   (setq _distances __distances)
   (setq _angles __angles)
   (setq _x_coords __x_coords)
   (setq _y_coords __y_coords)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angle_min
   (&optional __angle_min)
   (if __angle_min (setq _angle_min __angle_min)) _angle_min)
  (:angle_max
   (&optional __angle_max)
   (if __angle_max (setq _angle_max __angle_max)) _angle_max)
  (:angle_increment
   (&optional __angle_increment)
   (if __angle_increment (setq _angle_increment __angle_increment)) _angle_increment)
  (:time_increment
   (&optional __time_increment)
   (if __time_increment (setq _time_increment __time_increment)) _time_increment)
  (:scan_time
   (&optional __scan_time)
   (if __scan_time (setq _scan_time __scan_time)) _scan_time)
  (:range_min
   (&optional __range_min)
   (if __range_min (setq _range_min __range_min)) _range_min)
  (:range_max
   (&optional __range_max)
   (if __range_max (setq _range_max __range_max)) _range_max)
  (:ranges
   (&optional __ranges)
   (if __ranges (setq _ranges __ranges)) _ranges)
  (:intensities
   (&optional __intensities)
   (if __intensities (setq _intensities __intensities)) _intensities)
  (:distances
   (&optional __distances)
   (if __distances (setq _distances __distances)) _distances)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:x_coords
   (&optional __x_coords)
   (if __x_coords (setq _x_coords __x_coords)) _x_coords)
  (:y_coords
   (&optional __y_coords)
   (if __y_coords (setq _y_coords __y_coords)) _y_coords)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _angle_min
    4
    ;; float32 _angle_max
    4
    ;; float32 _angle_increment
    4
    ;; float32 _time_increment
    4
    ;; float32 _scan_time
    4
    ;; float32 _range_min
    4
    ;; float32 _range_max
    4
    ;; float32[] _ranges
    (* 4    (length _ranges)) 4
    ;; float32[] _intensities
    (* 4    (length _intensities)) 4
    ;; float32[] _distances
    (* 4    (length _distances)) 4
    ;; float32[] _angles
    (* 4    (length _angles)) 4
    ;; float32[] _x_coords
    (* 4    (length _x_coords)) 4
    ;; float32[] _y_coords
    (* 4    (length _y_coords)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _angle_min
       (sys::poke _angle_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_max
       (sys::poke _angle_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_increment
       (sys::poke _angle_increment (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time_increment
       (sys::poke _time_increment (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _scan_time
       (sys::poke _scan_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _range_min
       (sys::poke _range_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _range_max
       (sys::poke _range_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _ranges
     (write-long (length _ranges) s)
     (dotimes (i (length _ranges))
       (sys::poke (elt _ranges i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _intensities
     (write-long (length _intensities) s)
     (dotimes (i (length _intensities))
       (sys::poke (elt _intensities i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _distances
     (write-long (length _distances) s)
     (dotimes (i (length _distances))
       (sys::poke (elt _distances i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _x_coords
     (write-long (length _x_coords) s)
     (dotimes (i (length _x_coords))
       (sys::poke (elt _x_coords i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y_coords
     (write-long (length _y_coords) s)
     (dotimes (i (length _y_coords))
       (sys::poke (elt _y_coords i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _angle_min
     (setq _angle_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_max
     (setq _angle_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_increment
     (setq _angle_increment (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time_increment
     (setq _time_increment (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _scan_time
     (setq _scan_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _range_min
     (setq _range_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _range_max
     (setq _range_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ranges i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _intensities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intensities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _intensities i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _distances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distances (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distances i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _x_coords
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_coords (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_coords i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y_coords
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_coords (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_coords i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get lakibeam1::CustomLaserScan :md5sum-) "6df6ab43231c4a4d8b1333313d831354")
(setf (get lakibeam1::CustomLaserScan :datatype-) "lakibeam1/CustomLaserScan")
(setf (get lakibeam1::CustomLaserScan :definition-)
      "Header header
float32 angle_min
float32 angle_max
float32 angle_increment
float32 time_increment
float32 scan_time
float32 range_min
float32 range_max
float32[] ranges
float32[] intensities
float32[] distances
float32[] angles
float32[] x_coords
float32[] y_coords
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :lakibeam1/CustomLaserScan "6df6ab43231c4a4d8b1333313d831354")


