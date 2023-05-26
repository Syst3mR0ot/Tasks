#include <ros/ros.h>
#include "task2_pkg/complex_num.h"
#include <random>

int main(int argc, char** argv)
{
  ros::init(argc, argv, "publisher_node");
  ros::NodeHandle nh;
  ros::Publisher pub = nh.advertise<task2_pkg::complex_num>("sensor_topic", 10);
  ros::Rate rate(0.5);

  while (ros::ok())
  {
    task2_pkg::complex_num msg;
    msg.real = std::rand() * 2 - 1;
    msg.imaginary = std::rand() * 2 - 1;
    pub.publish(msg);
    rate.sleep();
    std::cout << "Complex number: " << msg.real << " + " << msg.imaginary << "i" << std::endl;
  }

  return 0;
}
