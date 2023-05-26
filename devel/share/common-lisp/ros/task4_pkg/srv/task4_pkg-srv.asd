
(cl:in-package :asdf)

(defsystem "task4_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "count_sum" :depends-on ("_package_count_sum"))
    (:file "_package_count_sum" :depends-on ("_package"))
  ))