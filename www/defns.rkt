#lang racket
(provide (all-defined-out))
(require scribble/core scribble/html-properties scribble/manual)

(define prof1 (link "https://www.cs.umd.edu/~anwar/" "Anwar Mamat"))
(define prof1-pronouns "he/him")
(define prof1-email "anwar@umd.edu")
(define prof1-ohs (list (list "TBD" (link "www.zoom.umd" "Zoom"))
                        (list "TBD" "IRB 2248")))
(define prof1-initials "AM")

(define prof2 (link "https://www.cs.umd.edu/people/milijana" "Milijana Surbatovich"))
(define prof2-email "milijana@umd.edu")
(define prof2-pronouns "she/her")
(define prof2-ohs (list (list "F 10:00-11:00am" "IRB 5246")))
(define prof2-initials "MS")


(define semester "spring")
(define year "2026")
(define courseno "CMSC 430")

(define lecture-dates "" #;"Jan 27 -- Dec 8, 2026")

(define IRB "IRB")
(define AVW "AVW")
(define KEY "KEY")

(define office-hour-location (elem AVW " " "4122"))

(define start-date "January 27")
(define m1-date "March 12")
(define m2-date "April 16")
(define midterm-hours "24")
(define final-date "Monday, May 18")
(define final-end-time "3:30PM")
(define elms-url "https://umd.instructure.com/courses/1368381")


(define racket-version "9.0")

(define staff
  (list (list "Pierce Darragh"     "pdarragh@umd.edu")
        (list "Kalyan Bhetwal"     "kbhetwal@umd.edu")
        (list "..."     "...")
        ))

(define lecture-schedule1 "TTh, 9:30-10:45am")
(define lecture-schedule2 "TTh, 3:30-4:45pm")

(define classroom1 "CSI 1115")
(define classroom2 "IRB 0318")

;(define discord "TBD")
(define piazza "https://piazza.com/umd/spring2026/cmsc430/home")
(define gradescope "https://www.gradescope.com/courses/1240337")

(define feedback "https://forms.gle")

(define (assign-deadline i)
  (list-ref '("Tuesday, February 10, 11:59PM"
              ""
              ""
              ""
              "")
            (sub1 i)))

 
