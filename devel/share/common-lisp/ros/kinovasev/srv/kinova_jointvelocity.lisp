; Auto-generated. Do not edit!


(cl:in-package kinovasev-srv)


;//! \htmlinclude kinova_jointvelocity-request.msg.html

(cl:defclass <kinova_jointvelocity-request> (roslisp-msg-protocol:ros-message)
  ((joint1
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
    :initform 0.0)
   (kinova_s
    :reader kinova_s
    :initarg :kinova_s
    :type cl:integer
    :initform 0))
)

(cl:defclass kinova_jointvelocity-request (<kinova_jointvelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_jointvelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_jointvelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_jointvelocity-request> is deprecated: use kinovasev-srv:kinova_jointvelocity-request instead.")))

(cl:ensure-generic-function 'joint1-val :lambda-list '(m))
(cl:defmethod joint1-val ((m <kinova_jointvelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint1-val is deprecated.  Use kinovasev-srv:joint1 instead.")
  (joint1 m))

(cl:ensure-generic-function 'joint2-val :lambda-list '(m))
(cl:defmethod joint2-val ((m <kinova_jointvelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint2-val is deprecated.  Use kinovasev-srv:joint2 instead.")
  (joint2 m))

(cl:ensure-generic-function 'joint3-val :lambda-list '(m))
(cl:defmethod joint3-val ((m <kinova_jointvelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint3-val is deprecated.  Use kinovasev-srv:joint3 instead.")
  (joint3 m))

(cl:ensure-generic-function 'joint4-val :lambda-list '(m))
(cl:defmethod joint4-val ((m <kinova_jointvelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint4-val is deprecated.  Use kinovasev-srv:joint4 instead.")
  (joint4 m))

(cl:ensure-generic-function 'joint5-val :lambda-list '(m))
(cl:defmethod joint5-val ((m <kinova_jointvelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint5-val is deprecated.  Use kinovasev-srv:joint5 instead.")
  (joint5 m))

(cl:ensure-generic-function 'joint6-val :lambda-list '(m))
(cl:defmethod joint6-val ((m <kinova_jointvelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint6-val is deprecated.  Use kinovasev-srv:joint6 instead.")
  (joint6 m))

(cl:ensure-generic-function 'joint7-val :lambda-list '(m))
(cl:defmethod joint7-val ((m <kinova_jointvelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint7-val is deprecated.  Use kinovasev-srv:joint7 instead.")
  (joint7 m))

(cl:ensure-generic-function 'kinova_s-val :lambda-list '(m))
(cl:defmethod kinova_s-val ((m <kinova_jointvelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:kinova_s-val is deprecated.  Use kinovasev-srv:kinova_s instead.")
  (kinova_s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_jointvelocity-request>) ostream)
  "Serializes a message object of type '<kinova_jointvelocity-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_jointvelocity-request>) istream)
  "Deserializes a message object of type '<kinova_jointvelocity-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_jointvelocity-request>)))
  "Returns string type for a service object of type '<kinova_jointvelocity-request>"
  "kinovasev/kinova_jointvelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_jointvelocity-request)))
  "Returns string type for a service object of type 'kinova_jointvelocity-request"
  "kinovasev/kinova_jointvelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_jointvelocity-request>)))
  "Returns md5sum for a message object of type '<kinova_jointvelocity-request>"
  "9d51386228009e7e125e42b13c7f7ff5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_jointvelocity-request)))
  "Returns md5sum for a message object of type 'kinova_jointvelocity-request"
  "9d51386228009e7e125e42b13c7f7ff5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_jointvelocity-request>)))
  "Returns full string definition for message of type '<kinova_jointvelocity-request>"
  (cl:format cl:nil "float32 joint1~%float32 joint2~%float32 joint3~%float32 joint4~%float32 joint5~%float32 joint6~%float32 joint7~%int64 kinova_s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_jointvelocity-request)))
  "Returns full string definition for message of type 'kinova_jointvelocity-request"
  (cl:format cl:nil "float32 joint1~%float32 joint2~%float32 joint3~%float32 joint4~%float32 joint5~%float32 joint6~%float32 joint7~%int64 kinova_s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_jointvelocity-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_jointvelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_jointvelocity-request
    (cl:cons ':joint1 (joint1 msg))
    (cl:cons ':joint2 (joint2 msg))
    (cl:cons ':joint3 (joint3 msg))
    (cl:cons ':joint4 (joint4 msg))
    (cl:cons ':joint5 (joint5 msg))
    (cl:cons ':joint6 (joint6 msg))
    (cl:cons ':joint7 (joint7 msg))
    (cl:cons ':kinova_s (kinova_s msg))
))
;//! \htmlinclude kinova_jointvelocity-response.msg.html

(cl:defclass <kinova_jointvelocity-response> (roslisp-msg-protocol:ros-message)
  ((joint_velocity_result
    :reader joint_velocity_result
    :initarg :joint_velocity_result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass kinova_jointvelocity-response (<kinova_jointvelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_jointvelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_jointvelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_jointvelocity-response> is deprecated: use kinovasev-srv:kinova_jointvelocity-response instead.")))

(cl:ensure-generic-function 'joint_velocity_result-val :lambda-list '(m))
(cl:defmethod joint_velocity_result-val ((m <kinova_jointvelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:joint_velocity_result-val is deprecated.  Use kinovasev-srv:joint_velocity_result instead.")
  (joint_velocity_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_jointvelocity-response>) ostream)
  "Serializes a message object of type '<kinova_jointvelocity-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'joint_velocity_result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_jointvelocity-response>) istream)
  "Deserializes a message object of type '<kinova_jointvelocity-response>"
    (cl:setf (cl:slot-value msg 'joint_velocity_result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_jointvelocity-response>)))
  "Returns string type for a service object of type '<kinova_jointvelocity-response>"
  "kinovasev/kinova_jointvelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_jointvelocity-response)))
  "Returns string type for a service object of type 'kinova_jointvelocity-response"
  "kinovasev/kinova_jointvelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_jointvelocity-response>)))
  "Returns md5sum for a message object of type '<kinova_jointvelocity-response>"
  "9d51386228009e7e125e42b13c7f7ff5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_jointvelocity-response)))
  "Returns md5sum for a message object of type 'kinova_jointvelocity-response"
  "9d51386228009e7e125e42b13c7f7ff5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_jointvelocity-response>)))
  "Returns full string definition for message of type '<kinova_jointvelocity-response>"
  (cl:format cl:nil "bool joint_velocity_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_jointvelocity-response)))
  "Returns full string definition for message of type 'kinova_jointvelocity-response"
  (cl:format cl:nil "bool joint_velocity_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_jointvelocity-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_jointvelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_jointvelocity-response
    (cl:cons ':joint_velocity_result (joint_velocity_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'kinova_jointvelocity)))
  'kinova_jointvelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'kinova_jointvelocity)))
  'kinova_jointvelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_jointvelocity)))
  "Returns string type for a service object of type '<kinova_jointvelocity>"
  "kinovasev/kinova_jointvelocity")