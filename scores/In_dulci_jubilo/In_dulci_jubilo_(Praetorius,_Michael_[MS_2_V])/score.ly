%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based ontemplates/SSATTBB/[SATB][SATB]/mensural/score.ly

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
    \new Score <<
      \new StaffGroup <<
        \new Staff <<
          \set Staff.instrumentName = \markup{ \center-column { 
            { \smallCaps { "Cantus" } }
            { \teeny "Sopran I" } } 
          }
          \new Voice = "sopI" \with { \consists "Ambitus_engraver" }  { \incipit \sopIincipit \global \sopIVoice }
        >>
        \new Lyrics \lyricsto "sopI" { \sopILyrics }

        \new Staff <<
          \set Staff.instrumentName = \markup{ \center-column { 
            { \smallCaps { "Altus" } }
            { \teeny "Alt I" } } 
          }
          \new Voice = "altI" \with { \consists "Ambitus_engraver" } { \incipit \altIincipit \global \altIVoice }
        >>
        \new Lyrics \lyricsto "altI" { \altILyrics }

        \new Staff <<
          \set Staff.instrumentName =   \markup{ \center-column { 
            { \smallCaps { "Tenor" } }
            { \teeny "Tenor I" } } 
          }
          \new Voice = "tenI" \with { \consists "Ambitus_engraver" } { \incipit \tenIincipit \global  \clef "G_8" \tenIVoice }
        >>
        \new Lyrics \lyricsto "tenI" { \tenILyrics }

        \new Staff <<
          \set Staff.instrumentName =  \markup{ \center-column { 
            { \smallCaps { "Bassus" } }
            { \teeny "Bass I" } } 
          }
          \new Voice = "basI" \with { \consists "Ambitus_engraver" } { \incipit \basIincipit \global \clef bass \basIVoice }
        >>
        \new Lyrics \lyricsto "basI" { \basILyrics }
      >>

      \new StaffGroup <<
        \new Staff <<
          \set Staff.instrumentName = 
          \markup{ \center-column { 
            { \smallCaps { "Quinta Vox" } }
            { \teeny "Sopran II" } } 
          }
          
          \new Voice = "sopII" \with { \consists "Ambitus_engraver" } { \incipit \sopIIincipit \global \sopIIVoice }
        >>
        \new Lyrics \lyricsto "sopII" { \sopIILyrics }

        \new Staff <<
          \set Staff.instrumentName = \markup{ \center-column { 
            { \smallCaps { "Sexta Vox" } }
            { \teeny "Alt II" } } 
          }
          \new Voice = "altII" \with { \consists "Ambitus_engraver" }  { \incipit \altIIincipit \global \altIIVoice }
        >>
        \new Lyrics \lyricsto "altII" { \altIILyrics }

        \new Staff <<
          \set Staff.instrumentName = \markup{ \center-column { 
            { \smallCaps { "Septima Vox" } }
            { \teeny "Tenor II" } } 
          }
          \new Voice = "tenII" \with { \consists "Ambitus_engraver" } { \incipit \tenIIincipit \global \clef "G_8" \tenIIVoice }
        >>
        \new Lyrics \lyricsto "tenII" { \tenIILyrics }


        \new Staff <<
          \set Staff.instrumentName = \markup{ \center-column { 
            { \smallCaps { "Octava Vox"} }
            { \teeny "Bass II" } } 
          }
          \new Voice = "basII" \with { \consists "Ambitus_engraver" } { \incipit \basIIincipit \global \clef bass \basIIVoice }
        >>
        \new Lyrics \lyricsto "basII" { \basIILyrics }
      >>
    >>%end of Score
  }%end of score (PDF)

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
  }%end of score (MIDI)

}%end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the midi producing part: 	           %
%    1 midi per each voice with the respective voice highlighted   %
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

