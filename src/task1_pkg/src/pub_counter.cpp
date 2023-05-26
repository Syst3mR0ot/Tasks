#include <ros/ros.h>
#include <std_msgs/Int32.h>

int main(int argc, char **argv) {
  ros::init(argc, argv, "cpp_count_publisher");
  ros::NodeHandle nh;
  ros::Publisher count_pub = nh.advertise<std_msgs::Int32>("topic1", 1);

  std_msgs::Int32 count_msg;

for (int i = -1;; i++) {
    count_msg.data = i;
    count_pub.publish(count_msg);
    ros::Duration(1.0).sleep();
  }


  return 0;
}
