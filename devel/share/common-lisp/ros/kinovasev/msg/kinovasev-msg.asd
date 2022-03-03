
(cl:in-package :asdf)

(defsystem "kinovasev-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "realsense" :depends-on ("_package_realsense"))
    (:file "_package_realsense" :depends-on ("_package"))
  ))