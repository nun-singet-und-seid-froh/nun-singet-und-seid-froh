% this is standard version 1.0: SATTB

% common settings of all voices
global = {
\override Staff.BarLine.allow-span-bar = ##f
  \key c \major
  \time 4/4 
  \partial 4 
}

% articulation, dynamics, fermata and breathing marks
sopiArt = { }

sopiiArt = { }

altArt = { }

tenArt = { }

basiArt = { }

basiiArt = { }


% the tunes
sopiVoice = <<
  \sopiArt
  \relative c''
    {    
    }
>>

sopiiVoice = <<
  \sopiiArt
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

basiVoice = <<
  \basiArt
  \relative c'
    {  
    }
>>

basiiVoice = <<
  \basiiArt
  \relative c
    {     
    }
>>
 