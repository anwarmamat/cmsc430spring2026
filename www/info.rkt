#lang info
(define test-omit-paths '("notes/fp/sieve.rkt"
                          "notes/agreement/example.rkt"))
(define deps
  (list "base"
        "rackunit"
        "scribble-math"
        "git://github.com/cmsc430/langs"
        "git://github.com/cmsc430/assignments"))
