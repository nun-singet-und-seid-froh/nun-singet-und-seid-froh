%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % based on templates/SSATTBB/(SS)(AA)(TT)(BB)/modern/score.ly


% local information (for this particular piece)
\include "meta.ily"             % metadata for this piece
\include "voices.ily"           % the tunes, dynamic and articulation marks
\include "lyrics.ily"            % the lyrics within the staves
\include "output.ily"           % the paper and midi settings for this piece

% global information (identical for all pieces)
\include "../../../include/version.ily"   % the lilypond version
\include "../../../include/paper.ily"      % the layout information
\include "../../../include/sound.ily"      % variable declarations for midi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the sheet producing part: 	           %
% 	                4 staves á 2 voices		           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \include "../../../include/header.ily"

  \score {
    \new SemiChoirStaff<<
      \new Staff = "sop" <<
        \set Staff.instrumentName = "Sopran"
        \new Voice = "sopI" \with { \consists "Ambitus_engraver" }
        { \voiceOne \global \sopIVoice }
        \new Voice = "sopII"  \with { \consists "Ambitus_engraver"}
        {
          \override Ambitus.X-offset = #2.0
          \voiceTwo \global \sopIIVoice
        }
      >>
      \new Lyrics \lyricsto "sopI" { \sopLyrics }

      \new Staff = "alt" <<
        \set Staff.instrumentName = "Alt"
        \new Voice = "altI" \with { \consists "Ambitus_engraver" }
        { \voiceOne \global \altIVoice }
        \new Voice = "altII"  \with { \consists "Ambitus_engraver"}
        {
          \override Ambitus.X-offset = #2.0
          \voiceTwo \global \altIIVoice
        }
      >>
      \new Lyrics \lyricsto "altI" { \altLyrics }

      \new Staff = "ten" <<
        \set Staff.instrumentName = "Tenor"
        \new Voice = "tenI" \with { \consists "Ambitus_engraver" }
        { \voiceOne \global \clef "G_8" \tenIVoice }
        \new Voice = "tenII"  \with { \consists "Ambitus_engraver"}
        {
          \override Ambitus.X-offset = #2.0
          \voiceTwo \global \tenIIVoice
        }
      >>
      \new Lyrics \lyricsto "tenI" { \tenLyrics }

      \new Staff = "bas" <<
        \set Staff.instrumentName = "Bass"
        \new Voice = "basI" \with { \consists "Ambitus_engraver" }
        { \voiceOne \global \clef bass \basIVoice }
        \new Voice = "basII"  \with { \consists "Ambitus_engraver"}
        {
          \override Ambitus.X-offset = #2.0
          \voiceTwo \global \basIIVoice
        }
      >>
      \new Lyrics \lyricsto "basI" { \basLyrics }
    >>%end of ChoirStaff

    \layout { }

  }%end of score (PDF)
  
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }%end of score (MIDI)

}%end of book


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      the midi producing part: 	           %
%    1 midi per each voice with the respective voice highlighted   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% sopran 1
\book {
  \bookOutputSuffix "sopran1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \highlightedVoice  \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% sopran 2
\book {
  \bookOutputSuffix "sopran2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \highlightedVoice \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% alt 1
\book {
  \bookOutputSuffix "alt1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \highlightedVoice \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% alt 2
\book {
  \bookOutputSuffix "alt2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \highlightedVoice \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% tenor 1
\book {
  \bookOutputSuffix "tenor1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \highlightedVoice \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% tenor 2
\book {
  \bookOutputSuffix "tenor2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \highlightedVoice \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% bass 1
\book {
  \bookOutputSuffix "bass1"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \highlightedVoice \global \basIVoice }
      \new Voice = "basII" { \global \basIIVoice }
    >>
    \stafftovoice
  }
}

% bass 2
\book {
  \bookOutputSuffix "bass2"
  \score {
    \unfoldRepeats
    \new Staff <<
      \commonVoice
      \new Voice = "sopI" { \global \sopIVoice }
      \new Voice = "sopII" { \global \sopIIVoice }
      \new Voice = "altI" { \global \altIVoice }
      \new Voice = "altII" { \global \altIIVoice }
      \new Voice = "tenI" { \global \tenIVoice }
      \new Voice = "tenII" { \global \tenIIVoice }
      \new Voice = "basI" { \global \basIVoice }
      \new Voice = "basII" { \highlightedVoice \global \basIIVoice }
    >>
    \stafftovoice
  }
}