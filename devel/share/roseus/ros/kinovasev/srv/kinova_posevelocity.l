;; Auto-generated. Do not edit!


(when (boundp 'kinovasev::kinova_posevelocity)
  (if (not (find-package "KINOVASEV"))
    (make-package "KINOVASEV"))
  (shadow 'kinova_posevelocity (find-package "KINOVASEV")))
(unless (find-package "KINOVASEV::KINOVA_POSEVELOCITY")
  (make-package "KINOVASEV::KINOVA_POSEVELOCITY"))
(unless (find-package "KINOVASEV::KINOVA_POSEVELOCITYREQUEST")
  (make-package "KINOVASEV::KINOVA_POSEVELOCITYREQUEST"))
(unless (find-package "KINOVASEV::KINOVA_POSEVELOCITYRESPONSE")
  (make-package "KINOVASEV::KINOVA_POSEVELOCITYRESPONSE"))

(in-package "ROS")





(defclass kinovasev::kinova_posevelocityRequest
  :super ros::object
  :slots (_t_x _t_y _t_z _ar _ap _az _kinova_s ))

(defmethod kinovasev::kinova_posevelocityRequest
  (:init
   (&key
    ((:t_x __t_x) 0.0)
    ((:t_y __t_y) 0.0)
    ((:t_z __t_z) 0.0)
    ((:ar __ar) 0.0)
    ((:ap __ap) 0.0)
    ((:az __az) 0.0)
    ((:kinova_s __kinova_s) 0)
    )
   (send-super :init)
   (setq _t_x (float __t_x))
   (setq _t_y (float __t_y))
   (setq _t_z (float __t_z))
   (setq _ar (float __ar))
   (setq _ap (float __ap))
   (setq _az (float __az))
   (setq _kinova_s (round __kinova_s))
   self)
  (:t_x
   (&optional __t_x)
   (if __t_x (setq _t_x __t_x)) _t_x)
  (:t_y
   (&optional __t_y)
   (if __t_y (setq _t_y __t_y)) _t_y)
  (:t_z
   (&optional __t_z)
   (if __t_z (setq _t_z __t_z)) _t_z)
  (:ar
   (&optional __ar)
   (if __ar (setq _ar __ar)) _ar)
  (:ap
   (&optional __ap)
   (if __ap (setq _ap __ap)) _ap)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:kinova_s
   (&optional __kinova_s)
   (if __kinova_s (setq _kinova_s __kinova_s)) _kinova_s)
  (:serialization-length
   ()
   (+
    ;; float32 _t_x
    4
    ;; float32 _t_y
    4
    ;; float32 _t_z
    4
    ;; float32 _ar
    4
    ;; float32 _ap
    4
    ;; float32 _az
    4
    ;; int64 _kinova_s
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _t_x
       (sys::poke _t_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t_y
       (sys::poke _t_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t_z
       (sys::poke _t_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ar
       (sys::poke _ar (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ap
       (sys::poke _ap (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _az
       (sys::poke _az (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _t_x
     (setq _t_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t_y
     (setq _t_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t_z
     (setq _t_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ar
     (setq _ar (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ap
     (setq _ap (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _az
     (setq _az (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(defclass kinovasev::kinova_posevelocityResponse
  :super ros::object
  :slots (_pose_velocity_result ))

(defmethod kinovasev::kinova_posevelocityResponse
  (:init
   (&key
    ((:pose_velocity_result __pose_velocity_result) nil)
    )
   (send-super :init)
   (setq _pose_velocity_result __pose_velocity_result)
   self)
  (:pose_velocity_result
   (&optional (__pose_velocity_result :null))
   (if (not (eq __pose_velocity_result :null)) (setq _pose_velocity_result __pose_velocity_result)) _pose_velocity_result)
  (:serialization-length
   ()
   (+
    ;; bool _pose_velocity_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _pose_velocity_result
       (if _pose_velocity_result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _pose_velocity_result
     (setq _pose_velocity_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass kinovasev::kinova_posevelocity
  :super ros::object
  :slots ())

(setf (get kinovasev::kinova_posevelocity :md5sum-) "96fa5deefb115b403d86e82cbda4bf34")
(setf (get kinovasev::kinova_posevelocity :datatype-) "kinovasev/kinova_posevelocity")
(setf (get kinovasev::kinova_posevelocity :request) kinovasev::kinova_posevelocityRequest)
(setf (get kinovasev::kinova_posevelocity :response) kinovasev::kinova_posevelocityResponse)

(defmethod kinovasev::kinova_posevelocityRequest
  (:response () (instance kinovasev::kinova_posevelocityResponse :init)))

(setf (get kinovasev::kinova_posevelocityRequest :md5sum-) "96fa5deefb115b403d86e82cbda4bf34")
(setf (get kinovasev::kinova_posevelocityRequest :datatype-) "kinovasev/kinova_posevelocityRequest")
(setf (get kinovasev::kinova_posevelocityRequest :definition-)
      "float32 t_x
float32 t_y
float32 t_z
float32 ar
float32 ap
float32 az
int64 kinova_s
---
bool pose_velocity_result
")

(setf (get kinovasev::kinova_posevelocityResponse :md5sum-) "96fa5deefb115b403d86e82cbda4bf34")
(setf (get kinovasev::kinova_posevelocityResponse :datatype-) "kinovasev/kinova_posevelocityResponse")
(setf (get kinovasev::kinova_posevelocityResponse :definition-)
      "float32 t_x
float32 t_y
float32 t_z
float32 ar
float32 ap
float32 az
int64 kinova_s
---
bool pose_velocity_result
")



(provide :kinovasev/kinova_posevelocity "96fa5deefb115b403d86e82cbda4bf34")


