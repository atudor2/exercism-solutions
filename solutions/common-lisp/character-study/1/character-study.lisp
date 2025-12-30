(defpackage :character-study
  (:use :cl)
  (:export
   :compare-chars
   :size-of-char
   :change-size-of-char
   :type-of-char))
(in-package :character-study)

(defun compare-chars (char1 char2)
  (cond 
    ((char< char1 char2) :less-than)
    ((char= char1 char2) :equal-to)
    ((char> char1 char2) :greater-than)
  )
)

(defun size-of-char (char)
  (cond 
    ((lower-case-p char) :small)
    ((upper-case-p char) :big)
    (t :no-size)
  )
)

(defun change-size-of-char (char wanted-size)
  (if (eq wanted-size :big) (char-upcase char) (char-downcase char))
)

(defun type-of-char (char)
  (cond
    ((alpha-char-p char)    :alpha)
    ((digit-char-p char)    :numeric)
    ((char= char #\Space)   :space)
    ((char= char #\Newline) :newline)
    (t :unknown)
  )
)
