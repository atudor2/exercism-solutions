(defpackage :lillys-lasagna-leftovers
  (:use :cl)
  (:export
   :preparation-time
   :remaining-minutes-in-oven
   :split-leftovers))

(in-package :lillys-lasagna-leftovers)

;; Define function preparation-time
(defun preparation-time (&rest layers) (* 19 (length layers)))

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (&optional (time :normal))
  (if (null time) 0 (+ 337 (case time
                            (:normal 0)
                            (:shorter -100)
                            (:longer 100)
                            (:very-short -200)
                            (:very-long 200)
                            (otherwise 0)
                           )
                    )                  
 )
)

;; Define function split-leftovers
(defun split-leftovers (&key (weight 0) (human 10) (alien 10))
  (cond 
    ((null weight) :looks-like-someone-was-hungry)
    ((= weight 0) :just-split-it)
    (t (- weight human alien))
  )  
)
