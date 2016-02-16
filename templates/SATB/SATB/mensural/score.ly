%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based ontemplates/SATB/SATB/mensural/score.ly

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
    \new StaffGroup <<
      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Discantus"
        \new Voice = "sop" { \incipit \sopIncipit \global \sopVoice }
      >>
      \new Lyrics \lyricsto "sop" { \sopLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Altus"
        \new Voice = "alt" { \incipit \altIncipit \global \altVoice }
      >>
      \new Lyrics \lyricsto "alt" { \altLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \incipit \tenIncipit \clef "G_8" \global \tenVoice }
      >>
      \new Lyrics \lyricsto "ten" { \tenLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Bassus"
        \new Voice = "bas" { \incipit \basIncipit \clef bass \global \basVoice }
      >>
      \new Lyrics \lyricsto "bas" { \basLyrics }
    >> %end of StaffGroup

    \layout {
      \context {
        \Staff
        \hide Staff.BarLine
      }
      indent = 5\cm
      incipit-width = 3\cm
    }
  } %end of score (PDF)

  \stanzas

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
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "bas" { \global \basVoice }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \highlightedVoice \global \tenVoice }
      \new Voice = "bas" { \global \basVoice }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "bass"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "bas" { \highlightedVoice \global \basVoice }
    >>
    \stafftovoice
  }
}
