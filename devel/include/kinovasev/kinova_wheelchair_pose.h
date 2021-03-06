// Generated by gencpp from file kinovasev/kinova_wheelchair_pose.msg
// DO NOT EDIT!


#ifndef KINOVASEV_MESSAGE_KINOVA_WHEELCHAIR_POSE_H
#define KINOVASEV_MESSAGE_KINOVA_WHEELCHAIR_POSE_H

#include <ros/service_traits.h>


#include <kinovasev/kinova_wheelchair_poseRequest.h>
#include <kinovasev/kinova_wheelchair_poseResponse.h>


namespace kinovasev
{

struct kinova_wheelchair_pose
{

typedef kinova_wheelchair_poseRequest Request;
typedef kinova_wheelchair_poseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct kinova_wheelchair_pose
} // namespace kinovasev


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kinovasev::kinova_wheelchair_pose > {
  static const char* value()
  {
    return "e89ba642839222e259b78b5b10d919f7";
  }

  static const char* value(const ::kinovasev::kinova_wheelchair_pose&) { return value(); }
};

template<>
struct DataType< ::kinovasev::kinova_wheelchair_pose > {
  static const char* value()
  {
    return "kinovasev/kinova_wheelchair_pose";
  }

  static const char* value(const ::kinovasev::kinova_wheelchair_pose&) { return value(); }
};


// service_traits::MD5Sum< ::kinovasev::kinova_wheelchair_poseRequest> should match
// service_traits::MD5Sum< ::kinovasev::kinova_wheelchair_pose >
template<>
struct MD5Sum< ::kinovasev::kinova_wheelchair_poseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kinovasev::kinova_wheelchair_pose >::value();
  }
  static const char* value(const ::kinovasev::kinova_wheelchair_poseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kinovasev::kinova_wheelchair_poseRequest> should match
// service_traits::DataType< ::kinovasev::kinova_wheelchair_pose >
template<>
struct DataType< ::kinovasev::kinova_wheelchair_poseRequest>
{
  static const char* value()
  {
    return DataType< ::kinovasev::kinova_wheelchair_pose >::value();
  }
  static const char* value(const ::kinovasev::kinova_wheelchair_poseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kinovasev::kinova_wheelchair_poseResponse> should match
// service_traits::MD5Sum< ::kinovasev::kinova_wheelchair_pose >
template<>
struct MD5Sum< ::kinovasev::kinova_wheelchair_poseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kinovasev::kinova_wheelchair_pose >::value();
  }
  static const char* value(const ::kinovasev::kinova_wheelchair_poseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kinovasev::kinova_wheelchair_poseResponse> should match
// service_traits::DataType< ::kinovasev::kinova_wheelchair_pose >
template<>
struct DataType< ::kinovasev::kinova_wheelchair_poseResponse>
{
  static const char* value()
  {
    return DataType< ::kinovasev::kinova_wheelchair_pose >::value();
  }
  static const char* value(const ::kinovasev::kinova_wheelchair_poseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KINOVASEV_MESSAGE_KINOVA_WHEELCHAIR_POSE_H
