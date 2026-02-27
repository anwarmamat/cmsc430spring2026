#lang racket
(provide (all-defined-out))
(require scribble/core scribble/html-properties scribble/manual)

(define prof1 (link "https://www.cs.umd.edu/~anwar/" "Anwar Mamat"))
(define prof1-pronouns "he/him")
(define prof1-email "anwar@umd.edu")
(define prof1-ohs (list (list "Virtual on Zoom" (link "https://calendar.app.google/ZDFNR7qGhACZkJZu9" "Schedule here"))
                        (list "TH 1:00-2:00pm" "IRB 2248")))
(define prof1-initials "AM")

(define prof2 (link "https://www.cs.umd.edu/people/milijana" "Milijana Surbatovich"))
(define prof2-email "milijana@umd.edu")
(define prof2-pronouns "she/her")
(define prof2-ohs (list (list "Tu 10:00-11:00am" "IRB 5246")))
(define prof2-initials "MS")


(define semester "spring")
(define year "2026")
(define courseno "CMSC 430")

(define lecture-dates "" #;"Jan 27 -- Dec 8, 2026")

(define IRB "IRB")
(define AVW "AVW")
(define KEY "KEY")

(define office-hour-location (elem AVW " " "4160"))

(define start-date "January 27")
(define m1-date "March 12")
(define m2-date "April 16")
(define midterm-hours "24")
(define final-date "Monday, May 18")
(define final-end-time "3:30PM")
(define elms-url "https://umd.instructure.com/courses/1398590")

(define racket-version "9.0")

(define staff
  (list (list "Pierce Darragh" "pdarragh@umd.edu")
        (list "Justine Frank"  "jpfrank@umd.edu")
        (list "Kalyan Bhetwal" "kbhetwal@umd.edu")
        (list "Yi Cai"         "yicai@umd.edu")
        (list "Sam Badalov"    "sbadalov@umd.edu")
        ))

(define lecture-schedule1 "TTh, 9:30-10:45am")
(define lecture-schedule2 "TTh, 3:30-4:45pm")

(define classroom1 "CSI 1115")
(define classroom2 "IRB 0318")

;(define discord "TBD")
(define piazza "https://piazza.com/umd/spring2026/cmsc430/home")
(define gradescope "https://www.gradescope.com/courses/1240337")
(define feedback "https://forms.gle/AgMDcDGfLfpyUeQY9")

(define (assign-deadline i)
  (list-ref '("Friday, February 13, 11:59PM"
              "Friday, February 20, 11:59PM"
              "Friday, February 27, 11:59PM"
              "Friday, March 6, 11:59PM"
              "")
            (sub1 i)))

(define office-hours
  (itemlist
   #:style 'compact
   (item "Monday"
         (itemlist
          (item "10:00am–1:00pm — Kalyan")))
   (item "Tuesday"
         (itemlist
          (item "8:00am–11:00am — Yi")
          (item "11:00am–12:30pm — Sam")
          (item "1:30pm–4:30pm — Pierce, Justine")))
   (item "Wednesday"
         (itemlist))
   (item "Thursday"
         (itemlist
          (item "11:00am–12:30pm — Sam")
          (item "1:30pm–4:30pm — Pierce, Justine")))
   (item "Friday"
         (itemlist
          (item "10:00am–1:00pm — Kalyan")))))
