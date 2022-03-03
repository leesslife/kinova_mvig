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

class kinova_wheelchair_poseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear_x = null;
      this.theta = null;
      this.wheel_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('linear_x')) {
        this.linear_x = initObj.linear_x
      }
      else {
        this.linear_x = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_ms')) {
        this.wheel_ms = initObj.wheel_ms
      }
      else {
        this.wheel_ms = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinova_wheelchair_poseRequest
    // Serialize message field [linear_x]
    bufferOffset = _serializer.float32(obj.linear_x, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [wheel_ms]
    bufferOffset = _serializer.int64(obj.wheel_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_wheelchair_poseRequest
    let len;
    let data = new kinova_wheelchair_poseRequest(null);
    // Deserialize message field [linear_x]
    data.linear_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_ms]
    data.wheel_ms = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_wheelchair_poseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f9d2d4c0d1c7a2ae6ef81590e11f475';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 linear_x
    float32 theta
    int64 wheel_ms
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_wheelchair_poseRequest(null);
    if (msg.linear_x !== undefined) {
      resolved.linear_x = msg.linear_x;
    }
    else {
      resolved.linear_x = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.wheel_ms !== undefined) {
      resolved.wheel_ms = msg.wheel_ms;
    }
    else {
      resolved.wheel_ms = 0
    }

    return resolved;
    }
};

class kinova_wheelchair_poseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheelchair_pose_result = null;
    }
    else {
      if (initObj.hasOwnProperty('wheelchair_pose_result')) {
        this.wheelchair_pose_result = initObj.wheelchair_pose_result
      }
      else {
        this.wheelchair_pose_result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinova_wheelchair_poseResponse
    // Serialize message field [wheelchair_pose_result]
    bufferOffset = _serializer.bool(obj.wheelchair_pose_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_wheelchair_poseResponse
    let len;
    let data = new kinova_wheelchair_poseResponse(null);
    // Deserialize message field [wheelchair_pose_result]
    data.wheelchair_pose_result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_wheelchair_poseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '620c91fdb6f4fd79d27a48c53b4ea492';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool wheelchair_pose_result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_wheelchair_poseResponse(null);
    if (msg.wheelchair_pose_result !== undefined) {
      resolved.wheelchair_pose_result = msg.wheelchair_pose_result;
    }
    else {
      resolved.wheelchair_pose_result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: kinova_wheelchair_poseRequest,
  Response: kinova_wheelchair_poseResponse,
  md5sum() { return 'e89ba642839222e259b78b5b10d919f7'; },
  datatype() { return 'kinovasev/kinova_wheelchair_pose'; }
};
