% this is standard version 1.0: SATTB/mensural

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
%                      the sheet producing part: 	           %
% 	                5 staves for 5 voices		           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../include/header.ily"
 
  \score {
    \layout { #(layout-set-staff-size 17) 
    }
  \new StaffGroup<<
    \new Staff \with { \consists "Ambitus_engraver" } 
      << \set Staff.instrumentName = "Sopran I"
      \new Voice = "sopi" { \global \sopiVoice } >>
      \new Lyrics \lyricsto "sopi" { \sopiLyrix }
      
      \new StaffGroup<<
    \new Staff \with { \consists "Ambitus_engraver" } 
      << \set Staff.instrumentName = "Sopran II"
      \new Voice = "sopii" { \global \sopiiVoice } >>
      \new Lyrics \lyricsto "sopii" { \sopiiLyrix }
    
    \new Staff \with { \consists "Ambitus_engraver" }
    << \set Staff.instrumentName = "Alt"
      \new Voice = "alt" { \global \altVoice } >> 
      \new Lyrics \lyricsto "alt" { \altLyrix }
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Tenor"
      \new Voice = "ten" { \clef "G_8" \global \tenVoice }  >> 
      \new Lyrics \lyricsto "ten" { \tenLyrix }

  \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Bass I"
      \new Voice = "basi" { \clef bass \global \basiVoice }  >> 
      \new Lyrics \lyricsto "basi" { \basiLyrix }
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Bass II"
      \new Voice = "basii" { \clef bass \global \basiiVoice } >> 
      \new Lyrics \lyricsto "basii" { \basiiLyrix }  
  >>%end of ChoirStaff
  
  
    
  }%end of score
}%end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the midi producing part: 	           %
% 	        1 main.midi with all voices equally		   %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{stafftovoice =
\midi { 
     \context {
      \Staff
      \remove "Staff_performer"
     }
     \context {
      \Voice
      \consists "Staff_performer"
     }
}
% 
\book { \bookOutputSuffix "main"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice } 
      \new Voice = "bas" { \global \basVoice } 
     >> 
   \stafftovoice
  }
}
% sopran
\book { \bookOutputSuffix "sopran"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sop" { \highlightedVoice  \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
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
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "bas" { \global \basVoice }
    >> 
    \stafftovoice
  }
}

% tenor1
\book { \bookOutputSuffix "tenor1"
  \score {
  \unfoldRepeats
    \new Staff << \commonVoice                    
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "teni" { \highlightedVoice \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "bas" { \global \basVoice }
    >> 
   \stafftovoice
  }
}

% tenor2
\book { \bookOutputSuffix "tenor2"
  \score {
  \unfoldRepeats
    \new Staff << \commonVoice                    
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \highlightedVoice \global \teniiVoice } 
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
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "bas" { \highlightedVoice \global \basVoice }
    >> 
     \stafftovoice
  }
}%}