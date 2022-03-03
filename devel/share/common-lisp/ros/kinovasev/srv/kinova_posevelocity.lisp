; Auto-generated. Do not edit!


(cl:in-package kinovasev-srv)


;//! \htmlinclude kinova_posevelocity-request.msg.html

(cl:defclass <kinova_posevelocity-request> (roslisp-msg-protocol:ros-message)
  ((t_x
    :reader t_x
    :initarg :t_x
    :type cl:float
    :initform 0.0)
   (t_y
    :reader t_y
    :initarg :t_y
    :type cl:float
    :initform 0.0)
   (t_z
    :reader t_z
    :initarg :t_z
    :type cl:float
    :initform 0.0)
   (ar
    :reader ar
    :initarg :ar
    :type cl:float
    :initform 0.0)
   (ap
    :reader ap
    :initarg :ap
    :type cl:float
    :initform 0.0)
   (az
    :reader az
    :initarg :az
    :type cl:float
    :initform 0.0)
   (kinova_s
    :reader kinova_s
    :initarg :kinova_s
    :type cl:integer
    :initform 0))
)

(cl:defclass kinova_posevelocity-request (<kinova_posevelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_posevelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_posevelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_posevelocity-request> is deprecated: use kinovasev-srv:kinova_posevelocity-request instead.")))

(cl:ensure-generic-function 't_x-val :lambda-list '(m))
(cl:defmethod t_x-val ((m <kinova_posevelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:t_x-val is deprecated.  Use kinovasev-srv:t_x instead.")
  (t_x m))

(cl:ensure-generic-function 't_y-val :lambda-list '(m))
(cl:defmethod t_y-val ((m <kinova_posevelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:t_y-val is deprecated.  Use kinovasev-srv:t_y instead.")
  (t_y m))

(cl:ensure-generic-function 't_z-val :lambda-list '(m))
(cl:defmethod t_z-val ((m <kinova_posevelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:t_z-val is deprecated.  Use kinovasev-srv:t_z instead.")
  (t_z m))

(cl:ensure-generic-function 'ar-val :lambda-list '(m))
(cl:defmethod ar-val ((m <kinova_posevelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:ar-val is deprecated.  Use kinovasev-srv:ar instead.")
  (ar m))

(cl:ensure-generic-function 'ap-val :lambda-list '(m))
(cl:defmethod ap-val ((m <kinova_posevelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:ap-val is deprecated.  Use kinovasev-srv:ap instead.")
  (ap m))

(cl:ensure-generic-function 'az-val :lambda-list '(m))
(cl:defmethod az-val ((m <kinova_posevelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:az-val is deprecated.  Use kinovasev-srv:az instead.")
  (az m))

(cl:ensure-generic-function 'kinova_s-val :lambda-list '(m))
(cl:defmethod kinova_s-val ((m <kinova_posevelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:kinova_s-val is deprecated.  Use kinovasev-srv:kinova_s instead.")
  (kinova_s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_posevelocity-request>) ostream)
  "Serializes a message object of type '<kinova_posevelocity-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ap))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'az))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'kinova_s)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_posevelocity-request>) istream)
  "Deserializes a message object of type '<kinova_posevelocity-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ar) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ap) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'az) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kinova_s) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_posevelocity-request>)))
  "Returns string type for a service object of type '<kinova_posevelocity-request>"
  "kinovasev/kinova_posevelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_posevelocity-request)))
  "Returns string type for a service object of type 'kinova_posevelocity-request"
  "kinovasev/kinova_posevelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_posevelocity-request>)))
  "Returns md5sum for a message object of type '<kinova_posevelocity-request>"
  "96fa5deefb115b403d86e82cbda4bf34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_posevelocity-request)))
  "Returns md5sum for a message object of type 'kinova_posevelocity-request"
  "96fa5deefb115b403d86e82cbda4bf34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_posevelocity-request>)))
  "Returns full string definition for message of type '<kinova_posevelocity-request>"
  (cl:format cl:nil "float32 t_x~%float32 t_y~%float32 t_z~%float32 ar~%float32 ap~%float32 az~%int64 kinova_s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_posevelocity-request)))
  "Returns full string definition for message of type 'kinova_posevelocity-request"
  (cl:format cl:nil "float32 t_x~%float32 t_y~%float32 t_z~%float32 ar~%float32 ap~%float32 az~%int64 kinova_s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_posevelocity-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_posevelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_posevelocity-request
    (cl:cons ':t_x (t_x msg))
    (cl:cons ':t_y (t_y msg))
    (cl:cons ':t_z (t_z msg))
    (cl:cons ':ar (ar msg))
    (cl:cons ':ap (ap msg))
    (cl:cons ':az (az msg))
    (cl:cons ':kinova_s (kinova_s msg))
))
;//! \htmlinclude kinova_posevelocity-response.msg.html

(cl:defclass <kinova_posevelocity-response> (roslisp-msg-protocol:ros-message)
  ((pose_velocity_result
    :reader pose_velocity_result
    :initarg :pose_velocity_result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass kinova_posevelocity-response (<kinova_posevelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_posevelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_posevelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_posevelocity-response> is deprecated: use kinovasev-srv:kinova_posevelocity-response instead.")))

(cl:ensure-generic-function 'pose_velocity_result-val :lambda-list '(m))
(cl:defmethod pose_velocity_result-val ((m <kinova_posevelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:pose_velocity_result-val is deprecated.  Use kinovasev-srv:pose_velocity_result instead.")
  (pose_velocity_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_posevelocity-response>) ostream)
  "Serializes a message object of type '<kinova_posevelocity-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pose_velocity_result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_posevelocity-response>) istream)
  "Deserializes a message object of type '<kinova_posevelocity-response>"
    (cl:setf (cl:slot-value msg 'pose_velocity_result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_posevelocity-response>)))
  "Returns string type for a service object of type '<kinova_posevelocity-response>"
  "kinovasev/kinova_posevelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_posevelocity-response)))
  "Returns string type for a service object of type 'kinova_posevelocity-response"
  "kinovasev/kinova_posevelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_posevelocity-response>)))
  "Returns md5sum for a message object of type '<kinova_posevelocity-response>"
  "96fa5deefb115b403d86e82cbda4bf34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_posevelocity-response)))
  "Returns md5sum for a message object of type 'kinova_posevelocity-response"
  "96fa5deefb115b403d86e82cbda4bf34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_posevelocity-response>)))
  "Returns full string definition for message of type '<kinova_posevelocity-response>"
  (cl:format cl:nil "bool pose_velocity_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_posevelocity-response)))
  "Returns full string definition for message of type 'kinova_posevelocity-response"
  (cl:format cl:nil "bool pose_velocity_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_posevelocity-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_posevelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_posevelocity-response
    (cl:cons ':pose_velocity_result (pose_velocity_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'kinova_posevelocity)))
  'kinova_posevelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'kinova_posevelocity)))
  'kinova_posevelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_posevelocity)))
  "Returns string type for a service object of type '<kinova_posevelocity>"
  "kinovasev/kinova_posevelocity")