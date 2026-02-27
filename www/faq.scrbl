#lang scribble/manual

@(require "fancyverb.rkt"
          racket/file
          racket/port
          racket/sandbox
          racket/string
          racket/system
          scribble/core
          scribble/examples
          scribble-math/dollar)


@title[#:style 'unnumbered #:tag "faq"]{FAQ}
@section{Software Installation}
@(fancy-collapsible
@para{Problem 1}
@para{Solution 1}
)

@section{Debugging}
@(fancy-collapsible
@para{`make submit.zip` is not working.}
@para{On WSL, try:

@tt{sudo apt install build-essential; sudo apt install zip}
}
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
