%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSA/SSA/modern/lyrics.ily

sopILyrics = \lyricmode {
  \set stanza =  "1. " Es kommt ein Schiff, ge -- la -- den
  bis an sein’ höch -- sten Bord;
  trägt Got -- tes Sohn voll Gna -- den,
  des Va -- ters ew’ -- ges Wort. __
}

sopIILyrics = \lyricmode {
  \set stanza =  "1. " Es kommt ein Schiff, ge -- la -- den
  bis an sein’ höch -- sten Bord;
  trägt Got -- tes Sohn voll Gna -- den,
  des Va -- ters ew’ -- ges Wort. __
}


altLyrics = \lyricmode {
  \set stanza =  "1. " Es kommt ein Schiff, ge -- la -- den
  bis an sein’ höch -- sten Bord, __
  trägt Got -- tes Sohn __ voll Gna -- den,
  des Va -- ters ew’ -- ges Wort. __
}


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
                "Das Schiff geht still im Triebe,"
                "es trägt ein’ teure Last;"
                "das Segel ist die Liebe"
                "der heilig’ Geist der Mast."
                \null
              }
            }

            \line {
              \column { "3. " }
              \column {
                "Der Anker haft’t auf Erden"
                "da ist das Schiff am Land:"
                "das Wort soll Fleisch uns werden,"
                "der Sohn ist uns gesandt."
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
              \column { "4. " }
              \column {
                "Zu Bethlehem geboren"
                "im Stall ein Kindelein,"
                "gibt sich für uns verloren,"
                "gelobet muss es sein."
                \null
              }
            }

            \line {
              \column { "5. " }
              \column {
                "Und wer dies Kind mit Freuden"
                "umfangen, küssen will"
                "muss vorher mit ihm leiden"
                "groß’ Pein und Marter viel,"
                \null
              }
            }
          }
        }

        %last stanza, below the others and centered
        \line{
          \column { "6. " }
          \column {
            "danach mit ihm auch sterben"
            "und geistlich aufersteh’n"
            "Das Leben zu ererben"
            "Wie an ihm ist gescheh’n."
            \null
          }
        }
      }
    }
  }
}