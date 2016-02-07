#(define-markup-command (my-wordwrap-field layout props align symbol)
  (number? symbol?)
  #:properties ((baseline-skip))
  #:category align
  "Same as @code{wordwrap-field}, but internally a stencil-list is produced
first, which will aligned according to @var{align}, putting out a single
stencil."

  ;; c/p from define-markup-commands.scm, because it's not public
  (define (general-column align-dir baseline mols)
    "Stack @var{mols} vertically, aligned to  @var{align-dir} horizontally."
    (let* ((aligned-mols
             (map (lambda (x) (ly:stencil-aligned-to x X align-dir)) mols))
           (stacked-stencil (stack-lines -1 0.0 baseline aligned-mols))
           (stacked-extent (ly:stencil-extent stacked-stencil X)))
      (ly:stencil-translate-axis stacked-stencil (- (car stacked-extent)) X)))

  (let* ((m (chain-assoc-get symbol props)))
    (if (string? m)
        (general-column
          align
          baseline-skip
          (wordwrap-string-internal-markup-list layout props #f m))
        empty-stencil)))


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
#(if (> (string-length melodyDate) 0) 
     (define subtitle (string-append subtitle " (" melodyDate ")"))
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

\header {
  title = \title %setting the title is necessary for the macro that wraps the title if it runs off page
  copyright = \markup {
    \column {
      \center-align {
        \abs-fontsize #20 { \italic \with-url  #"http://www.nun-singet-und-seid-froh.info" { "www.nun-singet-und-seid-froh.info" } }
        \vspace #0.5
        \line { \abs-fontsize #20 { "– Nr. " \noInNsusf " –"} }
        \vspace #1
        
      }
    }
  }
      
  tagline = \markup {
    \abs-fontsize #9
    \column {
      \vspace #1
      \fill-line { "Diese Noten sind gemeinfrei – Kopieren, Veröffentlichen, Verändern, Aufführen und Aufnehmen erlaubt." }
      \line {
        \vspace #1
        \column {

          \fill-line {
            \line { #(string-append "LilyPond " (lilypond-version)) }
            \line { \italic \with-url  #"http://www.nun-singet-und-seid-froh.info" { "www.nun-singet-und-seid-froh.info" } }
            \line { "Revision Nr. " \vers"| " \lastEdited }
          }
        }
      }
    }
  }
  
}%end of header

\paper {
bookTitleMarkup  =
\markup {
  \fill-line {
    \column {
      \center-align {
        \vspace #13
        \line { \abs-fontsize #35 { \caps { \arrangerPrename " " \arrangerSurname } } }
        \vspace #2
        \line { \abs-fontsize #55 \my-wordwrap-field #CENTER #'header:title }
        \vspace #5
        \line { \abs-fontsize #20 \instrumentation }
        \vspace #10
     }
    }
   }
  }
}%end of paper


\pageBreak
\markup {
   \line{
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
