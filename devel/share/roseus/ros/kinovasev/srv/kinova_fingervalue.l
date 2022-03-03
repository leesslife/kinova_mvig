;; Auto-generated. Do not edit!


(when (boundp 'kinovasev::kinova_fingervalue)
  (if (not (find-package "KINOVASEV"))
    (make-package "KINOVASEV"))
  (shadow 'kinova_fingervalue (find-package "KINOVASEV")))
(unless (find-package "KINOVASEV::KINOVA_FINGERVALUE")
  (make-package "KINOVASEV::KINOVA_FINGERVALUE"))
(unless (find-package "KINOVASEV::KINOVA_FINGERVALUEREQUEST")
  (make-package "KINOVASEV::KINOVA_FINGERVALUEREQUEST"))
(unless (find-package "KINOVASEV::KINOVA_FINGERVALUERESPONSE")
  (make-package "KINOVASEV::KINOVA_FINGERVALUERESPONSE"))

(in-package "ROS")





(defclass kinovasev::kinova_fingervalueRequest
  :super ros::object
  :slots (_unit _finger_value _relative_ ))

(defmethod kinovasev::kinova_fingervalueRequest
  (:init
   (&key
    ((:unit __unit) "")
    ((:finger_value __finger_value) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:relative_ __relative_) nil)
    )
   (send-super :init)
   (setq _unit (string __unit))
   (setq _finger_value __finger_value)
   (setq _relative_ __relative_)
   self)
  (:unit
   (&optional __unit)
   (if __unit (setq _unit __unit)) _unit)
  (:finger_value
   (&optional __finger_value)
   (if __finger_value (setq _finger_value __finger_value)) _finger_value)
  (:relative_
   (&optional (__relative_ :null))
   (if (not (eq __relative_ :null)) (setq _relative_ __relative_)) _relative_)
  (:serialization-length
   ()
   (+
    ;; string _unit
    4 (length _unit)
    ;; float32[] _finger_value
    (* 4    (length _finger_value)) 4
    ;; bool _relative_
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _unit
       (write-long (length _unit) s) (princ _unit s)
     ;; float32[] _finger_value
     (write-long (length _finger_value) s)
     (dotimes (i (length _finger_value))
       (sys::poke (elt _finger_value i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _relative_
       (if _relative_ (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _finger_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _finger_value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _finger_value i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _relative_
     (setq _relative_ (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass kinovasev::kinova_fingervalueResponse
  :super ros::object
  :slots (_finger_control_result ))

(defmethod kinovasev::kinova_fingervalueResponse
  (:init
   (&key
    ((:finger_control_result __finger_control_result) nil)
    )
   (send-super :init)
   (setq _finger_control_result __finger_control_result)
   self)
  (:finger_control_result
   (&optional (__finger_control_result :null))
   (if (not (eq __finger_control_result :null)) (setq _finger_control_result __finger_control_result)) _finger_control_result)
  (:serialization-length
   ()
   (+
    ;; bool _finger_control_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _finger_control_result
       (if _finger_control_result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _finger_control_result
     (setq _finger_control_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass kinovasev::kinova_fingervalue
  :super ros::object
  :slots ())

(setf (get kinovasev::kinova_fingervalue :md5sum-) "80b4b1c7ca93496e230bb138b990fbaa")
(setf (get kinovasev::kinova_fingervalue :datatype-) "kinovasev/kinova_fingervalue")
(setf (get kinovasev::kinova_fingervalue :request) kinovasev::kinova_fingervalueRequest)
(setf (get kinovasev::kinova_fingervalue :response) kinovasev::kinova_fingervalueResponse)

(defmethod kinovasev::kinova_fingervalueRequest
  (:response () (instance kinovasev::kinova_fingervalueResponse :init)))

(setf (get kinovasev::kinova_fingervalueRequest :md5sum-) "80b4b1c7ca93496e230bb138b990fbaa")
(setf (get kinovasev::kinova_fingervalueRequest :datatype-) "kinovasev/kinova_fingervalueRequest")
(setf (get kinovasev::kinova_fingervalueRequest :definition-)
      "string unit
float32[] finger_value
bool relative_
---
bool finger_control_result
")

(setf (get kinovasev::kinova_fingervalueResponse :md5sum-) "80b4b1c7ca93496e230bb138b990fbaa")
(setf (get kinovasev::kinova_fingervalueResponse :datatype-) "kinovasev/kinova_fingervalueResponse")
(setf (get kinovasev::kinova_fingervalueResponse :definition-)
      "string unit
float32[] finger_value
bool relative_
---
bool finger_control_result
")



(provide :kinovasev/kinova_fingervalue "80b4b1c7ca93496e230bb138b990fbaa")


