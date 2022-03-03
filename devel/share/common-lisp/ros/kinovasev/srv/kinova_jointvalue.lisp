; Auto-generated. Do not edit!


(cl:in-package kinovasev-srv)


;//! \htmlinclude kinova_jointvalue-request.msg.html

(cl:defclass <kinova_jointvalue-request> (roslisp-msg-protocol:ros-message)
  ((joint_control_mode
    :reader joint_control_mode
    :initarg :joint_control_mode
    :type cl:string
    :initform "")
   (joint1
    :reader joint1
    :initarg :joint1
    :type cl:float
    :initform 0.0)
   (joint2
    :reader joint2
    :initarg :joint2
    :type cl:float
    :initform 0.0)
   (joint3
    :reader joint3
    :initarg :joint3
    :type cl:float
    :initform 0.0)
   (joint4
    :reader joint4
    :initarg :joint4
    :type cl:float
    :initform 0.0)
   (joint5
    :reader joint5
    :initarg :joint5
    :type cl:float
    :initform 0.0)
   (joint6
    :reader joint6
    :initarg :joint6
    :type cl:float
    :initform 0.0)
   (joint7
    :reader joint7
    :initarg :joint7
    :type cl:float
    :initform 0.0))
)

(cl:defclass kinova_jointvalue-request (<kinova_jointvalue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_jointvalue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_jointvalue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_jointvalue-request> is deprecated: use kinovasev-srv:kinova_jointvalue-request instead.")))

(cl:ensure-generic-function 'joint_control_mode-val :lambda-list '(m))
(cl:defmethod joint_control_mode-val ((m <kinova_jointvalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint_control_mode-val is deprecated.  Use kinovasev-srv:joint_control_mode instead.")
  (joint_control_mode m))

(cl:ensure-generic-function 'joint1-val :lambda-list '(m))
(cl:defmethod joint1-val ((m <kinova_jointvalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint1-val is deprecated.  Use kinovasev-srv:joint1 instead.")
  (joint1 m))

(cl:ensure-generic-function 'joint2-val :lambda-list '(m))
(cl:defmethod joint2-val ((m <kinova_jointvalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint2-val is deprecated.  Use kinovasev-srv:joint2 instead.")
  (joint2 m))

(cl:ensure-generic-function 'joint3-val :lambda-list '(m))
(cl:defmethod joint3-val ((m <kinova_jointvalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint3-val is deprecated.  Use kinovasev-srv:joint3 instead.")
  (joint3 m))

(cl:ensure-generic-function 'joint4-val :lambda-list '(m))
(cl:defmethod joint4-val ((m <kinova_jointvalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint4-val is deprecated.  Use kinovasev-srv:joint4 instead.")
  (joint4 m))

(cl:ensure-generic-function 'joint5-val :lambda-list '(m))
(cl:defmethod joint5-val ((m <kinova_jointvalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint5-val is deprecated.  Use kinovasev-srv:joint5 instead.")
  (joint5 m))

(cl:ensure-generic-function 'joint6-val :lambda-list '(m))
(cl:defmethod joint6-val ((m <kinova_jointvalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint6-val is deprecated.  Use kinovasev-srv:joint6 instead.")
  (joint6 m))

(cl:ensure-generic-function 'joint7-val :lambda-list '(m))
(cl:defmethod joint7-val ((m <kinova_jointvalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint7-val is deprecated.  Use kinovasev-srv:joint7 instead.")
  (joint7 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_jointvalue-request>) ostream)
  "Serializes a message object of type '<kinova_jointvalue-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_control_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_control_mode))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_jointvalue-request>) istream)
  "Deserializes a message object of type '<kinova_jointvalue-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_control_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_control_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint7) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_jointvalue-request>)))
  "Returns string type for a service object of type '<kinova_jointvalue-request>"
  "kinovasev/kinova_jointvalueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_jointvalue-request)))
  "Returns string type for a service object of type 'kinova_jointvalue-request"
  "kinovasev/kinova_jointvalueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_jointvalue-request>)))
  "Returns md5sum for a message object of type '<kinova_jointvalue-request>"
  "6330034618439aeef98f4199475023e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_jointvalue-request)))
  "Returns md5sum for a message object of type 'kinova_jointvalue-request"
  "6330034618439aeef98f4199475023e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_jointvalue-request>)))
  "Returns full string definition for message of type '<kinova_jointvalue-request>"
  (cl:format cl:nil "string joint_control_mode~%float32 joint1~%float32 joint2~%float32 joint3~%float32 joint4~%float32 joint5~%float32 joint6~%float32 joint7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_jointvalue-request)))
  "Returns full string definition for message of type 'kinova_jointvalue-request"
  (cl:format cl:nil "string joint_control_mode~%float32 joint1~%float32 joint2~%float32 joint3~%float32 joint4~%float32 joint5~%float32 joint6~%float32 joint7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_jointvalue-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_control_mode))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_jointvalue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_jointvalue-request
    (cl:cons ':joint_control_mode (joint_control_mode msg))
    (cl:cons ':joint1 (joint1 msg))
    (cl:cons ':joint2 (joint2 msg))
    (cl:cons ':joint3 (joint3 msg))
    (cl:cons ':joint4 (joint4 msg))
    (cl:cons ':joint5 (joint5 msg))
    (cl:cons ':joint6 (joint6 msg))
    (cl:cons ':joint7 (joint7 msg))
))
;//! \htmlinclude kinova_jointvalue-response.msg.html

(cl:defclass <kinova_jointvalue-response> (roslisp-msg-protocol:ros-message)
  ((joint_control_result
    :reader joint_control_result
    :initarg :joint_control_result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass kinova_jointvalue-response (<kinova_jointvalue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_jointvalue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_jointvalue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_jointvalue-response> is deprecated: use kinovasev-srv:kinova_jointvalue-response instead.")))

(cl:ensure-generic-function 'joint_control_result-val :lambda-list '(m))
(cl:defmethod joint_control_result-val ((m <kinova_jointvalue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint_control_result-val is deprecated.  Use kinovasev-srv:joint_control_result instead.")
  (joint_control_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_jointvalue-response>) ostream)
  "Serializes a message object of type '<kinova_jointvalue-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'joint_control_result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_jointvalue-response>) istream)
  "Deserializes a message object of type '<kinova_jointvalue-response>"
    (cl:setf (cl:slot-value msg 'joint_control_result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_jointvalue-response>)))
  "Returns string type for a service object of type '<kinova_jointvalue-response>"
  "kinovasev/kinova_jointvalueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_jointvalue-response)))
  "Returns string type for a service object of type 'kinova_jointvalue-response"
  "kinovasev/kinova_jointvalueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_jointvalue-response>)))
  "Returns md5sum for a message object of type '<kinova_jointvalue-response>"
  "6330034618439aeef98f4199475023e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_jointvalue-response)))
  "Returns md5sum for a message object of type 'kinova_jointvalue-response"
  "6330034618439aeef98f4199475023e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_jointvalue-response>)))
  "Returns full string definition for message of type '<kinova_jointvalue-response>"
  (cl:format cl:nil "bool joint_control_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_jointvalue-response)))
  "Returns full string definition for message of type 'kinova_jointvalue-response"
  (cl:format cl:nil "bool joint_control_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_jointvalue-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_jointvalue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_jointvalue-response
    (cl:cons ':joint_control_result (joint_control_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'kinova_jointvalue)))
  'kinova_jointvalue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'kinova_jointvalue)))
  'kinova_jointvalue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_jointvalue)))
  "Returns string type for a service object of type '<kinova_jointvalue>"
  "kinovasev/kinova_jointvalue")