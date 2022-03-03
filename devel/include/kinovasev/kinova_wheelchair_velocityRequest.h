// Generated by gencpp from file kinovasev/kinova_wheelchair_velocityRequest.msg
// DO NOT EDIT!


#ifndef KINOVASEV_MESSAGE_KINOVA_WHEELCHAIR_VELOCITYREQUEST_H
#define KINOVASEV_MESSAGE_KINOVA_WHEELCHAIR_VELOCITYREQUEST_H


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
struct kinova_wheelchair_velocityRequest_
{
  typedef kinova_wheelchair_velocityRequest_<ContainerAllocator> Type;

  kinova_wheelchair_velocityRequest_()
    : v_x(0.0)
    , v_theta(0.0)
    , wheel_ms(0)  {
    }
  kinova_wheelchair_velocityRequest_(const ContainerAllocator& _alloc)
    : v_x(0.0)
    , v_theta(0.0)
    , wheel_ms(0)  {
  (void)_alloc;
    }



   typedef float _v_x_type;
  _v_x_type v_x;

   typedef float _v_theta_type;
  _v_theta_type v_theta;

   typedef int64_t _wheel_ms_type;
  _wheel_ms_type wheel_ms;





  typedef boost::shared_ptr< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> const> ConstPtr;

}; // struct kinova_wheelchair_velocityRequest_

typedef ::kinovasev::kinova_wheelchair_velocityRequest_<std::allocator<void> > kinova_wheelchair_velocityRequest;

typedef boost::shared_ptr< ::kinovasev::kinova_wheelchair_velocityRequest > kinova_wheelchair_velocityRequestPtr;
typedef boost::shared_ptr< ::kinovasev::kinova_wheelchair_velocityRequest const> kinova_wheelchair_velocityRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator1> & lhs, const ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator2> & rhs)
{
  return lhs.v_x == rhs.v_x &&
    lhs.v_theta == rhs.v_theta &&
    lhs.wheel_ms == rhs.wheel_ms;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator1> & lhs, const ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kinovasev

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "da279cff62d0e5dc22e2f314875139e7";
  }

  static const char* value(const ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xda279cff62d0e5dcULL;
  static const uint64_t static_value2 = 0x22e2f314875139e7ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinovasev/kinova_wheelchair_velocityRequest";
  }

  static const char* value(const ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 v_x\n"
"float32 v_theta\n"
"int64 wheel_ms\n"
;
  }

  static const char* value(const ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.v_x);
      stream.next(m.v_theta);
      stream.next(m.wheel_ms);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct kinova_wheelchair_velocityRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinovasev::kinova_wheelchair_velocityRequest_<ContainerAllocator>& v)
  {
    s << indent << "v_x: ";
    Printer<float>::stream(s, indent + "  ", v.v_x);
    s << indent << "v_theta: ";
    Printer<float>::stream(s, indent + "  ", v.v_theta);
    s << indent << "wheel_ms: ";
    Printer<int64_t>::stream(s, indent + "  ", v.wheel_ms);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVASEV_MESSAGE_KINOVA_WHEELCHAIR_VELOCITYREQUEST_H