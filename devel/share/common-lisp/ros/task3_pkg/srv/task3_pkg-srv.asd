
(cl:in-package :asdf)

(defsystem "task3_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "words_counter" :depends-on ("_package_words_counter"))
    (:file "_package_words_counter" :depends-on ("_package"))
  ))