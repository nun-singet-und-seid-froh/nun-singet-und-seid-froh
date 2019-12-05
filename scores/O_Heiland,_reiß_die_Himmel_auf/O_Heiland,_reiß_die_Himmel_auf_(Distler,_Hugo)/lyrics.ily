%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSA/SSA/modern/lyrics.ily

sopILyrics = \lyricmode {
  \set stanza =  "1. "
	O Hei -- land, reiß die Him -- mel auf,
	her -- ab, her -- ab vom__ Him -- mel lauf!
	Reiß ab vom Him -- mel Tor__ und Tür,
	reiß ab, wo Schloß__ und Rie -- gel für!
}

sopIILyrics =  \lyricmode {
  \set stanza =  "1. "
	O Hei -- land, reiß die Him -- mel auf,
	her -- ab, her -- ab vom Him -- mel lauf!
	Reiß ab vom Him -- mel Tor und Tür,
	reiß ab, wo Schloß und Rie -- gel für!
}

altLyrics = \sopIILyrics


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
                "O Gott, ein’n Tau vom Himmel gieß,"
                "im Tau herab, o Heiland fleiß!"
                "Ihr Wolken brecht und regnet aus"
                "den König über Jakobs Haus"
                \null
              }
            }
			
			\line {
              \column { "3. " }
              \column {
                "O Erd, schlag aus, schlag aus, o Erd,"
                "daß Berg und Tal, grün alles werd!"
                "O Erd, herfür dies Blümlein bring,"
                "o Heiland, aus der Erden spring!"
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
                "Wo bleibst du, Trost der ganzen Welt,"
                "darauf sie all ihr Hoffnung stellt?"
                "O komm, o komm von höchsten Saal"
                "komm, tröst uns hie im Jammertal!"
                \null
              }
            }

			\line {
              \column { "5. " }
              \column {
                "O klare Sonn, du schöner Stern"
                "dich wollten wir anschauen gern;"
                "o Sonn, geh auf! Ohn deinen Schein"
                "in Finsternis wir alle sein."
                \null
              }
            }
          }
        }

        %last stanza, below the others and centered
        \line{
          \column { "6. " }
          \column {
            "Hie leiden wir die größte Not,"
            "vor Augen steht der ewig Tod:"
            "ach komm, führ uns mit starker Hand"
            "vom Elend zu dem Vaterland!"
            \null
          }
        }
      }
    }
  }
}
