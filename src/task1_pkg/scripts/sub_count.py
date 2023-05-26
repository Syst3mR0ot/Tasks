#! /usr/bin/env python3

import rospy
from std_msgs.msg import Int32

def callback(msg):
  print(msg.data)

if __name__ == '__main__':
  rospy.init_node('python_count_subscriber')
  sub = rospy.Subscriber('topic2', Int32, callback)
  rospy.spin()