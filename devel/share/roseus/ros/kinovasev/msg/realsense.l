;; Auto-generated. Do not edit!


(when (boundp 'kinovasev::realsense)
  (if (not (find-package "KINOVASEV"))
    (make-package "KINOVASEV"))
  (shadow 'realsense (find-package "KINOVASEV")))
(unless (find-package "KINOVASEV::REALSENSE")
  (make-package "KINOVASEV::REALSENSE"))

(in-package "ROS")
;;//! \htmlinclude realsense.msg.html


(defclass kinovasev::realsense
  :super ros::object
  :slots (_startid _startH _endid _endH ))

(defmethod kinovasev::realsense
  (:init
   (&key
    ((:startid __startid) 0)
    ((:startH __startH) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:endid __endid) 0)
    ((:endH __endH) (make-array 16 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _startid (round __startid))
   (setq _startH __startH)
   (setq _endid (round __endid))
   (setq _endH __endH)
   self)
  (:startid
   (&optional __startid)
   (if __startid (setq _startid __startid)) _startid)
  (:startH
   (&optional __startH)
   (if __startH (setq _startH __startH)) _startH)
  (:endid
   (&optional __endid)
   (if __endid (setq _endid __endid)) _endid)
  (:endH
   (&optional __endH)
   (if __endH (setq _endH __endH)) _endH)
  (:serialization-length
   ()
   (+
    ;; int32 _startid
    4
    ;; float64[16] _startH
    (* 8    16)
    ;; int32 _endid
    4
    ;; float64[16] _endH
    (* 8    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _startid
       (write-long _startid s)
     ;; float64[16] _startH
     (dotimes (i 16)
       (sys::poke (elt _startH i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _endid
       (write-long _endid s)
     ;; float64[16] _endH
     (dotimes (i 16)
       (sys::poke (elt _endH i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _startid
     (setq _startid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[16] _startH
   (dotimes (i (length _startH))
     (setf (elt _startH i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int32 _endid
     (setq _endid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[16] _endH
   (dotimes (i (length _endH))
     (setf (elt _endH i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get kinovasev::realsense :md5sum-) "277fc24e512a5e4fd934ce478ad44fa1")
(setf (get kinovasev::realsense :datatype-) "kinovasev/realsense")
(setf (get kinovasev::realsense :definition-)
      "int32      startid
float64[16]  startH
int32      endid
float64[16]  endH
")



(provide :kinovasev/realsense "277fc24e512a5e4fd934ce478ad44fa1")


