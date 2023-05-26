; Auto-generated. Do not edit!


(cl:in-package task3_pkg-srv)


;//! \htmlinclude words_counter-request.msg.html

(cl:defclass <words_counter-request> (roslisp-msg-protocol:ros-message)
  ((sentence
    :reader sentence
    :initarg :sentence
    :type cl:string
    :initform ""))
)

(cl:defclass words_counter-request (<words_counter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <words_counter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'words_counter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task3_pkg-srv:<words_counter-request> is deprecated: use task3_pkg-srv:words_counter-request instead.")))

(cl:ensure-generic-function 'sentence-val :lambda-list '(m))
(cl:defmethod sentence-val ((m <words_counter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3_pkg-srv:sentence-val is deprecated.  Use task3_pkg-srv:sentence instead.")
  (sentence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <words_counter-request>) ostream)
  "Serializes a message object of type '<words_counter-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sentence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sentence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <words_counter-request>) istream)
  "Deserializes a message object of type '<words_counter-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sentence) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sentence) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<words_counter-request>)))
  "Returns string type for a service object of type '<words_counter-request>"
  "task3_pkg/words_counterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'words_counter-request)))
  "Returns string type for a service object of type 'words_counter-request"
  "task3_pkg/words_counterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<words_counter-request>)))
  "Returns md5sum for a message object of type '<words_counter-request>"
  "7493e9879e62bc96956efab2440a9c04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'words_counter-request)))
  "Returns md5sum for a message object of type 'words_counter-request"
  "7493e9879e62bc96956efab2440a9c04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<words_counter-request>)))
  "Returns full string definition for message of type '<words_counter-request>"
  (cl:format cl:nil "string sentence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'words_counter-request)))
  "Returns full string definition for message of type 'words_counter-request"
  (cl:format cl:nil "string sentence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <words_counter-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sentence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <words_counter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'words_counter-request
    (cl:cons ':sentence (sentence msg))
))
;//! \htmlinclude words_counter-response.msg.html

(cl:defclass <words_counter-response> (roslisp-msg-protocol:ros-message)
  ((num_words
    :reader num_words
    :initarg :num_words
    :type cl:integer
    :initform 0))
)

(cl:defclass words_counter-response (<words_counter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <words_counter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'words_counter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task3_pkg-srv:<words_counter-response> is deprecated: use task3_pkg-srv:words_counter-response instead.")))

(cl:ensure-generic-function 'num_words-val :lambda-list '(m))
(cl:defmethod num_words-val ((m <words_counter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3_pkg-srv:num_words-val is deprecated.  Use task3_pkg-srv:num_words instead.")
  (num_words m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <words_counter-response>) ostream)
  "Serializes a message object of type '<words_counter-response>"
  (cl:let* ((signed (cl:slot-value msg 'num_words)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <words_counter-response>) istream)
  "Deserializes a message object of type '<words_counter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_words) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<words_counter-response>)))
  "Returns string type for a service object of type '<words_counter-response>"
  "task3_pkg/words_counterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'words_counter-response)))
  "Returns string type for a service object of type 'words_counter-response"
  "task3_pkg/words_counterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<words_counter-response>)))
  "Returns md5sum for a message object of type '<words_counter-response>"
  "7493e9879e62bc96956efab2440a9c04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'words_counter-response)))
  "Returns md5sum for a message object of type 'words_counter-response"
  "7493e9879e62bc96956efab2440a9c04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<words_counter-response>)))
  "Returns full string definition for message of type '<words_counter-response>"
  (cl:format cl:nil "int32 num_words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'words_counter-response)))
  "Returns full string definition for message of type 'words_counter-response"
  (cl:format cl:nil "int32 num_words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <words_counter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <words_counter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'words_counter-response
    (cl:cons ':num_words (num_words msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'words_counter)))
  'words_counter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'words_counter)))
  'words_counter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'words_counter)))
  "Returns string type for a service object of type '<words_counter>"
  "task3_pkg/words_counter")