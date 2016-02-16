%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this is based on templates/SAM/modern/voices.ily

% common settings of all voices
global = {
  \key as \major
  \time 3/4
  %\partial 4
  %\autoBeamOff
  %\override DynamicLineSpanner.staff-padding = #3
}

% articulation, dynamics, fermata and breathing marks
sopArt = { }

altArt = { }

menArt = { }


% the tunes
sopVoice = <<
  \sopArt
  \relative c''
  {
  }
>>

altVoice = <<
  \altArt
  \relative c'
  {
  }
>>

menVoice = <<
  \menArt
  \relative c
  {
  }
>>

