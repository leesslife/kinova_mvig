;; Auto-generated. Do not edit!


(when (boundp 'kinovasev::kinova_jointvalue)
  (if (not (find-package "KINOVASEV"))
    (make-package "KINOVASEV"))
  (shadow 'kinova_jointvalue (find-package "KINOVASEV")))
(unless (find-package "KINOVASEV::KINOVA_JOINTVALUE")
  (make-package "KINOVASEV::KINOVA_JOINTVALUE"))
(unless (find-package "KINOVASEV::KINOVA_JOINTVALUEREQUEST")
  (make-package "KINOVASEV::KINOVA_JOINTVALUEREQUEST"))
(unless (find-package "KINOVASEV::KINOVA_JOINTVALUERESPONSE")
  (make-package "KINOVASEV::KINOVA_JOINTVALUERESPONSE"))

(in-package "ROS")





(defclass kinovasev::kinova_jointvalueRequest
  :super ros::object
  :slots (_joint_control_mode _joint1 _joint2 _joint3 _joint4 _joint5 _joint6 _joint7 ))

(defmethod kinovasev::kinova_jointvalueRequest
  (:init
   (&key
    ((:joint_control_mode __joint_control_mode) "")
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    ((:joint3 __joint3) 0.0)
    ((:joint4 __joint4) 0.0)
    ((:joint5 __joint5) 0.0)
    ((:joint6 __joint6) 0.0)
    ((:joint7 __joint7) 0.0)
    )
   (send-super :init)
   (setq _joint_control_mode (string __joint_control_mode))
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   (setq _joint3 (float __joint3))
   (setq _joint4 (float __joint4))
   (setq _joint5 (float __joint5))
   (setq _joint6 (float __joint6))
   (setq _joint7 (float __joint7))
   self)
  (:joint_control_mode
   (&optional __joint_control_mode)
   (if __joint_control_mode (setq _joint_control_mode __joint_control_mode)) _joint_control_mode)
  (:joint1
   (&optional __joint1)
   (if __joint1 (setq _joint1 __joint1)) _joint1)
  (:joint2
   (&optional __joint2)
   (if __joint2 (setq _joint2 __joint2)) _joint2)
  (:joint3
   (&optional __joint3)
   (if __joint3 (setq _joint3 __joint3)) _joint3)
  (:joint4
   (&optional __joint4)
   (if __joint4 (setq _joint4 __joint4)) _joint4)
  (:joint5
   (&optional __joint5)
   (if __joint5 (setq _joint5 __joint5)) _joint5)
  (:joint6
   (&optional __joint6)
   (if __joint6 (setq _joint6 __joint6)) _joint6)
  (:joint7
   (&optional __joint7)
   (if __joint7 (setq _joint7 __joint7)) _joint7)
  (:serialization-length
   ()
   (+
    ;; string _joint_control_mode
    4 (length _joint_control_mode)
    ;; float32 _joint1
    4
    ;; float32 _joint2
    4
    ;; float32 _joint3
    4
    ;; float32 _joint4
    4
    ;; float32 _joint5
    4
    ;; float32 _joint6
    4
    ;; float32 _joint7
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_control_mode
       (write-long (length _joint_control_mode) s) (princ _joint_control_mode s)
     ;; float32 _joint1
       (sys::poke _joint1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint2
       (sys::poke _joint2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint3
       (sys::poke _joint3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint4
       (sys::poke _joint4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint5
       (sys::poke _joint5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint6
       (sys::poke _joint6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint7
       (sys::poke _joint7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_control_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_control_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _joint1
     (setq _joint1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint2
     (setq _joint2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint3
     (setq _joint3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint4
     (setq _joint4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint5
     (setq _joint5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint6
     (setq _joint6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint7
     (setq _joint7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass kinovasev::kinova_jointvalueResponse
  :super ros::object
  :slots (_joint_control_result ))

(defmethod kinovasev::kinova_jointvalueResponse
  (:init
   (&key
    ((:joint_control_result __joint_control_result) nil)
    )
   (send-super :init)
   (setq _joint_control_result __joint_control_result)
   self)
  (:joint_control_result
   (&optional (__joint_control_result :null))
   (if (not (eq __joint_control_result :null)) (setq _joint_control_result __joint_control_result)) _joint_control_result)
  (:serialization-length
   ()
   (+
    ;; bool _joint_control_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _joint_control_result
       (if _joint_control_result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _joint_control_result
     (setq _joint_control_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass kinovasev::kinova_jointvalue
  :super ros::object
  :slots ())

(setf (get kinovasev::kinova_jointvalue :md5sum-) "6330034618439aeef98f4199475023e1")
(setf (get kinovasev::kinova_jointvalue :datatype-) "kinovasev/kinova_jointvalue")
(setf (get kinovasev::kinova_jointvalue :request) kinovasev::kinova_jointvalueRequest)
(setf (get kinovasev::kinova_jointvalue :response) kinovasev::kinova_jointvalueResponse)

(defmethod kinovasev::kinova_jointvalueRequest
  (:response () (instance kinovasev::kinova_jointvalueResponse :init)))

(setf (get kinovasev::kinova_jointvalueRequest :md5sum-) "6330034618439aeef98f4199475023e1")
(setf (get kinovasev::kinova_jointvalueRequest :datatype-) "kinovasev/kinova_jointvalueRequest")
(setf (get kinovasev::kinova_jointvalueRequest :definition-)
      "string joint_control_mode
float32 joint1
float32 joint2
float32 joint3
float32 joint4
float32 joint5
float32 joint6
float32 joint7
---
bool joint_control_result
")

(setf (get kinovasev::kinova_jointvalueResponse :md5sum-) "6330034618439aeef98f4199475023e1")
(setf (get kinovasev::kinova_jointvalueResponse :datatype-) "kinovasev/kinova_jointvalueResponse")
(setf (get kinovasev::kinova_jointvalueResponse :definition-)
      "string joint_control_mode
float32 joint1
float32 joint2
float32 joint3
float32 joint4
float32 joint5
float32 joint6
float32 joint7
---
bool joint_control_result
")



(provide :kinovasev/kinova_jointvalue "6330034618439aeef98f4199475023e1")


