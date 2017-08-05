%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSAATTBB/[SATB][SATB]/mensural/voices.ily

global = {
  \key f \major
  \time 3/2
  \partial 2
  \dynamicUp
  \hide Staff.BarLine
  %use
  %\once \undo \hide Staff.BarLine \bar"|" to create a bar that spans the systems
}

% the incipites
sopIincipit = {
  \clef "mensural-c1"
  \key f \major
  \time 3/2
}

altIincipit = {
  \clef "mensural-c2"
  \key f \major
  \time 3/2
}

tenIincipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
}

basIincipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
}

sopIIincipit = {
  \clef "mensural-c1"
  \key f \major
  \time 3/2
}

altIIincipit = {
  \clef "mensural-c2"
  \key f \major
  \time 3/2
}

tenIIincipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
}

basIIincipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
}

% the tunes
sopIVoice = \relative c' {
}

altIVoice = \relative c' {
}

tenIVoice = \relative c' {
}

basIVoice = \relative c' {
}



sopIIVoice = \relative c'' {
}

altIIVoice = \relative c' {
}

tenIIVoice = \relative c' {
}

basIIVoice = \relative c' {
}
