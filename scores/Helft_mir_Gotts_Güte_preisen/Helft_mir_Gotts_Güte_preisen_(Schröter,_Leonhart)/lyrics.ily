%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/SATB/mensural/lyrics.ily

sopLyrics = \lyricmode {
  Helft mir Gott’s Gü -- te prei -- sen
  ihr lie -- ben Kin -- der -- lein
  Mit G’sang und al -- ler Wei -- sen
  ihm all -- zeit dank -- bar sein.
  Für -- nem -- lich zu der Zeit
  da sich das Jahr tut en -- den
  die Sonn’ sich zu uns wen -- den
  das neu’ Jahr ist nicht weit.
  da sich das Jahr tut en -- den
  die Sonn’ sich zu uns wen -- den
  das neu’ Jahr ist nicht weit.
}

altLyrics = \lyricmode {
  Helft mir Gott’s Gü -- te prei -- sen
  ihr lie -- ben Kin -- der -- lein
  Mit G’sang und al -- ler Wei -- sen
  ihm all -- zeit dank -- bar sein.
  Für -- nem -- lich zu der Zeit
  Für -- nem -- lich zu der Zeit
  da sich das Jahr tut en -- den
  die Sonn’ sich zu uns wen -- den
  das neu’ Jahr ist nicht weit.
  da sich das Jahr tut en -- den
  die Sonn’ sich zu uns wen -- den
  das neu’ Jahr ist nicht weit.
}

tenLyrics = \altLyrics

basLyrics = \altLyrics

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
