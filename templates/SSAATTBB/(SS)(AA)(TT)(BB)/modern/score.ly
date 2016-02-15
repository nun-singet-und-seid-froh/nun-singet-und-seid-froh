% this is standard version 1.0: SSAATTBB/(SS)(AA)(TT)(BB)

% local information (for this particular piece)
\include "meta.ily"             % metadata for this piece
\include "voices.ily"           % the tunes, dynamic and articulation marks
\include "lyrics.ily"            % the lyrics within the staves
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
  \new SemiChoirStaff<<
     \new Staff = "sop" << \set Staff.instrumentName = "Sopran"
      \new Voice = "sopI" \with { \consists "Ambitus_engraver" } 
        { \voiceOne \global \sopiVoice }
      \new Voice = "sopII"  \with { \consists "Ambitus_engraver"}
        { \override Ambitus.X-offset = #2.0 
          \voiceTwo \global \sopiiVoice }
    >>
      \new Lyrics \lyricsto "sopI" { \sopLyrix }
    
    \new Staff = "alt" << \set Staff.instrumentName = "Alt"
      \new Voice = "altI" \with { \consists "Ambitus_engraver" } 
        { \voiceOne \global \altiVoice }
      \new Voice = "altII"  \with { \consists "Ambitus_engraver"}
        { \override Ambitus.X-offset = #2.0 
          \voiceTwo \global \altiiVoice }
    >>
      \new Lyrics \lyricsto "altI" { \altLyrix }
      
      \new Staff = "ten" << \set Staff.instrumentName = "Tenor"
      \new Voice = "tenI" \with { \consists "Ambitus_engraver" } 
        { \voiceOne \global \clef "G_8" \teniVoice }
      \new Voice = "tenII"  \with { \consists "Ambitus_engraver"}
        { \override Ambitus.X-offset = #2.0 
          \voiceTwo \global \teniiVoice }
    >>
      \new Lyrics \lyricsto "tenI" { \tenLyrix }
      
      \new Staff = "bas" << \set Staff.instrumentName = "Bass"
      \new Voice = "basI" \with { \consists "Ambitus_engraver" } 
        { \voiceOne \global \clef bass \basiVoice }
      \new Voice = "basII"  \with { \consists "Ambitus_engraver"}
        { \override Ambitus.X-offset = #2.0 
          \voiceTwo \global \basiiVoice }
    >>
      \new Lyrics \lyricsto "basI" { \basLyrix }
   
   
   
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
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "altI" { \global \altiVoice }
      \new Voice = "altII" { \global \altiiVoice }
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
      \new Voice = "basI" { \global \basiVoice } 
      \new Voice = "basII" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% sopran 1
\book { \bookOutputSuffix "sopran1"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopI" { \highlightedVoice  \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "altI" { \global \altiVoice }
      \new Voice = "altII" { \global \altiiVoice }
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
      \new Voice = "basI" { \global \basiVoice } 
      \new Voice = "basII" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% sopran 2
\book { \bookOutputSuffix "sopran2"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \highlightedVoice \global \sopiiVoice }
      \new Voice = "altI" { \global \altiVoice }
      \new Voice = "altII" { \global \altiiVoice }
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
      \new Voice = "basI" { \global \basiVoice } 
      \new Voice = "basII" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% alt 1
\book { \bookOutputSuffix "alt1"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "altI" { \highlightedVoice \global \altiVoice }
      \new Voice = "altII" { \global \altiiVoice }
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
      \new Voice = "basI" { \global \basiVoice } 
      \new Voice = "basII" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% alt 2
\book { \bookOutputSuffix "alt2"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "altI" { \global \altiVoice }
      \new Voice = "altII" { \highlightedVoice \global \altiiVoice }
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
      \new Voice = "basI" { \global \basiVoice } 
      \new Voice = "basII" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% tenor 1
\book { \bookOutputSuffix "tenor1"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "altI" { \global \altiVoice }
      \new Voice = "altII" { \global \altiiVoice }
      \new Voice = "tenI" { \highlightedVoice \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
      \new Voice = "basI" { \global \basiVoice } 
      \new Voice = "basII" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% tenor 2
\book { \bookOutputSuffix "tenor2"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "altI" { \global \altiVoice }
      \new Voice = "altII" { \global \altiiVoice }
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \highlightedVoice \global \teniiVoice } 
      \new Voice = "basI" { \global \basiVoice } 
      \new Voice = "basII" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% bass 1
\book { \bookOutputSuffix "bass1"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "altI" { \global \altiVoice }
      \new Voice = "altII" { \global \altiiVoice }
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
      \new Voice = "basI" { \highlightedVoice \global \basiVoice } 
      \new Voice = "basII" { \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

% bass 2
\book { \bookOutputSuffix "bass2"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sopI" { \global \sopiVoice }
      \new Voice = "sopII" { \global \sopiiVoice }
      \new Voice = "altI" { \global \altiVoice }
      \new Voice = "altII" { \global \altiiVoice }
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
      \new Voice = "basI" { \global \basiVoice } 
      \new Voice = "basII" { \highlightedVoice \global \basiiVoice } 
     >> 
   \stafftovoice
  }
}

