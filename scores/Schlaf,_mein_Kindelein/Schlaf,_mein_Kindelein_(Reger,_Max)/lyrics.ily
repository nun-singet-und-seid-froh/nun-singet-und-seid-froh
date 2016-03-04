%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this is standard version 1.0: SSATB

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

sopILyrics = \lyricmode {
  \set stanza = "1. "
  Schlaf', mein Kin -- de -- lein, schlaf', mein Söh -- ne -- lein,
  singt die Mut -- ter Jung -- frau rein;

  Sin -- get und klin -- get dem Kin -- de -- lein klein,
  dem ho -- nig -- sü -- ßen Je -- su -- lein!
  Sin -- get und klin -- get, ihr En -- ge -- lein rein,
  mit tau -- send sü -- ßen Stim -- me -- lein!
}

sopIILyrics = \sopILyrics


altLyrics = \sopILyrics

tenILyrics = \lyricmode {
  \set stanza = "1. "
  schlaf', mein Her -- ze -- lein, schlaf', mein Schät -- ze -- lein,
  singt der Va -- ter e -- ben fein.

  Sin -- get und klin -- get dem Kin -- de -- lein klein,
  dem ho -- nig -- sü -- ßen Je -- su -- lein!
  Sin -- get und klin -- get, ihr En -- ge -- lein rein,
  mit tau -- send sü -- ßen Stim -- me -- lein!

}

tenIILyrics = \tenILyrics

basLyrics = \tenILyrics

% the lyrics of the further stanzas

stanzas =

\markup {
  \line {
    \bold "2. "

    \column {
      \override #'(direction . 1) {
        \dir-column {
          \line { Schließ' die Äugelein, deck' die Händelein, }
          \line { \fontsize #-6 {\dynamic pp \cresc #8 \empt #0.5 \decresc #3.5 \empt #0.5 \dynamic pp \cresc #4 \empt #0.5 \decresc #7 } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { denn es saust ein scharfer Wind.}
          \line { \fontsize #-6 {\dynamic p \cresc #8 \empt #12 \decresc #7 } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { Schlaf', mein Kindelein, dich das Eselein}
          \line { \fontsize #-6 {\dynamic f \cresc #6 \empt #9 \dynamic p \empt #5 \decresc #5 } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { wird erwärmen mit dem Kind. }
          \line { \fontsize #-6 {\dynamic f \cresc #9 \empt #5 \decresc #5 \dynamic p \empt #1 \decresc #4 } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { Singet und klinget dem Kindelein klein,}
          \line { \fontsize #-6 {\dynamic mf \cresc #7 \empt #14 \decresc #7 } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { dem honigsüßen Jesulein! }
          \line { \fontsize #-6 {\dynamic f \cresc #12  } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { Singet und klinget, ihr Engelein rein, }
          \line { \fontsize #-6 {\dynamic ff \cresc #4 \empt #7 \decresc #7  } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { mit tausend süßen Stimmelein}
          \line { \fontsize #-6 {\dynamic ff \cresc #7 \empt #10 \decresc #5.5  } }
        }
      }
    }
    \hspace #2
    \bold 3.
    \column {
      \override #'(direction . 1) {
        \dir-column {
          \line { Schlaf', mein Hoffnung und mein' Tröstung, }
          \line { \fontsize #-6 {\dynamic pp \cresc #8 \empt #0.5 \decresc #3.5 \empt #0.5 \dynamic pp \cresc #4 \empt #0.5 \decresc #7 } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { schlaf', o Freud des Herzens mein!}
          \line { \fontsize #-6 {\dynamic p \cresc #8 \empt #12 \decresc #7 } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { Schlaf', mein Wonne, schlaf', mein Krone, }
          \line { \fontsize #-6 {\dynamic f \cresc #6 \empt #9 \dynamic p \empt #5 \decresc #5 } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { schlaf' und schließ die Äugelein. }
          \line { \fontsize #-6 {\dynamic f \cresc #9 \empt #5 \decresc #5 \dynamic p \empt #1 \decresc #4 } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { Singet und klinget dem Kindelein klein,}
          \line { \fontsize #-6 {\dynamic mf \cresc #7 \empt #14 \decresc #7 } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { dem honigsüßen Jesulein!}
          \line { \fontsize #-6 {\dynamic f \cresc #12  } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { Singet und klinget, ihr Engelein rein,}
          \line { \fontsize #-6 {\dynamic ff \cresc #4 \empt #7 \decresc #7  } }
        }
      }
      \vspace #0.4
      \override #'(direction . 1) {
        \dir-column {
          \line { mit tausend süßen Stimmelein }
          \line { \fontsize #-6 {\dynamic ff \cresc #7 \empt #10 \decresc #5.5  } }
        }
      }
    }
  }
}

