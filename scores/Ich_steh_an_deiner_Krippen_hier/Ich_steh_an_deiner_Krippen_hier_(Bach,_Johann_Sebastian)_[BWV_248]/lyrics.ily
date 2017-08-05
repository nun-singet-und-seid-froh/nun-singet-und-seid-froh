%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/SATB/modern/lyrics.ily

% this is standard version 1.0: SATB/homophonic

sopLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Ich steh an dei -- ner Krip -- pen hier,
      o Je -- su -- lein, mein Le -- ben;
    }
    \new Lyrics {
    \set associatedVoice = "sop"
   ich  kom -- me, bring und schen -- ke dir,
      was du mir hast ge -- ge -- ben.    
    }
  >>
  Nimm hin! es ist mein Geist und Sinn,
  Herz, Seel und Mut, nimm al -- les hin,
  und lass dirs wohl ge -- fal -- len!
}

altLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Ich steh an dei -- ner Krip -- pen hier,
      o Je -- su -- lein, mein Le -- ben;
    }
    \new Lyrics {
    \set associatedVoice = "alt"
   ich  kom -- me, bring  und schen -- ke dir,
      was  du  mir  hast ge -- ge -- ben.    
    }
  >>
  Nimm hin! es ist  mein  Geist und Sinn,
  Herz, Seel  und Mut,  nimm al -- les hin,
  und lass dirs wohl  ge -- fal -- len!
}

tenLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Ich steh an dei -- ner Krip -- pen  hier,
      o Je -- su -- lein, mein Le -- ben;
    }
    \new Lyrics {
    \set associatedVoice = "ten"
   ich  kom -- me, bring  und schen -- ke  dir,
      was du mir  hast ge -- ge -- ben.    
    }
  >>
  Nimm hin! es  ist  mein  Geist  und  Sinn,
  Herz, Seel  und Mut, nimm  al -- les  hin,
  und  lass dirs wohl  ge -- fal -- len!
}

basLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Ich  steh an dei -- ner Krip -- pen hier,
      o Je -- su -- lein, mein Le -- ben;
    }
    \new Lyrics {
    \set associatedVoice = "bas"
      ich  kom -- me, bring und schen -- ke dir,
      was du  mir hast  ge -- ge -- ben.    
    }
  >>
  Nimm  hin!  es ist   mein Geist  und Sinn,
  Herz,  Seel und Mut, nimm al -- les hin,
  und lass  dirs wohl  ge -- fal -- len!
}


stanzas = \markup {
  \abs-fontsize #10.5
  \fill-line {
    \center-column {
      \line {
        %left column of stanzas
        \column {
          \line {
            \column { "[2.] " }
            \column {
              "Du hast mit deiner Lieb erfüllt"
"Mein Adern und Geblüthe,"
"Dein schöner Glanz, dein süßes Bild"
"Liegt mir ganz im Gemüthe,"
"Und wie mag es auch anders sein,"
"Wie könnt ich dich, mein Herzelein,"
"Aus meinem Herzen lassen?"
              \null
           }
          }
        
          \line {
            \column { "[3.] " }
            \column {
              "Da ich noch nicht geboren war,"
"Da bist du mir geboren,"
"Und hast mich dir zu eigen gar,"
"Eh ich dich kannt, erkoren."
"Eh ich durch deine Hand gemacht,"
"Da hadt dein Herze schon bedacht,"
"Wie du mein wolltest werden."
              \null
           }
          } 
          
        \line {
            \column { "[4.] " }
            \column {
              "Ich lag in tiefster Todesnacht,"
"Du wurdest meine Sonne,"
"Die Sonne, die mir zugebracht"
"Licht, Leben, Freud und Wonne."
"O Sonne, die das werthe Licht"
"Des Glaubens in mir zugericht,"
"Wie schön sind deine Strahlen!"
              \null
           }
          } 
        
        \line {
            \column { "[5.] " }
            \column {
              "Ich sehe dich mit Freuden an,"
"Und kann mich nicht satt sehen,"
"Und weil ich nun nicht weiter kann,"
"So thu ich, was geschehen."
"O daß mein Sinn ein Abgrund wär"
"Und meine Seel ein weites Meer,"
"Daß ich dich möchte fassen."
              \null
           }
          } 
        
        \line {
            \column { "[6.] " }
            \column {
              "Vergönne mir, o Jesulein,"
"Daß ich dein Mündlein küsse,"
"Das Mündlein, das den süßen Wein"
"auch Milch- und Honigflüße"
"Weit übertrifft in seiner Kraft;"
"Es ist voll Labsal, Stärk und Saft,"
"Der Mark und Bein erquicket."
              \null
           }
          }
          
          \line {
            \column { "[7.] " }
            \column {
              "Wann oft mein Herz im Leibe weint,"
"Und keinen Trost kann finden,"
"Da ruft mir’s zu: Ich bin dein Freund,"
"Ein Tilger deiner Sünden;"
"Was traurest du, mein Brüderlein?"
"Du sollst ja guter Dinge sein,"
"Ich zahle deine Schulden."
              \null
           }
          } 
        
        
        \line {
            \column { "[8.] " }
            \column {
              "Wer ist der Meister, der allhier"
"Nach Würden aus-kann-streichen"
"Die Händlein, so diß Kindlein mir,"
"beginnet zuzureichen!"
"Der Schnee ist hell, die Milch ist weiß,"
"Verlieren doch beid ihren Preis,"
"Wann diese Händlein blicken."
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
            \column { " [9.] " }
            \column {
              "Wo nehm ich Weisheit und Verstand,"
"Mit Lobe zu erhöhen"
"Die Aeuglein, die so unverwandt"
"Nach mir gerichtet stehen?"
"Der volle Mond ist schön und klar,"
"Schön ist der güldnen Sternen Schaar,"
"Dies Aeuglein sind viel schöner."
              \null
           }
          }
        
          \line {
            \column { "[10.] " }
            \column {
              "O daß doch ein so lieber Stern"
"Soll in der Krippen liegen!"
"Für edle Kinder großer Herrn"
"Gehören güldne Wiegen:"
"Ach Heu und Stroh ist viel zu schlecht"
"Sammt, Seiden, Purpur wären recht,"
"Dich, Kindlein, drauf zu legen."
              \null
           }
          }
          
           \line {
            \column { "[11.] " }
            \column {
              "Nehmt weg das Stroh, nehmt weg das Heu,"
"Ich will mir Blumen holen,"
"Daß meines Heilands Lager sei"
"auf Kräönzen und Violen;"
"Mit Rosen, Nelken, Rosmarin"
"Aus schönen Gärten will ich ihn"
"Von oben her bestreuen."
              \null
           }
          }
          
           \line {
            \column { "[12.] " }
            \column {
              "Zur Seiten will ich hie und dar"
"Viel weiße Lilien stecken,"
"Die sollen seiner Aeuglein Paar"
"Im Schlafe sanft bedecken."
"Doch liebt vielmehr das dürre Gras"
"Diß, Kindelein, als alles das,"
"Was ich hier nenn und denke."
              \null
           }
          }
          
           \line {
            \column { "[13.] " }
            \column {
              "Du fragest nicht nach Lust der Welt,"
"Noch nach des Leibes Freuden:"
"Du hast dich bei uns eingestellt,"
"An unsrer statt zu leiden,"
"Suchst meiner Seelen Trost und Freud"
"Durch dein selbst eignes Herzeleid,"
"Das will ich dir nicht wehren."
              \null
           }
          }
          
           \line {
            \column { "[14.] " }
            \column {
              "Eins aber, hoff ich, wirst du mir,"
"Mein Heiland, nicht versagen,"
"Daß ich dich möge für und für"
"In, bei und an mir tragen:"
"So laß mich doch dein Kripplein sein,"
"Komm, komm und lege bei mir ein"
"Dich und all deine Freuden."
              \null
           }
          }
          
           \line {
            \column { "[15.] " }
            \column {
              "Zwar sollt ich denken, wie gering"
"Ich dich bewirthen werde:"
"Du bist der Schöpfer aller Ding,"
"Ich bin nur Staub und Erde."
"Doch bist du ein so frommer Gast,"
"Daß du noch nie verschmähet hast"
"Den, der dich gerne siehet."
              \null
           }
          }
        }
      }
      
    }
  }
}
