%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SAM/two-systems/modern/lyrics.ily

sopLyrics = \lyricmode {
  \set stanza ="1. "
  Nun komm, der Hei -- den Hei -- land,
  der Jung -- frau -- en Kind er -- kannt.
  Des sich wun -- der al -- le Welt,
  Gott solch Ge -- burt ihm __ be -- stellt.
}

altLyrics = \lyricmode {
  \set stanza ="1. "
  Nun komm, __ der Hei -- den Hei -- land, __
  der __ Jung -- frau -- en Kind er -- kannt. __
  Des sich wun -- der al -- le Welt,
  Gott __ solch Ge -- burt, __ 
  solch Ge -- burt ihm be -- stellt.
}

menLyrics = \lyricmode {
  \set stanza ="1. "
  Nun komm, der Hei -- den Hei -- land,
  der Jung -- frau -- en Kind __ er -- kannt.
  Des sich wun -- der al -- le Welt,
  Gott solch Ge -- burt ihm __ be -- stellt.
}

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
                "Sein Lauf kam vom Vater her,"
                "Und geht wieder zum Vater."
                "Fuhr hinunter zu der Höll’"
                "und wieder zu Gottes Stuhl."
                \null
              }
            }

            \line {
              \column { "3. " }
              \column {
                "Er ging aus der Kammer sein"
                "dem königlichen Saal so rein"
                "Gott von Art und Mensch ein Held"
                "sein’n Weg er zu laufen eilt."
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
                "Dein’ Krippen glänzet hell und klar"
                "die Nacht gibt ein neu’ Licht dar."
                "Dunkel muss nicht kommen d’rein"
                "Der Glaub’ bleibt immer im Schein."
                \null
              }
            }

            \line {
              \column { "5. " }
              \column {
                "Lob sei Gott, dem Vater, ’tan,"
                "Lob sei Gott, dem ein’gen Sohn,"
                "Lob sei Gott, dem heil’gen Geist,"
                "immer und in Ewigkeit!"
                \null
              }
            }
          }
        }
      }
    }
  }
}