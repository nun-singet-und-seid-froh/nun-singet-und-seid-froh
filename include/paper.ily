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
        %\override #'(font-name . "Garamond Reprise OldStyle SSi") \center-align \fontsize #6
        \override #'(font-name . "EBGaramond") \center-align \abs-fontsize #18 \caps
        \title
      }
      \fill-line {
        \center-align
        { \abs-fontsize #12 \italic \isin }
      }

      \null
      \fill-line {
        \line { \override #'(font-name . "EBGaramond") \abs-fontsize #12 \caps \poet \poet_lifedata\text_date }
        \line {
          \column{
            { \line { { \override #'(font-name . "EBGaramond") \abs-fontsize #12 \caps  \composer\composer_lifedata \composition_date} } }
            { \line { { \override #'(font-name . "EBGaramond") \abs-fontsize #12 \caps \arranger\arranger_lifedata} } }
          }
        }
      }
      \null
    }
  }
}
