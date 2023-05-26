// Auto-generated. Do not edit!

// (in-package task3_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class words_counterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sentence = null;
    }
    else {
      if (initObj.hasOwnProperty('sentence')) {
        this.sentence = initObj.sentence
      }
      else {
        this.sentence = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type words_counterRequest
    // Serialize message field [sentence]
    bufferOffset = _serializer.string(obj.sentence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type words_counterRequest
    let len;
    let data = new words_counterRequest(null);
    // Deserialize message field [sentence]
    data.sentence = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sentence);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task3_pkg/words_counterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ee8e7a1b3ec1e5b34263db750df6246';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sentence
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new words_counterRequest(null);
    if (msg.sentence !== undefined) {
      resolved.sentence = msg.sentence;
    }
    else {
      resolved.sentence = ''
    }

    return resolved;
    }
};

class words_counterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_words = null;
    }
    else {
      if (initObj.hasOwnProperty('num_words')) {
        this.num_words = initObj.num_words
      }
      else {
        this.num_words = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type words_counterResponse
    // Serialize message field [num_words]
    bufferOffset = _serializer.int32(obj.num_words, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type words_counterResponse
    let len;
    let data = new words_counterResponse(null);
    // Deserialize message field [num_words]
    data.num_words = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task3_pkg/words_counterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f76d7e620f5b4f0a940a5eff7d48784d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 num_words
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new words_counterResponse(null);
    if (msg.num_words !== undefined) {
      resolved.num_words = msg.num_words;
    }
    else {
      resolved.num_words = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: words_counterRequest,
  Response: words_counterResponse,
  md5sum() { return '7493e9879e62bc96956efab2440a9c04'; },
  datatype() { return 'task3_pkg/words_counter'; }
};
