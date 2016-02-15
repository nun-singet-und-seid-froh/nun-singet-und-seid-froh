% this is standard version 1.0: SATTB/mensural

\include "meta.ily"

\include "../../version.ly" % the lilypond version
\include "../../sheet.ly" 	 % the layout information
\include "../../sound.ly" 	 % the midi information

% local information (for this particular piece)

\include "voices.ily" 	 % the tunes, dynamic and articulation marks
\include "lyrics.ily" 	 % the lyrics within the staves


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the sheet producing part: 	           %
% 	                5 staves for 5 voices		           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../include/header.ily"
 
  \score {
  \new SemiChoirStaff<<
    \new Staff \with { \consists "Ambitus_engraver" } 
      << \set Staff.instrumentName = "Sopran I"
      \new Voice = "sopI" { \global \sopiVoice } >>
      \new Lyrics \lyricsto "sopI" { \sopiLyrix }
    
    \new Staff \with { \consists "Ambitus_engraver" }
    << \set Staff.instrumentName = "Sopran II"
      \new Voice = "sopII" { \global \sopiiVoice } >> 
      \new Lyrics \lyricsto "sopII" { \sopiiLyrix }
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Alt"
      \new Voice = "alt" { \global \altVoice }  >> 
      \new Lyrics \lyricsto "alt" { \altLyrix }

  \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Tenor"
      \new Voice = "ten" { \clef "G_8" \global \tenVoice }  >> 
      \new Lyrics \lyricsto "ten" { \tenLyrix }
   
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
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "alt" { \global \altVoice } 
      \new Voice = "ten" { \global \tenVoice } 
      \new Voice = "bas" { \global \basVoice } 
     >> 
   \stafftovoice
  }
}
% sopiran
\book { \bookOutputSuffix "sopran1"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopI" { \highlightedVoice  \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "alt" { \global \altVoice } 
      \new Voice = "ten" { \global \tenVoice } 
      \new Voice = "bas" { \global \basVoice } 
     >> 
   \stafftovoice
  }
}

% sopII
\book { \bookOutputSuffix "sopran2"
  \score {
  \unfoldRepeats
    \new Staff << \commonVoice                    
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \highlightedVoice \global \sopiiVoice }
      \new Voice = "alt" { \global \altVoice } 
      \new Voice = "ten" { \global \tenVoice } 
      \new Voice = "bas" { \global \basVoice }
    >> 
    \stafftovoice
  }
}

% Alt
\book { \bookOutputSuffix "alt"
  \score {
  \unfoldRepeats
    \new Staff << \commonVoice                    
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "alt" { \highlightedVoice \global \altVoice } 
      \new Voice = "ten" { \global \tenVoice } 
      \new Voice = "bas" { \global \basVoice }
    >> 
   \stafftovoice
  }
}

% Tenor
\book { \bookOutputSuffix "tenor"
  \score {
  \unfoldRepeats
    \new Staff << \commonVoice                    
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
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
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "alt" { \global \altVoice } 
      \new Voice = "ten" { \global \tenVoice } 
      \new Voice = "bas" { \highlightedVoice \global \basVoice }
    >> 
     \stafftovoice
  }
}