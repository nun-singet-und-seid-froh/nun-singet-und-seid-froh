%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this is standard version 1.0: SATTB

% common settings of all voices
global = {
\override Staff.BarLine.allow-span-bar = ##f
  \key c \major
  \time 4/4 
  \partial 4 
}

% articulation, dynamics, fermata and breathing marks
sopArt = { }

altArt = { }

tenIArt = { }

tenIIArt = { }

basArt = { }


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

tenIVoice = <<
  \tenIArt
  \relative c'
    {  
    }
>>    

tenIIVoice = <<
  \tenIIArt
  \relative c'
    {  
    }
>>

basVoice = <<
  \basArt
  \relative c
    {     
    }
>>
 