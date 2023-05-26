; Auto-generated. Do not edit!


(cl:in-package task2_pkg-msg)


;//! \htmlinclude complex_num.msg.html

(cl:defclass <complex_num> (roslisp-msg-protocol:ros-message)
  ((real
    :reader real
    :initarg :real
    :type cl:integer
    :initform 0)
   (imaginary
    :reader imaginary
    :initarg :imaginary
    :type cl:integer
    :initform 0))
)

(cl:defclass complex_num (<complex_num>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <complex_num>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'complex_num)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task2_pkg-msg:<complex_num> is deprecated: use task2_pkg-msg:complex_num instead.")))

(cl:ensure-generic-function 'real-val :lambda-list '(m))
(cl:defmethod real-val ((m <complex_num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2_pkg-msg:real-val is deprecated.  Use task2_pkg-msg:real instead.")
  (real m))

(cl:ensure-generic-function 'imaginary-val :lambda-list '(m))
(cl:defmethod imaginary-val ((m <complex_num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2_pkg-msg:imaginary-val is deprecated.  Use task2_pkg-msg:imaginary instead.")
  (imaginary m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <complex_num>) ostream)
  "Serializes a message object of type '<complex_num>"
  (cl:let* ((signed (cl:slot-value msg 'real)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'imaginary)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <complex_num>) istream)
  "Deserializes a message object of type '<complex_num>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'real) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imaginary) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<complex_num>)))
  "Returns string type for a message object of type '<complex_num>"
  "task2_pkg/complex_num")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'complex_num)))
  "Returns string type for a message object of type 'complex_num"
  "task2_pkg/complex_num")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<complex_num>)))
  "Returns md5sum for a message object of type '<complex_num>"
  "29494601c99dbe58165af75a7e636359")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'complex_num)))
  "Returns md5sum for a message object of type 'complex_num"
  "29494601c99dbe58165af75a7e636359")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<complex_num>)))
  "Returns full string definition for message of type '<complex_num>"
  (cl:format cl:nil "    int32 real~%    int32 imaginary ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'complex_num)))
  "Returns full string definition for message of type 'complex_num"
  (cl:format cl:nil "    int32 real~%    int32 imaginary ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <complex_num>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <complex_num>))
  "Converts a ROS message object to a list"
  (cl:list 'complex_num
    (cl:cons ':real (real msg))
    (cl:cons ':imaginary (imaginary msg))
))
