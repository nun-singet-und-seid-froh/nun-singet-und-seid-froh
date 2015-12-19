% based on templates/SATB/two-systems/lyrix.ily

% the lyrics within the staves

lyrix = \lyricmode {
  % for song with multiple stanzas
  \set stanza =  "1. "
  %lyrics here
}

% the lyrics of the stanzas below the staves
stanzas =
\markup {
  \magnify #1.2 {e
    \fill-line {
      \center-column {
        \line {
          %left column of stanzas
          \column {
            \line {
              \column { "2. " }
              \column {
                ""
                ""
                ""
                ""
                \null
              }
            }
          }
          %space between the two columns of stanzas
          \column {
            \line {
              \column {
                \hspace #5
              }
            }
          }

          %right column of stanzas
          \column {
            \line {
              \column { "3. " }
              \column {
                ""
                ""
                ""
                ""
                \null
              }
            }
          }
        }

        %last stanza, below the others and centered
        \line{
          \column { "4. " }
          \column {
            ""
            ""
            ""
            ""
            \null
          }
        }
      }
    }
  }
}
