#!/usr/bin/env python3

from __future__ import print_function
from task3_pkg.srv import  words_counter
from task3_pkg.srv import  words_counter,words_counterResponse
from task3_pkg.srv import  words_counter,words_counterRequest
import rospy


def main():

    rospy.wait_for_service('words_counter')
    
    service = rospy.ServiceProxy('words_counter', words_counter)
    sentence = input("Enter a sentence: ")
    words = sentence.split()
    resp = service(words)
    print("The sentence has {} words.".format(resp.num_words))


if __name__ == "__main__":
    main()