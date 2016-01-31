%concatenate the header-information
 
#(define subtitle opus)
#(if (string=? noInOpus "") () (define subtitle (string-append subtitle ", Nr. " noInOpus)))
#(if (string=? titleInOpus "") () (define subtitle (string-append subtitle ": »" titleInOpus "«")))

#(define poetBlock "")
#(if (string=? poetPrename "") () (define poetBlock (string-append poetBlock poetPrename)))
#(if (string=? poetSurname "") () (define poetBlock (string-append poetBlock " " poetSurname)))
#(if (string=? poetLifedata "") () (define poetBlock (string-append poetBlock " (" poetLifedata ")")))
#(if (string=? textDate "") () (define poetBlock (string-append poetBlock ": " textDate)))

#(define composerBlock "")
#(if (string=? composerPrename "") () (define composerBlock (string-append composerBlock composerPrename)))
#(if (string=? composerSurname "") () (define composerBlock (string-append composerBlock " " composerSurname)))
#(if (string=? composerLifedata "") () (define composerBlock (string-append composerBlock " (" composerLifedata ")")))
#(if (string=? compositionDate "") () (define composerBlock (string-append composerBlock ": " compositionDate)))

#(define arrangerBlock "")
#(if (string=? arrangerPrename "") () (define arrangerBlock (string-append arrangerBlock arrangerPrename)))
#(if (string=? arrangerSurname "") () (define arrangerBlock (string-append arrangerBlock " " arrangerSurname)))
#(if (string=? arrangerLifedata "") () (define arrangerBlock (string-append arrangerBlock " (" arrangerLifedata ")")))
#(if (string=? melodyDate "") () (define arrangerBlock (string-append arrangerBlock ": " melodyDate)))
 
\paper {
  system-separator-markup = \slashSeparator
  #(define fonts
     (make-pango-font-tree "EBGaramond"
       "Nimbus Sans"
       "Luxi Mono"
       (/ staff-height pt 20)))
  bookTitleMarkup = \markup {
    \column {
      \fill-line {
        \override #'(font-name . "EBGaramond") \center-align \abs-fontsize #18 \caps
        \title
      }
       \fill-line {
        \center-align
       
               
         { \line { \abs-fontsize #12 \italic \subtitle} }
      }

      \null
      \fill-line {
        \line { \override #'(font-name . "EBGaramond") \abs-fontsize #12 \caps \poetBlock }
        \line {
          \column{
            { { \override #'(font-name . "EBGaramond") \abs-fontsize #12 \caps \composerBlock } }
            { { \override #'(font-name . "EBGaramond") \abs-fontsize #12 \caps \arrangerBlock } }
          }
        }
      }
      \null
    }
  }
}
