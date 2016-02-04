% the layout-information

#(define (book-second-page? layout props)
   "Return #t iff the current page number, got from @code{props}, is the
    book second one."
   (= (chain-assoc-get 'page:page-number props -1)
      ))
      
#(define (not-second-page layout props arg)
   (if (not (book-second-page? layout props))
       (interpret-markup layout props arg)
       empty-stencil))

\paper {
  left-margin = 2\cm
  right-margin = 2\cm
  first-page-number = 0
  oddHeaderMarkup= \markup { \column { { \abs-fontsize #18 \on-the-fly #not-second-page \fromproperty #'page:page-number-string }}}
  evenHeaderMarkup = \markup { { \column { \fill-line {"" \abs-fontsize #18 \on-the-fly #not-first-page \fromproperty #'page:page-number-string }}}}
  
 %two-sided = ##t
  system-separator-markup = \slashSeparator
  #(define fonts
     (make-pango-font-tree "EBGaramond"
       "Nimbus Sans"
       "Luxi Mono"
       (/ staff-height pt 20)))
}

\layout { 
  \context {
    \Score
    %increases the size of numbers, because numbers in EB Garamond are a bit small
    \override BarNumber #'font-size = #2
    \override ClefModifier.font-size = #0.5 %the size of the 8 in the G_8-clef (tenor-clef)
  }
}