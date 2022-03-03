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

class kinova_wheelchair_velocityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.v_x = null;
      this.v_theta = null;
      this.wheel_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('v_x')) {
        this.v_x = initObj.v_x
      }
      else {
        this.v_x = 0.0;
      }
      if (initObj.hasOwnProperty('v_theta')) {
        this.v_theta = initObj.v_theta
      }
      else {
        this.v_theta = 0.0;
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
    // Serializes a message object of type kinova_wheelchair_velocityRequest
    // Serialize message field [v_x]
    bufferOffset = _serializer.float32(obj.v_x, buffer, bufferOffset);
    // Serialize message field [v_theta]
    bufferOffset = _serializer.float32(obj.v_theta, buffer, bufferOffset);
    // Serialize message field [wheel_ms]
    bufferOffset = _serializer.int64(obj.wheel_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_wheelchair_velocityRequest
    let len;
    let data = new kinova_wheelchair_velocityRequest(null);
    // Deserialize message field [v_x]
    data.v_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_theta]
    data.v_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_ms]
    data.wheel_ms = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_wheelchair_velocityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da279cff62d0e5dc22e2f314875139e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 v_x
    float32 v_theta
    int64 wheel_ms
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_wheelchair_velocityRequest(null);
    if (msg.v_x !== undefined) {
      resolved.v_x = msg.v_x;
    }
    else {
      resolved.v_x = 0.0
    }

    if (msg.v_theta !== undefined) {
      resolved.v_theta = msg.v_theta;
    }
    else {
      resolved.v_theta = 0.0
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

class kinova_wheelchair_velocityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheelchair_velocity_result = null;
    }
    else {
      if (initObj.hasOwnProperty('wheelchair_velocity_result')) {
        this.wheelchair_velocity_result = initObj.wheelchair_velocity_result
      }
      else {
        this.wheelchair_velocity_result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinova_wheelchair_velocityResponse
    // Serialize message field [wheelchair_velocity_result]
    bufferOffset = _serializer.bool(obj.wheelchair_velocity_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_wheelchair_velocityResponse
    let len;
    let data = new kinova_wheelchair_velocityResponse(null);
    // Deserialize message field [wheelchair_velocity_result]
    data.wheelchair_velocity_result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_wheelchair_velocityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '540dd078efa242886655b850b57faf2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool wheelchair_velocity_result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_wheelchair_velocityResponse(null);
    if (msg.wheelchair_velocity_result !== undefined) {
      resolved.wheelchair_velocity_result = msg.wheelchair_velocity_result;
    }
    else {
      resolved.wheelchair_velocity_result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: kinova_wheelchair_velocityRequest,
  Response: kinova_wheelchair_velocityResponse,
  md5sum() { return '1404a3850413496a35cd6eb1f5887dd3'; },
  datatype() { return 'kinovasev/kinova_wheelchair_velocity'; }
};
