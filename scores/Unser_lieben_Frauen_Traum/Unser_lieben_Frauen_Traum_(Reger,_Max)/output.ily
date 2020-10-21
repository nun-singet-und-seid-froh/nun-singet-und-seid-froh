%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 15.5)

\paper{
   page-count = 3
   system-count = 5
}

\layout {
  \context {
    \Staff
    \RemoveEmptyStaves
  }

  \context {
    \Score
    % Remove all-rest staves also in the first system
    \override VerticalAxisGroup.remove-first = ##t
    % If only one non-empty staff in a system exists, still print the starting bar
    % \override SystemStartBar.collapse-height = #1
  }
}

\midi {
   \tempo 4 = 104
}
