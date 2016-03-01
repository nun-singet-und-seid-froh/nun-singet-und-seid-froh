%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSAATTBB/SSATTBB/mensural/score.ly

% local information (for this particular piece)
\include "meta.ily"             % metadata for this piece
\include "voices.ily"           % the tunes, dynamic and articulation marks
\include "lyrics.ily"            % the lyrics within the staves
\include "output.ily"           % the paper and midi settings for this piece

% global information (identical for all pieces)
\include "../../../include/version.ily"    % the lilypond version
\include "../../../include/paper.ily"      % the layout information
\include "../../../include/sound.ily"      % variable declarations for midi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  the PDF & main MIDI producing part:             %
% 	            8 voices in 4 groups á 2 staves 		   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../../include/header.ily"

  \score {
    %for PDF
    \new StaffGroup <<
      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Primus Discantus"
        \new Voice = "sopI" { \incipit \sopIIncipit \global \sopIVoice }
      >>
      \new Lyrics \lyricsto "sopI" { \sopILyrics }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Secundus Discantus"
        \new Voice = "sopII" { \incipit \sopIIIncipit \global \sopIIVoice }
      >>
      \new Lyrics \lyricsto "sopII" { \sopIILyrics }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Primus Altus"
        \new Voice = "altI" { \incipit \altIIncipit \global \altIVoice }
      >>
      \new Lyrics \lyricsto "altI" { \altILyrics }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Secundus Altus"
        \new Voice = "altII" { \incipit \altIIIncipit \global \altIIVoice }
      >>
      \new Lyrics \lyricsto "altII" { \altIILyrics }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Primus Tenor"
        \new Voice = "tenI" { \incipit \tenIIncipit \global \clef "G_8" \tenIVoice }
      >>
      \new Lyrics \lyricsto "tenI" { \tenILyrics }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Secundus Tenor"
        \new Voice = "tenII" { \incipit \tenIIIncipit \global \clef "G_8" \tenIIVoice }
      >>
      \new Lyrics \lyricsto "tenII" { \tenIILyrics }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Primus Bassus"
        \new Voice = "basI" { \incipit \basIIncipit \global \clef bass \basIVoice }
      >>
      \new Lyrics \lyricsto "basI" { \basILyrics }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Secundus Bassus"
        \new Voice = "basII" { \incipit \basIIIncipit \global \clef bass \basIIVoice }
      >>
      \new Lyrics \lyricsto "basII" { \basIILyrics }
    >>
    \layout {
      \context {
        \Staff
        \hide Staff.BarLine
      }
      \context {
        \Voice
        \remove "Forbid_line_break_engraver"
        \remove "Ligature_bracket_engraver"
      }
      \context {
        \Lyrics
        \consists "Bar_engraver"
        \consists "Separating_line_group_engraver"
      }
      indent = 5\cm
      incipit-width = 3\cm
    }
  } %end of score (PDF)

  \score {
    %for MIDI
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  } %end of score (MIDI)

} %end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the MIDI producing part: 	           %
%    1 MIDI per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% sopran 1
\book {
  \bookOutputSuffix "sopran1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \highlightedVoice  \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% sopran 2
\book {
  \bookOutputSuffix "sopran2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \highlightedVoice \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% alt 1
\book {
  \bookOutputSuffix "alt1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \highlightedVoice \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% alt 2
\book {
  \bookOutputSuffix "alt2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \highlightedVoice \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% tenor 1
\book {
  \bookOutputSuffix "tenor1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \highlightedVoice \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% tenor 2
\book {
  \bookOutputSuffix "tenor2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \highlightedVoice \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% bass 1
\book {
  \bookOutputSuffix "bass1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \highlightedVoice \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% bass 2
\book {
  \bookOutputSuffix "bass2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \highlightedVoice \global \basIIVoice }
    >>
    \stafftovoice
  }
}
