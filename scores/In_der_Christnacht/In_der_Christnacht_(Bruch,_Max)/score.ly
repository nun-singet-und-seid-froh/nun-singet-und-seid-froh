%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based ontemplates/SATB/SATB/modern/score.ly

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
  \new SemiChoirStaff<<
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
  
   \layout { }
    
  }%end of score
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
}%end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the midi producing part: 	           %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sopran
\book { \bookOutputSuffix "sopran"
  \score { 
    \unfoldRepeats
     \new Staff << \backgroundVoice                     
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
    \new Staff << \backgroundVoice                    
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
    \new Staff << \backgroundVoice                    
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
    \new Staff << \backgroundVoice                    
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice } 
      \new Voice = "bas" { \highlightedVoice \global \basVoice }
    >> 
     \stafftovoice
  }
}
