; Auto-generated. Do not edit!


(cl:in-package kinovasev-srv)


;//! \htmlinclude kinova_posevalue-request.msg.html

(cl:defclass <kinova_posevalue-request> (roslisp-msg-protocol:ros-message)
  ((unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform "")
   (pose_value
    :reader pose_value
    :initarg :pose_value
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (relative_
    :reader relative_
    :initarg :relative_
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass kinova_posevalue-request (<kinova_posevalue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_posevalue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_posevalue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_posevalue-request> is deprecated: use kinovasev-srv:kinova_posevalue-request instead.")))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <kinova_posevalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:unit-val is deprecated.  Use kinovasev-srv:unit instead.")
  (unit m))

(cl:ensure-generic-function 'pose_value-val :lambda-list '(m))
(cl:defmethod pose_value-val ((m <kinova_posevalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:pose_value-val is deprecated.  Use kinovasev-srv:pose_value instead.")
  (pose_value m))

(cl:ensure-generic-function 'relative_-val :lambda-list '(m))
(cl:defmethod relative_-val ((m <kinova_posevalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:relative_-val is deprecated.  Use kinovasev-srv:relative_ instead.")
  (relative_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_posevalue-request>) ostream)
  "Serializes a message object of type '<kinova_posevalue-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pose_value))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relative_) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_posevalue-request>) istream)
  "Deserializes a message object of type '<kinova_posevalue-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'relative_) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_posevalue-request>)))
  "Returns string type for a service object of type '<kinova_posevalue-request>"
  "kinovasev/kinova_posevalueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_posevalue-request)))
  "Returns string type for a service object of type 'kinova_posevalue-request"
  "kinovasev/kinova_posevalueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_posevalue-request>)))
  "Returns md5sum for a message object of type '<kinova_posevalue-request>"
  "e893863d15a68f0207dff3b2ba094393")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_posevalue-request)))
  "Returns md5sum for a message object of type 'kinova_posevalue-request"
  "e893863d15a68f0207dff3b2ba094393")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_posevalue-request>)))
  "Returns full string definition for message of type '<kinova_posevalue-request>"
  (cl:format cl:nil "string unit~%float32[] pose_value~%bool relative_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_posevalue-request)))
  "Returns full string definition for message of type 'kinova_posevalue-request"
  (cl:format cl:nil "string unit~%float32[] pose_value~%bool relative_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_posevalue-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'unit))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_posevalue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_posevalue-request
    (cl:cons ':unit (unit msg))
    (cl:cons ':pose_value (pose_value msg))
    (cl:cons ':relative_ (relative_ msg))
))
;//! \htmlinclude kinova_posevalue-response.msg.html

(cl:defclass <kinova_posevalue-response> (roslisp-msg-protocol:ros-message)
  ((pose_control_result
    :reader pose_control_result
    :initarg :pose_control_result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass kinova_posevalue-response (<kinova_posevalue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_posevalue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_posevalue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_posevalue-response> is deprecated: use kinovasev-srv:kinova_posevalue-response instead.")))

(cl:ensure-generic-function 'pose_control_result-val :lambda-list '(m))
(cl:defmethod pose_control_result-val ((m <kinova_posevalue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:pose_control_result-val is deprecated.  Use kinovasev-srv:pose_control_result instead.")
  (pose_control_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_posevalue-response>) ostream)
  "Serializes a message object of type '<kinova_posevalue-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pose_control_result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_posevalue-response>) istream)
  "Deserializes a message object of type '<kinova_posevalue-response>"
    (cl:setf (cl:slot-value msg 'pose_control_result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_posevalue-response>)))
  "Returns string type for a service object of type '<kinova_posevalue-response>"
  "kinovasev/kinova_posevalueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_posevalue-response)))
  "Returns string type for a service object of type 'kinova_posevalue-response"
  "kinovasev/kinova_posevalueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_posevalue-response>)))
  "Returns md5sum for a message object of type '<kinova_posevalue-response>"
  "e893863d15a68f0207dff3b2ba094393")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_posevalue-response)))
  "Returns md5sum for a message object of type 'kinova_posevalue-response"
  "e893863d15a68f0207dff3b2ba094393")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_posevalue-response>)))
  "Returns full string definition for message of type '<kinova_posevalue-response>"
  (cl:format cl:nil "bool pose_control_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_posevalue-response)))
  "Returns full string definition for message of type 'kinova_posevalue-response"
  (cl:format cl:nil "bool pose_control_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_posevalue-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_posevalue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_posevalue-response
    (cl:cons ':pose_control_result (pose_control_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'kinova_posevalue)))
  'kinova_posevalue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'kinova_posevalue)))
  'kinova_posevalue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_posevalue)))
  "Returns string type for a service object of type '<kinova_posevalue>"
  "kinovasev/kinova_posevalue")