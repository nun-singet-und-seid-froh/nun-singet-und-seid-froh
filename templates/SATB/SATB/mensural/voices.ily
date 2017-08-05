%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/SATB/mensural/voices.ily

% common settings of all voices
global = {
  \key f \major
  \time 3/2
  \partial 4
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

% the incipites

sopIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 3/2
}

altIncipit = {
  \clef "mensural-c2"
  \key f \major
  \time 3/2
}

tenIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
}


% the tunes
sopVoice = <<
  \sopArt
  \relative c'
  {
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
