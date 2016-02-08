% based on templates/SATB/SATB/modern/score.ly

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
% 	                4 staves for 4 voices		           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\book {
   \include "../../../include/header.ily"
  \score {
  \new StaffGroup<<
    \new Staff \with { \consists "Ambitus_engraver" } 
      << \set Staff.instrumentName = "Sopran"
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "soptwo" { \global \soptwoVoice } 
      >>
      <<
        \new Lyrics \lyricsto "sop" { \sopLyrics }
        \new Lyrics \with {
           \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #4
          }
          \lyricsto "soptwo" { \soptwoLyrics }
      >>
     
      
    
    \new Staff \with { \consists "Ambitus_engraver" }
    << \set Staff.instrumentName = "Alt"
      \new Voice = "alt" { \global \altVoice } 
      \new Voice = "alttwo" { \global \alttwoVoice }>> 
    <<  
      \new Lyrics \lyricsto "alt" { \altLyrics }
      \new Lyrics \with {
           \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #4
          }
          \lyricsto "alttwo" { \alttwoLyrics }
    >>
    
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Tenor"
      \new Voice = "ten" { \clef "G_8" \global \tenVoice }
      \new Voice = "tentwo" { \clef "G_8" \global \tentwoVoice }  
   >> 
   <<
      \new Lyrics \lyricsto "ten" { \tenLyrics }
      \new Lyrics \with {
           \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #4
          }
          \lyricsto "tentwo" { \tentwoLyrics }
   >>
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Bass"
      \new Voice = "bas" { \clef bass \global \basVoice } 
      \new Voice = "bastwo" { \clef bass \global \bastwoVoice } 
   >> 
   << 
      \new Lyrics \lyricsto "bas" { \basLyrics }  
      \new Lyrics \lyricsto "bastwo" { \bastwoLyrics }  
   >>
  >>%end of ChoirStaff
  
    \layout { 
       #(layout-set-staff-size 17)
      \override LyricText.font-name = "EBGaramond"
      \override LyricText.font-size = #2
      \override Score.BarNumber.font-name = "EBGaramond"
      \override Score.BarNumber.font-size = #2
      \override Staff.InstrumentName.font-name = "EBGaramond"
      \override Staff.InstrumentName.font-size = #2
    }
    
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