%assemble the header-information
 
#(define subtitle opus)
#(if (> (string-length noInOpus) 0) 
     (define subtitle (string-append subtitle ", Nr. " noInOpus))
     #f
)
#(if (> (string-length titleInOpus) 0) 
     (define subtitle (string-append subtitle ": »" titleInOpus "«"))
     #f
)
#(if (> (string-length arrangementDate) 0) 
     (define subtitle (string-append subtitle " (" arrangementDate ")"))
     #f
)

#(define composerBlock (string-append composerPrename " " composerSurname))
#(if (> (string-length composerLifedata) 0) 
     (define composerBlock (string-append composerBlock " (" composerLifedata ")"))
     #f
)

#(define poetBlock (string-append poetPrename " " poetSurname))
#(if (> (string-length poetLifedata) 0) 
     (define poetBlock (string-append poetBlock " (" poetLifedata ")"))
     #f
)

#(define arrangerBlock (string-append arrangerPrename " " arrangerSurname))
#(if (> (string-length arrangerLifedata) 0) 
     (define arrangerBlock (string-append arrangerBlock " (" arrangerLifedata ")"))
     #f
)

#(if (and (string=? poetBlock " ") (> (string-length textDate) 0 ))
     (define poetBlock (string-append "Unbekannter Dichter: " textDate))
     #f
)

#(if (> (string-length melodyDate) 0) 
     (define arrangerBlock (string-append arrangerBlock ": " melodyDate))
     #f
)

#(if (and (> (string-length composerSurname) 0) (> (string-length arrangerSurname) 0))
     (
       define arrangerBlock (string-append "Satz: " arrangerBlock)
      )
     #f
)

#(if (and (> (string-length composerSurname) 0) (> (string-length arrangerSurname) 0))
     (
       define composerBlock (string-append "Melodie: " composerBlock)
      )
     #f
)

% the layout-information
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
            { { \override #'(font-name . "EBGaramond") \abs-fontsize #12 \caps \arrangerBlock } }
            { { \override #'(font-name . "EBGaramond") \abs-fontsize #12 \caps \composerBlock } }
          }
        }
      }
      \null
    }
  }
}