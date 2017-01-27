; Auto-generated. Do not edit!


(cl:in-package scout_service-msg)


;//! \htmlinclude RoverState.msg.html

(cl:defclass <RoverState> (roslisp-msg-protocol:ros-message)
  ((rover_name
    :reader rover_name
    :initarg :rover_name
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RoverState (<RoverState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoverState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoverState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scout_service-msg:<RoverState> is deprecated: use scout_service-msg:RoverState instead.")))

(cl:ensure-generic-function 'rover_name-val :lambda-list '(m))
(cl:defmethod rover_name-val ((m <RoverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_service-msg:rover_name-val is deprecated.  Use scout_service-msg:rover_name instead.")
  (rover_name m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RoverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_service-msg:data-val is deprecated.  Use scout_service-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoverState>) ostream)
  "Serializes a message object of type '<RoverState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rover_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rover_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoverState>) istream)
  "Deserializes a message object of type '<RoverState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rover_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rover_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoverState>)))
  "Returns string type for a message object of type '<RoverState>"
  "scout_service/RoverState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoverState)))
  "Returns string type for a message object of type 'RoverState"
  "scout_service/RoverState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoverState>)))
  "Returns md5sum for a message object of type '<RoverState>"
  "5ee648f8131d2dc132d1a7f533af871f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoverState)))
  "Returns md5sum for a message object of type 'RoverState"
  "5ee648f8131d2dc132d1a7f533af871f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoverState>)))
  "Returns full string definition for message of type '<RoverState>"
  (cl:format cl:nil "string      rover_name~%float64[]   data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoverState)))
  "Returns full string definition for message of type 'RoverState"
  (cl:format cl:nil "string      rover_name~%float64[]   data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoverState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'rover_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoverState>))
  "Converts a ROS message object to a list"
  (cl:list 'RoverState
    (cl:cons ':rover_name (rover_name msg))
    (cl:cons ':data (data msg))
))
