; Auto-generated. Do not edit!


(cl:in-package wpi_jaco_msgs-msg)


;//! \htmlinclude HomeArmGoal.msg.html

(cl:defclass <HomeArmGoal> (roslisp-msg-protocol:ros-message)
  ((retract
    :reader retract
    :initarg :retract
    :type cl:boolean
    :initform cl:nil)
   (retractPosition
    :reader retractPosition
    :initarg :retractPosition
    :type wpi_jaco_msgs-msg:AngularCommand
    :initform (cl:make-instance 'wpi_jaco_msgs-msg:AngularCommand))
   (numAttempts
    :reader numAttempts
    :initarg :numAttempts
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HomeArmGoal (<HomeArmGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HomeArmGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HomeArmGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wpi_jaco_msgs-msg:<HomeArmGoal> is deprecated: use wpi_jaco_msgs-msg:HomeArmGoal instead.")))

(cl:ensure-generic-function 'retract-val :lambda-list '(m))
(cl:defmethod retract-val ((m <HomeArmGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpi_jaco_msgs-msg:retract-val is deprecated.  Use wpi_jaco_msgs-msg:retract instead.")
  (retract m))

(cl:ensure-generic-function 'retractPosition-val :lambda-list '(m))
(cl:defmethod retractPosition-val ((m <HomeArmGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpi_jaco_msgs-msg:retractPosition-val is deprecated.  Use wpi_jaco_msgs-msg:retractPosition instead.")
  (retractPosition m))

(cl:ensure-generic-function 'numAttempts-val :lambda-list '(m))
(cl:defmethod numAttempts-val ((m <HomeArmGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpi_jaco_msgs-msg:numAttempts-val is deprecated.  Use wpi_jaco_msgs-msg:numAttempts instead.")
  (numAttempts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HomeArmGoal>) ostream)
  "Serializes a message object of type '<HomeArmGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'retract) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'retractPosition) ostream)
  (cl:let* ((signed (cl:slot-value msg 'numAttempts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HomeArmGoal>) istream)
  "Deserializes a message object of type '<HomeArmGoal>"
    (cl:setf (cl:slot-value msg 'retract) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'retractPosition) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numAttempts) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HomeArmGoal>)))
  "Returns string type for a message object of type '<HomeArmGoal>"
  "wpi_jaco_msgs/HomeArmGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HomeArmGoal)))
  "Returns string type for a message object of type 'HomeArmGoal"
  "wpi_jaco_msgs/HomeArmGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HomeArmGoal>)))
  "Returns md5sum for a message object of type '<HomeArmGoal>"
  "5cc54d6dce7b985a5f2ef59749e9444c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HomeArmGoal)))
  "Returns md5sum for a message object of type 'HomeArmGoal"
  "5cc54d6dce7b985a5f2ef59749e9444c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HomeArmGoal>)))
  "Returns full string definition for message of type '<HomeArmGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%bool retract                                  # set to true to retract arm to a given position after moving home~%wpi_jaco_msgs/AngularCommand retractPosition  # position to which the arm should retract (only if retract is true)~%int16 numAttempts                                # attempts for moving to given joint pose (only used in motion planning versions)~%~%================================================================================~%MSG: wpi_jaco_msgs/AngularCommand~%bool position       # true for a position command, false for a velocity command~%bool armCommand     # true if this command includes arm joint inputs~%bool fingerCommand  # true if this command includes finger inputs~%bool repeat         # true if the command should be repeatedly sent over a short interval~%float32[] joints    # position (rad) or velocity (rad/s) arm command~%float32[] fingers   # position (rad) or velocity (rad/s) finger command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HomeArmGoal)))
  "Returns full string definition for message of type 'HomeArmGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%bool retract                                  # set to true to retract arm to a given position after moving home~%wpi_jaco_msgs/AngularCommand retractPosition  # position to which the arm should retract (only if retract is true)~%int16 numAttempts                                # attempts for moving to given joint pose (only used in motion planning versions)~%~%================================================================================~%MSG: wpi_jaco_msgs/AngularCommand~%bool position       # true for a position command, false for a velocity command~%bool armCommand     # true if this command includes arm joint inputs~%bool fingerCommand  # true if this command includes finger inputs~%bool repeat         # true if the command should be repeatedly sent over a short interval~%float32[] joints    # position (rad) or velocity (rad/s) arm command~%float32[] fingers   # position (rad) or velocity (rad/s) finger command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HomeArmGoal>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'retractPosition))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HomeArmGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'HomeArmGoal
    (cl:cons ':retract (retract msg))
    (cl:cons ':retractPosition (retractPosition msg))
    (cl:cons ':numAttempts (numAttempts msg))
))
