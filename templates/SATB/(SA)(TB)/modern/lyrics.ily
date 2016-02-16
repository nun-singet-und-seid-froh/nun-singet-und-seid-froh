%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/lyrics.ily

% the lyrics within the staves

sopLyrics = \lyricmode {
}

altLyrics = \lyricmode {
}

tenLyrics = \lyricmode {
}

basLyrics = \lyricmode {
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
