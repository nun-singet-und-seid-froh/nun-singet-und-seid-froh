%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/voices.ily

global = {
  \override Staff.BarLine.allow-span-bar = ##f
  \key bes \major
  \time 4/4
  \partial 4
  \override DynamicLineSpanner.staff-padding = #5
}

sopVoice = {
  \relative c''
    {\tempo "Mäßig bewegt."
      bes4\mf\< 
      d c\! bes f
      g\> a bes2\!
      a4\rest d\f\< d f!
      es d c\> bes
      c2. d4\mf\<
      bes bes\! es d
      c2\> bes4 f
      g\p\< a bes a\!
      g g\> f2\!
      a4\rest g\mf\< a bes
      c bes a a 
      g2.\f d'4\ff\< 
      f bes, es\! d
      \tempo "poco rit." c2\> bes4\!\fermata \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t 
    }
} 

altVoice = {
  \relative c''
    {
      g4
      bes g g f
      es es d2
      s4 fis g a
      g f g g 
      a2. bes8[ a]
      g4 f g8[ a] bes4
      bes4( a) f d
      e fis g f
      f e c2
      s4 bes d d 
      es? d es d8[ c]
      b2. g'4 
      a g g8[ a] bes4
      bes( a) f
    }
}

tenVoice = {
  \relative c'
    {
      d4 
      f es d bes
      bes c f,2
      s4 a bes c
      bes8[ c] d4 es d
      f2. f4
      es f es f
      g f8[ es] d4 a
      c c d c
      d c8[ bes] a2
      s4 g fis g
      fis g g fis
      d2. bes'?4
      c8[ d] es4 es f
      g4( f8[ es]) d4\fermata
    }
}

basVoice = {
  \relative c'
    {\autoBeamOff
      g4
      d es8[ f] g4 d
      es8[ d] c4 bes2
      c4\rest d g f?
      g8[ a] bes4 es, g
      f2. bes,4
      es d c d
      es( f) bes, d
      c8[ bes] a4 g a
      bes c << f2 f,2 >>
      c'4\rest es? d8[ c] bes4
      a bes c d
      g,2. g'4
      f es8[ d] c4 d
      es4( f) <f bes,>
    }
}
