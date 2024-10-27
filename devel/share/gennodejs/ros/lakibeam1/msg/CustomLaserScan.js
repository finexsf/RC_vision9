// Auto-generated. Do not edit!

// (in-package lakibeam1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CustomLaserScan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Header = null;
      this.angle_min = null;
      this.angle_max = null;
      this.angle_increment = null;
      this.scan_time = null;
      this.range_min = null;
      this.range_max = null;
      this.ranges = null;
      this.intensities = null;
      this.distances = null;
      this.angles = null;
      this.x_coords = null;
      this.y_coords = null;
    }
    else {
      if (initObj.hasOwnProperty('Header')) {
        this.Header = initObj.Header
      }
      else {
        this.Header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('angle_min')) {
        this.angle_min = initObj.angle_min
      }
      else {
        this.angle_min = 0.0;
      }
      if (initObj.hasOwnProperty('angle_max')) {
        this.angle_max = initObj.angle_max
      }
      else {
        this.angle_max = 0.0;
      }
      if (initObj.hasOwnProperty('angle_increment')) {
        this.angle_increment = initObj.angle_increment
      }
      else {
        this.angle_increment = 0.0;
      }
      if (initObj.hasOwnProperty('scan_time')) {
        this.scan_time = initObj.scan_time
      }
      else {
        this.scan_time = 0.0;
      }
      if (initObj.hasOwnProperty('range_min')) {
        this.range_min = initObj.range_min
      }
      else {
        this.range_min = 0.0;
      }
      if (initObj.hasOwnProperty('range_max')) {
        this.range_max = initObj.range_max
      }
      else {
        this.range_max = 0.0;
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
      if (initObj.hasOwnProperty('intensities')) {
        this.intensities = initObj.intensities
      }
      else {
        this.intensities = [];
      }
      if (initObj.hasOwnProperty('distances')) {
        this.distances = initObj.distances
      }
      else {
        this.distances = [];
      }
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
      if (initObj.hasOwnProperty('x_coords')) {
        this.x_coords = initObj.x_coords
      }
      else {
        this.x_coords = [];
      }
      if (initObj.hasOwnProperty('y_coords')) {
        this.y_coords = initObj.y_coords
      }
      else {
        this.y_coords = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomLaserScan
    // Serialize message field [Header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.Header, buffer, bufferOffset);
    // Serialize message field [angle_min]
    bufferOffset = _serializer.float32(obj.angle_min, buffer, bufferOffset);
    // Serialize message field [angle_max]
    bufferOffset = _serializer.float32(obj.angle_max, buffer, bufferOffset);
    // Serialize message field [angle_increment]
    bufferOffset = _serializer.float32(obj.angle_increment, buffer, bufferOffset);
    // Serialize message field [scan_time]
    bufferOffset = _serializer.float32(obj.scan_time, buffer, bufferOffset);
    // Serialize message field [range_min]
    bufferOffset = _serializer.float32(obj.range_min, buffer, bufferOffset);
    // Serialize message field [range_max]
    bufferOffset = _serializer.float32(obj.range_max, buffer, bufferOffset);
    // Serialize message field [ranges]
    bufferOffset = _arraySerializer.float32(obj.ranges, buffer, bufferOffset, null);
    // Serialize message field [intensities]
    bufferOffset = _arraySerializer.float32(obj.intensities, buffer, bufferOffset, null);
    // Serialize message field [distances]
    bufferOffset = _arraySerializer.float32(obj.distances, buffer, bufferOffset, null);
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float32(obj.angles, buffer, bufferOffset, null);
    // Serialize message field [x_coords]
    bufferOffset = _arraySerializer.float32(obj.x_coords, buffer, bufferOffset, null);
    // Serialize message field [y_coords]
    bufferOffset = _arraySerializer.float32(obj.y_coords, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomLaserScan
    let len;
    let data = new CustomLaserScan(null);
    // Deserialize message field [Header]
    data.Header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_min]
    data.angle_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_max]
    data.angle_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_increment]
    data.angle_increment = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [scan_time]
    data.scan_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range_min]
    data.range_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range_max]
    data.range_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ranges]
    data.ranges = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [intensities]
    data.intensities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [distances]
    data.distances = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [x_coords]
    data.x_coords = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y_coords]
    data.y_coords = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.Header);
    length += 4 * object.ranges.length;
    length += 4 * object.intensities.length;
    length += 4 * object.distances.length;
    length += 4 * object.angles.length;
    length += 4 * object.x_coords.length;
    length += 4 * object.y_coords.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lakibeam1/CustomLaserScan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f8198cf97edc781dfaca87a453b9184';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header Header
    float32 angle_min
    float32 angle_max
    float32 angle_increment
    float32 scan_time
    float32 range_min
    float32 range_max
    float32[] ranges
    float32[] intensities
    float32[] distances
    float32[] angles
    float32[] x_coords
    float32[] y_coords
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomLaserScan(null);
    if (msg.Header !== undefined) {
      resolved.Header = std_msgs.msg.Header.Resolve(msg.Header)
    }
    else {
      resolved.Header = new std_msgs.msg.Header()
    }

    if (msg.angle_min !== undefined) {
      resolved.angle_min = msg.angle_min;
    }
    else {
      resolved.angle_min = 0.0
    }

    if (msg.angle_max !== undefined) {
      resolved.angle_max = msg.angle_max;
    }
    else {
      resolved.angle_max = 0.0
    }

    if (msg.angle_increment !== undefined) {
      resolved.angle_increment = msg.angle_increment;
    }
    else {
      resolved.angle_increment = 0.0
    }

    if (msg.scan_time !== undefined) {
      resolved.scan_time = msg.scan_time;
    }
    else {
      resolved.scan_time = 0.0
    }

    if (msg.range_min !== undefined) {
      resolved.range_min = msg.range_min;
    }
    else {
      resolved.range_min = 0.0
    }

    if (msg.range_max !== undefined) {
      resolved.range_max = msg.range_max;
    }
    else {
      resolved.range_max = 0.0
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = msg.ranges;
    }
    else {
      resolved.ranges = []
    }

    if (msg.intensities !== undefined) {
      resolved.intensities = msg.intensities;
    }
    else {
      resolved.intensities = []
    }

    if (msg.distances !== undefined) {
      resolved.distances = msg.distances;
    }
    else {
      resolved.distances = []
    }

    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    if (msg.x_coords !== undefined) {
      resolved.x_coords = msg.x_coords;
    }
    else {
      resolved.x_coords = []
    }

    if (msg.y_coords !== undefined) {
      resolved.y_coords = msg.y_coords;
    }
    else {
      resolved.y_coords = []
    }

    return resolved;
    }
};

module.exports = CustomLaserScan;
