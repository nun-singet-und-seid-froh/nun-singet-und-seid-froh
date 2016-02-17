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
  \time 4/2 
  
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

%incipites

sopIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 4/2
  
}

altIncipit = {
  \clef "mensural-c2"
  \key f \major
  \time 4/2
  
}

tenIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 4/2
  
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 4/2
}

% articulation, dynamics, fermata and breathing marks
sopArt = {
}

altArt = \sopArt

tenArt = \sopArt

basArt = \sopArt


% the tunes
sopVoice = {
  \relative c''
    {
      g2 g f bes
      a4( g) a2 g1
      g2 bes c2. bes4
      c2 d bes1
      bes2 c d bes
      c bes4( a) g1
      g2 g f bes
      a4( g) fis2 g1 \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
} 

altVoice = {
  \relative c'
    { 
      d2 e d f
      f4( d) fis2 d1
      d2 d f2. d4
      f2 f des1
      es2 es f f
      f bes,4( d) d1
      es2 d d f
      es d d1
    }
}


tenVoice = {
  \relative c'
    { 
      g2 c a d
      c4( bes) d2 bes1
      bes2 bes a2. bes4
      a2 bes g1
      
      g2 g bes d
      a d4( a) bes1
      c2 bes a d
      c a b1
    }
}

basVoice = {
  \relative c'
    {
      g2 c, d bes
      f'4( g)  d2 g,1
      g'2 g f2. g4
      f2 bes, es1
      es2 c bes bes'
      f e4( fis) e1
      c2 e d bes
      c d g,1
    }
}