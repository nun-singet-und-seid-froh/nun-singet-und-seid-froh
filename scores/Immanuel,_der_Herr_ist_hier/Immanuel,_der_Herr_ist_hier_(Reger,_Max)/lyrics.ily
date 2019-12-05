%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/lyrics.ily

% the lyrics within the staves

commonLyrics = 
\lyricmode {
  <<
  {
    \set stanza = "1." 
    Im -- ma -- nu -- el! Der Herr ist hier 
    und nimmt mein Fleisch an sich.
    Im -- ma -- nu -- el! Ist Gott mit mir,
    wer ist dann wi -- der mich?
  }
  \new Lyrics {
    \set associatedVoice = "sop"
    \set stanza = "2. "
    Al -- so hat Gott die Welt ge -- liebt,
    dass er durch frei -- en Trieb
    den ein -- ge -- bor -- nen Sohn uns giebt.
    Wie hat er uns so lieb!
  }
  >>
}

stanzas = 
  \markup {
    \abs-fontsize #14
    \column
    {
      \fill-line {
        \null
          \column {
            \line {
            \bold "3."
              \column {
                "Du, wunderbarer Gottmensch, wirst"
                "mein Rat und Kraft und Held,"
                "mein Vater und mein Friedefürst,"
                "du Heiland aller Welt"
              }
            }
          }
          " "
          \column {
            \line {
            \bold "4. "
              \column {
              "Gelobt sei Gott, gelobt sein Sohn"
              "in dieser Freudenzeit!"
              "Lobt, Engel, ihn vor seinem Thron,"
              "erheb ihn, Christenheit!"
              }
             }
            }
            \null
          }
        }   
  }
