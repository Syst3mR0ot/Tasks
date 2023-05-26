// Generated by gencpp from file task3_pkg/words_counterResponse.msg
// DO NOT EDIT!


#ifndef TASK3_PKG_MESSAGE_WORDS_COUNTERRESPONSE_H
#define TASK3_PKG_MESSAGE_WORDS_COUNTERRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace task3_pkg
{
template <class ContainerAllocator>
struct words_counterResponse_
{
  typedef words_counterResponse_<ContainerAllocator> Type;

  words_counterResponse_()
    : num_words(0)  {
    }
  words_counterResponse_(const ContainerAllocator& _alloc)
    : num_words(0)  {
  (void)_alloc;
    }



   typedef int32_t _num_words_type;
  _num_words_type num_words;





  typedef boost::shared_ptr< ::task3_pkg::words_counterResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::task3_pkg::words_counterResponse_<ContainerAllocator> const> ConstPtr;

}; // struct words_counterResponse_

typedef ::task3_pkg::words_counterResponse_<std::allocator<void> > words_counterResponse;

typedef boost::shared_ptr< ::task3_pkg::words_counterResponse > words_counterResponsePtr;
typedef boost::shared_ptr< ::task3_pkg::words_counterResponse const> words_counterResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::task3_pkg::words_counterResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::task3_pkg::words_counterResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::task3_pkg::words_counterResponse_<ContainerAllocator1> & lhs, const ::task3_pkg::words_counterResponse_<ContainerAllocator2> & rhs)
{
  return lhs.num_words == rhs.num_words;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::task3_pkg::words_counterResponse_<ContainerAllocator1> & lhs, const ::task3_pkg::words_counterResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace task3_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::task3_pkg::words_counterResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::task3_pkg::words_counterResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task3_pkg::words_counterResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task3_pkg::words_counterResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task3_pkg::words_counterResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task3_pkg::words_counterResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::task3_pkg::words_counterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f76d7e620f5b4f0a940a5eff7d48784d";
  }

  static const char* value(const ::task3_pkg::words_counterResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf76d7e620f5b4f0aULL;
  static const uint64_t static_value2 = 0x940a5eff7d48784dULL;
};

template<class ContainerAllocator>
struct DataType< ::task3_pkg::words_counterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "task3_pkg/words_counterResponse";
  }

  static const char* value(const ::task3_pkg::words_counterResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::task3_pkg::words_counterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 num_words\n"
;
  }

  static const char* value(const ::task3_pkg::words_counterResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::task3_pkg::words_counterResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num_words);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct words_counterResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::task3_pkg::words_counterResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::task3_pkg::words_counterResponse_<ContainerAllocator>& v)
  {
    s << indent << "num_words: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_words);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TASK3_PKG_MESSAGE_WORDS_COUNTERRESPONSE_H