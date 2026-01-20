#lang racket
(provide (all-defined-out))
(require (only-in xml cdata)
         scribble/core
         scribble/base
         scribble/html-properties
         scribble/decode
         racket/runtime-path)

(define-runtime-path here ".")

(define PANDOC
  (format "pandoc ~a -f markdown -t html"
          (apply string-append
                 (map (λ (f) (format "--syntax-definition ~a " (build-path here "xml" f)))
                      '("fish.xml" "nasm.xml" "ocaml.xml")))))

(define (fancy-c s)
  (fancyverbatim "c" s))

(define (fancy-nasm s)
  (fancyverbatim "nasm" s))

(define (fancy-make s)
  (fancyverbatim "makefile" s))

(define (fancyverbatim l . d)
  (define in (apply string-append (append (list "```" l "\n") d '("\n```"))))
  (with-input-from-string in
    (lambda ()
      (elem #:style (style #f (list 
                               (xexpr-property
                                (cdata #f #f
                                       (with-output-to-string
                                         (lambda ()
                                           (system PANDOC))))
                                (cdata #f #f ""))))))))

; Define a function to create collapsible sections
(define (fancy-collapsible_old summary-text . content)
   (make-nested-flow
    (style #f (list (alt-tag "details")))
    (cons
     (make-paragraph 
      (style #f (list (alt-tag "summary")))
      (list summary-text))
     (filter block? content))))

(define (fancy-collapsible summary-content . content)
   (make-nested-flow
    (style #f (list (alt-tag "details")))
    (cons
     (cond
       [(paragraph? summary-content)
        ;; If it's a paragraph, add summary style
        (struct-copy paragraph summary-content
                     [style (style #f (list (alt-tag "summary")))])]
       [(block? summary-content)
        ;; If it's another block type (like nested-flow from codeblock),
        ;; wrap it in a nested-flow with summary style
        (make-nested-flow
         (style #f (list (alt-tag "summary")))
         (list summary-content))]
       [else
        ;; Otherwise treat it as pre-content
        (make-paragraph 
         (style #f (list (alt-tag "summary")))
         (decode-content (list summary-content)))])
     (filter block? content))))

; Function to create a radio button input
(define (radio-button name value label #:checked [checked #f])
   (make-element
    (style #f (list (alt-tag "label")))
    (list
     (make-element
      (style #f (list (alt-tag "input")
                      (attributes `((type . "radio")
                                    (name . ,name)
                                    (value . ,value)
                                    ,@(if checked '((checked . "")) '())))))
      '())
     " "
     label)))

; Function to create a multiple choice question
(define (multiple-choice question-content name . choices)
   (make-nested-flow
    (style #f '())
    (append
     (cond
       [(list? question-content)
        ;; If it's a list, filter and use all blocks
        (filter block? question-content)]
       [(paragraph? question-content)
        ;; If it's a paragraph, keep it as is
        (list question-content)]
       [(block? question-content)
        ;; If it's another block type (like nested-flow from codeblock or image),
        ;; use it directly
        (list question-content)]
       [else
        ;; Otherwise treat it as pre-content and make it bold
        (list (make-paragraph plain (list (bold (decode-content (list question-content))))))])
     (for/list ([choice choices])
       (make-paragraph plain (list choice))))))