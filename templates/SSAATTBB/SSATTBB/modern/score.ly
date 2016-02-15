%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     This file is part of the edition www.nun-singet-und-seid-froh.info        %
% This file as well as the music represented in it is within the public domain. %
%  If you think that this file violates your copyright or other rights of you,  % 
%           please contact us at mail@nun-singet-und-seid-froh.info.            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based ontemplates/SSAATTBB/SSATTBB/modern/score.ly

% local information (for this particular piece)
\include "meta.ily"             % metadata for this piece
\include "voices.ily"           % the tunes, dynamic and articulation marks
\include "lyrics.ily"            % the lyrics within the staves
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
    \new SemiChoirStaff <<  
      \new Staff << \set Staff.instrumentName = "Sopran 1"
      \new Voice = "sopI" \with { \consists "Ambitus_engraver" }  { \global \sopiVoice } >>
      \new Lyrics \lyricsto "sopI" { \sopiLyrix }
   
      \new Staff << \set Staff.instrumentName = "Sopran 2"
      \new Voice = "sopII" \with { \consists "Ambitus_engraver" } { \global \sopiiVoice } >>
      \new Lyrics \lyricsto "sopII" { \sopiiLyrix } 
    >>
  
    \new SemiChoirStaff <<  
      \new Staff << \set Staff.instrumentName = "Alt I" 
      \new Voice = "altI" \with { \consists "Ambitus_engraver" } { \global \altiVoice } >>
      \new Lyrics \lyricsto "altI" { \altiLyrix }
   
      \new Staff <<\set Staff.instrumentName = "Alt 2"
      \new Voice = "altII" \with { \consists "Ambitus_engraver" }  { \global \altiiVoice } >>
      \new Lyrics \lyricsto "altII" { \altiiLyrix } 
    >>
  
    \new SemiChoirStaff <<
      \new Staff << \set Staff.instrumentName = "Tenor 1"
      \new Voice = "tenI" \with { \consists "Ambitus_engraver" } { \global  \clef "G_8" \teniVoice } >>
      \new Lyrics \lyricsto "tenI" { \teniLyrix }
   
      \new Staff << \set Staff.instrumentName = "Tenor 2"
      \new Voice = "tenII" \with { \consists "Ambitus_engraver" } { \global \clef "G_8" \teniiVoice } >>
      \new Lyrics \lyricsto "tenII" { \teniiLyrix }  
    >>
  
    \new SemiChoirStaff <<
      \new Staff << \set Staff.instrumentName = "Bass 1"
      \new Voice = "basI" \with { \consists "Ambitus_engraver" } { \global \clef bass \basiVoice } >>
      \new Lyrics \lyricsto "basI" { \basiLyrix }
   
      \new Staff << \set Staff.instrumentName = "Bass II" 
      \new Voice = "basII" \with { \consists "Ambitus_engraver" } { \global \clef bass \basiiVoice } >>
      \new Lyrics \lyricsto "basII" { \basiiLyrix }
    >>   
  >> %end of StaffGroup
  } %end of score (PDF)
  
  \score { 
    %for MIDI
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