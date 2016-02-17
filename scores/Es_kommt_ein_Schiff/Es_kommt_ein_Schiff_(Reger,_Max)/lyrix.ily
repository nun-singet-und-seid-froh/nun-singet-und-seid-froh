%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this is standard version 1.0: SATTB

% the lyrics within the staves

sopLyrics = \lyricmode {
  \set stanza =  "1. " Es kommt ein Schiff, ge -- la -- den
  bis an den höchs -- ten Bord;
  trägt Got -- tes Sohn voll Gna -- den,
  des Va -- ters e -- wig’s Wort.
}

altLyrics = \sopLyrics

tenILyrics = \sopLyrics

tenIILyrics = \sopLyrics

basLyrics = \sopLyrics

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
                "Trägt eine teure Last;"
                "Das Segel ist die Liebe"
                "Der heil’ge Geist der Mast."
                \null
              }
            }

            \line {
              \column { "3. " }
              \column {
                "Der Anker haft’ auf Erden"
                "Da ist das Schiff am Land."
                "Das Wort soll Fleisch uns werden,"
                "Der Sohn ist uns gesandt."
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
                "In Bethlehem geboren"
                "Im Stall ein Kindelein,"
                "Gibt sich für uns verloren,"
                "Gelobet muss es sein."
                \null
              }
            }

            \line {
              \column { "5. " }
              \column {
                "Und wer dies Kind mit Freuden"
                "Empfang’n und küssen will"
                "Muss vorher mit ihm leiden"
                "Groß’ Pein und Marter viel."
                \null
              }
            }
          }
        }

        %last stanza, below the others and centered
        \line{
          \column { "6. " }
          \column {
            "Darnach mit ihm auch sterben"
            "Und geistlich aufersteh’n"
            "Das Leben zu ererben"
            "Wie an ihm ist gescheh’n."
            \null
          }
        }
      }
    }
  }
}