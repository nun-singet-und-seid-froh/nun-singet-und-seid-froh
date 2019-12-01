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
  \set stanza = "1." 
  Brich an, du schö -- nes Mor -- gen -- licht!
  Das ist der al -- te Mor -- gen nicht, 
  der täg -- lich wie -- der -- keh -- ret. 
  Es ist ein Leuch -- ten aus der Fern,
  es ist ein Schim -- mer, ist ein Stern,
  von dem ich längst ge -- hö -- ret.
}

stanzas=
\markup {
  
    \fill-line \huge {
    " "
      \column {
        \line {
        \bold "2. "
          \column {
            "Nun wird ein König aller Welt"
            "Von Ewigkeit zu Heil bestellt,"
            "Ein zartes Kind geboren."
            "Der Teufel hat sein altes Recht"
            "Am ganzen menschlichen Geschlecht"
            "Verspielt schon und verloren."
          }
        }
      }
      " "
      \column {
        \line {
          \bold "3."
          \column {
            "Wer ist noch, welcher sorgt und sinnt?"
            "Hier in der Krippe liegt ein Kind"
            "Mit lächelnder Gebärde"
            "Wir grüßen dich, du Sternenheld:"
            "Willkommen, Heiland aller Welt,"
            "Willkommen auf der Erde."
          }
        }
      }
      " "
    }
}