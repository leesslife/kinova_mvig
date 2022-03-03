; Auto-generated. Do not edit!


(cl:in-package kinovasev-srv)


;//! \htmlinclude kinova_fingervalue-request.msg.html

(cl:defclass <kinova_fingervalue-request> (roslisp-msg-protocol:ros-message)
  ((unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform "")
   (finger_value
    :reader finger_value
    :initarg :finger_value
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (relative_
    :reader relative_
    :initarg :relative_
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass kinova_fingervalue-request (<kinova_fingervalue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_fingervalue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_fingervalue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_fingervalue-request> is deprecated: use kinovasev-srv:kinova_fingervalue-request instead.")))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <kinova_fingervalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:unit-val is deprecated.  Use kinovasev-srv:unit instead.")
  (unit m))

(cl:ensure-generic-function 'finger_value-val :lambda-list '(m))
(cl:defmethod finger_value-val ((m <kinova_fingervalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:finger_value-val is deprecated.  Use kinovasev-srv:finger_value instead.")
  (finger_value m))

(cl:ensure-generic-function 'relative_-val :lambda-list '(m))
(cl:defmethod relative_-val ((m <kinova_fingervalue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:relative_-val is deprecated.  Use kinovasev-srv:relative_ instead.")
  (relative_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_fingervalue-request>) ostream)
  "Serializes a message object of type '<kinova_fingervalue-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'finger_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'finger_value))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relative_) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_fingervalue-request>) istream)
  "Deserializes a message object of type '<kinova_fingervalue-request>"
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
  (cl:setf (cl:slot-value msg 'finger_value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'finger_value)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_fingervalue-request>)))
  "Returns string type for a service object of type '<kinova_fingervalue-request>"
  "kinovasev/kinova_fingervalueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_fingervalue-request)))
  "Returns string type for a service object of type 'kinova_fingervalue-request"
  "kinovasev/kinova_fingervalueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_fingervalue-request>)))
  "Returns md5sum for a message object of type '<kinova_fingervalue-request>"
  "80b4b1c7ca93496e230bb138b990fbaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_fingervalue-request)))
  "Returns md5sum for a message object of type 'kinova_fingervalue-request"
  "80b4b1c7ca93496e230bb138b990fbaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_fingervalue-request>)))
  "Returns full string definition for message of type '<kinova_fingervalue-request>"
  (cl:format cl:nil "string unit~%float32[] finger_value~%bool relative_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_fingervalue-request)))
  "Returns full string definition for message of type 'kinova_fingervalue-request"
  (cl:format cl:nil "string unit~%float32[] finger_value~%bool relative_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_fingervalue-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'unit))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'finger_value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_fingervalue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_fingervalue-request
    (cl:cons ':unit (unit msg))
    (cl:cons ':finger_value (finger_value msg))
    (cl:cons ':relative_ (relative_ msg))
))
;//! \htmlinclude kinova_fingervalue-response.msg.html

(cl:defclass <kinova_fingervalue-response> (roslisp-msg-protocol:ros-message)
  ((finger_control_result
    :reader finger_control_result
    :initarg :finger_control_result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass kinova_fingervalue-response (<kinova_fingervalue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinova_fingervalue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinova_fingervalue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-srv:<kinova_fingervalue-response> is deprecated: use kinovasev-srv:kinova_fingervalue-response instead.")))

(cl:ensure-generic-function 'finger_control_result-val :lambda-list '(m))
(cl:defmethod finger_control_result-val ((m <kinova_fingervalue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-srv:finger_control_result-val is deprecated.  Use kinovasev-srv:finger_control_result instead.")
  (finger_control_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinova_fingervalue-response>) ostream)
  "Serializes a message object of type '<kinova_fingervalue-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finger_control_result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinova_fingervalue-response>) istream)
  "Deserializes a message object of type '<kinova_fingervalue-response>"
    (cl:setf (cl:slot-value msg 'finger_control_result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinova_fingervalue-response>)))
  "Returns string type for a service object of type '<kinova_fingervalue-response>"
  "kinovasev/kinova_fingervalueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_fingervalue-response)))
  "Returns string type for a service object of type 'kinova_fingervalue-response"
  "kinovasev/kinova_fingervalueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinova_fingervalue-response>)))
  "Returns md5sum for a message object of type '<kinova_fingervalue-response>"
  "80b4b1c7ca93496e230bb138b990fbaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinova_fingervalue-response)))
  "Returns md5sum for a message object of type 'kinova_fingervalue-response"
  "80b4b1c7ca93496e230bb138b990fbaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinova_fingervalue-response>)))
  "Returns full string definition for message of type '<kinova_fingervalue-response>"
  (cl:format cl:nil "bool finger_control_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinova_fingervalue-response)))
  "Returns full string definition for message of type 'kinova_fingervalue-response"
  (cl:format cl:nil "bool finger_control_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinova_fingervalue-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinova_fingervalue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'kinova_fingervalue-response
    (cl:cons ':finger_control_result (finger_control_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'kinova_fingervalue)))
  'kinova_fingervalue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'kinova_fingervalue)))
  'kinova_fingervalue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinova_fingervalue)))
  "Returns string type for a service object of type '<kinova_fingervalue>"
  "kinovasev/kinova_fingervalue")