% this is standard version 1.0: SATTB

% the lyrics within the staves

sopLyrix = \lyricmode {
  % for song with stanzas
  %\set stanza =  "1. "
  %lyrics here
}

altLyrix = \sopLyrix

teniLyrix = \sopLyrix

teniiLyrix = \sopLyrix

basLyrix = \sopLyrix

% with stanzas
stanzas =
\markup {
  \magnify #1.2 {
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
