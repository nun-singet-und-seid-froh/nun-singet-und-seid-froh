%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/lyrics.ily

% the lyrics within the staves
commonLyrics = \lyricmode {
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

stanzas =
\markup {
  \fill-line {
    " "
    \column {
      \line {
        \bold "[2.] "
        \column {
          "Willkommen, süßer Bräutigam,"
          "du König aller Ehren!"
          "Willkommen, Jesu, Gottes Lamm,"
          "ich will dein Lob vermehren;"
          "ich will dir all mein Leben lang"
          "von Herzen sagen Preis und Dank,"
          "dass du, da wir verloren,"
          "für uns bist Mensch geboren."
        }
      }
    }
    " "
    \column {
      \line {
        \bold "[3.]"
        \column {
          "Lob, Preis und Dank, Herr Jesu Christ,"
          "sei dir von mir gesungen,"
          "dass du mein Bruder worden bist"
          "und hast die Welt bezwungen;"
          "hilf, dass ich deine Gütigkeit"
          "stets preis in dieser Gnadenzeit"
          "und mög hernach dort oben"
          "in Ewigkeit dich loben."
        }
      }
    }
    " "
  }
}