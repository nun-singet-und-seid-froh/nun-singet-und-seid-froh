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
    \new SemiChoirStaff<<
      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Sopran 1"
        \new Voice = "sopI" { \global \sopIVoice }
      >>
      \new Lyrics \lyricsto "sopI" { \sopILyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Sopran 2"
        \new Voice = "sopII" { \global \sopIIVoice }
      >>
      \new Lyrics \lyricsto "sopII" { \sopIILyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \global \altVoice }
      >>
      \new Lyrics \lyricsto "alt" { \altLyrics }

    >> %end of StaffGroup

    \layout { }
  } %end of score (PDF)
  
  \stanzas

  \score {
    %for MIDI
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "alt" { \global \altVoice }
    >>
    \stafftovoice
  } %end of score (MIDI)

} %end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the MIDI producing part: 	           %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% sopI
\book {
  \bookOutputSuffix "sopI"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \highlightedVoice  \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "alt" { \global \altVoice }
    >>
    \stafftovoice
  }
}

% sopII
\book {
  \bookOutputSuffix "sopII"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \highlightedVoice \global \sopIIVoice }
      \new Voice = "alt" { \global \altVoice }
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
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "alt" { \highlightedVoice \global \altVoice }
    >>
    \stafftovoice
  }
}