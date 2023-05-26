#!/usr/bin/env python3
import rospy
from task2_pkg.msg import complex_num
import random

pub = rospy.Publisher('sensor_topic', complex_num, queue_size=10)
rospy.init_node('publisher_node', anonymous=True)
rate = rospy.Rate(0.5) # 1hz

while not rospy.is_shutdown():
    num = complex_num()
    num.real = random.random()
    num.imaginary= imaginary = random.random()
    rospy.loginfo("Complex_number:")
    rospy.loginfo(num)
    pub.publish(num)
    rate.sleep()