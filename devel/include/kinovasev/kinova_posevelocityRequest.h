// Generated by gencpp from file kinovasev/kinova_posevelocityRequest.msg
// DO NOT EDIT!


#ifndef KINOVASEV_MESSAGE_KINOVA_POSEVELOCITYREQUEST_H
#define KINOVASEV_MESSAGE_KINOVA_POSEVELOCITYREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kinovasev
{
template <class ContainerAllocator>
struct kinova_posevelocityRequest_
{
  typedef kinova_posevelocityRequest_<ContainerAllocator> Type;

  kinova_posevelocityRequest_()
    : t_x(0.0)
    , t_y(0.0)
    , t_z(0.0)
    , ar(0.0)
    , ap(0.0)
    , az(0.0)
    , kinova_s(0)  {
    }
  kinova_posevelocityRequest_(const ContainerAllocator& _alloc)
    : t_x(0.0)
    , t_y(0.0)
    , t_z(0.0)
    , ar(0.0)
    , ap(0.0)
    , az(0.0)
    , kinova_s(0)  {
  (void)_alloc;
    }



   typedef float _t_x_type;
  _t_x_type t_x;

   typedef float _t_y_type;
  _t_y_type t_y;

   typedef float _t_z_type;
  _t_z_type t_z;

   typedef float _ar_type;
  _ar_type ar;

   typedef float _ap_type;
  _ap_type ap;

   typedef float _az_type;
  _az_type az;

   typedef int64_t _kinova_s_type;
  _kinova_s_type kinova_s;





  typedef boost::shared_ptr< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> const> ConstPtr;

}; // struct kinova_posevelocityRequest_

typedef ::kinovasev::kinova_posevelocityRequest_<std::allocator<void> > kinova_posevelocityRequest;

typedef boost::shared_ptr< ::kinovasev::kinova_posevelocityRequest > kinova_posevelocityRequestPtr;
typedef boost::shared_ptr< ::kinovasev::kinova_posevelocityRequest const> kinova_posevelocityRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator1> & lhs, const ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator2> & rhs)
{
  return lhs.t_x == rhs.t_x &&
    lhs.t_y == rhs.t_y &&
    lhs.t_z == rhs.t_z &&
    lhs.ar == rhs.ar &&
    lhs.ap == rhs.ap &&
    lhs.az == rhs.az &&
    lhs.kinova_s == rhs.kinova_s;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator1> & lhs, const ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kinovasev

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f5b8020c58cf1300aa3220287a9be575";
  }

  static const char* value(const ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf5b8020c58cf1300ULL;
  static const uint64_t static_value2 = 0xaa3220287a9be575ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinovasev/kinova_posevelocityRequest";
  }

  static const char* value(const ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 t_x\n"
"float32 t_y\n"
"float32 t_z\n"
"float32 ar\n"
"float32 ap\n"
"float32 az\n"
"int64 kinova_s\n"
;
  }

  static const char* value(const ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.t_x);
      stream.next(m.t_y);
      stream.next(m.t_z);
      stream.next(m.ar);
      stream.next(m.ap);
      stream.next(m.az);
      stream.next(m.kinova_s);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct kinova_posevelocityRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinovasev::kinova_posevelocityRequest_<ContainerAllocator>& v)
  {
    s << indent << "t_x: ";
    Printer<float>::stream(s, indent + "  ", v.t_x);
    s << indent << "t_y: ";
    Printer<float>::stream(s, indent + "  ", v.t_y);
    s << indent << "t_z: ";
    Printer<float>::stream(s, indent + "  ", v.t_z);
    s << indent << "ar: ";
    Printer<float>::stream(s, indent + "  ", v.ar);
    s << indent << "ap: ";
    Printer<float>::stream(s, indent + "  ", v.ap);
    s << indent << "az: ";
    Printer<float>::stream(s, indent + "  ", v.az);
    s << indent << "kinova_s: ";
    Printer<int64_t>::stream(s, indent + "  ", v.kinova_s);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVASEV_MESSAGE_KINOVA_POSEVELOCITYREQUEST_H
