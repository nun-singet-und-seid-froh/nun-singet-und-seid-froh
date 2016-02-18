%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/voices.ily

% common settings of all voices
global = {
  \key f \major
  \time 8/2 
  
  \dynamicUp
  \autoBeamOff
}

% articulation, dynamics, fermata and breathing marks
sopArt = {
}

altArt = {
}

tenArt = {
}

basArt = {
}


% the tunes
sopVoice = <<
  \sopArt
  \relative c''
    {  
      d2 c a d c4 (bes) a8 (g fis4) g1
      d2 g a g a a g1
      g2 a bes g4 g2 (a4 g4) fis4 g1
      s2 g2 bes a d, e8 (f g2 fis8 e fis?4) fis g\longa \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
>>

altVoice = <<
  \altArt
  \relative c'
    {
      d2 es d2. f2 d4 d2 d1
      bes2 d f d f f d1
      d2 f f es es d d1
      bes'2\rest e, d2. e4 f2 c2 d1
      b\longa 
    }
>>

tenVoice = <<
  \tenArt
  \relative c'
    {  
      g2 g f bes a4 (g4) a2 g1
      g2 bes c bes c d bes1
      bes2 c d bes c (bes4) a4 g1
      s2 g g f bes a4 (g) a1
      g\longa 
      
    }
>>    

basVoice = <<
  \basArt
  \relative c'
    {   
      g,2 c d bes f4 (g) d'2 g,1
      g'2 g f g f d g1
      g2 f bes,2 es2 c2 d2 g,1
      d'2\rest c2 g2 d'2 bes2 c8 (d8 es4) d1
      g,\longa
    }
>>
 