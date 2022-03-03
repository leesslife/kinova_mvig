;; Auto-generated. Do not edit!


(when (boundp 'jaco_control::InteractionParams)
  (if (not (find-package "JACO_CONTROL"))
    (make-package "JACO_CONTROL"))
  (shadow 'InteractionParams (find-package "JACO_CONTROL")))
(unless (find-package "JACO_CONTROL::INTERACTIONPARAMS")
  (make-package "JACO_CONTROL::INTERACTIONPARAMS"))

(in-package "ROS")
;;//! \htmlinclude InteractionParams.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass jaco_control::InteractionParams
  :super ros::object
  :slots (_center _radius _cut_force_k _cut_force_d _direction _plane ))

(defmethod jaco_control::InteractionParams
  (:init
   (&key
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:radius __radius) 0.0)
    ((:cut_force_k __cut_force_k) 0.0)
    ((:cut_force_d __cut_force_d) 0.0)
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:plane __plane) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _center __center)
   (setq _radius (float __radius))
   (setq _cut_force_k (float __cut_force_k))
   (setq _cut_force_d (float __cut_force_d))
   (setq _direction __direction)
   (setq _plane __plane)
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:cut_force_k
   (&optional __cut_force_k)
   (if __cut_force_k (setq _cut_force_k __cut_force_k)) _cut_force_k)
  (:cut_force_d
   (&optional __cut_force_d)
   (if __cut_force_d (setq _cut_force_d __cut_force_d)) _cut_force_d)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:plane
   (&rest __plane)
   (if (keywordp (car __plane))
       (send* _plane __plane)
     (progn
       (if __plane (setq _plane (car __plane)))
       _plane)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; float64 _radius
    8
    ;; float64 _cut_force_k
    8
    ;; float64 _cut_force_d
    8
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; geometry_msgs/Vector3 _plane
    (send _plane :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cut_force_k
       (sys::poke _cut_force_k (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cut_force_d
       (sys::poke _cut_force_d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; geometry_msgs/Vector3 _plane
       (send _plane :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cut_force_k
     (setq _cut_force_k (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cut_force_d
     (setq _cut_force_d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; geometry_msgs/Vector3 _plane
     (send _plane :deserialize buf ptr-) (incf ptr- (send _plane :serialization-length))
   ;;
   self)
  )

(setf (get jaco_control::InteractionParams :md5sum-) "51a6ad46b6075e569062a950d4a73881")
(setf (get jaco_control::InteractionParams :datatype-) "jaco_control/InteractionParams")
(setf (get jaco_control::InteractionParams :definition-)
      "geometry_msgs/Point center
float64 radius
float64 cut_force_k
float64 cut_force_d
geometry_msgs/Vector3 direction
geometry_msgs/Vector3 plane

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :jaco_control/InteractionParams "51a6ad46b6075e569062a950d4a73881")


