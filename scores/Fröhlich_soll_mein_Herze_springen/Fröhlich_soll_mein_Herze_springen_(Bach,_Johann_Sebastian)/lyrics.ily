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
      \set stanza = "[1.] "
      Fröh -- lich soll mein Her -- ze sprin -- gen
      die -- ser Zeit, da vor Freud
      al -- le En -- gel sin -- gen.
      Hört, hört, wie mit vol -- len Chö -- ren
      al -- le Luft lau -- te ruft:
      Chris -- tus ist ge -- bo -- ren!
    }
    \new Lyrics
    {
      \set associatedVoice = "sop"
      \set stanza = "[2.] "
      Heu -- te geht aus sei -- ner Kam -- mer
      Got -- tes Held, der die Welt
      reißt aus al -- lem Jam -- mer.
      Gott wird Mensch dir, Mensch, zu -- gut -- e,
      Got -- tes Kind, das ver -- bind't
      sich mit un -- serm Blut -- e.
    }
  >>
}

stanzas=
\markup {
  \fill-line {
    \column {

      \column {
        \line {
          \bold "[3.] "
          \column {
            " Sollt uns Gott nun können hassen, "
            " der uns gibt, was er liebt "
            " über alle Maßen? "
            " Gott gibt, unserm Leid zu wehren, "
            " seinen Sohn aus dem Thron "
            " seiner Macht und Ehren. "
            \null
          }
        }
      }

      \column {
        \line {
          \bold "[6.] "
          \column {
            " Ei so kommt und lasst uns laufen, "
            " stellt euch ein, groß und klein, "
            " eilt mit großen Haufen! "
            " Liebt den, der vor Liebe brennet; "
            " schaut den Stern, der euch gern "
            " Licht und Labsal gönnet. "
            \null
          }
        }
      }

      \column {
        \line {
          \bold "[9.] "
          \column {
            " Die ihr arm seid und elende, "
            " kommt herbei, füllet frei "
            " eures Glaubens Hände. "
            " Hier sind alle guten Gaben "
            " und das Gold, da ihr sollt "
            " euer Herz mit laben. "
            \null
          }
        }
      }
    }

    \column {

      \column {
        \line {
          \bold "[4.] "
          \column {
            " Er nimmt auf sich, was auf Erden "
            " wir getan, gibt sich dran, "
            " unser Lamm zu werden, "
            " unser Lamm, das für uns stirbet "
            " und bei Gott für den Tod "
            " Gnad und Fried erwirbet. "
            \null
          }
        }
      }

      \column {
        \line {
          \bold "[7.] "
          \column {
            " Die ihr schwebt in großem Leide, "
            " sehet, hier ist die Tür "
            " zu der wahren Freude; "
            " fasst ihn wohl, er wird euch führen "
            " an den Ort, da hinfort "
            " euch kein Kreuz wird rühren. "
            \null
          }
        }
      }

      \column {
        \line {
          \bold "[10.] "
          \column {
            " Süßes Heil, lass dich umfangen, "
            " lass mich dir, meine Zier, "
            " unverrückt anhangen. "
            " Du bist meines Lebens Leben; "
            " nun kann ich mich durch dich "
            " wohl zufrieden geben. "
            \null
          }
        }
      }
    }

    \column {

      \column{
        \line {
          \bold "[5.] "
          \column {
            " Nun er liegt in seiner Krippen, "
            " ruft zu sich mich und dich, "
            " spricht mit süßen Lippen: "
            " »Lasset fahr'n, o liebe Brüder, "
            " was euch quält, was euch fehlt; "
            " ich bring alles wieder.« "
            \null
          }
        }
      }

      \column {
        \line {
          \bold "[8.] "
          \column {
            " Wer sich fühlt beschwert im Herzen, "
            " wer empfind't seine Sünd "
            " und Gewissensschmerzen, "
            " sei getrost: hier wird gefunden, "
            " der in Eil machet heil "
            " die vergift'ten Wunden. "
            \null
          }
        }
      }

      \column {
        \line {
          \bold "[11.] "
          \column {
            " Ich bin rein um deinetwillen: "
            " Du gibst g'nug Ehr und Schmuck, "
            " mich darein zu hüllen. "
            " Ich will dich ins Herze schließen, "
            " o mein Ruhm! Edle Blum, "
            " lass dich recht genießen. "
            \null
          }
        }
      }

    }
  }
}

stanzastwo =
\markup {
  \fill-line {
    \column {
      \line {
        \column { "12. " }
        \column {
          " Ich will dich mit Fleiß bewahren; "
          " ich will dir leben hier, "
          " dir will ich hinfahren; "
          " mit dir will ich endlich schweben "
          " voller Freud ohne Zeit "
          " dort im andern Leben. "
        }
      }
    }
  }
}

stanzastwo = 
\markup {
  \fill-line {
  \column {
    \line {
        \column { "12. " }
        \column {
          " Ich will dich mit Fleiß bewahren; "
          " ich will dir leben hier, "
          " dir will ich hinfahren; "
          " mit dir will ich endlich schweben "
          " voller Freud ohne Zeit "
          " dort im andern Leben. "
        }
      }
    }
  }
}  