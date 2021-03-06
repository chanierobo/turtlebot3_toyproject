;; Auto-generated. Do not edit!


(when (boundp 'rosapi::TypeDef)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'TypeDef (find-package "ROSAPI")))
(unless (find-package "ROSAPI::TYPEDEF")
  (make-package "ROSAPI::TYPEDEF"))

(in-package "ROS")
;;//! \htmlinclude TypeDef.msg.html


(defclass rosapi::TypeDef
  :super ros::object
  :slots (_type _fieldnames _fieldtypes _fieldarraylen _examples _constnames _constvalues ))

(defmethod rosapi::TypeDef
  (:init
   (&key
    ((:type __type) "")
    ((:fieldnames __fieldnames) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:fieldtypes __fieldtypes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:fieldarraylen __fieldarraylen) (make-array 0 :initial-element 0 :element-type :integer))
    ((:examples __examples) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:constnames __constnames) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:constvalues __constvalues) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _fieldnames __fieldnames)
   (setq _fieldtypes __fieldtypes)
   (setq _fieldarraylen __fieldarraylen)
   (setq _examples __examples)
   (setq _constnames __constnames)
   (setq _constvalues __constvalues)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:fieldnames
   (&optional __fieldnames)
   (if __fieldnames (setq _fieldnames __fieldnames)) _fieldnames)
  (:fieldtypes
   (&optional __fieldtypes)
   (if __fieldtypes (setq _fieldtypes __fieldtypes)) _fieldtypes)
  (:fieldarraylen
   (&optional __fieldarraylen)
   (if __fieldarraylen (setq _fieldarraylen __fieldarraylen)) _fieldarraylen)
  (:examples
   (&optional __examples)
   (if __examples (setq _examples __examples)) _examples)
  (:constnames
   (&optional __constnames)
   (if __constnames (setq _constnames __constnames)) _constnames)
  (:constvalues
   (&optional __constvalues)
   (if __constvalues (setq _constvalues __constvalues)) _constvalues)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string[] _fieldnames
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _fieldnames)) 4
    ;; string[] _fieldtypes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _fieldtypes)) 4
    ;; int32[] _fieldarraylen
    (* 4    (length _fieldarraylen)) 4
    ;; string[] _examples
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _examples)) 4
    ;; string[] _constnames
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _constnames)) 4
    ;; string[] _constvalues
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _constvalues)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string[] _fieldnames
     (write-long (length _fieldnames) s)
     (dolist (elem _fieldnames)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _fieldtypes
     (write-long (length _fieldtypes) s)
     (dolist (elem _fieldtypes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _fieldarraylen
     (write-long (length _fieldarraylen) s)
     (dotimes (i (length _fieldarraylen))
       (write-long (elt _fieldarraylen i) s)
       )
     ;; string[] _examples
     (write-long (length _examples) s)
     (dolist (elem _examples)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _constnames
     (write-long (length _constnames) s)
     (dolist (elem _constnames)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _constvalues
     (write-long (length _constvalues) s)
     (dolist (elem _constvalues)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _fieldnames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fieldnames (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _fieldnames i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _fieldtypes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fieldtypes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _fieldtypes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _fieldarraylen
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fieldarraylen (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _fieldarraylen i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _examples
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _examples (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _examples i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _constnames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _constnames (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _constnames i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _constvalues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _constvalues (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _constvalues i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get rosapi::TypeDef :md5sum-) "80597571d79bbeef6c9c4d98f30116a0")
(setf (get rosapi::TypeDef :datatype-) "rosapi/TypeDef")
(setf (get rosapi::TypeDef :definition-)
      "string type
string[] fieldnames
string[] fieldtypes
int32[] fieldarraylen
string[] examples
string[] constnames
string[] constvalues

")



(provide :rosapi/TypeDef "80597571d79bbeef6c9c4d98f30116a0")


