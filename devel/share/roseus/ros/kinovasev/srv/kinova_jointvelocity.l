;; Auto-generated. Do not edit!


(when (boundp 'kinovasev::kinova_jointvelocity)
  (if (not (find-package "KINOVASEV"))
    (make-package "KINOVASEV"))
  (shadow 'kinova_jointvelocity (find-package "KINOVASEV")))
(unless (find-package "KINOVASEV::KINOVA_JOINTVELOCITY")
  (make-package "KINOVASEV::KINOVA_JOINTVELOCITY"))
(unless (find-package "KINOVASEV::KINOVA_JOINTVELOCITYREQUEST")
  (make-package "KINOVASEV::KINOVA_JOINTVELOCITYREQUEST"))
(unless (find-package "KINOVASEV::KINOVA_JOINTVELOCITYRESPONSE")
  (make-package "KINOVASEV::KINOVA_JOINTVELOCITYRESPONSE"))

(in-package "ROS")





(defclass kinovasev::kinova_jointvelocityRequest
  :super ros::object
  :slots (_joint1 _joint2 _joint3 _joint4 _joint5 _joint6 _joint7 _kinova_s ))

(defmethod kinovasev::kinova_jointvelocityRequest
  (:init
   (&key
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    ((:joint3 __joint3) 0.0)
    ((:joint4 __joint4) 0.0)
    ((:joint5 __joint5) 0.0)
    ((:joint6 __joint6) 0.0)
    ((:joint7 __joint7) 0.0)
    ((:kinova_s __kinova_s) 0)
    )
   (send-super :init)
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   (setq _joint3 (float __joint3))
   (setq _joint4 (float __joint4))
   (setq _joint5 (float __joint5))
   (setq _joint6 (float __joint6))
   (setq _joint7 (float __joint7))
   (setq _kinova_s (round __kinova_s))
   self)
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
  (:kinova_s
   (&optional __kinova_s)
   (if __kinova_s (setq _kinova_s __kinova_s)) _kinova_s)
  (:serialization-length
   ()
   (+
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
    ;; int64 _kinova_s
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; int64 _kinova_s
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _kinova_s (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _kinova_s) (= (length (_kinova_s . bv)) 2)) ;; bignum
              (write-long (ash (elt (_kinova_s . bv) 0) 0) s)
              (write-long (ash (elt (_kinova_s . bv) 1) -1) s))
             ((and (class _kinova_s) (= (length (_kinova_s . bv)) 1)) ;; big1
              (write-long (elt (_kinova_s . bv) 0) s)
              (write-long (if (>= _kinova_s 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _kinova_s s)(write-long (if (>= _kinova_s 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; int64 _kinova_s
#+(or :alpha :irix6 :x86_64)
      (setf _kinova_s (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _kinova_s (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass kinovasev::kinova_jointvelocityResponse
  :super ros::object
  :slots (_joint_velocity_result ))

(defmethod kinovasev::kinova_jointvelocityResponse
  (:init
   (&key
    ((:joint_velocity_result __joint_velocity_result) nil)
    )
   (send-super :init)
   (setq _joint_velocity_result __joint_velocity_result)
   self)
  (:joint_velocity_result
   (&optional (__joint_velocity_result :null))
   (if (not (eq __joint_velocity_result :null)) (setq _joint_velocity_result __joint_velocity_result)) _joint_velocity_result)
  (:serialization-length
   ()
   (+
    ;; bool _joint_velocity_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _joint_velocity_result
       (if _joint_velocity_result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _joint_velocity_result
     (setq _joint_velocity_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass kinovasev::kinova_jointvelocity
  :super ros::object
  :slots ())

(setf (get kinovasev::kinova_jointvelocity :md5sum-) "9d51386228009e7e125e42b13c7f7ff5")
(setf (get kinovasev::kinova_jointvelocity :datatype-) "kinovasev/kinova_jointvelocity")
(setf (get kinovasev::kinova_jointvelocity :request) kinovasev::kinova_jointvelocityRequest)
(setf (get kinovasev::kinova_jointvelocity :response) kinovasev::kinova_jointvelocityResponse)

(defmethod kinovasev::kinova_jointvelocityRequest
  (:response () (instance kinovasev::kinova_jointvelocityResponse :init)))

(setf (get kinovasev::kinova_jointvelocityRequest :md5sum-) "9d51386228009e7e125e42b13c7f7ff5")
(setf (get kinovasev::kinova_jointvelocityRequest :datatype-) "kinovasev/kinova_jointvelocityRequest")
(setf (get kinovasev::kinova_jointvelocityRequest :definition-)
      "float32 joint1
float32 joint2
float32 joint3
float32 joint4
float32 joint5
float32 joint6
float32 joint7
int64 kinova_s
---
bool joint_velocity_result
")

(setf (get kinovasev::kinova_jointvelocityResponse :md5sum-) "9d51386228009e7e125e42b13c7f7ff5")
(setf (get kinovasev::kinova_jointvelocityResponse :datatype-) "kinovasev/kinova_jointvelocityResponse")
(setf (get kinovasev::kinova_jointvelocityResponse :definition-)
      "float32 joint1
float32 joint2
float32 joint3
float32 joint4
float32 joint5
float32 joint6
float32 joint7
int64 kinova_s
---
bool joint_velocity_result
")



(provide :kinovasev/kinova_jointvelocity "9d51386228009e7e125e42b13c7f7ff5")


