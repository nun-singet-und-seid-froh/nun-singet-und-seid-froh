%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based ontemplates/SSATB/SSATB/modern/score.ly

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
%                      the sheet producing part: 	           %
% 	                5 staves for 5 voices		           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../../include/header.ily"

  \score {
    \new SemiChoirStaff<<
      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Sopran I"
        \new Voice = "sopI" { \global \sopIVoice }
      >>
      \new Lyrics \lyricsto "sopI" { \sopILyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Sopran II"
        \new Voice = "sopII" { \global \sopIIVoice }
      >>
      \new Lyrics \lyricsto "sopII" { \sopIILyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \global \altVoice }
      >>
      \new Lyrics \lyricsto "alt" { \altLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \clef "G_8" \global \tenVoice }
      >>
      \new Lyrics \lyricsto "ten" { \tenLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "bas" { \clef bass \global \basVoice }
      >>
      \new Lyrics \lyricsto "bas" { \basLyrics }
    >>%end of ChoirStaff

    \layout { }

  }%end of score (PDF)

  \score {
    %for MIDI
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "bas" { \global \basVoice }
    >>
    \stafftovoice
  } %end of score (MIDI)

}%end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the midi producing part: 	           %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sopran
\book {
  \bookOutputSuffix "sopran1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \highlightedVoice  \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "bas" { \global \basVoice }
    >>
    \stafftovoice
  }
}

% sopranII
\book {
  \bookOutputSuffix "sopran2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \highlightedVoice \global \sopIIVoice }
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
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
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
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
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
      \backgroundVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "bas" { \highlightedVoice \global \basVoice }
    >>
    \stafftovoice
  }
}
