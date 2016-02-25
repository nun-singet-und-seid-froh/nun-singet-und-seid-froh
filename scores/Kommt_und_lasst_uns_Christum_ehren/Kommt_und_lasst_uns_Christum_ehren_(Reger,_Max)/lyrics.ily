%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/SATTB/modern/lyrics.ily

sopLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Kommt und lasst uns Chris -- tum eh -- ren,
      Herz und Sin -- nen zu ihm keh -- ren;
      sing -- et fröh -- lich,
      lasst euch hö -- ren,
      wer -- tes Volk __ der Chri -- sten -- heit.
    }
    \new Lyrics
    {
      \set associatedVoice = "sop"
      \set stanza = "[2. ]"
      Sünd und Höl -- le mag __ sich grä -- men,
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
      lasst __ euch hö -- ren,
      wer -- tes Volk der __ Chri -- sten -- heit.
    }
    \new Lyrics
    {
      \set associatedVoice = "alt"
      \set stanza = "[2. ]"
      Sünd und Höl -- le mag sich grä -- men,
      Tod und Teu -- fel mag __ sich schä -- men:
      Wir, die un -- ser Heil __ an -- neh -- men,
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
      wer -- tes Volk __ der Chri -- sten -- heit.
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
      Sünd __ und Höl -- le mag sich grä -- men,
      Tod und Teu -- fel mag sich schä -- men:
      Wir, die un -- ser __ Heil an -- neh -- men,
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
      Sünd __ und Höl -- le mag __ sich grä -- men,
      Tod und Teu -- fel mag sich schä -- men:
      Wir, die un -- ser Heil an -- neh -- men,
      wer -- fen al -- len Kum -- mer hin.
    }
  >>
}


stanzas = \markup {
  \abs-fontsize #12
  \fill-line {
    \center-column {
      \line {
        %left column of stanzas
        \column {
          \line {
            \column { "3. " }
            \column {
              "Sehet, was hat Gott gegeben!"
              "Seinen Sohn zum ewgen Leben."
              "Dieser kann und will uns heben"
              "Aus dem Leid ins Himmels-Freud."
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
              \null
            }
          }

          \line {
            \column { "5. " }
            \column {
              "Jacobs Stern ist aufgegangen,"
              "Stillt das sehnliche Verlangen,"
              "bricht den Kopf der alten Schlangen"
              "und zerstört der Höllen Reich."
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
              \null
            }
          }

          \line {
            \column { "[7.] " }
            \column {
              "O du hoch gesegnte Stunde,"
              "Da wir das von Herzensgrunde"
              "Glauben, und mit unserm Munde"
              "Danken dir, o Jesulein."
              \null
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