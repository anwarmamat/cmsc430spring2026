#lang scribble/manual

@(require scribble/core
          racket/file
          racket/system
          racket/string
          racket/port
          )

@(require scribble-math/dollar)
@(require scribble/examples racket/sandbox)
@(require regex-machine)
@(require "fancyverb.rkt")

@title[#:style 'unnumbered #:tag "faq"]{FAQ}
@section{Software Installation}
@(fancy-collapsible 
@para{Problem 1}
@para{Solution 1}
)

@section{Debugging}
@(fancy-collapsible 
@para{Problem 2}
@para{Solution 2}
)

@section{Quiz}
@(fancy-collapsible 
@(multiple-choice 
   @para{Quiz: What version of Racket should I install?}
  "q1"
    (radio-button "q1" "8.18" "8.15")
    (radio-button "q1" "8.18" "8.18")
    (radio-button "q1" "9.0" "9.0")
    (radio-button "q1" "error" "Racket is not needed."))
 @para{Answer: 9.0.}
)