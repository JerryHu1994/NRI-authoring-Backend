// Generated by gencpp from file kinova_msgs/FingerPosition.msg
// DO NOT EDIT!


#ifndef KINOVA_MSGS_MESSAGE_FINGERPOSITION_H
#define KINOVA_MSGS_MESSAGE_FINGERPOSITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kinova_msgs
{
template <class ContainerAllocator>
struct FingerPosition_
{
  typedef FingerPosition_<ContainerAllocator> Type;

  FingerPosition_()
    : finger1(0.0)
    , finger2(0.0)
    , finger3(0.0)  {
    }
  FingerPosition_(const ContainerAllocator& _alloc)
    : finger1(0.0)
    , finger2(0.0)
    , finger3(0.0)  {
  (void)_alloc;
    }



   typedef float _finger1_type;
  _finger1_type finger1;

   typedef float _finger2_type;
  _finger2_type finger2;

   typedef float _finger3_type;
  _finger3_type finger3;




  typedef boost::shared_ptr< ::kinova_msgs::FingerPosition_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinova_msgs::FingerPosition_<ContainerAllocator> const> ConstPtr;

}; // struct FingerPosition_

typedef ::kinova_msgs::FingerPosition_<std::allocator<void> > FingerPosition;

typedef boost::shared_ptr< ::kinova_msgs::FingerPosition > FingerPositionPtr;
typedef boost::shared_ptr< ::kinova_msgs::FingerPosition const> FingerPositionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinova_msgs::FingerPosition_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinova_msgs::FingerPosition_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kinova_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'kinova_msgs': ['/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/msg', '/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::FingerPosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::FingerPosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::FingerPosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::FingerPosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::FingerPosition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::FingerPosition_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinova_msgs::FingerPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f56891e5dcd1900989f764a9b845c8e5";
  }

  static const char* value(const ::kinova_msgs::FingerPosition_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf56891e5dcd19009ULL;
  static const uint64_t static_value2 = 0x89f764a9b845c8e5ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinova_msgs::FingerPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinova_msgs/FingerPosition";
  }

  static const char* value(const ::kinova_msgs::FingerPosition_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinova_msgs::FingerPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 finger1\n\
float32 finger2\n\
float32 finger3\n\
";
  }

  static const char* value(const ::kinova_msgs::FingerPosition_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinova_msgs::FingerPosition_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.finger1);
      stream.next(m.finger2);
      stream.next(m.finger3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FingerPosition_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinova_msgs::FingerPosition_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinova_msgs::FingerPosition_<ContainerAllocator>& v)
  {
    s << indent << "finger1: ";
    Printer<float>::stream(s, indent + "  ", v.finger1);
    s << indent << "finger2: ";
    Printer<float>::stream(s, indent + "  ", v.finger2);
    s << indent << "finger3: ";
    Printer<float>::stream(s, indent + "  ", v.finger3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVA_MSGS_MESSAGE_FINGERPOSITION_H
