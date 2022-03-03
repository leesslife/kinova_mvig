// Auto-generated. Do not edit!

// (in-package jaco_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class InteractionParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center = null;
      this.radius = null;
      this.cut_force_k = null;
      this.cut_force_d = null;
      this.direction = null;
      this.plane = null;
    }
    else {
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('cut_force_k')) {
        this.cut_force_k = initObj.cut_force_k
      }
      else {
        this.cut_force_k = 0.0;
      }
      if (initObj.hasOwnProperty('cut_force_d')) {
        this.cut_force_d = initObj.cut_force_d
      }
      else {
        this.cut_force_d = 0.0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('plane')) {
        this.plane = initObj.plane
      }
      else {
        this.plane = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InteractionParams
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float64(obj.radius, buffer, bufferOffset);
    // Serialize message field [cut_force_k]
    bufferOffset = _serializer.float64(obj.cut_force_k, buffer, bufferOffset);
    // Serialize message field [cut_force_d]
    bufferOffset = _serializer.float64(obj.cut_force_d, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [plane]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.plane, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InteractionParams
    let len;
    let data = new InteractionParams(null);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cut_force_k]
    data.cut_force_k = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cut_force_d]
    data.cut_force_d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [plane]
    data.plane = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jaco_control/InteractionParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51a6ad46b6075e569062a950d4a73881';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point center
    float64 radius
    float64 cut_force_k
    float64 cut_force_d
    geometry_msgs/Vector3 direction
    geometry_msgs/Vector3 plane
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InteractionParams(null);
    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Point.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Point()
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.cut_force_k !== undefined) {
      resolved.cut_force_k = msg.cut_force_k;
    }
    else {
      resolved.cut_force_k = 0.0
    }

    if (msg.cut_force_d !== undefined) {
      resolved.cut_force_d = msg.cut_force_d;
    }
    else {
      resolved.cut_force_d = 0.0
    }

    if (msg.direction !== undefined) {
      resolved.direction = geometry_msgs.msg.Vector3.Resolve(msg.direction)
    }
    else {
      resolved.direction = new geometry_msgs.msg.Vector3()
    }

    if (msg.plane !== undefined) {
      resolved.plane = geometry_msgs.msg.Vector3.Resolve(msg.plane)
    }
    else {
      resolved.plane = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = InteractionParams;
