
#!/usr/bin/env python3

from __future__ import print_function
import rospy
from task4_pkg.srv import  count_sum,count_sumResponse


def handle_add_two_ints(req):
    print("Returning [%s + %s = %s]"%(req.x, req.y, (req.x + req.y)))
    return count_sumResponse(req.x + req.y)
def add_two_ints_server():
    rospy.init_node('add_two_ints_server')
    s = rospy.Service('add_two_ints', count_sum, handle_add_two_ints)
    print("Ready to add two ints.")
    rospy.spin()
if __name__ == "__main__":
    add_two_ints_server()