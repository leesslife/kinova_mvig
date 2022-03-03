// Auto-generated. Do not edit!

// (in-package kinovasev.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class kinova_posevelocityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.t_x = null;
      this.t_y = null;
      this.t_z = null;
      this.ar = null;
      this.ap = null;
      this.az = null;
      this.kinova_s = null;
    }
    else {
      if (initObj.hasOwnProperty('t_x')) {
        this.t_x = initObj.t_x
      }
      else {
        this.t_x = 0.0;
      }
      if (initObj.hasOwnProperty('t_y')) {
        this.t_y = initObj.t_y
      }
      else {
        this.t_y = 0.0;
      }
      if (initObj.hasOwnProperty('t_z')) {
        this.t_z = initObj.t_z
      }
      else {
        this.t_z = 0.0;
      }
      if (initObj.hasOwnProperty('ar')) {
        this.ar = initObj.ar
      }
      else {
        this.ar = 0.0;
      }
      if (initObj.hasOwnProperty('ap')) {
        this.ap = initObj.ap
      }
      else {
        this.ap = 0.0;
      }
      if (initObj.hasOwnProperty('az')) {
        this.az = initObj.az
      }
      else {
        this.az = 0.0;
      }
      if (initObj.hasOwnProperty('kinova_s')) {
        this.kinova_s = initObj.kinova_s
      }
      else {
        this.kinova_s = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinova_posevelocityRequest
    // Serialize message field [t_x]
    bufferOffset = _serializer.float32(obj.t_x, buffer, bufferOffset);
    // Serialize message field [t_y]
    bufferOffset = _serializer.float32(obj.t_y, buffer, bufferOffset);
    // Serialize message field [t_z]
    bufferOffset = _serializer.float32(obj.t_z, buffer, bufferOffset);
    // Serialize message field [ar]
    bufferOffset = _serializer.float32(obj.ar, buffer, bufferOffset);
    // Serialize message field [ap]
    bufferOffset = _serializer.float32(obj.ap, buffer, bufferOffset);
    // Serialize message field [az]
    bufferOffset = _serializer.float32(obj.az, buffer, bufferOffset);
    // Serialize message field [kinova_s]
    bufferOffset = _serializer.int64(obj.kinova_s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_posevelocityRequest
    let len;
    let data = new kinova_posevelocityRequest(null);
    // Deserialize message field [t_x]
    data.t_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t_y]
    data.t_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t_z]
    data.t_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ar]
    data.ar = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ap]
    data.ap = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [az]
    data.az = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kinova_s]
    data.kinova_s = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_posevelocityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5b8020c58cf1300aa3220287a9be575';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 t_x
    float32 t_y
    float32 t_z
    float32 ar
    float32 ap
    float32 az
    int64 kinova_s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_posevelocityRequest(null);
    if (msg.t_x !== undefined) {
      resolved.t_x = msg.t_x;
    }
    else {
      resolved.t_x = 0.0
    }

    if (msg.t_y !== undefined) {
      resolved.t_y = msg.t_y;
    }
    else {
      resolved.t_y = 0.0
    }

    if (msg.t_z !== undefined) {
      resolved.t_z = msg.t_z;
    }
    else {
      resolved.t_z = 0.0
    }

    if (msg.ar !== undefined) {
      resolved.ar = msg.ar;
    }
    else {
      resolved.ar = 0.0
    }

    if (msg.ap !== undefined) {
      resolved.ap = msg.ap;
    }
    else {
      resolved.ap = 0.0
    }

    if (msg.az !== undefined) {
      resolved.az = msg.az;
    }
    else {
      resolved.az = 0.0
    }

    if (msg.kinova_s !== undefined) {
      resolved.kinova_s = msg.kinova_s;
    }
    else {
      resolved.kinova_s = 0
    }

    return resolved;
    }
};

class kinova_posevelocityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_velocity_result = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_velocity_result')) {
        this.pose_velocity_result = initObj.pose_velocity_result
      }
      else {
        this.pose_velocity_result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinova_posevelocityResponse
    // Serialize message field [pose_velocity_result]
    bufferOffset = _serializer.bool(obj.pose_velocity_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_posevelocityResponse
    let len;
    let data = new kinova_posevelocityResponse(null);
    // Deserialize message field [pose_velocity_result]
    data.pose_velocity_result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_posevelocityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f9c4c1876902f5b2f77c072de456a87';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool pose_velocity_result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_posevelocityResponse(null);
    if (msg.pose_velocity_result !== undefined) {
      resolved.pose_velocity_result = msg.pose_velocity_result;
    }
    else {
      resolved.pose_velocity_result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: kinova_posevelocityRequest,
  Response: kinova_posevelocityResponse,
  md5sum() { return '96fa5deefb115b403d86e82cbda4bf34'; },
  datatype() { return 'kinovasev/kinova_posevelocity'; }
};
