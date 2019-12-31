%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/SATTB/mensural/score.ly

% local information (for this particular piece)
\include "meta.ily"             % metadata for this piece
\include "voices.ily"           % the tunes, dynamic and articulation marks
\include "lyrics.ily"            % the lyrics within the staves
\include "output.ily"           % the paper and midi settings for this piece

#(set-global-staff-size 17)

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

        \set Staff.instrumentName = \markup{
          \center-column {
            { \smallCaps { "Cantus"} }
            { \italic \teeny "Sopran" }
          }
        }
        \new Voice = "sop" { \incipit \sopIncipit \global \sopVoice }
      >>
      \new Lyrics \lyricsto "sop" { \sopLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = \markup{
          \center-column {
            { \smallCaps { "Altus"} }
            { \italic \teeny "Alt" }
          }
        }
        \new Voice = "alt" { \incipit \altIncipit \global \altVoice }
      >>
      \new Lyrics \lyricsto "alt" { \altLyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = \markup{
          \center-column {
            { \smallCaps { "Tenor"} }
            { \italic \teeny "Tenor" }
          }
        }
        \new Voice = "tenI" { \incipit \tenIIncipit \clef "G_8" \global \tenIVoice }
      >>
      \new Lyrics \lyricsto "tenI" { \tenILyrics }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = \markup{
          \center-column {
            { \smallCaps { "Quintus	"} }
            { \italic \teeny "Tenor II" }
          }
        }
        \new Voice = "tenII" { \incipit \tenIIIncipit \clef "G_8" \global \tenIIVoice }
      >>
      \new Lyrics \lyricsto "tenII" { \tenIILyrics }


      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = \markup{
          \center-column {
            { \smallCaps { "Bassus"} }
            { \italic \teeny "Bass" }
          }
        }
        \new Voice = "bas" { \incipit \basIncipit \clef bass \global \basVoice }
      >>
      \new Lyrics \lyricsto "bas" { \basLyrics }
    >> %end of StaffGroup

    \layout {
	indent = 3.5\cm        
	incipit-width = 2.5\cm
    }
  } %end of score (PDF)

  \score {
    %for MIDI
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopran" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "tenorI" { \global \tenIVoice }
      \new Voice = "tenorII" { \global \tenIIVoice }
      \new Voice = "bass" { \global \basVoice }
    >>
    \midi { }
  } %end of score (MIDI)

} %end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the MIDI producing part: 	           %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% sopran
\book {
  \bookOutputSuffix "tenorI"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopran" { \highlightedVoice \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "tenorI" { \global \tenIVoice }
      \new Voice = "tenorII" { \global \tenIIVoice }
      \new Voice = "bass" { \global \basVoice }
    >>
    \midi { }
  }
}


% alt
\book {
  \bookOutputSuffix "tenorI"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopran" { \global \sopVoice }
      \new Voice = "alt" { \highlightedVoice \global \altVoice }
      \new Voice = "tenorI" { \global \tenIVoice }
      \new Voice = "tenorII" { \global \tenIIVoice }
      \new Voice = "bass" { \global \basVoice }
    >>
    \midi { }
  }
}
% tenor 1
\book {
  \bookOutputSuffix "tenorI"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopran" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "tenorI" { \highlightedVoice \global \tenIVoice }
      \new Voice = "tenorII" { \global \tenIIVoice }
      \new Voice = "bass" { \global \basVoice }
    >>
    \midi { }
  }
}

% tenor 2
\book {
  \bookOutputSuffix "tenorI"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopran" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "tenorI" { \global \tenIVoice }
      \new Voice = "tenorII" { \highlightedVoice \global \tenIIVoice }
      \new Voice = "bass" { \global \basVoice }
    >>
    \midi { }
  }
}



% bass
\book {
  \bookOutputSuffix "tenorI"
  \score {
    \unfoldRepeats
    \new Staff <<
      \backgroundVoice
      \new Voice = "sopran" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "tenorI" { \global \tenIVoice }
      \new Voice = "tenorII" { \global \tenIIVoice }
      \new Voice = "bass" { \highlightedVoice \global \basVoice }
    >>
    \midi { }
  }
}
