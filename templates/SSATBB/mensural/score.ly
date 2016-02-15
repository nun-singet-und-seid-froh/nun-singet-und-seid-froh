%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     This file is part of the edition www.nun-singet-und-seid-froh.info        %
% This file as well as the music represented in it is within the public domain. %
%  If you think that this file violates your copyright or other rights of you,  % 
%           please contact us at mail@nun-singet-und-seid-froh.info.            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based ontemplates/SSATTB/SSATTB/mensural/score.ly

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
% 	                5 staves for 5 voices		           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../include/header.ily"
 
  \score {
    \layout { #(layout-set-staff-size 17) 
    }
  \new SemiChoirStaff<<
    \new Staff \with { \consists "Ambitus_engraver" } 
      << \set Staff.instrumentName = "Sopran I"
      \new Voice = "sopI" { \global \sopiVoice } >>
      \new Lyrics \lyricsto "sopI" { \sopiLyrix }
      
      \new SemiChoirStaff<<
    \new Staff \with { \consists "Ambitus_engraver" } 
      << \set Staff.instrumentName = "Sopran II"
      \new Voice = "sopII" { \global \sopiiVoice } >>
      \new Lyrics \lyricsto "sopII" { \sopiiLyrix }
    
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
      \new Voice = "basI" { \clef bass \global \basiVoice }  >> 
      \new Lyrics \lyricsto "basI" { \basiLyrix }
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Bass II"
      \new Voice = "basII" { \clef bass \global \basiiVoice } >> 
      \new Lyrics \lyricsto "basII" { \basiiLyrix }  
  >>%end of ChoirStaff
  
  
    
  }%end of score
}%end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the midi producing part: 	           %
% 	        1 main.midi with all voices equally		   %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
{stafftovoice =
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
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
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
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
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
      \new Voice = "tenI" { \highlightedVoice \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
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
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \highlightedVoice \global \teniiVoice } 
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
      \new Voice = "tenI" { \global \teniVoice } 
      \new Voice = "tenII" { \global \teniiVoice } 
      \new Voice = "bas" { \highlightedVoice \global \basVoice }
    >> 
     \stafftovoice
  }
}%}