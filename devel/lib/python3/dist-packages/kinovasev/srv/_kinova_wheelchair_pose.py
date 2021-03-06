# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kinovasev/kinova_wheelchair_poseRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class kinova_wheelchair_poseRequest(genpy.Message):
  _md5sum = "0f9d2d4c0d1c7a2ae6ef81590e11f475"
  _type = "kinovasev/kinova_wheelchair_poseRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 linear_x
float32 theta
int64 wheel_ms
"""
  __slots__ = ['linear_x','theta','wheel_ms']
  _slot_types = ['float32','float32','int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       linear_x,theta,wheel_ms

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(kinova_wheelchair_poseRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.linear_x is None:
        self.linear_x = 0.
      if self.theta is None:
        self.theta = 0.
      if self.wheel_ms is None:
        self.wheel_ms = 0
    else:
      self.linear_x = 0.
      self.theta = 0.
      self.wheel_ms = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2fq().pack(_x.linear_x, _x.theta, _x.wheel_ms))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.linear_x, _x.theta, _x.wheel_ms,) = _get_struct_2fq().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2fq().pack(_x.linear_x, _x.theta, _x.wheel_ms))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.linear_x, _x.theta, _x.wheel_ms,) = _get_struct_2fq().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2fq = None
def _get_struct_2fq():
    global _struct_2fq
    if _struct_2fq is None:
        _struct_2fq = struct.Struct("<2fq")
    return _struct_2fq
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kinovasev/kinova_wheelchair_poseResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class kinova_wheelchair_poseResponse(genpy.Message):
  _md5sum = "620c91fdb6f4fd79d27a48c53b4ea492"
  _type = "kinovasev/kinova_wheelchair_poseResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool wheelchair_pose_result
"""
  __slots__ = ['wheelchair_pose_result']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       wheelchair_pose_result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(kinova_wheelchair_poseResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.wheelchair_pose_result is None:
        self.wheelchair_pose_result = False
    else:
      self.wheelchair_pose_result = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.wheelchair_pose_result
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.wheelchair_pose_result,) = _get_struct_B().unpack(str[start:end])
      self.wheelchair_pose_result = bool(self.wheelchair_pose_result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.wheelchair_pose_result
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.wheelchair_pose_result,) = _get_struct_B().unpack(str[start:end])
      self.wheelchair_pose_result = bool(self.wheelchair_pose_result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class kinova_wheelchair_pose(object):
  _type          = 'kinovasev/kinova_wheelchair_pose'
  _md5sum = 'e89ba642839222e259b78b5b10d919f7'
  _request_class  = kinova_wheelchair_poseRequest
  _response_class = kinova_wheelchair_poseResponse
