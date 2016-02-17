%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/SATB/mensural/lyrics.ily

sopLyrics = \lyricmode {
  <<
    {
      \set stanza = "1." Nun komm, der Hei -- den Hei -- land,
      der Jung -- frau -- en, der Jung -- frau -- en Kind er -- kannt,
      dass sich wun -- der al -- le Welt,
      Gott solch Ge -- burt ihm be -- stellt.
    }
    \new Lyrics {
      \set associatedVoice = "sop"
      \set stanza = "2." Er ging aus der Kam -- mer sein,
      dem könig -- li -- chen Saal so rein,
      Gott von Art und Mensch ein Held,
      sein' Weg er zu lau -- fen eilt.
    }
  >>
}

altLyrics = \lyricmode {
  <<
    {
      \set stanza = "1." Nun komm, der Hei -- den Hei -- land,
      der Jung -- frau -- en, der Jung -- frau -- en Kind er -- kannt,
      dass sich wun -- der, dass sich wun -- der al -- le Welt,
      Gott solch Ge -- burt, Gott solch Ge -- burt ihm be -- stellt.
    }
    \new Lyrics {
      \set associatedVoice = "sop"
      \set stanza = "2." Er ging aus der Kam -- mer sein,
      dem könig -- li -- chen Saal so rein,
      Gott von Art und Mensch ein Held,
      sein' Weg er zu lau -- fen eilt.
    }
  >>
}
tenLyrics =  \lyricmode {
  <<
    {
      \set stanza = "1." Nun komm, der Hei -- den Hei -- land,
      der Jung -- frau -- en Kind er -- kannt,
      dass sich wun -- der al -- le Welt,
      Gott solch Ge -- burt ihm be -- stellt.
    }
    \new Lyrics {
      \set associatedVoice = "sop"
      \set stanza = "2." Er ging aus der Kam -- mer sein,
      dem könig -- li -- chen Saal so rein,
      Gott von Art und Mensch ein Held,
      sein' Weg er zu lau -- fen eilt.
    }
  >>
}
basLyrics =  \lyricmode {
  <<
    {
      \set stanza = "1." Nun komm, der Hei -- den Hei -- land,
      der Jung -- frau -- en, der Jung -- frau Kind er -- kannt, er -- kannt,
      dass sich wun -- der, dass sich wun -- der al -- le Welt,
      Gott solch Ge -- burt ihm be -- stellt.
    }
    \new Lyrics {
      \set associatedVoice = "sop"
      \set stanza = "2." Er ging aus der Kam -- mer sein,
      dem könig -- li -- chen Saal so rein,
      Gott von Art und Mensch ein Held,
      sein' Weg er zu lau -- fen eilt.
    }
  >>
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
              \column { "3. " }
              \column {
                "Sein Lauf kam vom Vater her"
                "und kehrt wieder zum Vater,"
                "fuhr hinunter zu der Höll"
                "und wieder zu Gottes Stuhl."
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
                "Die Krippen glänzt hell und klar,"
                "die Nacht gibt ein neu Licht dar,"
                "Dunkel muss nicht kommen drein,"
                "der Glaub bleibt immer im Schein."
                \null
              }
            }
          }
        }

        %last stanza, below the others and centered
        \line{
          \column { "5. " }
          \column {
            "Lob sei Gott, dem Vater tan,"
            "Lob sei Gott sei’m ein’gen Sohn,"
            "Lob sei Gott dem Heiligen Geist"
            "immer und in Ewigkeit."
            \null
          }
        }
      }
    }
  }
}
