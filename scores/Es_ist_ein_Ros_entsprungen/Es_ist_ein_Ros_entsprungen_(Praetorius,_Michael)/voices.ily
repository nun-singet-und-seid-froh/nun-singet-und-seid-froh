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
  \time 4/4 
  \partial 2
  \autoBeamOff
  \hide Staff.BarLine
}

% articulation, dynamics, fermata and breathing marks
sopArt = { }

altArt = { }

tenArt = { }

basArt = { }

% the inciptes

sopIncipit = { }

altIncipit = { }

tenIncipit = { }

basIncipit = { }


% the tunes
sopVoice = <<
  \sopArt
  \relative c''
    {  
      \repeat volta 2{
      c2
      c4 c d c
      c2 a
      bes a4 g2
        f e4
      f2 \undo \hide Staff.BarLine \break  
      }
      
      r4 a\hide Staff.BarLine
      g e f d
      c2 r4 c'4
      c c d c
      c2 a
      bes a4 g2
      f2 e4
      f2 \undo \hide Staff.BarLine  \bar"|."
    }
>>

altVoice = <<
  \altArt
  \relative c''
    {
      \repeat volta 2 {
      a2
      a4 f f f
      e2 d
      d c d4. a8 c2
      c \undo \hide Staff.BarLine  
    }
    r4 f  \hide Staff.BarLine  
    d c c b 
    c8[\melisma d] e4\melismaEnd r4 e
    g f f f
    e2 d
    d f4 d
    e\melisma f g\melismaEnd c,
    c2 \undo \hide Staff.BarLine  
  }
>>

tenVoice = <<
  \tenArt
  \relative c'
    {
      \repeat volta 2 {
      c2 
      c4 a bes a
      g2 f
      f a4 c
      bes\melisma a2\melismaEnd g4
      a2\undo \hide Staff.BarLine  
      }
      r4 c4 \hide Staff.BarLine  
      bes a a g
      g2 r4 g
      g a bes a
      g2 fis
      g c4 bes
      a2 g
      a\undo \hide Staff.BarLine 
    }  
>>    

basVoice = <<
  \basArt
  \relative c
    {   
      \repeat volta 2 {
      f2
      f4 f bes f
      c2 d
      bes f'4 e
      d2 c
      f,\undo \hide Staff.BarLine 
      }   
      r4 f' \hide Staff.BarLine 
      g a f g
      c,2 r4 c
      e f bes, f'
      c2 d
      g, a4 bes
      c2 c
      f,\undo \hide Staff.BarLine 
    }
>>
