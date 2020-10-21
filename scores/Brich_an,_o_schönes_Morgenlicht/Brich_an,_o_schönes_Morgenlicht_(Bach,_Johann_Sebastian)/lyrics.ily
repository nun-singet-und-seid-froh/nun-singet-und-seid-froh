%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/lyrics.ily

% the lyrics within the staves
sopLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Brich an, o schö -- nes Mor -- gen -- licht,
      und lass den Him -- mel ta -- gen!
    }
    \new Lyrics
    {
      \set associatedVoice = "sop"
      Du Hir -- ten -- volk er -- schrec -- ke nicht,
      weil dir die En -- gel sa -- gen,
    }
  >>
  dass die -- ses schwa -- che Knä -- be -- lein
  soll un -- ser  Trost und Freu -- de sein,
  da -- zu den Sa -- tan zwin -- gen
  und letzt -- lich Frie -- de brin -- gen!
}

altLyrics = \sopLyrics
tenLyrics = \sopLyrics
basLyrics = \sopLyrics

stanzas =
\markup {
  \fill-line {
    \null
    \column {
      \line {
        \bold "2. "
        \column {
          "Willkommen, süßer Bräutigam,"
          "Du König aller Ehren!"
          "Willkommen, Jesu, Gottes Lamm,"
          "Ich will dein Lob vermehren;"
          "Ich will dir all mein Leben lang"
          "Von Herzen sagen Preis und Dank,"
          "Dass du, da wir verloren,"
          "Für uns bist Mensch geboren."
        }
      }
    }
    \null
    \column {
      \line {
        \bold "3."
        \column {
          "Lob, Preis und Dank, Herr Jesu Christ,"
          "Sei dir von mir gesungen,"
          "Dass du mein Bruder worden bist"
          "Und hast die Welt bezwungen;"
          "Hilf, dass ich deine Gütigkeit"
          "Stets preis in dieser Gnadenzeit"
          "Und mög hernach dort oben"
          "In Ewigkeit dich loben."
        }
      }
    }
    \null
  }
}
