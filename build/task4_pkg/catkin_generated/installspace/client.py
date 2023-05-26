#!/usr/bin/env python3

from __future__ import print_function
from task4_pkg.srv import  count_sum
from task4_pkg.srv import  count_sum,count_sumResponse
from task4_pkg.srv import  count_sum,count_sumRequest
import rospy
import sys


def add_two_ints_client(x, y):
    rospy.wait_for_service('add_two_ints')
    try:
        add_two_ints = rospy.ServiceProxy('add_two_ints', count_sum)
        resp1 = add_two_ints(x, y)
        return resp1.sum
    except rospy.ServiceException as e:
        print ("Service call failed: %s"%e)
def usage():
    return "%s [x y]"%sys.argv[0]
if __name__ == "__main__":
    #if len(sys.argv) == 3:
    x = int(sys.argv[1])
    y = int(sys.argv[2])
    #else:
        #print(usage())
        #sys.exit(1)
    print ("Requesting %s+%s"%(x, y))
    s = add_two_ints_client(x, y)
    print("%s + %s = %s"%(x, y, add_two_ints_client(x,y)))