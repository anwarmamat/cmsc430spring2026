#lang scribble/manual
@(require scribble/core
	  scriblib/footnote
          scribble/decode
          scribble/html-properties
      	  "defns.rkt"
          "utils.rkt")

@(define accessible
   (style #f (list (js-addition "js/accessibility.js")
                   (attributes '((lang . "en"))))))

@title[#:style accessible @courseno]{: Design and Implementation of
Programming Languages}

@image[#:scale 1/2 #:style float-right]{img/wizard.png}

@emph{@string-titlecase[semester], @year}


@emph{Professor}: @prof1

@emph{Lecture}: @lecture-schedule1, @classroom1

Office Hours: @itemize{ @(for/list ([oh prof1-ohs]) (item (car oh) ", " (cadr oh))) }

@emph{Professor}: @prof2

@emph{Lecture}: @lecture-schedule2, @classroom2

Office Hours: @itemize{ @(for/list ([oh prof2-ohs]) (item (car oh) ", " (cadr oh))) }


CMSC 430 is an introduction to compilers.  Its major goal is to arm
students with the ability to design, implement, and extend a
programming language. Throughout the course, students will design and
implement several related languages.


@tabular[#:style 'boxed
         #:row-properties '(bottom-border ())
	 (list* (list @bold{Staff} 'cont)
	        (list @bold{Name} @elem{@bold{E-mail}})
	        (list prof1 prof1-email)
	        #;(list prof2 prof2-email)
		staff)]

@bold{Communications:} @link[@elms-url]{ELMS}, @link[@piazza]{Piazza}

@bold{Assumptions:} This course assumes you know the material in CMSC
330 and CMSC 216. In particular, you need to know how to program in a
functional programming language like OCaml and some familiarity with
programming in C and Assembly. See the @seclink["Texts"]{Texts} page
for references to brush up on this material.

@bold{Disclaimer:} All information on this web page is tentative and
subject to change. Any substantive change will be accompanied with an
announcement to the class via ELMS.

@bold{Feedback:} We welcome anonymous feedback on the course and its
staff using this @link[feedback]{form}.

@bold{TA office hours:} @office-hour-location (unless otherwise noted)

@tabular[#:style 'boxed
         #:row-properties '(bottom-border ())
         (list (list @bold{Time}  @bold{Monday} @bold{Tuesday} @bold{Wednesday} @bold{Thursday}   @bold{Friday})
               (list  "9:00 AM"   'cont         ""       ""          ""          'cont)
               (list  "9:30 AM"   'cont         ""       ""          ""          'cont)
               (list "10:00 AM"   ""       		""       ""          'cont             "")
               (list "10:30 AM"   ""            ""       ""          'cont             "")
               (list "11:00 AM"   ""            ""        ""          ""           "")
               (list "11:30 AM"   ""            ""        ""          ""           "")
               (list "12:00 PM"   ""            'cont          ""   'cont             'cont)
               (list "12:30 PM"   ""            ""             ""   ""          'cont)
               (list  "1:00 PM"   'cont         ""             ""         ""  'cont)
               (list  "1:30 PM"   'cont         'cont          ""         ""          'cont)
               (list  "2:00 PM"   ""      ""      ""    "" "")
               (list  "2:30 PM"   ""      ""      ""    "" "")
               (list  "3:00 PM"   'cont         'cont          'cont            ""          "")
               (list  "3:30 PM"   ""        'cont          ""           ""          "")
               (list  "4:00 PM"   ""        'cont          ""           'cont             "")
               (list  "4:30 PM"   ""        'cont          ""           'cont             "")
               (list  "5:00 PM"   ""        'cont          ""           'cont             'cont)
               (list  "5:30 PM"   ""        'cont          ""            'cont             'cont))]


@include-section{syllabus.scrbl}
@include-section{texts.scrbl}
@include-section{schedule.scrbl}
@include-section{notes.scrbl}
@;include-section{slides.scrbl}
@include-section{assignments.scrbl}
@include-section{midterms.scrbl}
@include-section{project.scrbl}
@include-section{software.scrbl}
@include-section{faq.scrbl}
@include-section{colophon.scrbl}
