// Auto-generated. Do not edit!

// (in-package kinovasev.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class realsense {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startid = null;
      this.startH = null;
      this.endid = null;
      this.endH = null;
    }
    else {
      if (initObj.hasOwnProperty('startid')) {
        this.startid = initObj.startid
      }
      else {
        this.startid = 0;
      }
      if (initObj.hasOwnProperty('startH')) {
        this.startH = initObj.startH
      }
      else {
        this.startH = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('endid')) {
        this.endid = initObj.endid
      }
      else {
        this.endid = 0;
      }
      if (initObj.hasOwnProperty('endH')) {
        this.endH = initObj.endH
      }
      else {
        this.endH = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type realsense
    // Serialize message field [startid]
    bufferOffset = _serializer.int32(obj.startid, buffer, bufferOffset);
    // Check that the constant length array field [startH] has the right length
    if (obj.startH.length !== 16) {
      throw new Error('Unable to serialize array field startH - length must be 16')
    }
    // Serialize message field [startH]
    bufferOffset = _arraySerializer.float64(obj.startH, buffer, bufferOffset, 16);
    // Serialize message field [endid]
    bufferOffset = _serializer.int32(obj.endid, buffer, bufferOffset);
    // Check that the constant length array field [endH] has the right length
    if (obj.endH.length !== 16) {
      throw new Error('Unable to serialize array field endH - length must be 16')
    }
    // Serialize message field [endH]
    bufferOffset = _arraySerializer.float64(obj.endH, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type realsense
    let len;
    let data = new realsense(null);
    // Deserialize message field [startid]
    data.startid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [startH]
    data.startH = _arrayDeserializer.float64(buffer, bufferOffset, 16)
    // Deserialize message field [endid]
    data.endid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [endH]
    data.endH = _arrayDeserializer.float64(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    return 264;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kinovasev/realsense';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '277fc24e512a5e4fd934ce478ad44fa1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32      startid
    float64[16]  startH
    int32      endid
    float64[16]  endH
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new realsense(null);
    if (msg.startid !== undefined) {
      resolved.startid = msg.startid;
    }
    else {
      resolved.startid = 0
    }

    if (msg.startH !== undefined) {
      resolved.startH = msg.startH;
    }
    else {
      resolved.startH = new Array(16).fill(0)
    }

    if (msg.endid !== undefined) {
      resolved.endid = msg.endid;
    }
    else {
      resolved.endid = 0
    }

    if (msg.endH !== undefined) {
      resolved.endH = msg.endH;
    }
    else {
      resolved.endH = new Array(16).fill(0)
    }

    return resolved;
    }
};

module.exports = realsense;
