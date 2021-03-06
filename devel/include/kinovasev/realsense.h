// Generated by gencpp from file kinovasev/realsense.msg
// DO NOT EDIT!


#ifndef KINOVASEV_MESSAGE_REALSENSE_H
#define KINOVASEV_MESSAGE_REALSENSE_H


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
struct realsense_
{
  typedef realsense_<ContainerAllocator> Type;

  realsense_()
    : startid(0)
    , startH()
    , endid(0)
    , endH()  {
      startH.assign(0.0);

      endH.assign(0.0);
  }
  realsense_(const ContainerAllocator& _alloc)
    : startid(0)
    , startH()
    , endid(0)
    , endH()  {
  (void)_alloc;
      startH.assign(0.0);

      endH.assign(0.0);
  }



   typedef int32_t _startid_type;
  _startid_type startid;

   typedef boost::array<double, 16>  _startH_type;
  _startH_type startH;

   typedef int32_t _endid_type;
  _endid_type endid;

   typedef boost::array<double, 16>  _endH_type;
  _endH_type endH;





  typedef boost::shared_ptr< ::kinovasev::realsense_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinovasev::realsense_<ContainerAllocator> const> ConstPtr;

}; // struct realsense_

typedef ::kinovasev::realsense_<std::allocator<void> > realsense;

typedef boost::shared_ptr< ::kinovasev::realsense > realsensePtr;
typedef boost::shared_ptr< ::kinovasev::realsense const> realsenseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinovasev::realsense_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinovasev::realsense_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kinovasev::realsense_<ContainerAllocator1> & lhs, const ::kinovasev::realsense_<ContainerAllocator2> & rhs)
{
  return lhs.startid == rhs.startid &&
    lhs.startH == rhs.startH &&
    lhs.endid == rhs.endid &&
    lhs.endH == rhs.endH;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kinovasev::realsense_<ContainerAllocator1> & lhs, const ::kinovasev::realsense_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kinovasev

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kinovasev::realsense_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinovasev::realsense_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinovasev::realsense_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinovasev::realsense_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinovasev::realsense_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinovasev::realsense_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinovasev::realsense_<ContainerAllocator> >
{
  static const char* value()
  {
    return "277fc24e512a5e4fd934ce478ad44fa1";
  }

  static const char* value(const ::kinovasev::realsense_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x277fc24e512a5e4fULL;
  static const uint64_t static_value2 = 0xd934ce478ad44fa1ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinovasev::realsense_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinovasev/realsense";
  }

  static const char* value(const ::kinovasev::realsense_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinovasev::realsense_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32      startid\n"
"float64[16]  startH\n"
"int32      endid\n"
"float64[16]  endH\n"
;
  }

  static const char* value(const ::kinovasev::realsense_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinovasev::realsense_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.startid);
      stream.next(m.startH);
      stream.next(m.endid);
      stream.next(m.endH);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct realsense_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinovasev::realsense_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinovasev::realsense_<ContainerAllocator>& v)
  {
    s << indent << "startid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.startid);
    s << indent << "startH[]" << std::endl;
    for (size_t i = 0; i < v.startH.size(); ++i)
    {
      s << indent << "  startH[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.startH[i]);
    }
    s << indent << "endid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.endid);
    s << indent << "endH[]" << std::endl;
    for (size_t i = 0; i < v.endH.size(); ++i)
    {
      s << indent << "  endH[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.endH[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVASEV_MESSAGE_REALSENSE_H
