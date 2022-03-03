
(cl:in-package :asdf)

(defsystem "kinovasev-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "kinova_fingervalue" :depends-on ("_package_kinova_fingervalue"))
    (:file "_package_kinova_fingervalue" :depends-on ("_package"))
    (:file "kinova_jointvalue" :depends-on ("_package_kinova_jointvalue"))
    (:file "_package_kinova_jointvalue" :depends-on ("_package"))
    (:file "kinova_jointvelocity" :depends-on ("_package_kinova_jointvelocity"))
    (:file "_package_kinova_jointvelocity" :depends-on ("_package"))
    (:file "kinova_posevalue" :depends-on ("_package_kinova_posevalue"))
    (:file "_package_kinova_posevalue" :depends-on ("_package"))
    (:file "kinova_posevelocity" :depends-on ("_package_kinova_posevelocity"))
    (:file "_package_kinova_posevelocity" :depends-on ("_package"))
    (:file "kinova_wheelchair_pose" :depends-on ("_package_kinova_wheelchair_pose"))
    (:file "_package_kinova_wheelchair_pose" :depends-on ("_package"))
    (:file "kinova_wheelchair_velocity" :depends-on ("_package_kinova_wheelchair_velocity"))
    (:file "_package_kinova_wheelchair_velocity" :depends-on ("_package"))
  ))