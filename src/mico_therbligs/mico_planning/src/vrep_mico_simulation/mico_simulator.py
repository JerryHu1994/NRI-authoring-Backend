#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################
# Mico_simulator connects to the VREP through remoteAPI call. The main two simulation it provides is to
# move the mico_arm and mico_hand.
##################################
# Make sure to have the server side running in V-REP: 
# in a child script of a V-REP scene, add following command
# to be executed just once, at simulation start:
#
# simRemoteApi.start(19999)
#
# then start simulation, and run this program.
#
# IMPORTANT: for each successful call to simxStart, there
# should be a corresponding call to simxFinish at the end!
#################################
try:
    import vrep
except:
    print ('--------------------------------------------------------------')
    print ('"vrep.py" could not be imported. This means very probably that')
    print ('either "vrep.py" or the remoteApi library could not be found.')
    print ('Make sure both are in the same folder as this file,')
    print ('or appropriately adjust the file "vrep.py"')
    print ('--------------------------------------------------------------')
    print ('')

import time

class mico_simulator:

    #constructor
    def __init__(self, name):
        print ('Creating Simulator...')
        self.name = name
        self.handles = []
        self.handname = "hand2"
        # connect to VREP
        vrep.simxFinish(-1) # just in case, close all opened connections
        self.clientID=vrep.simxStart('127.0.0.1',19999,True,True,5000,5) # Connect to V-REP
        time.sleep(2) # wait some time for connection
        if self.clientID!=-1:
            print ('Connected to remote API server')
        else:
            print ('Failed to connect to remote API server')

    # start simulation
    def start_simulation(self):
        vrep.simxStartSimulation(self.clientID,vrep.simx_opmode_oneshot_wait)
        # get all arm handles
        for i in range(6):
            joint_name = 'Mico_joint%d#'%(i+1)
            res, han = vrep.simxGetObjectHandle(self.clientID,joint_name, vrep.simx_opmode_oneshot_wait)
            if res == -1:
                print ('Failed in getting object handle', joint_name)
            self.handles.append(han)
        # set the velocity for each joint
        self.set_arm_velocity([0.2]*6)

    # set the velocity for each joint of the arm
    def set_arm_velocity(self, vel_vector):
        for ind, vel in enumerate(vel_vector):
            ret = vrep.simxSetJointTargetVelocity(self.clientID,self.handles[ind],vel,vrep.simx_opmode_oneshot_wait)
            if ret != vrep.simx_return_ok:
                print ('Failed to set velocity')


    # move the arm given the target position vector
    def move_arm(self, target_position):
        for ind, pos in enumerate(target_position):
            ret = vrep.simxSetJointTargetPosition(self.clientID, self.handles[ind], pos, vrep.simx_opmode_oneshot_wait)
            if ret != vrep.simx_return_ok:
                print ("Failed to move ", ind, " handle to ", "pos")

    # set the hand openness to certain degree
    def move_hand(self, degree):
        ret = vrep.simxSetIntegerSignal(self.clientID, self.handname, degree, vrep.simx_opmode_oneshot_wait)
        if ret != vrep.simx_return_ok:
            print ("move arm failed")

    # end the vrep simulation, need to call this when exiting
    def end_simulation(self):
        vrep.simxFinish(self.clientID)
