\header {
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
            \line { \italic "nun-singet-und-seid-froh.info" }
            \line { "Revision Nr. " \vers"| " \date }
          }
        }
      }
    }
  }
}
