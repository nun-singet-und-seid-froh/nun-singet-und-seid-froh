% this is standard version 1.0: SSAATTBB/(SS)(AA)(TT)(BB)

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
% 	                4 staves á 2 voices		           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../include/header.ily"
 
  \score {
  \new StaffGroup<<
     \new Staff = "sop" << \set Staff.instrumentName = "Sopran"
      \new Voice = "sopi" \with { \consists "Ambitus_engraver" } 
        { \voiceOne \global \sopiVoice }
      \new Voice = "sopii"  \with { \consists "Ambitus_engraver"}
        { \override Ambitus.X-offset = #2.0 
          \voiceTwo \global \sopiiVoice }
    >>
      \new Lyrics \lyricsto "sopi" { \sopLyrix }
    
    \new Staff = "alt" << \set Staff.instrumentName = "Alt"
      \new Voice = "alti" \with { \consists "Ambitus_engraver" } 
        { \voiceOne \global \altiVoice }
      \new Voice = "altii"  \with { \consists "Ambitus_engraver"}
        { \override Ambitus.X-offset = #2.0 
          \voiceTwo \global \altiiVoice }
    >>
      \new Lyrics \lyricsto "alti" { \altLyrix }
      
      \new Staff = "ten" << \set Staff.instrumentName = "Tenor"
      \new Voice = "teni" \with { \consists "Ambitus_engraver" } 
        { \voiceOne \global \clef "G_8" \teniVoice }
      \new Voice = "tenii"  \with { \consists "Ambitus_engraver"}
        { \override Ambitus.X-offset = #2.0 
          \voiceTwo \global \teniiVoice }
    >>
      \new Lyrics \lyricsto "teni" { \tenLyrix }
      
      \new Staff = "bas" << \set Staff.instrumentName = "Bass"
      \new Voice = "basi" \with { \consists "Ambitus_engraver" } 
        { \voiceOne \global \clef bass \basiVoice }
      \new Voice = "basii"  \with { \consists "Ambitus_engraver"}
        { \override Ambitus.X-offset = #2.0 
          \voiceTwo \global \basiiVoice }
    >>
      \new Lyrics \lyricsto "basi" { \basLyrix }
   
   
   
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

% main
\book { \bookOutputSuffix "main"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopi" { \global \sopiVoice }
      \new Voice = "sopii" { \global \sopiiVoice }
      \new Voice = "alti" { \global \altiVoice }
      \new Voice = "altii" { \global \altiiVoice }
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "basi" { \global \basiVoice } 
      \new Voice = "basii" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% sopran 1
\book { \bookOutputSuffix "sopran1"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopi" { \highlightedVoice  \global \sopiVoice }
      \new Voice = "sopii" { \global \sopiiVoice }
      \new Voice = "alti" { \global \altiVoice }
      \new Voice = "altii" { \global \altiiVoice }
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "basi" { \global \basiVoice } 
      \new Voice = "basii" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% sopran 2
\book { \bookOutputSuffix "sopran2"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopi" { \global \sopiVoice }
      \new Voice = "sopii" { \highlightedVoice \global \sopiiVoice }
      \new Voice = "alti" { \global \altiVoice }
      \new Voice = "altii" { \global \altiiVoice }
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "basi" { \global \basiVoice } 
      \new Voice = "basii" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% alt 1
\book { \bookOutputSuffix "alt1"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopi" { \global \sopiVoice }
      \new Voice = "sopii" { \global \sopiiVoice }
      \new Voice = "alti" { \highlightedVoice \global \altiVoice }
      \new Voice = "altii" { \global \altiiVoice }
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "basi" { \global \basiVoice } 
      \new Voice = "basii" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% alt 2
\book { \bookOutputSuffix "alt2"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopi" { \global \sopiVoice }
      \new Voice = "sopii" { \global \sopiiVoice }
      \new Voice = "alti" { \global \altiVoice }
      \new Voice = "altii" { \highlightedVoice \global \altiiVoice }
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "basi" { \global \basiVoice } 
      \new Voice = "basii" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% tenor 1
\book { \bookOutputSuffix "tenor1"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopi" { \global \sopiVoice }
      \new Voice = "sopii" { \global \sopiiVoice }
      \new Voice = "alti" { \global \altiVoice }
      \new Voice = "altii" { \global \altiiVoice }
      \new Voice = "teni" { \highlightedVoice \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "basi" { \global \basiVoice } 
      \new Voice = "basii" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% tenor 2
\book { \bookOutputSuffix "tenor2"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopi" { \global \sopiVoice }
      \new Voice = "sopii" { \global \sopiiVoice }
      \new Voice = "alti" { \global \altiVoice }
      \new Voice = "altii" { \global \altiiVoice }
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \highlightedVoice \global \teniiVoice } 
      \new Voice = "basi" { \global \basiVoice } 
      \new Voice = "basii" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% bass 1
\book { \bookOutputSuffix "bass1"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopi" { \global \sopiVoice }
      \new Voice = "sopii" { \global \sopiiVoice }
      \new Voice = "alti" { \global \altiVoice }
      \new Voice = "altii" { \global \altiiVoice }
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "basi" { \highlightedVoice \global \basiVoice } 
      \new Voice = "basii" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% bass 2
\book { \bookOutputSuffix "bass2"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopi" { \global \sopiVoice }
      \new Voice = "sopii" { \global \sopiiVoice }
      \new Voice = "alti" { \global \altiVoice }
      \new Voice = "altii" { \global \altiiVoice }
      \new Voice = "teni" { \global \teniVoice } 
      \new Voice = "tenii" { \global \teniiVoice } 
      \new Voice = "basi" { \global \basiVoice } 
      \new Voice = "basii" { \highlightedVoice \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

