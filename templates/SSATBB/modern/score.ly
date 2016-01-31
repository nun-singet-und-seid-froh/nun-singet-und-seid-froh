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
   << \set Staff.instrumentName = "Tenor I"
      \new Voice = "teni" { \clef "G_8" \global \teniVoice }  >> 
      \new Lyrics \lyricsto "teni" { \teniLyrix }

  \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Tenor II"
      \new Voice = "tenii" { \clef "G_8" \global \teniiVoice }  >> 
      \new Lyrics \lyricsto "tenii" { \teniiLyrix }
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Bass"
      \new Voice = "bas" { \clef bass \global \basVoice } >> 
      \new Lyrics \lyricsto "bas" { \basLyrix }  
  >>%end of ChoirStaff
  
    \layout { }
    
  }%end of score
}%end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the midi producing part: 	           %
% 	        1 main.midi with all voices equally		   %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
stafftovoice =
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
}