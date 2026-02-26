#lang scribble/manual
@(require scribble/core racket/list)
@(require "defns.rkt")

@title[#:style 'unnumbered]{Schedule}

@(define (wk d) (nonbreaking (bold d)))

@; for unreleased assignments, switch to seclink when ready to release
@(define (tbaseclink lnk txt) txt)

@(define (day s) @elem[s])


@;{ Fall 
@tabular[#:style 'boxed
         #:sep @hspace[1]
         #:row-properties '(bottom-border)
         (list (list @bold{Week}
                     @;bold{Due}
                     @bold{Tuesday}
                     @bold{Thursday})

               (list @wk{9/2}
	       	     #;""
		     @elem{No class}
	             @itemlist[@item{@secref["Intro"]}
 		               @item{@secref["OCaml to Racket"]}])
		               

               (list @wk{9/9}
	       	     @;seclink["Assignment 1"]{A1}
	             @elem{@secref["a86"]}                     
                     @elem{@secref["a86"]})

               (list @wk{9/16}
	             @;seclink["Assignment 2"]{A2}
                     @itemlist[@item{@secref["Abscond"]}
                               @item{@secref["Blackmail"]}]
	             @itemlist[@item{@secref["Con"]}
                               @item{@secref["Dupe"]}])
                     
               (list @wk{9/23}
                     @;""
		     @itemlist[@item{@secref["Dodger"]}
                               @item{@secref["Evildoer"]}]
                     @secref["Extort"])
			       
               (list @wk{9/30}
	             @;elem{A3}
                     @;elem{@seclink["Assignment 2"]{A2}}
		     @secref["Fraud"]
		     @secref["Fraud"])

               (list @wk{10/7}
                     @;""
		     @secref{Hustle}
		     @secref{Hustle})

               (list @wk{10/14}
                     @;elem{A4}
		     @elem{No class: Fall Break}
		     @secref["Midterm_1"])

               (list @wk{10/21}
                     @;""
		     @secref{Hoax}
		     @secref{Hoax})

               (list @wk{10/28}
	             @;elem{A5}
                     @;elem{@seclink["Assignment 4"]{A4}}
		     @secref{Iniquity}
		     @secref{Iniquity})

               (list @wk{11/4}
                     @;""
		     @secref{Knock}
		     @secref{Jig})


	       (list @wk{11/11}
	             @;elem{A6}
		     @secref{Loot}
		     @secref["Midterm_2"])
		     

               (list @wk{11/18}
	             @;""
		     @secref{Loot}
		     @secref{Mug})

               (list @wk{11/25}
	             @;elem{A7}
	             @;elem{@seclink["Assignment 5"]{A5}}
		     @secref{Neerdowell}
		     @elem{No class: Thanksgiving})

               (list @wk{12/2}
	             @;""
		     @secref{Outlaw}
		     @elem{Outlaw})

               (list @wk{12/9}
	             @;""
		     @elem{Slack}
		     @elem{Slack})

)]}

@;{ Spring }
@tabular[#:style 'boxed
         #:sep @hspace[1]
         #:row-properties '(bottom-border)
         (list (list @bold{Week} @bold{Date} @bold{Topic} @bold{Assignment Released})

               @; Week 1
               (list "Week 1"
                     @day{01/27}
                     "Snow Day. No Class"
                     "")
               (list ""
                     @day{01/29}
                     "Snow Day. No Class"
                     "")

                  @; Week 2
               (list "Week 2"
                     @day{02/03}
                     @itemlist[@item{@secref{Intro} @link["slides/01-intro.pdf"]{(slide)}} 
                               @item{@secref{OCaml to Racket}}]
                     @seclink["Assignment 1"]{A1})
               (list ""
                     @day{02/05}
                     (list @secref["a86"] @hspace[3] @link["slides/02-a86.pdf"]{(slide)})
                     "Quiz 1")

                @; Week 3
               (list "Week 3"
                     @day{02/10}
                     (list @secref["a86"] @hspace[3] @link["slides/02-a86.pdf"]{(slide)})
                     "Quiz 2")
               (list ""
                     @day{02/12}
                     (list @secref["Abscond"] @hspace[3] @link["slides/03-abscond.pdf"]{(slide)})
                    @seclink["Assignment 2"]{A2})

               @; Week 4
               (list "Week 4"
                     @day{02/17}
                     (list @secref["Blackmail"] @hspace[3] @link["slides/04-blackmail.pdf"]{(slide)})
                     "Quiz 3")
                  (list ""
                     @day{02/19}
                     (list @secref["Con"] @hspace[3] @link["slides/05-con.pdf"]{(slide)})
                     @seclink["Assignment 3"]{A3})
 
              @; Week 5
               (list "Week 5"
                     @day{02/24}
                     (list @secref["Dupe"] @hspace[3] @link["slides/06-dupe.pdf"]{(slide)})
                     "Quiz 4")
                  (list ""
                     @day{02/26}
                     (list @secref["Dodger"] @hspace[3] @link["slides/07-dodger-evildoes.pdf"]{(slide)})
                     "")
@;{
              @; Week 5
               (list "Week 5"
                     @day{02/25}
                     @secref["Dodger"]
                     "Quiz 4")
                  (list ""
                     @day{02/27}
                     @secref["Evildoer"]
                     "")
            @; Week 6
               (list "Week 6"
                     @day{03/04}
                     @secref["Extort"]
                     "Quiz 5")
                  (list ""
                     @day{03/6}
                     @secref["Fraud"]
                     "Practice Midterm 1")
             @; Week 7
               (list "Week 7"
                     @day{03/11}
                     @secref["Fraud"]
                     "")
                  (list ""
                     @day{03/13}
                     @secref["Midterm_1"]
                     @seclink["Assignment 4"]{A4})
                     
             @; Week 8
               (list "Week 8"
                     @day{03/16-03/20}
                     "Spring Break"
                     "")
            @; Week 9
               (list "Week 9"
                     @day{03/25}
                     @secref["Hustle"]
                     "Quiz 6")
                  (list ""
                     @day{03/27}
                     @secref["Hustle"]
                     "")
            @; Week 10
               (list "Week 10"
                     @day{04/01}
                     @secref["Hoax"]
                     "")
                  (list ""
                     @day{04/03}
                     @secref["Iniquity"]
                     "")
            @; Week 11
               (list "Week 11"
                     @day{04/08}
                     @itemlist[@item{@secref["Knock"] "Mamat"} @item{@secref["Jig"] "Surbatovich"}]
                     @seclink["Assignment 5"]{A5})
                  (list ""
                     @day{04/10}
                     @secref["Knock"]
                     "")
            @; Week 12
               (list "Week 12"
                     @day{04/15}
                     @itemlist[@item{@secref["Jig"] "Mamat"} @item{@secref["Loot"] "Surbatovich"}]
                     "")
                  (list ""
                     @day{04/17}
                      @secref["Midterm_2"]
                     "")
            @; Week 13
               (list "Week 13"
                     @day{04/22}
                     @itemlist[@item{@secref["Jig"] "Mamat"} @item{@secref["Loot"] "Surbatovich"}]
                     "")
                  (list ""
                     @day{04/24}
                     @secref["Loot"]
                     "")
             @; Week 14
               (list "Week 14"
                     @day{04/15}
                     @secref["Loot"]
                     "")
                  (list ""
                     @day{05/01}
                     @secref["Mug"]
                     @secref["Project"])
            @; Week 15
               (list "Week 15"
                     @day{05/06}
                     @secref["Mug"]
                     "")
                @;(list ""
                     @day{05/08}
                     @secref["Outlaw"]
                     "")}
               )]


@;{
@tabular[#:style 'boxed
#:sep @hspace[1]
#:row-properties '(bottom-border)
(list (list @bold{Date} @bold{Topic} @bold{Due})
(list @day{5/30} @secref["Intro"] "")
(list @day{5/31} @secref["OCaml to Racket"] "")
(list @day{6/1}  @secref["a86"] "")
(list @day{6/2}  @secref["Abscond"] @seclink["Assignment 1"]{A1})
(list @day{6/5}  @itemlist[@item{@secref["Blackmail"]} @item{@secref["Con"]}] @seclink["Assignment 2"]{A2})
(list @day{6/6}  @itemlist[@item{@secref["Dupe"]} @item{@secref{Dodger}}] "")
(list @day{6/7}  @secref["Evildoer"] "")
(list @day{6/8}  @secref["Extort"] "")
(list @day{6/9}  @secref["Fraud"] "")
(list @day{6/12} @secref["Hustle"] @seclink["Assignment 3"]{A3})
(list @day{6/13} @secref["Hoax"] "")
(list @day{6/14} "Midterm 1" @secref["Midterm_1"])
(list @day{6/15} @secref["Iniquity"] "")
(list @day{6/16} @elem{@secref["Iniquity"], cont.} "")
(list @day{6/19} @elem{Juneteenth Holiday} "")
(list @day{6/20} @secref["Jig"] @seclink["Assignment 4"]{A4})
(list @day{6/21} @secref["Knock"] "")
(list @day{6/22} @elem{@secref["Knock"], cont.} "")
(list @day{6/23} @secref["Loot"] "")
(list @day{6/26} @elem{@secref["Loot"], cont.} "")
(list @day{6/27} @elem{GC} @seclink["Assignment 5"]{A5})
(list @day{6/28} @secref["Mug"] "")
(list @day{6/29} "Midterm 2" @secref["Midterm_2"])
(list @day{6/30} @secref["Mountebank"] "")
(list @day{7/3}  @secref["Neerdowell"] @seclink["Assignment 6"]{A6})
(list @day{7/4} "Independence Day Holiday" "")
(list @day{7/5} @secref["Outlaw"] "")
(list @day{7/6} @elem{@secref["Outlaw"], cont.} "")
(list @day{7/7} "Slack" @secref{Project})
)
]
}

@bold{Final project assessment: @|final-date|.}
