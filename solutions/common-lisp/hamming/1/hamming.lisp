(defpackage :hamming
  (:use :cl)
  (:export :distance))

(in-package :hamming)

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands."
  (if (/= (length dna1) (length dna2)) nil (hamming-distance dna1 dna2 0 (length dna1)))
)

(defun hamming-distance (dna1 dna2 index total-length)
    (if (>= index total-length) 0 (cond 
        ((char/= (char dna1 index) (char dna2 index)) (+ 1 (hamming-distance dna1 dna2 (+ index 1) total-length)))
        (t (hamming-distance dna1 dna2 (+ index 1) total-length))
      )
    )
)