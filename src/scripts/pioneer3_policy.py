#!/usr/bin/env python
import rospy
from std_msgs.msg import Int8
from scout_service.msg import RoverState
import math, sys
import MultiNEAT as NEAT
import numpy as np
from random import randint





pub = rospy.Publisher('pioneer3/action', Int8, queue_size=1)
rospy.init_node('pioneer3/policy', anonymous=True)

scout_1 = NEAT.NeuralNetwork()
is_success = scout_1.Load('Best_team/Service_bot_1')
if not is_success: sys.exit('Trained Netword Loading failed')

def run_evo_net(state, net):
    scores = []  # Probability output for five action choices
    net.Flush()
    net.Input(state)  # can input numpy arrays, too for some reason only np.float64 is supported
    net.Activate()
    for i in range(5):
        if not math.isnan(1 * net.Output()[i]):
            scores.append(1 * net.Output()[i])
        else:
            scores.append(0)

    print scores
    if sum(scores) != 0 and len(set(scores)) != 1:
        action = np.argmax(scores)
    else:
        action = randint(0, 4)
    return action


def callback(data):
    rospy.loginfo(rospy.get_caller_id() + 'I heard %s', data.data)
    #action = data.data + ' read'
    state = np.array(data.data)
    print state.shape

    action = run_evo_net(state, scout_1)
    print action
    pub.publish(action)



def listener():
    rospy.Subscriber('pioneer3/full_state', RoverState, callback)
    rospy.spin()


if __name__ == '__main__':
    listener()