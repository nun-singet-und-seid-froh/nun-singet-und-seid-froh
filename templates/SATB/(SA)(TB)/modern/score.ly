% based on templates/SATB/(SA)(TB)/modern/score.ly

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
%                  the PDF & main MIDI producing part:             %
% 	              2 staves with 2 voices each		   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../../include/header.ily"      % the header and tagline information
  
  \score { %for PDF
  \new StaffGroup <<
    \new Staff = "women" << \set Staff.instrumentName = \markup { \center-column { Sopran \line { Alt } } } 
      \new Voice = "sop" \with { \consists "Ambitus_engraver" } 
        { \voiceOne \global \sopVoice }
      \new Voice = "alt"  \with { \consists "Ambitus_engraver"}
        { \override Ambitus.X-offset = #2.0 
          \voiceTwo \global \altVoice }
    >>
      \new Lyrics \with {
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
        \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
      }
      \lyricsto "sop"{\lyrics}
  
    \new Staff = "men" << \set Staff.instrumentName = \markup { \center-column { Tenor \line { Bass } } } 
      \new Voice = "ten" \with { \consists "Ambitus_engraver" } 
        { \voiceOne \global \clef bass \tenVoice } 
        
      \new Voice = "bas" \with { \consists "Ambitus_engraver"}
          { \override Ambitus.X-offset = #2.0 
            \voiceTwo \basVoice }
    >> 
  >> %end of StaffGroup
  \layout { }
  
  } %end of score (PDF)
  
  \stanzas
  
\score {
    %for MIDI
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "ten" { \global \tenVoice }
      \new Voice = "bas" { \global \basVoice }
    >>
    \stafftovoice
  } %end of score (MIDI)
} %end of book

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the MIDI producing part: 	           %
%    1 MIDI per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% sopran
\book { \bookOutputSuffix "sopran"
  \score { 
    \unfoldRepeats
     \new Staff << \commonVoice                     
      \new Voice = "sop" { \highlightedVoice  \global \sopVoice }
      \new Voice = "alt" { \global \altVoice }
      \new Voice = "ten" { \global \tenVoice } 
     >>
      \staffperformertovoice
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
     \staffperformertovoice
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
    \staffperformertovoice
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
    \staffperformertovoice
  }
}