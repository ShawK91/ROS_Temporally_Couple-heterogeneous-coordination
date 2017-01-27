#!/usr/bin/env python
import rospy, time, sys
from std_msgs.msg import String

action = None

def callback(data):
    #rospy.loginfo(rospy.get_caller_id() + 'I heard %s', data.data)
    action = data.data
    print action


pub = rospy.Publisher('state', String, queue_size=1)
rospy.init_node('ros_end', anonymous=True)

rospy.Subscriber('action', String, callback)

for i in range(100):
    time.sleep(2) #Other stuff
    hello_str = str(i)
    #rospy.loginfo(hello_str)
    pub.publish(hello_str)
    #rospy.Subscriber('action', String, callback)
    action = rospy.wait_for_message('action', String, timeout=None)

    print 'Action: ', action

sys.exit()




