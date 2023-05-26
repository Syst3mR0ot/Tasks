// Generated by gencpp from file task4_pkg/count_sumRequest.msg
// DO NOT EDIT!


#ifndef TASK4_PKG_MESSAGE_COUNT_SUMREQUEST_H
#define TASK4_PKG_MESSAGE_COUNT_SUMREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace task4_pkg
{
template <class ContainerAllocator>
struct count_sumRequest_
{
  typedef count_sumRequest_<ContainerAllocator> Type;

  count_sumRequest_()
    : x(0)
    , y(0)  {
    }
  count_sumRequest_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)  {
  (void)_alloc;
    }



   typedef int64_t _x_type;
  _x_type x;

   typedef int64_t _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::task4_pkg::count_sumRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::task4_pkg::count_sumRequest_<ContainerAllocator> const> ConstPtr;

}; // struct count_sumRequest_

typedef ::task4_pkg::count_sumRequest_<std::allocator<void> > count_sumRequest;

typedef boost::shared_ptr< ::task4_pkg::count_sumRequest > count_sumRequestPtr;
typedef boost::shared_ptr< ::task4_pkg::count_sumRequest const> count_sumRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::task4_pkg::count_sumRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::task4_pkg::count_sumRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::task4_pkg::count_sumRequest_<ContainerAllocator1> & lhs, const ::task4_pkg::count_sumRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::task4_pkg::count_sumRequest_<ContainerAllocator1> & lhs, const ::task4_pkg::count_sumRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace task4_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::task4_pkg::count_sumRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::task4_pkg::count_sumRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task4_pkg::count_sumRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task4_pkg::count_sumRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task4_pkg::count_sumRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task4_pkg::count_sumRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::task4_pkg::count_sumRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b834ede922a0fff22c43585c533b49f";
  }

  static const char* value(const ::task4_pkg::count_sumRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b834ede922a0fffULL;
  static const uint64_t static_value2 = 0x22c43585c533b49fULL;
};

template<class ContainerAllocator>
struct DataType< ::task4_pkg::count_sumRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "task4_pkg/count_sumRequest";
  }

  static const char* value(const ::task4_pkg::count_sumRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::task4_pkg::count_sumRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 x\n"
"int64 y\n"
"\n"
;
  }

  static const char* value(const ::task4_pkg::count_sumRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::task4_pkg::count_sumRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct count_sumRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::task4_pkg::count_sumRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::task4_pkg::count_sumRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int64_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int64_t>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TASK4_PKG_MESSAGE_COUNT_SUMREQUEST_H