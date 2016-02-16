%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSATTB/SSATTB/mensural/voices.ily

% common settings of all voices
global = {
  \key c \major
  \time 4/4 
  \partial 4 
  
   \hide Staff.BarLine 
  %use 
  %\once \undo \hide Staff.BarLine \bar"|" to create a bar that spans the systems
}

% articulation, dynamics, fermata and breathing marks
sopIArt = { }

sopIIArt = { }

altArt = { }

tenArt = { }

basIArt = { }

basIIArt = { }


% the tunes
sopIVoice = <<
  \sopIArt
  \relative c''
    {    
    }
>>

sopIIVoice = <<
  \sopIIArt
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

tenVoice = <<
  \tenArt
  \relative c'
    {  
    }
>>    

basIVoice = <<
  \basIArt
  \relative c'
    {  
    }
>>

basIIVoice = <<
  \basIIArt
  \relative c
    {     
    }
>>
 
