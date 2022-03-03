; Auto-generated. Do not edit!


(cl:in-package kinovasev-srv)


;//! \htmlinclude kinova_wheelchair_velocity-request.msg.html

(cl:defclass <kinova_wheelchair_velocity-request> (roslisp-msg-protocol:ros-message)
  ((v_x
    :reader v_x
    :initarg :v_x
    :type cl:float
    :initform 0.0)
   (v_theta
    :reader v_theta
    :initarg :v_theta
    :type cl:float
    :initform 0.0)
   (wheel_ms
    :reader wheel_ms
    :initarg :wheel_ms
    :type cl:integer
    :initform 0))
)

(cl:defclass kinova_wheelchair_velocity-request (<kinova_wheelchair_velocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_wheelchair_velocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_wheelchair_velocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_wheelchair_velocity-request> is deprecated: use kinovasev-srv:kinova_wheelchair_velocity-request instead.")))

(cl:ensure-generic-function 'v_x-val :lambda-list '(m))
(cl:defmethod v_x-val ((m <kinova_wheelchair_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:v_x-val is deprecated.  Use kinovasev-srv:v_x instead.")
  (v_x m))

(cl:ensure-generic-function 'v_theta-val :lambda-list '(m))
(cl:defmethod v_theta-val ((m <kinova_wheelchair_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:v_theta-val is deprecated.  Use kinovasev-srv:v_theta instead.")
  (v_theta m))

(cl:ensure-generic-function 'wheel_ms-val :lambda-list '(m))
(cl:defmethod wheel_ms-val ((m <kinova_wheelchair_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:wheel_ms-val is deprecated.  Use kinovasev-srv:wheel_ms instead.")
  (wheel_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_wheelchair_velocity-request>) ostream)
  "Serializes a message object of type '<kinova_wheelchair_velocity-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'wheel_ms)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_wheelchair_velocity-request>) istream)
  "Deserializes a message object of type '<kinova_wheelchair_velocity-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_ms) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_wheelchair_velocity-request>)))
  "Returns string type for a service object of type '<kinova_wheelchair_velocity-request>"
  "kinovasev/kinova_wheelchair_velocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_wheelchair_velocity-request)))
  "Returns string type for a service object of type 'kinova_wheelchair_velocity-request"
  "kinovasev/kinova_wheelchair_velocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_wheelchair_velocity-request>)))
  "Returns md5sum for a message object of type '<kinova_wheelchair_velocity-request>"
  "1404a3850413496a35cd6eb1f5887dd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_wheelchair_velocity-request)))
  "Returns md5sum for a message object of type 'kinova_wheelchair_velocity-request"
  "1404a3850413496a35cd6eb1f5887dd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_wheelchair_velocity-request>)))
  "Returns full string definition for message of type '<kinova_wheelchair_velocity-request>"
  (cl:format cl:nil "float32 v_x~%float32 v_theta~%int64 wheel_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_wheelchair_velocity-request)))
  "Returns full string definition for message of type 'kinova_wheelchair_velocity-request"
  (cl:format cl:nil "float32 v_x~%float32 v_theta~%int64 wheel_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_wheelchair_velocity-request>))
  (cl:+ 0
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_wheelchair_velocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_wheelchair_velocity-request
    (cl:cons ':v_x (v_x msg))
    (cl:cons ':v_theta (v_theta msg))
    (cl:cons ':wheel_ms (wheel_ms msg))
))
;//! \htmlinclude kinova_wheelchair_velocity-response.msg.html

(cl:defclass <kinova_wheelchair_velocity-response> (roslisp-msg-protocol:ros-message)
  ((wheelchair_velocity_result
    :reader wheelchair_velocity_result
    :initarg :wheelchair_velocity_result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass kinova_wheelchair_velocity-response (<kinova_wheelchair_velocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_wheelchair_velocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_wheelchair_velocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_wheelchair_velocity-response> is deprecated: use kinovasev-srv:kinova_wheelchair_velocity-response instead.")))

(cl:ensure-generic-function 'wheelchair_velocity_result-val :lambda-list '(m))
(cl:defmethod wheelchair_velocity_result-val ((m <kinova_wheelchair_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:wheelchair_velocity_result-val is deprecated.  Use kinovasev-srv:wheelchair_velocity_result instead.")
  (wheelchair_velocity_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_wheelchair_velocity-response>) ostream)
  "Serializes a message object of type '<kinova_wheelchair_velocity-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheelchair_velocity_result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_wheelchair_velocity-response>) istream)
  "Deserializes a message object of type '<kinova_wheelchair_velocity-response>"
    (cl:setf (cl:slot-value msg 'wheelchair_velocity_result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_wheelchair_velocity-response>)))
  "Returns string type for a service object of type '<kinova_wheelchair_velocity-response>"
  "kinovasev/kinova_wheelchair_velocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_wheelchair_velocity-response)))
  "Returns string type for a service object of type 'kinova_wheelchair_velocity-response"
  "kinovasev/kinova_wheelchair_velocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_wheelchair_velocity-response>)))
  "Returns md5sum for a message object of type '<kinova_wheelchair_velocity-response>"
  "1404a3850413496a35cd6eb1f5887dd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_wheelchair_velocity-response)))
  "Returns md5sum for a message object of type 'kinova_wheelchair_velocity-response"
  "1404a3850413496a35cd6eb1f5887dd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_wheelchair_velocity-response>)))
  "Returns full string definition for message of type '<kinova_wheelchair_velocity-response>"
  (cl:format cl:nil "bool wheelchair_velocity_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_wheelchair_velocity-response)))
  "Returns full string definition for message of type 'kinova_wheelchair_velocity-response"
  (cl:format cl:nil "bool wheelchair_velocity_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_wheelchair_velocity-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_wheelchair_velocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_wheelchair_velocity-response
    (cl:cons ':wheelchair_velocity_result (wheelchair_velocity_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'kinova_wheelchair_velocity)))
  'kinova_wheelchair_velocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'kinova_wheelchair_velocity)))
  'kinova_wheelchair_velocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_wheelchair_velocity)))
  "Returns string type for a service object of type '<kinova_wheelchair_velocity>"
  "kinovasev/kinova_wheelchair_velocity")