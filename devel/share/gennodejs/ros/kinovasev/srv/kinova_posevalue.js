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

class kinova_posevalueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.unit = null;
      this.pose_value = null;
      this.relative_ = null;
    }
    else {
      if (initObj.hasOwnProperty('unit')) {
        this.unit = initObj.unit
      }
      else {
        this.unit = '';
      }
      if (initObj.hasOwnProperty('pose_value')) {
        this.pose_value = initObj.pose_value
      }
      else {
        this.pose_value = [];
      }
      if (initObj.hasOwnProperty('relative_')) {
        this.relative_ = initObj.relative_
      }
      else {
        this.relative_ = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinova_posevalueRequest
    // Serialize message field [unit]
    bufferOffset = _serializer.string(obj.unit, buffer, bufferOffset);
    // Serialize message field [pose_value]
    bufferOffset = _arraySerializer.float32(obj.pose_value, buffer, bufferOffset, null);
    // Serialize message field [relative_]
    bufferOffset = _serializer.bool(obj.relative_, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_posevalueRequest
    let len;
    let data = new kinova_posevalueRequest(null);
    // Deserialize message field [unit]
    data.unit = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose_value]
    data.pose_value = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [relative_]
    data.relative_ = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.unit);
    length += 4 * object.pose_value.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_posevalueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57936cf6845123c96d5dda05ee9dc6ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string unit
    float32[] pose_value
    bool relative_
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_posevalueRequest(null);
    if (msg.unit !== undefined) {
      resolved.unit = msg.unit;
    }
    else {
      resolved.unit = ''
    }

    if (msg.pose_value !== undefined) {
      resolved.pose_value = msg.pose_value;
    }
    else {
      resolved.pose_value = []
    }

    if (msg.relative_ !== undefined) {
      resolved.relative_ = msg.relative_;
    }
    else {
      resolved.relative_ = false
    }

    return resolved;
    }
};

class kinova_posevalueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_control_result = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_control_result')) {
        this.pose_control_result = initObj.pose_control_result
      }
      else {
        this.pose_control_result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinova_posevalueResponse
    // Serialize message field [pose_control_result]
    bufferOffset = _serializer.bool(obj.pose_control_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_posevalueResponse
    let len;
    let data = new kinova_posevalueResponse(null);
    // Deserialize message field [pose_control_result]
    data.pose_control_result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_posevalueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bca241d26520b6469084355b1783b41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool pose_control_result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_posevalueResponse(null);
    if (msg.pose_control_result !== undefined) {
      resolved.pose_control_result = msg.pose_control_result;
    }
    else {
      resolved.pose_control_result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: kinova_posevalueRequest,
  Response: kinova_posevalueResponse,
  md5sum() { return 'e893863d15a68f0207dff3b2ba094393'; },
  datatype() { return 'kinovasev/kinova_posevalue'; }
};
