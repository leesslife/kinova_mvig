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

class kinova_jointvalueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_control_mode = null;
      this.joint1 = null;
      this.joint2 = null;
      this.joint3 = null;
      this.joint4 = null;
      this.joint5 = null;
      this.joint6 = null;
      this.joint7 = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_control_mode')) {
        this.joint_control_mode = initObj.joint_control_mode
      }
      else {
        this.joint_control_mode = '';
      }
      if (initObj.hasOwnProperty('joint1')) {
        this.joint1 = initObj.joint1
      }
      else {
        this.joint1 = 0.0;
      }
      if (initObj.hasOwnProperty('joint2')) {
        this.joint2 = initObj.joint2
      }
      else {
        this.joint2 = 0.0;
      }
      if (initObj.hasOwnProperty('joint3')) {
        this.joint3 = initObj.joint3
      }
      else {
        this.joint3 = 0.0;
      }
      if (initObj.hasOwnProperty('joint4')) {
        this.joint4 = initObj.joint4
      }
      else {
        this.joint4 = 0.0;
      }
      if (initObj.hasOwnProperty('joint5')) {
        this.joint5 = initObj.joint5
      }
      else {
        this.joint5 = 0.0;
      }
      if (initObj.hasOwnProperty('joint6')) {
        this.joint6 = initObj.joint6
      }
      else {
        this.joint6 = 0.0;
      }
      if (initObj.hasOwnProperty('joint7')) {
        this.joint7 = initObj.joint7
      }
      else {
        this.joint7 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinova_jointvalueRequest
    // Serialize message field [joint_control_mode]
    bufferOffset = _serializer.string(obj.joint_control_mode, buffer, bufferOffset);
    // Serialize message field [joint1]
    bufferOffset = _serializer.float32(obj.joint1, buffer, bufferOffset);
    // Serialize message field [joint2]
    bufferOffset = _serializer.float32(obj.joint2, buffer, bufferOffset);
    // Serialize message field [joint3]
    bufferOffset = _serializer.float32(obj.joint3, buffer, bufferOffset);
    // Serialize message field [joint4]
    bufferOffset = _serializer.float32(obj.joint4, buffer, bufferOffset);
    // Serialize message field [joint5]
    bufferOffset = _serializer.float32(obj.joint5, buffer, bufferOffset);
    // Serialize message field [joint6]
    bufferOffset = _serializer.float32(obj.joint6, buffer, bufferOffset);
    // Serialize message field [joint7]
    bufferOffset = _serializer.float32(obj.joint7, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_jointvalueRequest
    let len;
    let data = new kinova_jointvalueRequest(null);
    // Deserialize message field [joint_control_mode]
    data.joint_control_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint1]
    data.joint1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint2]
    data.joint2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint3]
    data.joint3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint4]
    data.joint4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint5]
    data.joint5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint6]
    data.joint6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint7]
    data.joint7 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.joint_control_mode);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_jointvalueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0005b62bc9e5dfcd1cb29f7364c90f32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string joint_control_mode
    float32 joint1
    float32 joint2
    float32 joint3
    float32 joint4
    float32 joint5
    float32 joint6
    float32 joint7
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_jointvalueRequest(null);
    if (msg.joint_control_mode !== undefined) {
      resolved.joint_control_mode = msg.joint_control_mode;
    }
    else {
      resolved.joint_control_mode = ''
    }

    if (msg.joint1 !== undefined) {
      resolved.joint1 = msg.joint1;
    }
    else {
      resolved.joint1 = 0.0
    }

    if (msg.joint2 !== undefined) {
      resolved.joint2 = msg.joint2;
    }
    else {
      resolved.joint2 = 0.0
    }

    if (msg.joint3 !== undefined) {
      resolved.joint3 = msg.joint3;
    }
    else {
      resolved.joint3 = 0.0
    }

    if (msg.joint4 !== undefined) {
      resolved.joint4 = msg.joint4;
    }
    else {
      resolved.joint4 = 0.0
    }

    if (msg.joint5 !== undefined) {
      resolved.joint5 = msg.joint5;
    }
    else {
      resolved.joint5 = 0.0
    }

    if (msg.joint6 !== undefined) {
      resolved.joint6 = msg.joint6;
    }
    else {
      resolved.joint6 = 0.0
    }

    if (msg.joint7 !== undefined) {
      resolved.joint7 = msg.joint7;
    }
    else {
      resolved.joint7 = 0.0
    }

    return resolved;
    }
};

class kinova_jointvalueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_control_result = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_control_result')) {
        this.joint_control_result = initObj.joint_control_result
      }
      else {
        this.joint_control_result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinova_jointvalueResponse
    // Serialize message field [joint_control_result]
    bufferOffset = _serializer.bool(obj.joint_control_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_jointvalueResponse
    let len;
    let data = new kinova_jointvalueResponse(null);
    // Deserialize message field [joint_control_result]
    data.joint_control_result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_jointvalueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e25815b10fd5e4a9881542c04bf1b1b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool joint_control_result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_jointvalueResponse(null);
    if (msg.joint_control_result !== undefined) {
      resolved.joint_control_result = msg.joint_control_result;
    }
    else {
      resolved.joint_control_result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: kinova_jointvalueRequest,
  Response: kinova_jointvalueResponse,
  md5sum() { return '6330034618439aeef98f4199475023e1'; },
  datatype() { return 'kinovasev/kinova_jointvalue'; }
};
