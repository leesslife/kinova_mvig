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

class kinova_fingervalueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.unit = null;
      this.finger_value = null;
      this.relative_ = null;
    }
    else {
      if (initObj.hasOwnProperty('unit')) {
        this.unit = initObj.unit
      }
      else {
        this.unit = '';
      }
      if (initObj.hasOwnProperty('finger_value')) {
        this.finger_value = initObj.finger_value
      }
      else {
        this.finger_value = [];
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
    // Serializes a message object of type kinova_fingervalueRequest
    // Serialize message field [unit]
    bufferOffset = _serializer.string(obj.unit, buffer, bufferOffset);
    // Serialize message field [finger_value]
    bufferOffset = _arraySerializer.float32(obj.finger_value, buffer, bufferOffset, null);
    // Serialize message field [relative_]
    bufferOffset = _serializer.bool(obj.relative_, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_fingervalueRequest
    let len;
    let data = new kinova_fingervalueRequest(null);
    // Deserialize message field [unit]
    data.unit = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [finger_value]
    data.finger_value = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [relative_]
    data.relative_ = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.unit);
    length += 4 * object.finger_value.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_fingervalueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06e62ecdf5356283e71d200fa2ffdba0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string unit
    float32[] finger_value
    bool relative_
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_fingervalueRequest(null);
    if (msg.unit !== undefined) {
      resolved.unit = msg.unit;
    }
    else {
      resolved.unit = ''
    }

    if (msg.finger_value !== undefined) {
      resolved.finger_value = msg.finger_value;
    }
    else {
      resolved.finger_value = []
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

class kinova_fingervalueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.finger_control_result = null;
    }
    else {
      if (initObj.hasOwnProperty('finger_control_result')) {
        this.finger_control_result = initObj.finger_control_result
      }
      else {
        this.finger_control_result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinova_fingervalueResponse
    // Serialize message field [finger_control_result]
    bufferOffset = _serializer.bool(obj.finger_control_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinova_fingervalueResponse
    let len;
    let data = new kinova_fingervalueResponse(null);
    // Deserialize message field [finger_control_result]
    data.finger_control_result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinovasev/kinova_fingervalueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '262812f1a2440c1786eb6135f1000b3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool finger_control_result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinova_fingervalueResponse(null);
    if (msg.finger_control_result !== undefined) {
      resolved.finger_control_result = msg.finger_control_result;
    }
    else {
      resolved.finger_control_result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: kinova_fingervalueRequest,
  Response: kinova_fingervalueResponse,
  md5sum() { return '80b4b1c7ca93496e230bb138b990fbaa'; },
  datatype() { return 'kinovasev/kinova_fingervalue'; }
};
