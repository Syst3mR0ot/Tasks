
#!/usr/bin/env python3

from __future__ import print_function
import rospy
from task3_pkg.srv import  words_counter,words_counterResponse




def count_words(sentence):

    words = sentence.split()
    return len(words)


def words_counter_server():

    rospy.init_node('words_counter_server')

    service = rospy.Service('words_counter', words_counter, count_words)

    print("Ready to count words...")

    while not rospy.is_shutdown():
        rospy.spin()


if __name__ == "__main__":
    words_counter_server()
