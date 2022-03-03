// Generated by gencpp from file kinovasev/kinova_posevelocityResponse.msg
// DO NOT EDIT!


#ifndef KINOVASEV_MESSAGE_KINOVA_POSEVELOCITYRESPONSE_H
#define KINOVASEV_MESSAGE_KINOVA_POSEVELOCITYRESPONSE_H


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
struct kinova_posevelocityResponse_
{
  typedef kinova_posevelocityResponse_<ContainerAllocator> Type;

  kinova_posevelocityResponse_()
    : pose_velocity_result(false)  {
    }
  kinova_posevelocityResponse_(const ContainerAllocator& _alloc)
    : pose_velocity_result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _pose_velocity_result_type;
  _pose_velocity_result_type pose_velocity_result;





  typedef boost::shared_ptr< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> const> ConstPtr;

}; // struct kinova_posevelocityResponse_

typedef ::kinovasev::kinova_posevelocityResponse_<std::allocator<void> > kinova_posevelocityResponse;

typedef boost::shared_ptr< ::kinovasev::kinova_posevelocityResponse > kinova_posevelocityResponsePtr;
typedef boost::shared_ptr< ::kinovasev::kinova_posevelocityResponse const> kinova_posevelocityResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator1> & lhs, const ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator2> & rhs)
{
  return lhs.pose_velocity_result == rhs.pose_velocity_result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator1> & lhs, const ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kinovasev

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f9c4c1876902f5b2f77c072de456a87";
  }

  static const char* value(const ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f9c4c1876902f5bULL;
  static const uint64_t static_value2 = 0x2f77c072de456a87ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinovasev/kinova_posevelocityResponse";
  }

  static const char* value(const ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool pose_velocity_result\n"
;
  }

  static const char* value(const ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose_velocity_result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct kinova_posevelocityResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinovasev::kinova_posevelocityResponse_<ContainerAllocator>& v)
  {
    s << indent << "pose_velocity_result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.pose_velocity_result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVASEV_MESSAGE_KINOVA_POSEVELOCITYRESPONSE_H
