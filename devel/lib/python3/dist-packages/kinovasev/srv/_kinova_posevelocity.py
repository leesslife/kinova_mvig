# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kinovasev/kinova_posevelocityRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class kinova_posevelocityRequest(genpy.Message):
  _md5sum = "f5b8020c58cf1300aa3220287a9be575"
  _type = "kinovasev/kinova_posevelocityRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 t_x
float32 t_y
float32 t_z
float32 ar
float32 ap
float32 az
int64 kinova_s
"""
  __slots__ = ['t_x','t_y','t_z','ar','ap','az','kinova_s']
  _slot_types = ['float32','float32','float32','float32','float32','float32','int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       t_x,t_y,t_z,ar,ap,az,kinova_s

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(kinova_posevelocityRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.t_x is None:
        self.t_x = 0.
      if self.t_y is None:
        self.t_y = 0.
      if self.t_z is None:
        self.t_z = 0.
      if self.ar is None:
        self.ar = 0.
      if self.ap is None:
        self.ap = 0.
      if self.az is None:
        self.az = 0.
      if self.kinova_s is None:
        self.kinova_s = 0
    else:
      self.t_x = 0.
      self.t_y = 0.
      self.t_z = 0.
      self.ar = 0.
      self.ap = 0.
      self.az = 0.
      self.kinova_s = 0

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
      buff.write(_get_struct_6fq().pack(_x.t_x, _x.t_y, _x.t_z, _x.ar, _x.ap, _x.az, _x.kinova_s))
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
      end += 32
      (_x.t_x, _x.t_y, _x.t_z, _x.ar, _x.ap, _x.az, _x.kinova_s,) = _get_struct_6fq().unpack(str[start:end])
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
      buff.write(_get_struct_6fq().pack(_x.t_x, _x.t_y, _x.t_z, _x.ar, _x.ap, _x.az, _x.kinova_s))
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
      end += 32
      (_x.t_x, _x.t_y, _x.t_z, _x.ar, _x.ap, _x.az, _x.kinova_s,) = _get_struct_6fq().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6fq = None
def _get_struct_6fq():
    global _struct_6fq
    if _struct_6fq is None:
        _struct_6fq = struct.Struct("<6fq")
    return _struct_6fq
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kinovasev/kinova_posevelocityResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class kinova_posevelocityResponse(genpy.Message):
  _md5sum = "8f9c4c1876902f5b2f77c072de456a87"
  _type = "kinovasev/kinova_posevelocityResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool pose_velocity_result
"""
  __slots__ = ['pose_velocity_result']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pose_velocity_result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(kinova_posevelocityResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pose_velocity_result is None:
        self.pose_velocity_result = False
    else:
      self.pose_velocity_result = False

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
      _x = self.pose_velocity_result
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
      (self.pose_velocity_result,) = _get_struct_B().unpack(str[start:end])
      self.pose_velocity_result = bool(self.pose_velocity_result)
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
      _x = self.pose_velocity_result
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
      (self.pose_velocity_result,) = _get_struct_B().unpack(str[start:end])
      self.pose_velocity_result = bool(self.pose_velocity_result)
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
class kinova_posevelocity(object):
  _type          = 'kinovasev/kinova_posevelocity'
  _md5sum = '96fa5deefb115b403d86e82cbda4bf34'
  _request_class  = kinova_posevelocityRequest
  _response_class = kinova_posevelocityResponse
