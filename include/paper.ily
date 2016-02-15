% the layout-information
% these definitions will be used to suppress page numbering on second page (which is the first page after the cover page)
#(define (looking-up layout props symbol)
   (define (ancestor layout)
     "Return the topmost layout ancestor"
     (let ((parent (ly:output-def-parent layout)))
       (if (not (ly:output-def? parent))
           layout
           (ancestor parent))))
   (ly:output-def-lookup (ancestor layout) symbol))

#(define (book-second-page? layout props)
   "Return #t iff the current page number, got from @code{props}, is the
    book second one."
   (= (chain-assoc-get 'page:page-number props -1)
      (+ (looking-up layout props 'first-page-number) 1)))

#(define (not-second-page layout props arg)
   (if (not (book-second-page? layout props))
       (interpret-markup layout props arg)
       empty-stencil))

% these definitions will be used to print the page numbers on the margin of the page
#(define page-number-offsets '(
  (even . (6 . 0))
  (odd . (-6 . 0))
  ))

#(define-markup-command (place-folio layout props folio) (markup?)
   (let* ((pageno (chain-assoc-get 'page:page-number props))
          (even-odd-page (if (even? pageno) 'even 'odd))
          (m (interpret-markup layout props folio))
          (x-ext (ly:stencil-extent m X))
          (y-ext (ly:stencil-extent m Y)))
   (interpret-markup layout props
     (markup
        #:with-dimensions x-ext y-ext
        #:line (#:translate (assoc-get even-odd-page page-number-offsets) folio)
       ))))

\paper {
  left-margin = 2\cm
  right-margin = 2\cm
  first-page-number = 0
  ragged-right = ##f 
  oddHeaderMarkup= \markup { 
    \column { 
      \line { 
        \place-folio \abs-fontsize #18 \on-the-fly #not-second-page \fromproperty #'page:page-number-string 
      }
    }
  }
  
  evenHeaderMarkup = \markup { 
    \column { 
      \fill-line {
        {""}
        { \place-folio \abs-fontsize #18 \on-the-fly #not-first-page \fromproperty #'page:page-number-string }
      }
    }
  }
  
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

  \context {
    \ChoirStaff
    \name "SemiChoirStaff"
    \consists "Span_bar_engraver"
    \override SpanBar.stencil =
      #(lambda (grob) 
        (if (string=? (ly:grob-property grob 'glyph-name) "|")
            (set! (ly:grob-property grob 'glyph-name) ""))
        (ly:span-bar::print grob))
  }
  \context {
    \Score
    \accepts SemiChoirStaff
  }
}