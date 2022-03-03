;; Auto-generated. Do not edit!


(when (boundp 'kinovasev::kinova_posevalue)
  (if (not (find-package "KINOVASEV"))
    (make-package "KINOVASEV"))
  (shadow 'kinova_posevalue (find-package "KINOVASEV")))
(unless (find-package "KINOVASEV::KINOVA_POSEVALUE")
  (make-package "KINOVASEV::KINOVA_POSEVALUE"))
(unless (find-package "KINOVASEV::KINOVA_POSEVALUEREQUEST")
  (make-package "KINOVASEV::KINOVA_POSEVALUEREQUEST"))
(unless (find-package "KINOVASEV::KINOVA_POSEVALUERESPONSE")
  (make-package "KINOVASEV::KINOVA_POSEVALUERESPONSE"))

(in-package "ROS")





(defclass kinovasev::kinova_posevalueRequest
  :super ros::object
  :slots (_unit _pose_value _relative_ ))

(defmethod kinovasev::kinova_posevalueRequest
  (:init
   (&key
    ((:unit __unit) "")
    ((:pose_value __pose_value) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:relative_ __relative_) nil)
    )
   (send-super :init)
   (setq _unit (string __unit))
   (setq _pose_value __pose_value)
   (setq _relative_ __relative_)
   self)
  (:unit
   (&optional __unit)
   (if __unit (setq _unit __unit)) _unit)
  (:pose_value
   (&optional __pose_value)
   (if __pose_value (setq _pose_value __pose_value)) _pose_value)
  (:relative_
   (&optional (__relative_ :null))
   (if (not (eq __relative_ :null)) (setq _relative_ __relative_)) _relative_)
  (:serialization-length
   ()
   (+
    ;; string _unit
    4 (length _unit)
    ;; float32[] _pose_value
    (* 4    (length _pose_value)) 4
    ;; bool _relative_
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _unit
       (write-long (length _unit) s) (princ _unit s)
     ;; float32[] _pose_value
     (write-long (length _pose_value) s)
     (dotimes (i (length _pose_value))
       (sys::poke (elt _pose_value i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _relative_
       (if _relative_ (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _pose_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose_value i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _relative_
     (setq _relative_ (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass kinovasev::kinova_posevalueResponse
  :super ros::object
  :slots (_pose_control_result ))

(defmethod kinovasev::kinova_posevalueResponse
  (:init
   (&key
    ((:pose_control_result __pose_control_result) nil)
    )
   (send-super :init)
   (setq _pose_control_result __pose_control_result)
   self)
  (:pose_control_result
   (&optional (__pose_control_result :null))
   (if (not (eq __pose_control_result :null)) (setq _pose_control_result __pose_control_result)) _pose_control_result)
  (:serialization-length
   ()
   (+
    ;; bool _pose_control_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _pose_control_result
       (if _pose_control_result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _pose_control_result
     (setq _pose_control_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass kinovasev::kinova_posevalue
  :super ros::object
  :slots ())

(setf (get kinovasev::kinova_posevalue :md5sum-) "e893863d15a68f0207dff3b2ba094393")
(setf (get kinovasev::kinova_posevalue :datatype-) "kinovasev/kinova_posevalue")
(setf (get kinovasev::kinova_posevalue :request) kinovasev::kinova_posevalueRequest)
(setf (get kinovasev::kinova_posevalue :response) kinovasev::kinova_posevalueResponse)

(defmethod kinovasev::kinova_posevalueRequest
  (:response () (instance kinovasev::kinova_posevalueResponse :init)))

(setf (get kinovasev::kinova_posevalueRequest :md5sum-) "e893863d15a68f0207dff3b2ba094393")
(setf (get kinovasev::kinova_posevalueRequest :datatype-) "kinovasev/kinova_posevalueRequest")
(setf (get kinovasev::kinova_posevalueRequest :definition-)
      "string unit
float32[] pose_value
bool relative_
---
bool pose_control_result
")

(setf (get kinovasev::kinova_posevalueResponse :md5sum-) "e893863d15a68f0207dff3b2ba094393")
(setf (get kinovasev::kinova_posevalueResponse :datatype-) "kinovasev/kinova_posevalueResponse")
(setf (get kinovasev::kinova_posevalueResponse :definition-)
      "string unit
float32[] pose_value
bool relative_
---
bool pose_control_result
")



(provide :kinovasev/kinova_posevalue "e893863d15a68f0207dff3b2ba094393")


