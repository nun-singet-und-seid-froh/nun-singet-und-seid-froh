%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this is standard version 1.0: SATTB

% common settings of all voices
global = {
  \key f \major
  \time 6/4 
  \autoBeamOff
}

% articulation, dynamics, fermata and breathing marks
sopIArt = { }

sopIIArt = { }

altArt = { }

tenIArt = { }

tenIIArt = { }

basArt = { }


% the tunes
sopIVoice = <<
  \sopIArt
  \relative c''
    {    
      c4\p\<( bes) c a4.\! g8 f4 |
      bes( c) a g4.\> f8 g4\! |
      a( b)\< c b( g) c\! |
      c2\mf b4\> c2 r4\!\p
      R1. |
      R1. |
      R1. |
      R1. |
      c4\f\< d e f f c\! |
      bes4. c8 bes[\> a] g2\! c4\p\< |
      % 10
      f,( g) a bes4.\!( c8) a4 |
      g4.\>( f8) e4 f2\!\p r4 |
      c'\ff\< d e f f c\! |
      bes4. c8\> bes[ a] g2 c4\!\p |
      f,\<( g) a bes4.\!( c8) a4 |
      g4.\>( f8) e4 f2\!\pp r4 |
      \bar"|."
    }
>>

sopIIVoice = <<
  \sopIIArt
  \relative c''
  {
    a4( g) a f4. e8 c4 |
    f4( g) f e4. d8 e4 |
    f( g) g g2 g4 |
    f( a) g8[ f] e2 r4 |
    R1. |
    R1. |
    R1. |
    R1. |
    a4 bes bes a bes c |
    f,4. f8 f4 e2 es4|
    % 10
    d4( e) fis g2 f4 |
    d2 c4 c2 r4 |
    g'4 g e d b' a |
    f4. f8 g[ f] e2 es4 |
    d4( es) a g2 f8[ e] |
    d2 c4 c2 r4
    \bar"|."
  }
>>
  
altVoice = <<
  \altArt
  \relative c'
    {
      f2 c4 f c a |
      d( e) f c g c |
      f4.( d8) e4 f2 e4 |
      d4.( f8) g4 c,2 r4 |
      R1. |
      R1. |
      R1. |
      R1. |
      f4 f g f f f |
      f4. e8 d4 e2 c4 |
      % 10
      d2 c4 d2 c4 |
      d( bes) c c2 r4 |
      e d g f f e |
      d4. d8 c4 c2 f4 |
      f( es) es d( c) c |
      d( bes) c8[ bes] a2 r4 |
      \bar"|."
  
      
    }
>>

tenIVoice = <<
  \tenIArt
  \relative c'
    {  
      R1. |
      R1. |
      R1. |
      R1. |
      c4( bes) c a4. g8 f4 |
      bes4( c) a g4. f8 g4 |
      a( b) c b( g) c |
      c2 b4 c2 r4 |
      c bes e a, d es |
      d4. c8 d4 g,2 f4
      % 10
      f( bes) c g( bes) c |
      bes4.( a8) g4 a2 r4 |
      c4 b bes a d c |
      f4.f8 c[ f] g2 f4|
      bes2 c4 bes( c) c |
      bes4.( a8) g4 f2 r4 |
      \bar"|."
      
      
    }
>>    

tenIIVoice = <<
  \tenIIArt
  \relative c'
    {  
      R1. |
      R1. |
      R1. |
      R1. |
      a4( g) f f4. e8 f4 |
      f( e) f e4. d8 e4 |
      f( g) g f( f) e |
      d2 f4 e2 r4 |
      c' bes e a, d es |
      d4. c8 d4 g,2 f4
      % 10
      f( bes) c g( bes) c |
      bes4.( a8) g4 a2 r4 |
      c4 b bes a d c |
      f4.f8 c[ f] g2 f4|
      bes2 c4 bes( c) c |
      bes4.( a8) g4 f2 r4 |
      \bar"|."
      
    }
>>    

basVoice = <<
  \basArt
  \relative c
    {  
      R1. |
      R1. |
      R1. |
      R1. |
      f2 a,4 d4. d8 d4 |
      g,2 a8[ bes] c4 g c |
      f2 e4 d2 a4 |
      f4.( a8) g4 c2 r4 |
      f4 bes g d bes a |
      bes4. bes8 g4 c2 a4 |
      % 10
      bes2 a4 g2 a4 |
      bes( g) c f2 r4 |
      c4 g' cis, d gis, a |
      bes d e8[ f] c2 a4 |
      bes4( g) fis g( e') f |
      bes,( g) c f,2 r4 |
      \bar"|."
      
    }
>>
 