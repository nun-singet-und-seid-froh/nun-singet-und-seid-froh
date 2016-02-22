%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this is not based on any template!

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
%                       4 staves for 4 voices                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
 \include "../../../include/header.ily"
 
 \markup{ \magnify #1.5 { Strophe 1 } }
  \score { %score for first stanza
  \new SemiChoirStaff<<
    \new Staff \with { \consists "Ambitus_engraver" }
    << \set Staff.instrumentName = "Sopran"
     
      \new Voice = "sop" { \global \sopVoiceVerseOne }
    >>
     \new Lyrics \lyricsto "sop" { \sopLyricsVerseOne }
   
    \new Staff \with { \consists "Ambitus_engraver" }
    << \set Staff.instrumentName = "Alt"
      \new Voice = "alt" { \global \altVoiceVerseOne } >> 
      \new Lyrics \lyricsto "alt" { \altLyricsVerseOne }
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Tenor"
      \new Voice = "ten" { \clef "G_8" \global \tenVoiceVerseOne }  >> 
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseOne }
   
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Bass"
      \new Voice = "bas" { \clef bass \global \basVoiceVerseOne } >> 
      \new Lyrics \lyricsto "bas" { \basLyricsVerseOne }  
  >>%end of StaffGroup
    \layout { 
    \context {
    \Score
       \remove "Timing_translator"
       \remove "Default_bar_line_engraver"
       \remove "Repeat_acknowledge_engraver"
       \remove "Volta_engraver"
    }

    \context{
      \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \consists "Volta_engraver"
    }
    }
  }%end of first stanza score
  \pageBreak
   \markup{ \magnify #1.5 { Strophe 2 } }

  \score { %score for second stanza
  \new SemiChoirStaff<<
    \new Staff \with { printPartCombineTexts = ##f \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Sopran"
      \new Voice = "sop" { \globalTwo \sopVoiceVerseTwo }
      \new Lyrics { \sopLyricsVerseTwoFirstVolta }
      \new Lyrics { \sopLyricsVerseTwoSecondVolta }
    >>
    
    \new Staff \with { printPartCombineTexts = ##f \consists "Ambitus_engraver" }
    << \set Staff.instrumentName = "Alt"
      \new Voice = "alt" { \globalTwo \altVoiceVerseTwo }
      \new Lyrics { \altLyricsVerseTwoFirstVolta }
      \new Lyrics { \altLyricsVerseTwoSecondVolta }
    >>
    
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Tenor"
      \new Voice = "ten" { \clef "G_8" \globalTwo \tenVoiceVerseTwo }  >> 
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseTwo }
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Bass"
      \new Voice = "bas" { \clef bass \globalTwo \basVoiceVerseTwo } >> 
      \new Lyrics \lyricsto "bas" { \basLyricsVerseTwo }  
  >>%end of StaffGroup
    \layout { 
    \context {
    \Score
       \remove "Timing_translator"
       \remove "Default_bar_line_engraver"
       \remove "Repeat_acknowledge_engraver"
       \remove "Volta_engraver"
    }

    \context{
      \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \consists "Volta_engraver"
    }
    }
  }%end of second stanza score
  
  \markup{ \magnify #1.5 { Strophe 3 } }
  \score { %score for third stanza
  \new StaffGroup <<
  \new SemiChoirStaff<<
    \new Staff \with { printPartCombineTexts = ##f \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Sopran"
      \new Voice = "sop" { \globalThree \sopVoiceVerseThree }
    >>
    \new Lyrics \lyricsto "sop" { \sopLyricsVerseThree }
    
    \new Staff \with { printPartCombineTexts = ##f \consists "Ambitus_engraver" }
    << \set Staff.instrumentName = "Alt"
      \new Voice = "alt" { \globalThree \altVoiceVerseThree }
    >>
      \new Lyrics \lyricsto "alt" { \altLyricsVerseThree }
    
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Tenor"
      \new Voice = "ten" { \clef "G_8" \globalThree \tenVoiceVerseThree }  >> 
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseThree }
  >>
  \new SemiChoirStaff \with { instrumentName = "Bass" } <<  
    \new Staff \with { \consists "Ambitus_engraver" } << 
      \new Voice = "basI" { \clef bass \globalThree \basIVoiceVerseThree } >> 
      \new Lyrics \lyricsto "basI" { \basLyricsVerseThree }  
    
    \new Staff \with { \consists "Ambitus_engraver" } << 
      \new Voice = "basII" { \clef bass \globalThree \basIIVoiceVerseThree } >> 
      
        
  >> % end of SemiChoirStaff (basses)
  >>%end of StaffGroup
    \layout { 
    \context {
    \Score
       \remove "Timing_translator"
       \remove "Default_bar_line_engraver"
       \remove "Repeat_acknowledge_engraver"
       \remove "Volta_engraver"
    }
    \context{
      \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \consists "Volta_engraver"
    }
    }
  }%end of third stanza score
  
  \markup{ \magnify #1.5 { Strophe 4 } }

\score { %score for fourth stanza
  \new SemiChoirStaff<<
    \new Staff \with { printPartCombineTexts = ##f \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Sopran"
      \new Voice = "sop" { \globalFour \sopVoiceVerseFour }
   >>
      \new Lyrics \lyricsto "sop" { \sopLyricsVerseFour }
    
    \new Staff \with { printPartCombineTexts = ##f \consists "Ambitus_engraver" }
    << \set Staff.instrumentName = "Alt"
      \new Voice = "alt" { \globalFour \altVoiceVerseFour }
    >>
      \new Lyrics \lyricsto "alt" { \altLyricsVerseFour }
    
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Tenor"
      \new Voice = "ten" { \clef "G_8" \globalFour \tenVoiceVerseFour }  >> 
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseFour }
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Bass"
      \new Voice = "bas" { \clef bass \globalFour \basVoiceVerseFour } >> 
      \new Lyrics \lyricsto "bas" { \basLyricsVerseFour }  
  >>%end of StaffGroup
    \layout { 
    \context {
    \Score
       \remove "Timing_translator"
       \remove "Default_bar_line_engraver"
       \remove "Repeat_acknowledge_engraver"
       \remove "Volta_engraver"
    }

    \context{
      \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \consists "Volta_engraver"
    }
    }
  }%end of fourth stanza score
  
  \markup{ \magnify #1.5 { Strophe 5 } }
  \score { %score for first stanza
  \new SemiChoirStaff<<
    \new Staff \with { \consists "Ambitus_engraver" }
    << \set Staff.instrumentName = "Sopran"
     
      \new Voice = "sop" { \global \sopVoiceVerseOne }
    >>
     \new Lyrics \lyricsto "sop" { \sopLyricsVerseFive }
   
    \new Staff \with { \consists "Ambitus_engraver" }
    << \set Staff.instrumentName = "Alt"
      \new Voice = "alt" { \global \altVoiceVerseOne } >> 
      \new Lyrics \lyricsto "alt" { \altLyricsVerseFive }
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Tenor"
      \new Voice = "ten" { \clef "G_8" \global \tenVoiceVerseOne }  >> 
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseFive }
   
   
   \new Staff \with { \consists "Ambitus_engraver" }
   << \set Staff.instrumentName = "Bass"
      \new Voice = "bas" { \clef bass \global \basVoiceVerseOne } >> 
      \new Lyrics \lyricsto "bas" { \basLyricsVerseFive }  
  >>%end of StaffGroup
    \layout { 
    \context {
    \Score
       \remove "Timing_translator"
       \remove "Default_bar_line_engraver"
       \remove "Repeat_acknowledge_engraver"
       \remove "Volta_engraver"
    }

    \context{
      \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \consists "Volta_engraver"
    }
    }
  }%end of fifth stanza score
  
}%end of book