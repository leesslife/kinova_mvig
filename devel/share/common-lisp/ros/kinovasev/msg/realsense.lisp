; Auto-generated. Do not edit!


(cl:in-package kinovasev-msg)


;//! \htmlinclude realsense.msg.html

(cl:defclass <realsense> (roslisp-msg-protocol:ros-message)
  ((startid
    :reader startid
    :initarg :startid
    :type cl:integer
    :initform 0)
   (startH
    :reader startH
    :initarg :startH
    :type (cl:vector cl:float)
   :initform (cl:make-array 16 :element-type 'cl:float :initial-element 0.0))
   (endid
    :reader endid
    :initarg :endid
    :type cl:integer
    :initform 0)
   (endH
    :reader endH
    :initarg :endH
    :type (cl:vector cl:float)
   :initform (cl:make-array 16 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass realsense (<realsense>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <realsense>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'realsense)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinovasev-msg:<realsense> is deprecated: use kinovasev-msg:realsense instead.")))

(cl:ensure-generic-function 'startid-val :lambda-list '(m))
(cl:defmethod startid-val ((m <realsense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-msg:startid-val is deprecated.  Use kinovasev-msg:startid instead.")
  (startid m))

(cl:ensure-generic-function 'startH-val :lambda-list '(m))
(cl:defmethod startH-val ((m <realsense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-msg:startH-val is deprecated.  Use kinovasev-msg:startH instead.")
  (startH m))

(cl:ensure-generic-function 'endid-val :lambda-list '(m))
(cl:defmethod endid-val ((m <realsense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-msg:endid-val is deprecated.  Use kinovasev-msg:endid instead.")
  (endid m))

(cl:ensure-generic-function 'endH-val :lambda-list '(m))
(cl:defmethod endH-val ((m <realsense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinovasev-msg:endH-val is deprecated.  Use kinovasev-msg:endH instead.")
  (endH m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <realsense>) ostream)
  "Serializes a message object of type '<realsense>"
  (cl:let* ((signed (cl:slot-value msg 'startid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'startH))
  (cl:let* ((signed (cl:slot-value msg 'endid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'endH))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <realsense>) istream)
  "Deserializes a message object of type '<realsense>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'startid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'startH) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'startH)))
    (cl:dotimes (i 16)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'endid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'endH) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'endH)))
    (cl:dotimes (i 16)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<realsense>)))
  "Returns string type for a message object of type '<realsense>"
  "kinovasev/realsense")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'realsense)))
  "Returns string type for a message object of type 'realsense"
  "kinovasev/realsense")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<realsense>)))
  "Returns md5sum for a message object of type '<realsense>"
  "277fc24e512a5e4fd934ce478ad44fa1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'realsense)))
  "Returns md5sum for a message object of type 'realsense"
  "277fc24e512a5e4fd934ce478ad44fa1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<realsense>)))
  "Returns full string definition for message of type '<realsense>"
  (cl:format cl:nil "int32      startid~%float64[16]  startH~%int32      endid~%float64[16]  endH~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'realsense)))
  "Returns full string definition for message of type 'realsense"
  (cl:format cl:nil "int32      startid~%float64[16]  startH~%int32      endid~%float64[16]  endH~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <realsense>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'startH) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'endH) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <realsense>))
  "Converts a ROS message object to a list"
  (cl:list 'realsense
    (cl:cons ':startid (startid msg))
    (cl:cons ':startH (startH msg))
    (cl:cons ':endid (endid msg))
    (cl:cons ':endH (endH msg))
))
