% based on templates/SSAATTBB/SSATTBB/modern/score.ly

% local information (for this particular piece)
\include "meta.ily"             % metadata for this piece
\include "voices.ily"           % the tunes, dynamic and articulation marks
\include "lyrix.ily"            % the lyrics within the staves
\include "output.ily"           % the paper and midi settings for this piece

% global information (identical for all pieces)
\include "../../../include/version.ily"    % the lilypond version
\include "../../../include/sheet.ily"      % the layout information
\include "../../../include/sound.ily"      % variable declarations for midi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  the PDF & main MIDI producing part:             %
% 	            8 voices in 4 groups á 2 staves 		   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../include/header.ily"
  
  \score {
   %for PDF
   \new Score <<
    \new StaffGroup <<  
      \new Staff << \set Staff.instrumentName = "Sopran 1"
      \new Voice = "sopi" \with { \consists "Ambitus_engraver" }  { \global \sopiVoice } >>
      \new Lyrics \lyricsto "sopi" { \sopiLyrix }
   
      \new Staff << \set Staff.instrumentName = "Sopran 2"
      \new Voice = "sopii" \with { \consists "Ambitus_engraver" } { \global \sopiiVoice } >>
      \new Lyrics \lyricsto "sopii" { \sopiiLyrix } 
    >>
  
    \new StaffGroup <<  
      \new Staff << \set Staff.instrumentName = "Alt I" 
      \new Voice = "alti" \with { \consists "Ambitus_engraver" } { \global \altiVoice } >>
      \new Lyrics \lyricsto "alti" { \altiLyrix }
   
      \new Staff <<\set Staff.instrumentName = "Alt 2"
      \new Voice = "altii" \with { \consists "Ambitus_engraver" }  { \global \altiiVoice } >>
      \new Lyrics \lyricsto "altii" { \altiiLyrix } 
    >>
  
    \new StaffGroup <<
      \new Staff << \set Staff.instrumentName = "Tenor 1"
      \new Voice = "teni" \with { \consists "Ambitus_engraver" } { \global  \clef "G_8" \teniVoice } >>
      \new Lyrics \lyricsto "teni" { \teniLyrix }
   
      \new Staff << \set Staff.instrumentName = "Tenor 2"
      \new Voice = "tenii" \with { \consists "Ambitus_engraver" } { \global \clef "G_8" \teniiVoice } >>
      \new Lyrics \lyricsto "tenii" { \teniiLyrix }  
    >>
  
    \new StaffGroup <<
      \new Staff << \set Staff.instrumentName = "Bass 1"
      \new Voice = "basi" \with { \consists "Ambitus_engraver" } { \global \clef bass \basiVoice } >>
      \new Lyrics \lyricsto "basi" { \basiLyrix }
   
      \new Staff << \set Staff.instrumentName = "Bass II" 
      \new Voice = "basii" \with { \consists "Ambitus_engraver" } { \global \clef bass \basiiVoice } >>
      \new Lyrics \lyricsto "basii" { \basiiLyrix }
    >>   
  >> %end of StaffGroup
  } %end of score (PDF)
  
  \score { 
    %for MIDI
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
  } %end of score (MIDI)
  
} %end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the MIDI producing part: 	           %
%    1 MIDI per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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