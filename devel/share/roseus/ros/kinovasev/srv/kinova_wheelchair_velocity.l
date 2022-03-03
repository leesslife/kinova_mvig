;; Auto-generated. Do not edit!


(when (boundp 'kinovasev::kinova_wheelchair_velocity)
  (if (not (find-package "KINOVASEV"))
    (make-package "KINOVASEV"))
  (shadow 'kinova_wheelchair_velocity (find-package "KINOVASEV")))
(unless (find-package "KINOVASEV::KINOVA_WHEELCHAIR_VELOCITY")
  (make-package "KINOVASEV::KINOVA_WHEELCHAIR_VELOCITY"))
(unless (find-package "KINOVASEV::KINOVA_WHEELCHAIR_VELOCITYREQUEST")
  (make-package "KINOVASEV::KINOVA_WHEELCHAIR_VELOCITYREQUEST"))
(unless (find-package "KINOVASEV::KINOVA_WHEELCHAIR_VELOCITYRESPONSE")
  (make-package "KINOVASEV::KINOVA_WHEELCHAIR_VELOCITYRESPONSE"))

(in-package "ROS")





(defclass kinovasev::kinova_wheelchair_velocityRequest
  :super ros::object
  :slots (_v_x _v_theta _wheel_ms ))

(defmethod kinovasev::kinova_wheelchair_velocityRequest
  (:init
   (&key
    ((:v_x __v_x) 0.0)
    ((:v_theta __v_theta) 0.0)
    ((:wheel_ms __wheel_ms) 0)
    )
   (send-super :init)
   (setq _v_x (float __v_x))
   (setq _v_theta (float __v_theta))
   (setq _wheel_ms (round __wheel_ms))
   self)
  (:v_x
   (&optional __v_x)
   (if __v_x (setq _v_x __v_x)) _v_x)
  (:v_theta
   (&optional __v_theta)
   (if __v_theta (setq _v_theta __v_theta)) _v_theta)
  (:wheel_ms
   (&optional __wheel_ms)
   (if __wheel_ms (setq _wheel_ms __wheel_ms)) _wheel_ms)
  (:serialization-length
   ()
   (+
    ;; float32 _v_x
    4
    ;; float32 _v_theta
    4
    ;; int64 _wheel_ms
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _v_x
       (sys::poke _v_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_theta
       (sys::poke _v_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _v_x
     (setq _v_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_theta
     (setq _v_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(defclass kinovasev::kinova_wheelchair_velocityResponse
  :super ros::object
  :slots (_wheelchair_velocity_result ))

(defmethod kinovasev::kinova_wheelchair_velocityResponse
  (:init
   (&key
    ((:wheelchair_velocity_result __wheelchair_velocity_result) nil)
    )
   (send-super :init)
   (setq _wheelchair_velocity_result __wheelchair_velocity_result)
   self)
  (:wheelchair_velocity_result
   (&optional (__wheelchair_velocity_result :null))
   (if (not (eq __wheelchair_velocity_result :null)) (setq _wheelchair_velocity_result __wheelchair_velocity_result)) _wheelchair_velocity_result)
  (:serialization-length
   ()
   (+
    ;; bool _wheelchair_velocity_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _wheelchair_velocity_result
       (if _wheelchair_velocity_result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _wheelchair_velocity_result
     (setq _wheelchair_velocity_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass kinovasev::kinova_wheelchair_velocity
  :super ros::object
  :slots ())

(setf (get kinovasev::kinova_wheelchair_velocity :md5sum-) "1404a3850413496a35cd6eb1f5887dd3")
(setf (get kinovasev::kinova_wheelchair_velocity :datatype-) "kinovasev/kinova_wheelchair_velocity")
(setf (get kinovasev::kinova_wheelchair_velocity :request) kinovasev::kinova_wheelchair_velocityRequest)
(setf (get kinovasev::kinova_wheelchair_velocity :response) kinovasev::kinova_wheelchair_velocityResponse)

(defmethod kinovasev::kinova_wheelchair_velocityRequest
  (:response () (instance kinovasev::kinova_wheelchair_velocityResponse :init)))

(setf (get kinovasev::kinova_wheelchair_velocityRequest :md5sum-) "1404a3850413496a35cd6eb1f5887dd3")
(setf (get kinovasev::kinova_wheelchair_velocityRequest :datatype-) "kinovasev/kinova_wheelchair_velocityRequest")
(setf (get kinovasev::kinova_wheelchair_velocityRequest :definition-)
      "float32 v_x
float32 v_theta
int64 wheel_ms
---
bool wheelchair_velocity_result
")

(setf (get kinovasev::kinova_wheelchair_velocityResponse :md5sum-) "1404a3850413496a35cd6eb1f5887dd3")
(setf (get kinovasev::kinova_wheelchair_velocityResponse :datatype-) "kinovasev/kinova_wheelchair_velocityResponse")
(setf (get kinovasev::kinova_wheelchair_velocityResponse :definition-)
      "float32 v_x
float32 v_theta
int64 wheel_ms
---
bool wheelchair_velocity_result
")



(provide :kinovasev/kinova_wheelchair_velocity "1404a3850413496a35cd6eb1f5887dd3")


