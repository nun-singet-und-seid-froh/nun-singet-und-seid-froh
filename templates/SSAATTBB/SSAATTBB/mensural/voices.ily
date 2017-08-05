%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSAATTBB/SSAATTBB/mensural/voices.ily

% common settings of all voices
global = {
  \key f \major
  \time 3/4
  \partial 4
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

%incipites

sopIIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 3/2
  g'\breve g'1
}

sopIIIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 3/2
  g'\breve g'1
}

altIIncipit = {
  \clef "mensural-c2"
  \key f \major
  \time 3/2
  d'\breve d'1
}

altIIIncipit = {
  \clef "mensural-c2"
  \key f \major
  \time 3/2
  d'\breve d'1
}

tenIIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
  bes\breve bes1
}

tenIIIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
  bes\breve bes1
}

basIIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
  g\breve g1
}

basIIIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
  g\breve g1
}

% articulation, dynamics, fermata and breathing marks
sopIArt = {

}

sopIIArt = \sopIArt

altIArt = \sopIArt

altIIArt = \sopIArt

tenIArt = \sopIArt

tenIIArt = \sopIArt

basIArt = \sopIArt

basIIArt = \sopIArt

% the tunes
sopIVoice = <<
  \sopIArt
  \relative c' {
    %{00%}
  }
>>

sopIIVoice = <<
  \sopIIArt
  \relative c' {
    %{00%}
  }
>>

altIVoice = <<
  \altIArt
  \relative c' {
    %{00%}
  }
>>

altIIVoice = <<
  \altIIArt
  \relative c' {
    %{00%}
  }
>>

tenIVoice = <<
  \tenIArt
  \relative c' {
    %{00%}
  }
>>

tenIIVoice = <<
  \tenIIArt
  \relative c' {
    %{00%}
  }
>>

basIVoice = <<
  \basIArt
  \relative c {
    %{00%}
  }
>>

basIIVoice = <<
  \basIIArt
  \relative c {
    %{00%}
  }
>>
