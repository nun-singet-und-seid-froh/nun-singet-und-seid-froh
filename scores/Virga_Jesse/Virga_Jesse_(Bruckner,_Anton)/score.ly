% modification of templates/SATB/SATB/modern/score.ly

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
%                       4 staves for 4 voices                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../../include/header.ily"

  \score {
    %for PDF
    \new SemiChoirStaff<<
      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sop" { \global \sopVoice }
      >>
      \new Lyrics \lyricsto "sop" { \sopLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \global \altVoice }
      >>
      \new Lyrics \lyricsto "alt" { \altLyrics }

      \new Staff \with { \consists "Ambitus_engraver" printPartCombineTexts = ##f }
      <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \clef "G_8" \global \tenVoice }
        \new NullVoice = "tenAligner" { \tenCommonPartOne \tenIPartOne \tenCommonPartTwo \tenIIPartTwo \tenCommonPartThree \tenIPartThree \tenCommonPartFour }
      >>
      \new Lyrics \lyricsto "tenAligner" { \tenLyrics }

      \new Staff \with { \consists "Ambitus_engraver" printPartCombineTexts = ##f }
      <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "bas" { \clef bass \global \basVoice }
        \new NullVoice = "basAligner" { \global \basCommonPartOne \basIPartOne \basCommonPartTwo \basIIPartTwo \basCommonPartThree  }
      >>
      \new Lyrics \lyricsto "basAligner" { \basLyrics }
    >> %end of StaffGroup
  %  \stanzas

    \layout { }
  } %end of score (PDF)
  
  \score {
    %for MIDI
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "bas" { \global \basVoice }
    >>
    \stafftovoice
  } %end of score (MIDI)
  
} %end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the MIDI producing part: 	           %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "bas" { \global \basVoice }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \highlightedVoice \global \altVoice }
      \new Voice = "tenI" { \global \tenVoice }
      \new Voice = "bas" { \global \basVoice }
    >>
    \stafftovoice
  }
}

% tenorI
\book {
  \bookOutputSuffix "tenor1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "ten" { \highlightedVoice \global\tenCommonPartOne \tenIPartOne \tenCommonPartTwo \tenIIPartTwo \tenCommonPartThree \tenIPartThree \tenCommonPartFour}
    >>
    \stafftovoice
  }
}

% tenorII
\book {
  \bookOutputSuffix "tenor2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "ten" { \highlightedVoice \global\tenCommonPartOne \tenIIPartOne \tenCommonPartTwo \tenIIPartTwo \tenCommonPartThree \tenIIPartThree \tenCommonPartFour}
    >>
    \stafftovoice
  }
}

% bassI
\book {
  \bookOutputSuffix "bass1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "bas" { \highlightedVoice \global\basCommonPartOne \basIPartOne \basCommonPartTwo \basIIPartTwo \basCommonPartThree }
    >>
    \stafftovoice
  }
}

% bassII
\book {
  \bookOutputSuffix "bass2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "bas" { \highlightedVoice \global\basCommonPartOne \basIIPartOne \basCommonPartTwo \basIIPartTwo \basCommonPartThree }
    >>
    \stafftovoice
  }
}