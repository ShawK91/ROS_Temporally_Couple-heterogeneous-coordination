
(cl:in-package :asdf)

(defsystem "scout_service-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RoverPosition" :depends-on ("_package_RoverPosition"))
    (:file "_package_RoverPosition" :depends-on ("_package"))
    (:file "POIVector" :depends-on ("_package_POIVector"))
    (:file "_package_POIVector" :depends-on ("_package"))
    (:file "RoverState" :depends-on ("_package_RoverState"))
    (:file "_package_RoverState" :depends-on ("_package"))
    (:file "RoverList" :depends-on ("_package_RoverList"))
    (:file "_package_RoverList" :depends-on ("_package"))
  ))