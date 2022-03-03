; Auto-generated. Do not edit!


(cl:in-package jaco_control-msg)


;//! \htmlinclude InteractionParams.msg.html

(cl:defclass <InteractionParams> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (cut_force_k
    :reader cut_force_k
    :initarg :cut_force_k
    :type cl:float
    :initform 0.0)
   (cut_force_d
    :reader cut_force_d
    :initarg :cut_force_d
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (plane
    :reader plane
    :initarg :plane
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass InteractionParams (<InteractionParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InteractionParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InteractionParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaco_control-msg:<InteractionParams> is deprecated: use jaco_control-msg:InteractionParams instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <InteractionParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_control-msg:center-val is deprecated.  Use jaco_control-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <InteractionParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_control-msg:radius-val is deprecated.  Use jaco_control-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'cut_force_k-val :lambda-list '(m))
(cl:defmethod cut_force_k-val ((m <InteractionParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_control-msg:cut_force_k-val is deprecated.  Use jaco_control-msg:cut_force_k instead.")
  (cut_force_k m))

(cl:ensure-generic-function 'cut_force_d-val :lambda-list '(m))
(cl:defmethod cut_force_d-val ((m <InteractionParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_control-msg:cut_force_d-val is deprecated.  Use jaco_control-msg:cut_force_d instead.")
  (cut_force_d m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <InteractionParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_control-msg:direction-val is deprecated.  Use jaco_control-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'plane-val :lambda-list '(m))
(cl:defmethod plane-val ((m <InteractionParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_control-msg:plane-val is deprecated.  Use jaco_control-msg:plane instead.")
  (plane m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InteractionParams>) ostream)
  "Serializes a message object of type '<InteractionParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cut_force_k))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cut_force_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plane) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InteractionParams>) istream)
  "Deserializes a message object of type '<InteractionParams>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cut_force_k) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cut_force_d) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plane) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InteractionParams>)))
  "Returns string type for a message object of type '<InteractionParams>"
  "jaco_control/InteractionParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InteractionParams)))
  "Returns string type for a message object of type 'InteractionParams"
  "jaco_control/InteractionParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InteractionParams>)))
  "Returns md5sum for a message object of type '<InteractionParams>"
  "51a6ad46b6075e569062a950d4a73881")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InteractionParams)))
  "Returns md5sum for a message object of type 'InteractionParams"
  "51a6ad46b6075e569062a950d4a73881")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InteractionParams>)))
  "Returns full string definition for message of type '<InteractionParams>"
  (cl:format cl:nil "geometry_msgs/Point center~%float64 radius~%float64 cut_force_k~%float64 cut_force_d~%geometry_msgs/Vector3 direction~%geometry_msgs/Vector3 plane~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InteractionParams)))
  "Returns full string definition for message of type 'InteractionParams"
  (cl:format cl:nil "geometry_msgs/Point center~%float64 radius~%float64 cut_force_k~%float64 cut_force_d~%geometry_msgs/Vector3 direction~%geometry_msgs/Vector3 plane~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InteractionParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plane))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InteractionParams>))
  "Converts a ROS message object to a list"
  (cl:list 'InteractionParams
    (cl:cons ':center (center msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':cut_force_k (cut_force_k msg))
    (cl:cons ':cut_force_d (cut_force_d msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':plane (plane msg))
))
