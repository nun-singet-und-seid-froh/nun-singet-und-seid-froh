%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/SATB/mensural/voices.ily

% common settings of all voices
global = {
  \key as \major
  \time 3/4
  \partial 4
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

%incipites

sopIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 3/2
  g'\breve g'1
}

altIncipit = {
  \clef "mensural-c2"
  \key f \major
  \time 3/2
  d'\breve d'1
}

tenIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
  bes\breve bes1
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
  g\breve g1
}

% articulation, dynamics, fermata and breathing marks
sopArt = {

}

altArt = \sopArt

tenArt = \sopArt

basArt = \sopArt


% the tunes
sopVoice = <<
  \sopArt
  \relative c'
  {
    \tempo "Andante."
    %{00%}
  }
>>

altVoice = <<
  \altArt
  \relative c'
  {
    %{00%}
  }
>>

tenVoice = <<
  \tenArt
  \relative c'
  {
    %{00%}
  }
>>

basVoice = <<
  \basArt
  \relative c
  {
    %{00%}
  }
>>
