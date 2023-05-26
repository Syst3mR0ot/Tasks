;; Auto-generated. Do not edit!


(when (boundp 'task3_pkg::words_counter)
  (if (not (find-package "TASK3_PKG"))
    (make-package "TASK3_PKG"))
  (shadow 'words_counter (find-package "TASK3_PKG")))
(unless (find-package "TASK3_PKG::WORDS_COUNTER")
  (make-package "TASK3_PKG::WORDS_COUNTER"))
(unless (find-package "TASK3_PKG::WORDS_COUNTERREQUEST")
  (make-package "TASK3_PKG::WORDS_COUNTERREQUEST"))
(unless (find-package "TASK3_PKG::WORDS_COUNTERRESPONSE")
  (make-package "TASK3_PKG::WORDS_COUNTERRESPONSE"))

(in-package "ROS")





(defclass task3_pkg::words_counterRequest
  :super ros::object
  :slots (_sentence ))

(defmethod task3_pkg::words_counterRequest
  (:init
   (&key
    ((:sentence __sentence) "")
    )
   (send-super :init)
   (setq _sentence (string __sentence))
   self)
  (:sentence
   (&optional __sentence)
   (if __sentence (setq _sentence __sentence)) _sentence)
  (:serialization-length
   ()
   (+
    ;; string _sentence
    4 (length _sentence)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sentence
       (write-long (length _sentence) s) (princ _sentence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sentence
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sentence (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass task3_pkg::words_counterResponse
  :super ros::object
  :slots (_num_words ))

(defmethod task3_pkg::words_counterResponse
  (:init
   (&key
    ((:num_words __num_words) 0)
    )
   (send-super :init)
   (setq _num_words (round __num_words))
   self)
  (:num_words
   (&optional __num_words)
   (if __num_words (setq _num_words __num_words)) _num_words)
  (:serialization-length
   ()
   (+
    ;; int32 _num_words
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num_words
       (write-long _num_words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num_words
     (setq _num_words (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass task3_pkg::words_counter
  :super ros::object
  :slots ())

(setf (get task3_pkg::words_counter :md5sum-) "7493e9879e62bc96956efab2440a9c04")
(setf (get task3_pkg::words_counter :datatype-) "task3_pkg/words_counter")
(setf (get task3_pkg::words_counter :request) task3_pkg::words_counterRequest)
(setf (get task3_pkg::words_counter :response) task3_pkg::words_counterResponse)

(defmethod task3_pkg::words_counterRequest
  (:response () (instance task3_pkg::words_counterResponse :init)))

(setf (get task3_pkg::words_counterRequest :md5sum-) "7493e9879e62bc96956efab2440a9c04")
(setf (get task3_pkg::words_counterRequest :datatype-) "task3_pkg/words_counterRequest")
(setf (get task3_pkg::words_counterRequest :definition-)
      "string sentence
---
int32 num_words
")

(setf (get task3_pkg::words_counterResponse :md5sum-) "7493e9879e62bc96956efab2440a9c04")
(setf (get task3_pkg::words_counterResponse :datatype-) "task3_pkg/words_counterResponse")
(setf (get task3_pkg::words_counterResponse :definition-)
      "string sentence
---
int32 num_words
")



(provide :task3_pkg/words_counter "7493e9879e62bc96956efab2440a9c04")


