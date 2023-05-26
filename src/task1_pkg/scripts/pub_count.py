#! /usr/bin/env python3

import rospy
from std_msgs.msg import Int32

def count_publisher():
  rospy.init_node('python_count_publisher')

  count_pub = rospy.Publisher('topic2', Int32, queue_size=1)

  count_msg = Int32()
  count_msg.data = -2


  while True:

    count_msg.data += 1

    count_pub.publish(count_msg)

    rospy.sleep(1.0)

if __name__ == '__main__':
  count_publisher()