#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################
# The mico planner is the class representing the Kinova mico_arm. Mico_planner connects with MoveIt package
# to generate trajectory(joint positions) for the mico arm. Mico_planner connects with the
# robotiq_85_gripper module to control the gripper installed on the mico_hand. Mico_planner is also
# responsible for handling the simulation in VREP.
##################################
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import time
from sensor_msgs.msg import JointState
from mico_gripper import mico_gripper
from std_msgs.msg import String

# include simulation here, currently not using it
import mico_simulator

# object handles the movement of the mico.
class ActionHandler:

    ################
    # Initializes the MoveGroupCommander, PlannerID, and EndEffector
    def __init__(self, group_name, node_name, sim_flag):
		moveit_commander.roscpp_initialize(sys.argv)
  		rospy.init_node(node_name, anonymous=True)

  		## Instantiate a RobotCommander object.  This object is an interface to
  		## the robot as a whole.
  		self.robot = moveit_commander.RobotCommander()

  		## Instantiate a PlanningSceneInterface object.  This object is an interface
  		## to the world surrounding the robot.
  		self.scene = moveit_commander.PlanningSceneInterface()

  		## Instantiate a MoveGroupCommander object.  This object is an interface
  		## to one group of joints.  In this case the group is the joints in the left
  		## arm.  This interface can be used to plan and execute motions on the left
  		## arm.
  		self.group = moveit_commander.MoveGroupCommander(group_name)#default : "mico_arm"
        #self.group.set_pose_reference_frame(root)
		
        ## We create this DisplayTrajectory publisher which is used below to publish
  		## trajectories for RVIZ to visualize.
  		self.display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)
  		# store current joint positions
        self.joints = self.current_joints()
        # store current pose position
  		self.pose = self.current_pose()
  		# initialize the robotiq 85 gripper on mico hand
  		self.gripper = mico_gripper()
  		if (sim_flag):
  		    self.simulator = mico_simulator.mico_simulator('mico_sim')
  		else:
  		    self.simulator = None
  		print "starting state... ",self.joints,"\nstarting pose...",self.pose

####################
# ARM STATE FUNCTIONS

    ################
    # Get the current arm roll, pitch, yaw 
    #
    # Return : Returns the current arm rpy
    def current_rpy(self):
        return self.group.get_current_rpy()

    ################
    # Get the current arm pose 
    #
    # Return : Returns the current arm pose
    def current_pose(self):
        return self.group.get_current_pose()

    ################
    # Get the current arm joint values
    #
    # Return : Returns the current joint values as an array
    def current_joints(self):
        return self.group.get_current_joint_values()

    ################
    # Get the current arm joint state
    #
    # Return : Returns the current joint state
    def current_jointState(self):
        js = JointState()
        js.name = ['mico_joint_1','mico_joint_2','mico_joint_3','mico_joint_4','mico_joint_5','mico_joint_6']
        js.position = self.current_joints() + self.current_rpy()
        return js

		################
    # Get the current planning frame
    #
    # Return : Returns the current planning frame
    def planning_frame(self):
		return self.group.get_planning_frame()


####################
# PLANNING AND MOVEMENT FUNCTIONS

    ################
    # Executes the plan of the real arm, does not allow for the plan to be stopped during execution
    #
    # Arguments : plan (plan pbject) = the plan to execute
    #
    # Return : True if the plan was executed
    def execute_plan(self, plan):
        return self.group.execute(plan)

    ###############
    # Plan motion based on a set of end-effector positions
    #
    # Arguments: positions (list) = the end positions
    #
    # Return : Returns a the plan    
    def plan(self, positions):
        return self.group.plan(positions)

    ###############
    # Plan motion based on a goal pose location
    #
    # Arguments: coordinates of the goal pose
    #
    # Return : Returns a the plan
    def set_target_position(self, pose):
        self.group.set_pose_target(pose) 

    ###############
    # Plan motion based on a goal joint position
    #
    # Arguments: array of the goal joint position
    #
    # Return : Returns a the plan
    def set_target_joints(self, joints):
        self.group.set_joint_value_target(group_variable_values)

####################
# THERBLIGS

    ################
    # Reaching for an object with an empty hand
    # Preperation for grasp
    #
    # Arguments :position (list) = goal position, either [xyz, xyzw] or JointState           
    #
    # Return : True if the arm moved to the correct position
    def Transport_Empty(self, position):
        success = False

        pos_list = []
        try:
            # use MoveIt for motion planning to target position
            print (position)
            self.group.set_start_state_to_current_state()
            self.set_target_position(position)
            plan = self.group.plan()

            for i in plan.joint_trajectory.points:
                pos_list.append(i.positions)
            #self.group.go(wait=True)
            self.execute_plan(plan)
            success = True

            # for simulation
            if self.simulator != None:
                for p in pos_list:
                    self.simulator.move_arm(list(p))
            ###
        except Exception as e:
            print("*EXCEPTION OCCURRED* - attempted to move arm")
            print(e)
        return success

    ################
    # Reaching for an object with an loaded hand
    # Preperation for grasp
    #
    # Arguments : position (list) = goal position, either [xyz, xyzw] or JointState 
    #
    # Return : True if the arm moved to the correct position
    def Transport_Loaded(self, position):
        success = False
        pos_list = []

        try:
            # use MoveIt for motion planning to target position
            self.group.set_start_state_to_current_state()
            self.set_target_position(position)
            plan = self.group.plan()

            for i in plan.joint_trajectory.points:
                pos_list.append(i.positions)
            #self.group.go(wait=True)
            self.execute_plan(plan)

            # for simulation
            if self.simulator != None:
                for p in posList:
                    self.simulator.move_arm(list(p))
            ###
            success = True

        except Exception as e:
            print("*EXCEPTION OCCURRED* - attempted to move arm")
            print(e)

        return success

    ###############
    # Move the arm to a position and rest there.
    # Arguments : position = goal position
    #
    # Returns : True if the arm is move to the correct location and rest
    def Rest(self, position):
        success = False
        pos_list = []

        try:
            # use MoveIt for motion planning to target position
            self.group.set_start_state_to_current_state()
            self.set_target_position(position)
            plan = self.group.plan()

            for i in plan.joint_trajectory.points:
                pos_list.append(i.positions)
            #self.group.go(wait=True)
            self.execute_plan(plan)

            # for simulation
            if self.simulator != None:
                for p in posList:
                    self.simulator.move_arm(list(p))
            ###
            success = True

        except Exception as e:
            print("*EXCEPTION OCCURRED* - attempted to move arm")
            print(e)

        return success

    ################
    # Hold the arm position for seconds.
    # Arguments : None
    #
    # Returns : True if the arm rests
    def Hold(self, nseconds):
        if nseconds <= 0:
            return False
        try:
            rospy.sleep(nseconds)
        except Exception as e:
            print("*EXCEPTION OCCURRED* - attempted to rest the arm")
            print(e)
        return True

    ################
    # Set the degree of the hand openness
    # Grasp or release and object
    #
    # Arguments : degree (float) = goal openness of the hand
    # 
    # Return : True if the hand is opened to the correct position
    def Set_Hand_Openness(self, degree):
        if degree < 0 or degree >1:
            return False
        success = False
        try:
            # actual code to control the robot
            self.gripper.set_gripper_position(degree)
            # for simulation
            if self.simulator != None:
                self.simulator.move_hand(degree)
            ###
            success = True
        except Exception as e:
            print("*EXCEPTION OCCURRED* - attempted to move hand")
            print(e)
        return success

    ################
    # Save the current XYZ position and orientation of the end-effector
    #
    # Arguments : None
    # 
    # Return : A geometry_msgs pose contains the [XYZ position, xyzw orientation]
    def Read_Position(self):
        try:
            return self.group.get_current_pose().pose

        except Exception as e:
            print("*EXCEPTION OCCURRED* - attempted to read end-effector position")
            print(e)

