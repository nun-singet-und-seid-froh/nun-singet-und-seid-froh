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

teniArt = { }

teniiArt = { }

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

teniVoice = <<
  \teniArt
  \relative c'
    {  
    }
>>    

teniiVoice = <<
  \teniiArt
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
 