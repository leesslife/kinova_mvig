;; Auto-generated. Do not edit!


(when (boundp 'kinovasev::kinova_wheelchair_pose)
  (if (not (find-package "KINOVASEV"))
    (make-package "KINOVASEV"))
  (shadow 'kinova_wheelchair_pose (find-package "KINOVASEV")))
(unless (find-package "KINOVASEV::KINOVA_WHEELCHAIR_POSE")
  (make-package "KINOVASEV::KINOVA_WHEELCHAIR_POSE"))
(unless (find-package "KINOVASEV::KINOVA_WHEELCHAIR_POSEREQUEST")
  (make-package "KINOVASEV::KINOVA_WHEELCHAIR_POSEREQUEST"))
(unless (find-package "KINOVASEV::KINOVA_WHEELCHAIR_POSERESPONSE")
  (make-package "KINOVASEV::KINOVA_WHEELCHAIR_POSERESPONSE"))

(in-package "ROS")





(defclass kinovasev::kinova_wheelchair_poseRequest
  :super ros::object
  :slots (_linear_x _theta _wheel_ms ))

(defmethod kinovasev::kinova_wheelchair_poseRequest
  (:init
   (&key
    ((:linear_x __linear_x) 0.0)
    ((:theta __theta) 0.0)
    ((:wheel_ms __wheel_ms) 0)
    )
   (send-super :init)
   (setq _linear_x (float __linear_x))
   (setq _theta (float __theta))
   (setq _wheel_ms (round __wheel_ms))
   self)
  (:linear_x
   (&optional __linear_x)
   (if __linear_x (setq _linear_x __linear_x)) _linear_x)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:wheel_ms
   (&optional __wheel_ms)
   (if __wheel_ms (setq _wheel_ms __wheel_ms)) _wheel_ms)
  (:serialization-length
   ()
   (+
    ;; float32 _linear_x
    4
    ;; float32 _theta
    4
    ;; int64 _wheel_ms
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linear_x
       (sys::poke _linear_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _wheel_ms
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _wheel_ms (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _wheel_ms) (= (length (_wheel_ms . bv)) 2)) ;; bignum
              (write-long (ash (elt (_wheel_ms . bv) 0) 0) s)
              (write-long (ash (elt (_wheel_ms . bv) 1) -1) s))
             ((and (class _wheel_ms) (= (length (_wheel_ms . bv)) 1)) ;; big1
              (write-long (elt (_wheel_ms . bv) 0) s)
              (write-long (if (>= _wheel_ms 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _wheel_ms s)(write-long (if (>= _wheel_ms 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linear_x
     (setq _linear_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _wheel_ms
#+(or :alpha :irix6 :x86_64)
      (setf _wheel_ms (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _wheel_ms (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass kinovasev::kinova_wheelchair_poseResponse
  :super ros::object
  :slots (_wheelchair_pose_result ))

(defmethod kinovasev::kinova_wheelchair_poseResponse
  (:init
   (&key
    ((:wheelchair_pose_result __wheelchair_pose_result) nil)
    )
   (send-super :init)
   (setq _wheelchair_pose_result __wheelchair_pose_result)
   self)
  (:wheelchair_pose_result
   (&optional (__wheelchair_pose_result :null))
   (if (not (eq __wheelchair_pose_result :null)) (setq _wheelchair_pose_result __wheelchair_pose_result)) _wheelchair_pose_result)
  (:serialization-length
   ()
   (+
    ;; bool _wheelchair_pose_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _wheelchair_pose_result
       (if _wheelchair_pose_result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _wheelchair_pose_result
     (setq _wheelchair_pose_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass kinovasev::kinova_wheelchair_pose
  :super ros::object
  :slots ())

(setf (get kinovasev::kinova_wheelchair_pose :md5sum-) "e89ba642839222e259b78b5b10d919f7")
(setf (get kinovasev::kinova_wheelchair_pose :datatype-) "kinovasev/kinova_wheelchair_pose")
(setf (get kinovasev::kinova_wheelchair_pose :request) kinovasev::kinova_wheelchair_poseRequest)
(setf (get kinovasev::kinova_wheelchair_pose :response) kinovasev::kinova_wheelchair_poseResponse)

(defmethod kinovasev::kinova_wheelchair_poseRequest
  (:response () (instance kinovasev::kinova_wheelchair_poseResponse :init)))

(setf (get kinovasev::kinova_wheelchair_poseRequest :md5sum-) "e89ba642839222e259b78b5b10d919f7")
(setf (get kinovasev::kinova_wheelchair_poseRequest :datatype-) "kinovasev/kinova_wheelchair_poseRequest")
(setf (get kinovasev::kinova_wheelchair_poseRequest :definition-)
      "float32 linear_x
float32 theta
int64 wheel_ms
---
bool wheelchair_pose_result
")

(setf (get kinovasev::kinova_wheelchair_poseResponse :md5sum-) "e89ba642839222e259b78b5b10d919f7")
(setf (get kinovasev::kinova_wheelchair_poseResponse :datatype-) "kinovasev/kinova_wheelchair_poseResponse")
(setf (get kinovasev::kinova_wheelchair_poseResponse :definition-)
      "float32 linear_x
float32 theta
int64 wheel_ms
---
bool wheelchair_pose_result
")



(provide :kinovasev/kinova_wheelchair_pose "e89ba642839222e259b78b5b10d919f7")


