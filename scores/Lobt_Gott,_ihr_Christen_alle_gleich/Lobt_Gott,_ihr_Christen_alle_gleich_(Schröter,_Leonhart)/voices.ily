%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSATTB/SSATTB/mensural/voices.ily

% common settings of all voices
global = {
  \key f \major
  \time 4/2 
  \partial 1
  
   \hide Staff.BarLine 
  %use 
  %\once \undo \hide Staff.BarLine \bar"|" to create a bar that spans the systems
}

sopIIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 2/2
  r2 f'
}

sopIIIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 2/2
  c'1
}

altIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 2/2
  f'1
}

tenIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 2/2
  r\longa r\longa r2 f2
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 2/2
  r\longa r\longa r2 f,2
}

% articulation, dynamics, fermata and breathing marks
sopIArt = { }

sopIIArt = { }

altArt = { }

tenArt = { }

basArt = { }


% the tunes
sopIVoice = <<
  \sopIArt
  \relative c'
    {
      r2 f2 |
      c' c c c |
      d c a a |
      bes c d d |
      c1 r2 a |
      a a g g |
      g g a a |
      g c b b |
      c1 r2 c |
      c c c a |
      c bes4\melisma a\melismaEnd g2 c |
      a f g g |
      f1 r2 a |
      a a  c c |
      c d b c |
      d d g, g |
      a1 c2 a\melisma |
      f2. g4\melismaEnd a2 a2.\melisma
       g4 a bes c2\melismaEnd g |
      a\breve \once \undo \hide Staff.BarLine \bar "|."
    }
>>

sopIIVoice = <<
  \sopIIArt
  \relative c''
    {
      a1 |
      a2 a g a |
      bes g c d |
      d g, a bes |
      c1 r2 c |
      c c c c |
      b c c d |
      d e d g, |
      g1 r2 a |
      a a g f |
      e d e e |
      f f d e |
      f1 r2 c' |
      c c a a |
      g2. f4 g2 e |
      f f e e |
      f c' a f |
      a bes c c |
      f,2. f4 e2 e |
      f\breve \once \undo \hide Staff.BarLine \bar "|."
    }
>>

altVoice = <<
  \altArt
  \relative c'
    {
      f1 |
      f2 f e f |
      d e f f | 
      g e f g |
      c,1 r2 f |
      f f e e |
      d e f f |
      d g g g |
      e1 r2 f |
      f f c f, |
      a bes c c |
      d d bes c |
      f,1 r2 f' |
      f f e e |
      e d d a |
      f a c c |
      c f f c |
      d d f f, |
      c' c c c |
      c\breve \once \undo \hide Staff.BarLine \bar "|."
    }
>>

tenVoice = <<
  \tenArt
  \relative c
    {
      r1 |
      R\breve |
      R\breve |
      R\breve |
      r1. f2 |
      c' c c c |
      d c a a |
      bes c d d |
      c1 r1 |
      R\breve |
      R\breve |
      R\breve |
      r1. c2 |
      c c c a |
      c bes4\melisma a\melismaEnd g2 c |
      a f g a |
      f\breve. 
       r2 c' |
      a f g g |
      f\breve \once \undo \hide Staff.BarLine \bar "|."
    }
>>    

basVoice = <<
  \basArt
  \relative c
    {
      r1 |
      R\breve |
      R\breve |
      R\breve |
      r1. f2 |
      f f c c |
      g' c, f d |
      g c, g' g |
      c,1 r1 |
      R\breve |
      R\breve |
      R\breve |
      r1. f2 |
      f f a4\melisma bes\melismaEnd c2 |
      c, g'4\melisma d\melismaEnd g,2 a |
      d d c c |
      f1 r2 f |
      d bes f'4\melisma g a g |
      f2\melismaEnd c f\breve. \once \undo \hide Staff.BarLine \bar "|."
    }
>>

 
