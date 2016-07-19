%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% basOneed ontemplates/SATB/SATB/modern/score.ly

% local information (for this particular piece)
\include "meta.ily"             % metadata for this piece
\include "voices.ily"           % the tunes, dynamic and articulation marks
\include "lyrics.ily"            % the lyrics within the staves
\include "output.ily"           % the paper and midi settings for this piece

% globalOne information (identical for all pieces)
\include "../../../include/version.ily"    % the lilypond version
\include "../../../include/paper.ily"      % the layout information
\include "../../../include/sound.ily"      % variable declarations for midi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  the PDF & main MIDI producing part:             %
%                       4 staves for 4 voices                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../../include/header.ily"

  \markup { Der Chor 1 singt die erste Strophe, der Chor 2 die zweite }
  \score {
    %for PDF
    \new SemiChoirStaff<<
      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sopOne" { \globalOne \sopOneVoice }
      >>
      \new Lyrics \lyricsto "sopOne" { \sopOneLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "altOne" { \globalOne \altOneVoice }
      >>
      \new Lyrics \lyricsto "altOne" { \altOneLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "tenOne" { \clef "G_8" \globalOne \tenOneVoice }
      >>
      \new Lyrics \lyricsto "tenOne" { \tenOneLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "basOne" { \clef bass \globalOne \basOneVoice }
      >>
      \new Lyrics \lyricsto "basOne" { \basOneLyrics }
    >> %end of StaffGroup

    \layout { }
  } %end of score (PDF)

  \score {
    %for MIDI
    \new Staff <<
      
      \backgroundVoice
      \new Voice = "sopOne" { \globalOne \sopOneVoice }
      \new Voice = "altOne" { \globalOne \altOneVoice }
      \new Voice = "tenOne" { \globalOne \tenOneVoice }
      \new Voice = "basOne" { \globalOne \basOneVoice }
    >>
    \stafftovoice
  } %end of score (MIDI)

} %end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the MIDI producing part: 	           %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               PART 1 	           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "1-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopOne" { \highlightedVoice  \globalOne \sopOneVoice }
      \new Voice = "altOne" { \globalOne \altOneVoice }
      \new Voice = "tenOne" { \globalOne \tenOneVoice }
      \new Voice = "basOne" { \globalOne \basOneVoice }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "1-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopOne" { \globalOne \sopOneVoice }
      \new Voice = "altOne" { \highlightedVoice \globalOne \altOneVoice }
      \new Voice = "tenOne" { \globalOne \tenOneVoice }
      \new Voice = "basOne" { \globalOne \basOneVoice }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "1-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopOne" { \globalOne \sopOneVoice }
      \new Voice = "altOne" { \globalOne \altOneVoice }
      \new Voice = "tenOne" { \highlightedVoice \globalOne \tenOneVoice }
      \new Voice = "basOne" { \globalOne \basOneVoice }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "1-bass"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopOne" { \globalOne \sopOneVoice }
      \new Voice = "altOne" { \globalOne \altOneVoice }
      \new Voice = "tenOne" { \globalOne \tenOneVoice }
      \new Voice = "basOne" { \highlightedVoice \globalOne \basOneVoice }
    >>
    \stafftovoice
  }
}
