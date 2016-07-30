%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/SATTB/modern/lyrics.ily

% definitions for writing the dynamics in the markup

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



sopLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Kommt und lasst uns Chris -- tum eh -- ren,
      Herz und Sin -- nen zu ihm keh -- ren;
      sing -- et fröh -- lich,
      lasst euch hö -- ren,
      wer -- tes Volk der Chri -- sten -- heit.
    }
    \new Lyrics
    {
      \set associatedVoice = "sop"
      \set stanza = "[2. ]"
      Sünd und Höl -- le mag sich grä -- men,
      Tod und Teu -- fel mag sich schä -- men:
      Wir, die un -- ser Heil an -- neh -- men,
      wer -- fen al -- len Kum -- mer hin.
    }
  >>
}

altLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Kommt und lasst uns Chris -- tum eh -- ren,
      Herz und Sin -- nen zu ihm keh -- ren;
      sing -- et fröh -- lich,
      lasst euch hö -- ren,
      wer -- tes Volk der Chri -- sten -- heit.
    }
    \new Lyrics
    {
      \set associatedVoice = "alt"
      \set stanza = "[2. ]"
      Sünd und Höl -- le mag sich grä -- men,
      Tod und Teu -- fel mag sich schä -- men:
      Wir, die un -- ser Heil an -- neh -- men,
      wer -- fen al -- len Kum -- mer hin.
    }
  >>
}

tenILyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Kommt und lasst uns Chris -- tum eh -- ren,
      Herz und Sin -- nen zu ihm keh -- ren;
      sing -- et fröh -- lich,
      lasst euch hö -- ren,
      wer -- tes Volk der Chri -- sten -- heit.
    }
    \new Lyrics
    {
      \set associatedVoice = "tenI"
      \set stanza = "[2. ]"
      Sünd und Höl -- le mag sich grä -- men,
      Tod und Teu -- fel mag sich schä -- men:
      Wir, die un -- ser Heil an -- neh -- men,
      wer -- fen al -- len Kum -- mer hin.
    }
  >>
}

tenIILyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Kommt und lasst uns Chris -- tum eh -- ren,
      Herz und Sin -- nen zu ihm keh -- ren;
      sing -- et fröh -- lich, __
      lasst euch hö -- ren,
      wer -- tes Volk der Chri -- sten -- heit.
    }
    \new Lyrics
    {
      \set associatedVoice = "tenII"
      \set stanza = "[2.] "
      Sünd und Höl -- le mag sich grä -- men,
      Tod und Teu -- fel mag sich schä -- men:
      Wir, die un -- ser Heil an -- neh -- men,
      wer -- fen al -- len Kum -- mer hin.
    }
  >>
}

basLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Kommt und lasst uns Chris -- tum eh -- ren,
      Herz und Sin -- nen zu ihm keh -- ren;
      sing -- et fröh -- lich,
      lasst euch hö -- ren,
      wer -- tes Volk der Chri -- sten -- heit.
    }
    \new Lyrics
    {
      \set associatedVoice = "bas"
      \set stanza = "[2. ]"
      Sünd und Höl -- le mag sich grä -- men,
      Tod und Teu -- fel mag sich schä -- men:
      Wir, die un -- ser Heil an -- neh -- men,
      wer -- fen al -- len Kum -- mer hin.
    }
  >>
}


stanzas = \markup {
  \vspace #6
  \abs-fontsize #12
  \fill-line {
    \center-column {
      \line {
        %left column of stanzas
        \column {
          \line {
            \column { "3. " }
            \column {
              \override #'(direction . 1) { \dir-column {
              \line { Sehet, was hat Gott gegeben! }
              \line { \fontsize #-6 {\dynamic f \cresc #7 \empt #13 \decresc #6 } }
              }}
              \vspace #0.4

              \override #'(direction . 1) { \dir-column {
              \line { Seinen Sohn zum ewgen Leben. }
              \line { \fontsize #-6 {\cresc #7 \empt #13 \decresc #8 \dynamic p } }
              }}
              \vspace #0.4
    
              \override #'(direction . 1) { \dir-column {
              \line { Dieser kann und will uns heben }
              \line { \fontsize #-6 { \dynamic mp \cresc #23 \decresc #6 } }
              }}
              \vspace #0.4
    
              \override #'(direction . 1) { \dir-column {
              \line { Aus dem Leid in Himmelsfreud. }
              \line { \fontsize #-6 { \cresc #18 \dynamic f \empt #5 \decresc #6 } }
              }}
              \vspace #0.4
              \null
            }
          }

          \line {
            \column { "[4.] " }
            \column {
              "Seine Seel ist uns gewogen,"
              "Lieb und Gunst hat ihn gezogen,"
              "Uns, die Satanas betrogen,"
              "Zu besuchen aus der Höh."
              \vspace #3.2
            }
          }

          \line {
            \column { "5. " }
            \column {
              \override #'(direction . 1) { \dir-column {
              \line { Jacobs Stern ist aufgegangen, }
              \line { \fontsize #-6 {\dynamic p \cresc #18 \empt #1 \dynamic f \empt #1 \decresc #3 } }
              }}
              \vspace #0.4

              \override #'(direction . 1) { \dir-column {
              \line { Stillt das sehnliche Verlangen, }
              \line { \fontsize #-6 {\dynamic p \cresc #7 \empt #10 \decresc #8 \dynamic pp } }
              }}
              \vspace #0.4
    
              \override #'(direction . 1) { \dir-column {
              \line { bricht den Kopf der alten Schlangen }
              \line { \fontsize #-6 { \dynamic f \cresc #11 \empt #13 \decresc #9 } }
              }}
              \vspace #0.4
    
              \override #'(direction . 1) { \dir-column {
              \line { und zerstört der Höllen Reich. }
              \line { \fontsize #-6 { \cresc #16.5 \dynamic ff \empt #3 \decresc #6 } }
              }}
              \vspace #0.4
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
            \column { "[6.] " }
            \column {
              "Unser Kerker, da wir saßen"
              "Und mit Sorgen ohne Maßen"
              "Uns das Herze selbst abfraßen,"
              "ist entzwei und wir sind frei."
              \vspace #4
            }
          }

          \line {
            \column { "[7.] " }
            \column {
              "O du hoch gesegnte Stunde,"
              "Da wir das von Herzensgrunde"
              "Glauben, und mit unserm Munde"
              "Danken dir, o Jesulein."
              \vspace #4
            }
          }

          \line {
            \column { "[8.] " }
            \column {
              "Schönstes Kindlein in dem Stalle,"
              "Sei uns freundlich, bring uns alle"
              "Dahin, da mit süßem Schalle"
              "Dich der Engel Heer erhöht!"

              \null
            }
          }
        }
      }

    }
  }
}