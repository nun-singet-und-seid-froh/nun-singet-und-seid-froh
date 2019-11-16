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
    \new SemiChoirStaff <<
      \new Staff \with {
        \consists "Ambitus_engraver"
        \consists "Volta_engraver"
      } <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sop" { \globalOne << \sopVoiceVerseOne \breaksOne >> }
      >>
      \new Lyrics \lyricsto "sop" { \sopLyricsVerseOne }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \globalOne << \altVoiceVerseOne \breaksOne >> }
      >>
      \new Lyrics \lyricsto "alt" { \altLyricsVerseOne }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \clef "G_8" \globalOne << \tenVoiceVerseOne \breaksOne >> }
      >>
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseOne }


      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "bas" { \clef bass \globalOne << \basVoiceVerseOne \breaksOne >> }
      >>
      \new Lyrics \lyricsto "bas" { \basLyricsVerseOne }
    >> %end of SemiChoirStaff
    \layout {
      \context {
        \Score
        \remove "Timing_translator"
        \remove "Default_bar_line_engraver"
        \remove "Repeat_acknowledge_engraver"
        \remove "Volta_engraver"
        \remove "Forbid_line_break_engraver"
      }
      \context {
        \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \remove "Forbid_line_break_engraver"
      }
      \context {
        \Voice
        \remove "Forbid_line_break_engraver"
      }
    }
  } %end of first stanza score
  \pageBreak

  \markup{ \magnify #1.5 { Strophe 2 } }
  \score { %score for second stanza
    \new SemiChoirStaff <<
      \new Staff \with {
        \consists "Ambitus_engraver"
        \consists "Volta_engraver"
      } <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sop" { \globalTwo << \sopVoiceVerseTwo \breaksTwo >> }
        \new Lyrics { \sopLyricsVerseTwoFirstVolta }
        \new Lyrics { \sopLyricsVerseTwoSecondVolta }
      >>

      \new Staff \with {
        \consists "Ambitus_engraver"
      } <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \globalTwo << \altVoiceVerseTwo \breaksTwo >> }
        \new Lyrics \lyricsto "alt" { \altLyricsVerseTwoFirstVolta }
        \new Lyrics { \altLyricsVerseTwoSecondVolta }
      >>

      \new Staff \with {
        \consists "Ambitus_engraver"
      } <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \clef "G_8" \globalTwo << \tenVoiceVerseTwo \breaksTwo >> }
        \new Lyrics \lyricsto "ten" { \tenLyricsVerseTwoFirstVolta }
        \new Lyrics { \tenLyricsVerseTwoSecondVolta }
      >>

      \new Staff \with {
        \consists "Ambitus_engraver"
      } <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "bas" { \clef bass \globalTwo << \basVoiceVerseTwo \breaksTwo >> }
        \new Lyrics \lyricsto "bas" { \basLyricsVerseTwoFirstVolta }
        \new Lyrics { \basLyricsVerseTwoSecondVolta }
      >>
    >>%end of SemiChoirStaff
    \layout {
      \context {
        \Score
        \remove "Timing_translator"
        \remove "Default_bar_line_engraver"
        \remove "Repeat_acknowledge_engraver"
        \remove "Volta_engraver"
        \remove "Forbid_line_break_engraver"
      }

      \context{
        \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \remove "Forbid_line_break_engraver"
      }
      \context {
        \Voice
        \remove "Forbid_line_break_engraver"
      }
    }
  }%end of second stanza score

  \markup{ \magnify #1.5 { Strophe 3 } }
  \score { %score for third stanza
    \new StaffGroup <<
      \new SemiChoirStaff<<
        \new Staff \with {
          %printPartCombineTexts = ##f
          \consists "Ambitus_engraver"
          \consists "Volta_engraver"
        }
        <<
          \set Staff.instrumentName = "Sopran"
          \new Voice = "sop" { \globalThree << \sopVoiceVerseThree \breaksThree >> }
        >>
        \new Lyrics \lyricsto "sop" { \sopLyricsVerseThree }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Alt"
          \new Voice = "alt" { \globalThree << \altVoiceVerseThree \breaksThree >> }
        >>
        \new Lyrics \lyricsto "alt" { \altLyricsVerseThree }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \set Staff.instrumentName = "Tenor"
          \new Voice = "ten" { \clef "G_8" \globalThree << \tenVoiceVerseThree \breaksThree >> }
        >>
        \new Lyrics \lyricsto "ten" { \tenLyricsVerseThree }
      >>
      \new SemiChoirStaff \with { instrumentName = "Bass" } <<
        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \new Voice = "basI" { \clef bass \globalThree << \basIVoiceVerseThree \breaksThree >> }
        >>
        \new Lyrics \lyricsto "basI" { \basLyricsVerseThree }

        \new Staff \with {
          \consists "Ambitus_engraver"
        } <<
          \new Voice = "basII" { \clef bass \globalThree << \basIIVoiceVerseThree \breaksThree >> }
        >>
      >> % end of SemiChoirStaff (basses)
    >>%end of StaffGroup
    \layout {
      \context {
        \StaffGroup
        \remove "Forbid_line_break_engraver"
      }
      \context {
        \SemiChoirStaff
        \remove "Forbid_line_break_engraver"
      }
      \context {
        \Score
        \remove "Timing_translator"
        \remove "Default_bar_line_engraver"
        \remove "Repeat_acknowledge_engraver"
        \remove "Volta_engraver"
        \remove "Forbid_line_break_engraver"
      }
      \context{
        \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \remove "Forbid_line_break_engraver"
      }
      \context {
        \Voice
        \remove "Forbid_line_break_engraver"
      }
    }
  }%end of third stanza score

  \markup{ \magnify #1.5 { Strophe 4 } }
  \score { %score for fourth stanza
    \new SemiChoirStaff<<
      \new Staff \with {
        printPartCombineTexts = ##f
        \consists "Ambitus_engraver"
        \consists "Volta_engraver"
      } <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sop" { \globalFour << \sopVoiceVerseFour \breaksFour >> }
      >>
      \new Lyrics \lyricsto "sop" { \sopLyricsVerseFour }

      \new Staff \with {
        printPartCombineTexts = ##f
        \consists "Ambitus_engraver"
      } <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \globalFour << \altVoiceVerseFour \breaksFour >> }
      >>
      \new Lyrics \lyricsto "alt" { \altLyricsVerseFour }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \clef "G_8" \globalFour << \tenVoiceVerseFour \breaksFour >> }
      >>
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseFour }

      \new Staff \with { \consists "Ambitus_engraver" }
      <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "bas" { \clef bass \globalFour << \basVoiceVerseFour \breaksFour >> }
      >>
      \new Lyrics \lyricsto "bas" { \basLyricsVerseFour }
    >>%end of StaffGroup
    \layout {
      \context {
        \Score
        \remove "Timing_translator"
        \remove "Default_bar_line_engraver"
        \remove "Repeat_acknowledge_engraver"
        \remove "Volta_engraver"
        \remove "Forbid_line_break_engraver"
      }

      \context{
        \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \remove "Forbid_line_break_engraver"
      }
      \context {
        \Voice
        \remove "Forbid_line_break_engraver"
      }
    }
  }%end of fourth stanza score

  \markup{ \magnify #1.5 { Strophe 5 } }
  \score { %score for fifth stanza
    \new SemiChoirStaff<<
      \new Staff \with {
        \consists "Ambitus_engraver"
        \consists "Volta_engraver"
      } <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sop" { \globalFive << \sopVoiceVerseFive \breaksFive >> }
      >>
      \new Lyrics \lyricsto "sop" { \sopLyricsVerseFive }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "alt" { \globalFive << \altVoiceVerseFive \breaksFive >> }
      >>
      \new Lyrics \lyricsto "alt" { \altLyricsVerseFive }

      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "ten" { \clef "G_8" \globalFive << \tenVoiceVerseFive \breaksFive >>}
      >>
      \new Lyrics \lyricsto "ten" { \tenLyricsVerseFive }


      \new Staff \with { \consists "Ambitus_engraver" } <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "bas" { \clef bass \globalFive << \basVoiceVerseFive \breaksFive >>}
      >>
      \new Lyrics \lyricsto "bas" { \basLyricsVerseFive }
    >>%end of StaffGroup
    \layout {
      \context {
        \Score
        \remove "Timing_translator"
        \remove "Default_bar_line_engraver"
        \remove "Repeat_acknowledge_engraver"
        \remove "Volta_engraver"
        \remove "Forbid_line_break_engraver"
      }

      \context{
        \Staff
        \consists "Timing_translator"
        \consists "Default_bar_line_engraver"
        \consists "Repeat_acknowledge_engraver"
        \remove "Forbid_line_break_engraver"
      }
      \context {
        \Voice
        \remove "Forbid_line_break_engraver"
      }
    }
  }%end of fifth stanza score

}%end of book

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            the MIDI producing part:           	                 %
%    1 midi per each voice per each stanza with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% overwrite stafftovoice to avoid errors with polyrhythmic bars
stafftovoice = \midi {
  \context {
    \Score
    \remove "Timing_translator"
    \remove "Repeat_acknowledge_engraver"
  }
  \context {
    \Staff
    \remove "Staff_performer"
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \consists "Repeat_acknowledge_engraver"
  }
  \context {
    \Voice
    \consists "Staff_performer"
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \consists "Repeat_acknowledge_engraver"
  }
}

%%%%%%%%%%%%%%%%%%%%
%   first stanza   %
%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "1-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \globalOne \sopVoiceVerseOne }
      \new Voice = "alt" { \globalOne \altVoiceVerseOne }
      \new Voice = "ten" { \globalOne \tenVoiceVerseOne }
      \new Voice = "bas" { \globalOne \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "1-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \highlightedVoice \global \altVoiceVerseOne }
      \new Voice = "ten" { \global \tenVoiceVerseOne }
      \new Voice = "bas" { \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "1-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \global \altVoiceVerseOne }
      \new Voice = "ten" { \highlightedVoice \global \tenVoiceVerseOne }
      \new Voice = "bas" { \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "1-bass"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \global \altVoiceVerseOne }
      \new Voice = "ten" { \global \tenVoiceVerseOne }
      \new Voice = "bas" { \highlightedVoice \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

%%%%%%%%%%%%%%%%%%%%
%  second stanza   %
%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "2-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \global \sopVoiceVerseTwo }
      \new Voice = "alt" { \global \altVoiceVerseTwo }
      \new Voice = "ten" { \global \tenVoiceVerseTwo }
      \new Voice = "bas" { \global \basVoiceVerseTwo }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "2-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseTwo }
      \new Voice = "alt" { \highlightedVoice \global \altVoiceVerseTwo }
      \new Voice = "ten" { \global \tenVoiceVerseTwo }
      \new Voice = "bas" { \global \basVoiceVerseTwo }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "2-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseTwo }
      \new Voice = "alt" { \global \altVoiceVerseTwo }
      \new Voice = "ten" { \highlightedVoice \global \tenVoiceVerseTwo }
      \new Voice = "bas" { \global \basVoiceVerseTwo }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "2-bass"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseTwo }
      \new Voice = "alt" { \global \altVoiceVerseTwo }
      \new Voice = "ten" { \global \tenVoiceVerseTwo }
      \new Voice = "bas" { \highlightedVoice \global \basVoiceVerseTwo }
    >>
    \stafftovoice
  }
}

%%%%%%%%%%%%%%%%%%%%
%  third stanza   %
%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "3-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \global \sopVoiceVerseThree }
      \new Voice = "alt" { \global \altVoiceVerseThree }
      \new Voice = "ten" { \global \tenVoiceVerseThree }
      \new Voice = "basI" { \global \basIVoiceVerseThree }
      \new Voice = "basII" { \global \basIIVoiceVerseThree }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "3-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseThree }
      \new Voice = "alt" { \highlightedVoice \global \altVoiceVerseThree }
      \new Voice = "ten" { \global \tenVoiceVerseThree }
      \new Voice = "basI" { \global \basIVoiceVerseThree }
      \new Voice = "basII" { \global \basIIVoiceVerseThree }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "3-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseThree }
      \new Voice = "alt" { \global \altVoiceVerseThree }
      \new Voice = "ten" { \highlightedVoice \global \tenVoiceVerseThree }
      \new Voice = "basI" { \global \basIVoiceVerseThree }
      \new Voice = "basII" { \global \basIIVoiceVerseThree }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "3-bass1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseThree }
      \new Voice = "alt" { \global \altVoiceVerseThree }
      \new Voice = "ten" { \global \tenVoiceVerseThree }
      \new Voice = "basI" { \highlightedVoice \global \basIVoiceVerseThree }
      \new Voice = "basII" { \global \basIIVoiceVerseThree }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "3-bass2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseThree }
      \new Voice = "alt" { \global \altVoiceVerseThree }
      \new Voice = "ten" { \global \tenVoiceVerseThree }
      \new Voice = "basI" { \global \basIVoiceVerseThree }
      \new Voice = "basII" { \highlightedVoice \global \basIIVoiceVerseThree }
    >>
    \stafftovoice
  }
}

%%%%%%%%%%%%%%%%%%%%
%  fourth stanza   %
%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "4-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \global \sopVoiceVerseFour }
      \new Voice = "alt" { \global \altVoiceVerseFour }
      \new Voice = "ten" { \global \tenVoiceVerseFour }
      \new Voice = "bas" { \global \basVoiceVerseFour }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "4-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseFour }
      \new Voice = "alt" { \highlightedVoice \global \altVoiceVerseFour }
      \new Voice = "ten" { \global \tenVoiceVerseFour }
      \new Voice = "bas" { \global \basVoiceVerseFour }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "4-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseFour }
      \new Voice = "alt" { \global \altVoiceVerseFour }
      \new Voice = "ten" { \highlightedVoice \global \tenVoiceVerseFour }
      \new Voice = "bas" { \global \basVoiceVerseFour }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "4-bass"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseFour }
      \new Voice = "alt" { \global \altVoiceVerseFour }
      \new Voice = "ten" { \global \tenVoiceVerseFour }
      \new Voice = "bas" { \highlightedVoice \global \basVoiceVerseFour }
    >>
    \stafftovoice
  }
}

%%%%%%%%%%%%%%%%%%%%
%   fifth stanza   %
%%%%%%%%%%%%%%%%%%%%

% sopran
\book {
  \bookOutputSuffix "5-sopran"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \highlightedVoice  \global \sopVoiceVerseOne }
      \new Voice = "alt" { \global \altVoiceVerseOne }
      \new Voice = "ten" { \global \tenVoiceVerseOne }
      \new Voice = "bas" { \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% alt
\book {
  \bookOutputSuffix "5-alt"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \highlightedVoice \global \altVoiceVerseOne }
      \new Voice = "ten" { \global \tenVoiceVerseOne }
      \new Voice = "bas" { \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% tenor
\book {
  \bookOutputSuffix "5-tenor"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \global \altVoiceVerseOne }
      \new Voice = "ten" { \highlightedVoice \global \tenVoiceVerseOne }
      \new Voice = "bas" { \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}

% bass
\book {
  \bookOutputSuffix "5-bass"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sop" { \global \sopVoiceVerseOne }
      \new Voice = "alt" { \global \altVoiceVerseOne }
      \new Voice = "ten" { \global \tenVoiceVerseOne }
      \new Voice = "bas" { \highlightedVoice \global \basVoiceVerseOne }
    >>
    \stafftovoice
  }
}
