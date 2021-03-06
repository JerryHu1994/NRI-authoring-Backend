// Generated by gencpp from file wpi_jaco_msgs/JacoFKResponse.msg
// DO NOT EDIT!


#ifndef WPI_JACO_MSGS_MESSAGE_JACOFKRESPONSE_H
#define WPI_JACO_MSGS_MESSAGE_JACOFKRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace wpi_jaco_msgs
{
template <class ContainerAllocator>
struct JacoFKResponse_
{
  typedef JacoFKResponse_<ContainerAllocator> Type;

  JacoFKResponse_()
    : handPose()  {
    }
  JacoFKResponse_(const ContainerAllocator& _alloc)
    : handPose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _handPose_type;
  _handPose_type handPose;




  typedef boost::shared_ptr< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> const> ConstPtr;

}; // struct JacoFKResponse_

typedef ::wpi_jaco_msgs::JacoFKResponse_<std::allocator<void> > JacoFKResponse;

typedef boost::shared_ptr< ::wpi_jaco_msgs::JacoFKResponse > JacoFKResponsePtr;
typedef boost::shared_ptr< ::wpi_jaco_msgs::JacoFKResponse const> JacoFKResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wpi_jaco_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'wpi_jaco_msgs': ['/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg', '/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "61d04f48613e36ee5ea5469d2bfc4c7f";
  }

  static const char* value(const ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x61d04f48613e36eeULL;
  static const uint64_t static_value2 = 0x5ea5469d2bfc4c7fULL;
};

template<class ContainerAllocator>
struct DataType< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wpi_jaco_msgs/JacoFKResponse";
  }

  static const char* value(const ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseStamped handPose\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.handPose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JacoFKResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wpi_jaco_msgs::JacoFKResponse_<ContainerAllocator>& v)
  {
    s << indent << "handPose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.handPose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WPI_JACO_MSGS_MESSAGE_JACOFKRESPONSE_H
