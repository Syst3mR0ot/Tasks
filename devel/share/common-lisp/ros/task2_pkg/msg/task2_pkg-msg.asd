
(cl:in-package :asdf)

(defsystem "task2_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "complex_num" :depends-on ("_package_complex_num"))
    (:file "_package_complex_num" :depends-on ("_package"))
  ))