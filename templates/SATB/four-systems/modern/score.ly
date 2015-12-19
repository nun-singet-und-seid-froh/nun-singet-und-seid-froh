% based on templates/SATB/four-systems/modern/score.ly

% local information (for this particular piece)
\include "meta.ily"             % metadata for this piece
\include "voices.ily"           % the tunes, dynamic and articulation marks
\include "lyrix.ily"            % the lyrics within the staves
\include "output.ily"           % the paper and midi settings for this piece

% global information (identical for all pieces)
\include "../../include/version.ily"    % the lilypond version
\include "../../include/paper.ily"      % the layout information
\include "../../include/sound.ily"      % variable declarations for midi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  the PDF & main MIDI producing part:             %
% 	                4 staves for 4 voices		           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../include/header.ily"
  
  \score {
  \new StaffGroup<<
    \new Staff \with { \consists "Ambitus_engraver" } 
      << \set Staff.instrumentName = "Sopran"
      \new Voice = "sop" { \global \sopVoice } >>
      \new Lyrics \lyricsto "sop" { \sopLyrix }
    
    \new Staff \with { \consists "Ambitus_engraver" }
      << \set Staff.instrumentName = "Alt"
      \new Voice = "alt" { \global \altVoice } >> 
      \new Lyrics \lyricsto "alt" { \altLyrix }
   
   \new Staff \with { \consists "Ambitus_engraver" }
      << \set Staff.instrumentName = "Tenor"
      \new Voice = "ten" { \clef "G_8" \global \tenVoice }  >> 
      \new Lyrics \lyricsto "ten" { \tenLyrix }
   
   
   \new Staff \with { \consists "Ambitus_engraver" }
      << \set Staff.instrumentName = "Bass"
      \new Voice = "bas" { \clef bass \global \basVoice } >> 
      \new Lyrics \lyricsto "bas" { \basLyrix }  
  >> %end of StaffGroup
    \stanzas
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
\book { \bookOutputSuffix "sopran"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sop" { \highlightedVoice  \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice } 
      \new Voice = "bas" { \global \basVoice } 
     >> 
   \stafftovoice
  }
}

% alt
\book { \bookOutputSuffix "alt"
  \score {
  \unfoldRepeats
    \new Staff << \commonVoice                    
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \highlightedVoice \global \altVoice }
      \new Voice = "ten" { \global \tenVoice } 
      \new Voice = "bas" { \global \basVoice }
    >> 
    \stafftovoice
  }
}

% tenor
\book { \bookOutputSuffix "tenor"
  \score {
  \unfoldRepeats
    \new Staff << \commonVoice                    
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \highlightedVoice \global \tenVoice } 
      \new Voice = "bas" { \global \basVoice }
    >> 
   \stafftovoice
  }
}

% bass
\book { \bookOutputSuffix "bass"
  \score {
  \unfoldRepeats
    \new Staff << \commonVoice                    
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice } 
      \new Voice = "bas" { \highlightedVoice \global \basVoice }
    >> 
     \stafftovoice
  }
}