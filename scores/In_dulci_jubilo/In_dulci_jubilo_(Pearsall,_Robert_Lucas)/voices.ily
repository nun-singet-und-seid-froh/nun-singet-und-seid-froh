%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/modern/voices.ily

% common settings of all voices
globalOne = {
  \key f \major
  \time 3/2
  \partial 2
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
  \override Staff.Hairpin #'minimum-length = #6
}

% articulation, dynamics, fermata and breathing marks
sopOneArt = {
  \repeat volta 2 {
    s2\p |
    s1.|
    s1. |
    s1\< s2 |
    s1\! s2^\markup{ \italic dim. } |
    s1. |
    s |
    s1.\< |
    s1.\!\fermata |
    s1\p s2 |
    s1. |
    s |
    s |
    s |
    s |
    s1\< s2 |
    s1 s2\!^\markup{ \italic cresc. } |
    s1. |
    s |
    s^\markup{ \italic dim. } |
    s |
    s |
    s |
    s1\< s2 |
    s1.\! |
    s1\f s2 |
    s1. |
    s\< |
    s\! |
    s1^\markup{ \italic dim. } s2 |
    s1. |
    s1 
  }
}

altOneArt = \sopOneArt

tenOneArt = \sopOneArt

basOneArt = \sopOneArt


% the tunes
sopOneVoice = <<
  \sopOneArt
  \relative c'
  {
    f2 |
    f1 f2 |
    a1 bes2 |
    c1( d2 |
    c1) c2 |
    f,1 f2 |
    a1 bes2 |
    c1( d2 |
    c1.) |
    c1 d2 |
    c1 bes2 |
    a1.( |
    f1) f2 |
    g1 g2 |
    a1 g2 |
    f1( g2 |
    a1) a2 |
    c1 d2 |
    c1 bes2 |
    a1. |
    f1 f2 |
    g1 g2 |
    a1 g2 |
    f1( g2 |
    a1.) |
    d,1 d2 |
    e1 e2 |
    f1.( |
    c') |
    a1 bes2 |
    g1 g2 |
    f1 
  }
>>

altOneVoice = <<
  \altOneArt
  \relative c'
  {
    c2
    d1 c2
    f2.( e4) d2
    c1( f2
    e1) f2
    d1 c2
    f2.( e4) d2
    c1( f2
    e1.)
    f1 f2
    e1 g2
    c,1.(
    f1) f2
    f1 f2 
    f1 e2
    f1.~
    f1 f2
    f1 f2
    e1 g2
    c,1.
    f1 f2
    f1 f2
    f1 e2
    f1.~
    f
    d1 d2
    d1 cis2
    d1.(
    e)
    <c f>1 f2
    f1 e2
    f1
  }
>>

tenOneVoice = <<
  \tenOneArt
  \relative c'
  {
     a2
     bes1 a2
     c1 d2
     a1( bes2
     g1) a2
     bes1 a2
     c1 d2
     a1( bes2
     g1.)
     c1 bes2
     g1 e2
     f1.(
     a1) a2
     d1 d2
     c2.( d4)
     bes2
     a1( bes2
     c1) d2
     c1 bes2
     g1 e2
     f1.
     a1 a2
     d1 d2
     c2.( d4)
     bes2
     a1( bes2
     c1.)
     <d a>1 << \voiceOne { a2 } \new Voice { \voiceTwo f2 }>> \oneVoice
     g1 g2
     a1( bes2
     g1.)
     f1 bes2
     d1 c2
     a1
  }
>>

basOneVoice = <<
  \basOneArt
  \relative c
  {
    f2
    f1 f2
    f1 f2
    f1.~
    f1 f2
    f1 f2
    f1 f2
    f1.(
    c)
    a1 bes2
    c1 c2
    f1.(
    d1) d2
    bes1 bes2
    c1 c2
    f1.~
    f1 d2
    a1 bes2
    c1 c2
    f1.
    d1 d2
    bes1 bes2
    c1 c2
    f1.~
    f
    f1 f2
    e1 e2
    d1.(
    c)
    f1 d2
    bes1 c2
    <f, f'>1 
      
  }
>>
