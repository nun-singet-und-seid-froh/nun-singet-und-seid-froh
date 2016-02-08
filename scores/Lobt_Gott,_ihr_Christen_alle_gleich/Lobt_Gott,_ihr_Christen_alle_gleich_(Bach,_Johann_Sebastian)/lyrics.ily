% this is standard version 1.0: SATB/homophonic

commonLyrics = \lyricmode { 
 <<
  {\set stanza = "1. " 
  Lobt Gott, ihr Chris -- ten al -- le gleich,
  in sei -- nem höchs -- ten Thron,
  der heut schließt auf sein Him -- mel -- reich
  und schenkt uns sei -- nen Sohn,
  und schenkt uns sei -- nen Sohn.
  }
  \new Lyrics {
   \set associatedVoice = "alt"
   \set stanza = "2. "
  Er kommt aus sei -- nes Va -- ters Schoß
  und wird ein Kind -- lein klein,
  er liegt dort e -- lend, nackt und bloß
  in ei -- nem Krip -- pe -- lein,
  in ei -- nem Krip -- pe -- lein.
  } 
 >>
}

stanzas=
\markup {
    \fill-line {
    " "
      \column {
        \line {
        \bold "3. "
          \column {
			"Er äußert sich all seiner Gewalt,"
			"Wird niedrig und gering"
			"Und nimmt an eines Knechts Gestalt,"
			"Der Schöpfer aller Ding,"
			"Der Schöpfer aller Ding."
	    " "    
          }
        }
         \line {
          \bold "4. "
          \column {
			"Er liegt an seiner Mutter Brust"
			"Ihr Milch, die ist sein Speis'"
			"An dem die Engel seh'n ihr Lust,"
			"Denn er ist Davids Reis,"
			"Denn er ist Davids Reis,"
	    " "			
          }
        }
        \line {
          \bold "5. "
          \column {
			"Das aus sei'm Stamm entsprießen solt"
			"Un dieser letzten Zeit"
			"Durch welchen Gott aufrichten wollt,"
			"Sein Reich die Christenheit,"
			"Sein Reich die Christenheit."
	    " "			
          }
        }
      }
      " "
      \column {
       \line {
        \bold "6. "
          \column {
			"Er wechselt mit uns wunderlich:"
			"Fleisch und Blut nimmt er an"
			"Und gibt uns in seins Vaters Reich"
			"Die klare Gottheit dran,"
			"Die klare Gottheit dran."
	    " "
          }
        }
        
        \line {
          \bold "7. "
          \column {
			"Er wird ein Knecht und ich ein Herr;"
			"Das mag ein Wechsel sein!"
			"Wie könnt es doch sein freundlicher,"
			"Das herze Jesulein,"
			"Das herze Jesulein!"
	    " "			
          }
        }
        \line {
          \bold "8. "
          \column {
			"Heut schließt er wieder auf die Tür"
			"Zum schönen Paradeis;"
			"Der Cherub steht nicht mehr dafür."
			"Gott sei Lob, Ehr und Preis,"
			"Gott sei Lob, Ehr und Preis!"
	    ""			
          }
        }
      }
     ""
    }   
}
