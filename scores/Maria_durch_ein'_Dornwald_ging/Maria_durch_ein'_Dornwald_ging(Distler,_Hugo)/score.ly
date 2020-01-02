%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based ontemplates/SSA/SSA/modern/score.ly

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
    \new StaffGroup<<
      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sop" { \global \sopVoice }
        \new Voice = "soptwo" { \global \sopTwoVoice }

      >>
      \new Lyrics \lyricsto "sop" { \sopOneLyrics }
      \new Lyrics \lyricsto "soptwo" { \sopTwoLyrics }


      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \global \altVoice }
        \new Voice = "alttwo" { \global \altTwoVoice }

      >>
      \new Lyrics \lyricsto "alt" { \altLyrics }
      \new Lyrics \lyricsto "alttwo" { \altTwoLyrics }


      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Männer"
        \new Voice = "men" { \clef bass \global \menVoice }
      >>
      \new Lyrics \lyricsto "men" { \menLyrics }

    >> %end of StaffGroup

    \layout { }
  } %end of score (PDF)

  \score {
    %for MIDI
    \new Staff <<
      \new Voice = "sop" { \backgroundVoice \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "men" { \global \menVoice }
    >>
      \stafftovoice

  } %end of score (MIDI)

} %end of book

\book {
  \bookOutputSuffix ""
  \score {
    \unfoldRepeats
    \new Staff <<
      \new Voice = "sop" { \backgroundVoice \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "men" { \global \menVoice }
    >>
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the MIDI producing part: 	           %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% sop
\book {
  \bookOutputSuffix "sop"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sop" { \highlightedVoice  \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "men" { \global \menVoice }
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
      \backgroundVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \highlightedVoice \global \altVoice }
      \new Voice = "men" { \global \menVoice }
    >>
    \stafftovoice
  }
}

% men
\book {
  \bookOutputSuffix "men"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "men" { \highlightedVoice \global \menVoice }
    >>
    \stafftovoice
  }
}