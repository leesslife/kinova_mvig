; Auto-generated. Do not edit!


(cl:in-package kinovasev-srv)


;//! \htmlinclude kinova_wheelchair_pose-request.msg.html

(cl:defclass <kinova_wheelchair_pose-request> (roslisp-msg-protocol:ros-message)
  ((linear_x
    :reader linear_x
    :initarg :linear_x
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (wheel_ms
    :reader wheel_ms
    :initarg :wheel_ms
    :type cl:integer
    :initform 0))
)

(cl:defclass kinova_wheelchair_pose-request (<kinova_wheelchair_pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_wheelchair_pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_wheelchair_pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_wheelchair_pose-request> is deprecated: use kinovasev-srv:kinova_wheelchair_pose-request instead.")))

(cl:ensure-generic-function 'linear_x-val :lambda-list '(m))
(cl:defmethod linear_x-val ((m <kinova_wheelchair_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:linear_x-val is deprecated.  Use kinovasev-srv:linear_x instead.")
  (linear_x m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <kinova_wheelchair_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:theta-val is deprecated.  Use kinovasev-srv:theta instead.")
  (theta m))

(cl:ensure-generic-function 'wheel_ms-val :lambda-list '(m))
(cl:defmethod wheel_ms-val ((m <kinova_wheelchair_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:wheel_ms-val is deprecated.  Use kinovasev-srv:wheel_ms instead.")
  (wheel_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_wheelchair_pose-request>) ostream)
  "Serializes a message object of type '<kinova_wheelchair_pose-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_wheelchair_pose-request>) istream)
  "Deserializes a message object of type '<kinova_wheelchair_pose-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_wheelchair_pose-request>)))
  "Returns string type for a service object of type '<kinova_wheelchair_pose-request>"
  "kinovasev/kinova_wheelchair_poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_wheelchair_pose-request)))
  "Returns string type for a service object of type 'kinova_wheelchair_pose-request"
  "kinovasev/kinova_wheelchair_poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_wheelchair_pose-request>)))
  "Returns md5sum for a message object of type '<kinova_wheelchair_pose-request>"
  "e89ba642839222e259b78b5b10d919f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_wheelchair_pose-request)))
  "Returns md5sum for a message object of type 'kinova_wheelchair_pose-request"
  "e89ba642839222e259b78b5b10d919f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_wheelchair_pose-request>)))
  "Returns full string definition for message of type '<kinova_wheelchair_pose-request>"
  (cl:format cl:nil "float32 linear_x~%float32 theta~%int64 wheel_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_wheelchair_pose-request)))
  "Returns full string definition for message of type 'kinova_wheelchair_pose-request"
  (cl:format cl:nil "float32 linear_x~%float32 theta~%int64 wheel_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_wheelchair_pose-request>))
  (cl:+ 0
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_wheelchair_pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_wheelchair_pose-request
    (cl:cons ':linear_x (linear_x msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':wheel_ms (wheel_ms msg))
))
;//! \htmlinclude kinova_wheelchair_pose-response.msg.html

(cl:defclass <kinova_wheelchair_pose-response> (roslisp-msg-protocol:ros-message)
  ((wheelchair_pose_result
    :reader wheelchair_pose_result
    :initarg :wheelchair_pose_result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass kinova_wheelchair_pose-response (<kinova_wheelchair_pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_wheelchair_pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_wheelchair_pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_wheelchair_pose-response> is deprecated: use kinovasev-srv:kinova_wheelchair_pose-response instead.")))

(cl:ensure-generic-function 'wheelchair_pose_result-val :lambda-list '(m))
(cl:defmethod wheelchair_pose_result-val ((m <kinova_wheelchair_pose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:wheelchair_pose_result-val is deprecated.  Use kinovasev-srv:wheelchair_pose_result instead.")
  (wheelchair_pose_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_wheelchair_pose-response>) ostream)
  "Serializes a message object of type '<kinova_wheelchair_pose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheelchair_pose_result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_wheelchair_pose-response>) istream)
  "Deserializes a message object of type '<kinova_wheelchair_pose-response>"
    (cl:setf (cl:slot-value msg 'wheelchair_pose_result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_wheelchair_pose-response>)))
  "Returns string type for a service object of type '<kinova_wheelchair_pose-response>"
  "kinovasev/kinova_wheelchair_poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_wheelchair_pose-response)))
  "Returns string type for a service object of type 'kinova_wheelchair_pose-response"
  "kinovasev/kinova_wheelchair_poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_wheelchair_pose-response>)))
  "Returns md5sum for a message object of type '<kinova_wheelchair_pose-response>"
  "e89ba642839222e259b78b5b10d919f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_wheelchair_pose-response)))
  "Returns md5sum for a message object of type 'kinova_wheelchair_pose-response"
  "e89ba642839222e259b78b5b10d919f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_wheelchair_pose-response>)))
  "Returns full string definition for message of type '<kinova_wheelchair_pose-response>"
  (cl:format cl:nil "bool wheelchair_pose_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_wheelchair_pose-response)))
  "Returns full string definition for message of type 'kinova_wheelchair_pose-response"
  (cl:format cl:nil "bool wheelchair_pose_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_wheelchair_pose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_wheelchair_pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_wheelchair_pose-response
    (cl:cons ':wheelchair_pose_result (wheelchair_pose_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'kinova_wheelchair_pose)))
  'kinova_wheelchair_pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'kinova_wheelchair_pose)))
  'kinova_wheelchair_pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_wheelchair_pose)))
  "Returns string type for a service object of type '<kinova_wheelchair_pose>"
  "kinovasev/kinova_wheelchair_pose")