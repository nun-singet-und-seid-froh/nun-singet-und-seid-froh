%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/SATTB/modern/lyrics.ily

% this is standard version 1.0: SATTB

#(define-markup-command (cresc layout props dest)(number?)
   #:properties ((thickness 0.1)
                 (direction 1))
   (interpret-markup layout props
     #{
       \markup
       \rotate #(if (not (= 1 direction)) 180 0)
       \path
       #thickness
       #`((moveto ,dest -0.3)
          (lineto 0 0)
          (lineto ,dest 0.3))
     #}))

#(define-markup-command (decresc layout props dest)(number?)
   #:properties ((thickness 0.1))
   (interpret-markup layout (prepend-alist-chain 'direction -1 props)
     #{
       \markup \cresc #dest
     #}))


#(define-markup-command (empt layout props dest)(number?)
   #:properties ((thickness 0)
                 (direction 1))
   (interpret-markup layout props
     #{
       \markup
       \rotate #(if (not (= 1 direction)) 180 0)
       \path
       #thickness
       #`((moveto ,dest -0.3)
          )
     #}))
% the lyrics within the staves

sopLyrics = \lyricmode {
  \set stanza = "1. "
  Macht hoch die Tür, die Tor’ macht weit;
  es kommt der Herr der Herr -- lich -- keit,
  ein Kö -- nig al -- ler Kö -- nig -- reich,
  ein Hei -- land al -- ler Welt zu -- gleich,
  der Heil und Le -- ben mit sich bringt,
  der -- hal -- ben jauchzt, mit Freu -- den singt:
  Ge -- lo -- bet sei mein Gott,
  mein Schöp -- fer hier und dort.
}

altLyrics = \sopLyrics
tenILyrics = \sopLyrics
tenIILyrics = \sopLyrics
basLyrics = \sopLyrics

% the lyrics of the further stanzas


stanzas =
\markup {
  \abs-fontsize #10 {

  \hspace #-8
  
    \line {
      "2. "
      \column {
        \override #'(direction . 1) {
          \dir-column {
            \line { Er ist gerecht, ein Helfer wert, }
            \line { \fontsize #-6 {\dynamic mf \cresc #5 \empt #0.5 \decresc #3.5 \empt #0.5 \dynamic f \cresc #4 \empt #0.5 \decresc #7 } }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Sanftmütigkeit ist sein Gefährt}
              \line { \fontsize #-6 {\dynamic p \cresc #8 \empt #12 \decresc #7 } }
            }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Sein' Königskron ist Heiligkeit }
              \line { \fontsize #-6 {\dynamic f \cresc #6 \empt #9 \dynamic p \empt #5 \decresc #5 } }
            }
          }
        }
        \vspace #0.4
        \override #'(direction . 1) {
          \dir-column {
            \line { Sein Zepter ist Barmherzigkeit }
            \line { \fontsize #-6 {\dynamic f \cresc #9 \empt #5 \decresc #5 \dynamic p \empt #1 \decresc #4 } }
          }
        }
        \vspace #0.4
        \override #'(direction . 1) {
          \dir-column {
            \line { All' unser Not zum End er bringt }
            \line { \fontsize #-6 {\dynamic mf \cresc #7 \empt #14 \decresc #7 } }
          }
        }
        \vspace #0.4
        \override #'(direction . 1) {
          \dir-column {
            \line { Derhalben jauchzt, mit Freuden singt }
            \line { \fontsize #-6 {\dynamic f \cresc #12  } }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Gelobet sei mein Gott, }
              \line { \fontsize #-6 {\dynamic ff \cresc #4 \empt #7 \decresc #7  } }
            }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Mein Heiland groß von Tat! }
              \line { \fontsize #-6 {\dynamic ff \cresc #7 \empt #12 \decresc #5.5  } }
            }

          }
        }
      }
    }
    \hspace #4
    \line {
      "3. "

      \column {
        \override #'(direction . 1) {
          \dir-column {
            \line { Macht hoch die Tür, die Tor’ macht weit; }
            \line { \fontsize #-6 {\dynamic mf \cresc #7 \empt #25 \decresc #7 } }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Eur’ Herz zum Tempel sei bereit! }
              \line { \fontsize #-6 {\dynamic p \cresc #8 \empt #16 \decresc #7 } }
            }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Die Zweiglein der Gottseligkeit }
              \line { \fontsize #-6 {\dynamic mp \cresc #25 \empt #0.5 \dynamic f } }
            }
          }
        }
        \vspace #0.4
        \override #'(direction . 1) {
          \dir-column {
            \line { Steckt auf mit Andacht, Lust und Freud }
            \line { \fontsize #-6 {\cresc #9 \empt #22 \decresc #7 \dynamic p } }
          }
        }
        \vspace #0.4
        \override #'(direction . 1) {
          \dir-column {
            \line { So kommt der König auch zu Euch, }
            \line { \fontsize #-6 { \dynamic f \cresc #10 \empt #17 \decresc #7 } }
          }
        }
        \vspace #0.4
        \override #'(direction . 1) {
          \dir-column {
            \line { Ja, Heil und Leben mit zugleich }
            \line { \fontsize #-6 {\italic piú \dynamic f \cresc #12  } }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Gelobet sei mein Gott, }
              \line { \fontsize #-6 {\dynamic ff \cresc #4 \empt #7 \decresc #7  } }
            }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Voll Rat, voll Tat, voll Gnad’. }
              \line { \fontsize #-6 {\dynamic ff \cresc #7 \empt #14 \decresc #5.5  } }
            }

          }
        }
      }
    }
    
    \hspace #4
    
    \line {
      "4. "
      \column {
        \override #'(direction . 1) {
          \dir-column {
            \line { Komm, o mein Heiland Jesu Christ, }
            \line { \fontsize #-6 {\dynamic mf \cresc #7 \empt #19 \decresc #7 } }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Mein’s Herzens Tür dir offen ist }
              \line { \fontsize #-6 {\dynamic ff \cresc #8 \empt #15 \decresc #7 } }
            }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Ach, zeuch mit deiner Gnaden ein, }
              \line { \fontsize #-6 {\dynamic pp \cresc #6 \empt #18 \decresc #7 } }
            }
          }
        }
        \vspace #0.4
        \override #'(direction . 1) {
          \dir-column {
            \line { Dein’ Freundlichkeit auch uns erschein }
            \line { \fontsize #-6 {\dynamic p \cresc #9 \empt #21 \decresc #7 } }
          }
        }
        \vspace #0.4
        \override #'(direction . 1) {
          \dir-column {
            \line { Dein heil’ger Geist uns führ’ und leit’ }
            \line { \fontsize #-6 {\dynamic mf \cresc #33 \empt #1 \dynamic f } }
          }
        }
        \vspace #0.4
        \override #'(direction . 1) {
          \dir-column {
            \line { Den Weg zur ew’gen Seligkeit. }
            \line { \fontsize #-6 {\dynamic f \cresc #15  } }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Dem Namen dein, o Herr, }
              \line { \fontsize #-6 {\dynamic ff \cresc #7 \empt #8 \italic più \dynamic ff \cresc #4 } }
            }
          }
          \vspace #0.4
          \override #'(direction . 1) {
            \dir-column {
              \line { Sei ewig Preis und Ehr’. }
              \line { \fontsize #-6 {\cresc #8 \empt #8 \decresc #5.5  } }
            }

          }
        }
      }
    }
  }
}
%{

        \line {
          \bold "3. "
          \column {
            "O Wohl dem Land, o Wohl der Stadt,"
	    "So diesen König bei sich hat."
	    "Wohl allen Herzen in gemein,"
	    "Da dieser König ziehet ein."
	    "Er ist die rechte Freudensonn,"
	    "Bringt mit sich lauter Freud’ und Wonn."
	    "Gelobet sei mein Gott,"
            "Mein Tröster früh und spat"
          }
        }
      }
      " "

       \line {
          \bold "5. "
          \column {

            \null
          }
        }
      }
      " "
  }
}
%}
