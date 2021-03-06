// Generated by gencpp from file kinovasev/kinova_wheelchair_velocityResponse.msg
// DO NOT EDIT!


#ifndef KINOVASEV_MESSAGE_KINOVA_WHEELCHAIR_VELOCITYRESPONSE_H
#define KINOVASEV_MESSAGE_KINOVA_WHEELCHAIR_VELOCITYRESPONSE_H


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
struct kinova_wheelchair_velocityResponse_
{
  typedef kinova_wheelchair_velocityResponse_<ContainerAllocator> Type;

  kinova_wheelchair_velocityResponse_()
    : wheelchair_velocity_result(false)  {
    }
  kinova_wheelchair_velocityResponse_(const ContainerAllocator& _alloc)
    : wheelchair_velocity_result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _wheelchair_velocity_result_type;
  _wheelchair_velocity_result_type wheelchair_velocity_result;





  typedef boost::shared_ptr< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> const> ConstPtr;

}; // struct kinova_wheelchair_velocityResponse_

typedef ::kinovasev::kinova_wheelchair_velocityResponse_<std::allocator<void> > kinova_wheelchair_velocityResponse;

typedef boost::shared_ptr< ::kinovasev::kinova_wheelchair_velocityResponse > kinova_wheelchair_velocityResponsePtr;
typedef boost::shared_ptr< ::kinovasev::kinova_wheelchair_velocityResponse const> kinova_wheelchair_velocityResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator1> & lhs, const ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator2> & rhs)
{
  return lhs.wheelchair_velocity_result == rhs.wheelchair_velocity_result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator1> & lhs, const ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kinovasev

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "540dd078efa242886655b850b57faf2a";
  }

  static const char* value(const ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x540dd078efa24288ULL;
  static const uint64_t static_value2 = 0x6655b850b57faf2aULL;
};

template<class ContainerAllocator>
struct DataType< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinovasev/kinova_wheelchair_velocityResponse";
  }

  static const char* value(const ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool wheelchair_velocity_result\n"
;
  }

  static const char* value(const ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.wheelchair_velocity_result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct kinova_wheelchair_velocityResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinovasev::kinova_wheelchair_velocityResponse_<ContainerAllocator>& v)
  {
    s << indent << "wheelchair_velocity_result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.wheelchair_velocity_result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVASEV_MESSAGE_KINOVA_WHEELCHAIR_VELOCITYRESPONSE_H
