% based on templates/SATB/two-systems/modern/lyrix.ily

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
