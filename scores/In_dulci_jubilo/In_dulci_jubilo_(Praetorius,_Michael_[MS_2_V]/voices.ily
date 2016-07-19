%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSAATTBB/[SATB][SATB]/mensural/voices.ily

global = {
  \key f \major
  \time 3/2
  % \partial
  \dynamicUp
 % \hide Staff.BarLine
  %use
  %\once \undo \hide Staff.BarLine \bar"|" to create a bar that spans the systems
}

% the incipites
sopIincipit = {
  \clef "mensural-c1"
  \key f \major
  \time 3/2
}

altIincipit = {
  \clef "mensural-c2"
  \key f \major
  \time 3/2
}

tenIincipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
}

basIincipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
}

sopIIincipit = {
  \clef "mensural-c1"
  \key f \major
  \time 3/2
}

altIIincipit = {
  \clef "mensural-c2"
  \key f \major
  \time 3/2
}

tenIIincipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
}

basIIincipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
}

% the tunes

sopIVoice = \relative c' {
  f2 f f
  a1 bes2
  c1( d2
  c1) bes2 a4( g f2) f2
  a1 bes2
  c2( bes4 c d2
  c1) r2
  R1.
  R1.
  f,2 f f
  a1 bes2
  c2( d1
  c1.)
  R1.
  R1.
  r2 r c
  f,1 f2
  a1 bes2 
  c( d1
  c1.)
  R1.
  r2 r c 
  c4( bes a g a bes
  c2) g1
  r2 r c 
  c4( bes a g a bes
  c1) f,2 
  a1 bes2
  c( d1
  c1.)
  R1.*7
  c1 d2
  c1 bes2
  a( g a)
  f1.
  R1.
  R1.
  g1 a2
  g1 f2
  e2( d e)
  c1 r2
  c'1 d2
  c4( bes c a bes) bes
  a2 f1
  c'1 d2
  c4( bes c a bes) bes
  a2( g a)
  f1 f2
  g1 g2
  a1 g2
  f( g a)
  R1.
  R1.
  r2 r a
  c1 d2
  c1 bes2
  a( g a)
  g1 r2 
  R1.
  R1.
  R1.
  r2 r a
  c1 d2
  c1 bes2
  a( g a)
  f1.
  R1.
  R1.
  R1.
  r2 r a
  c4 d c2 bes
  a4( g a2) f
  R1.
  r2 r f 
  g4 a g2 f
  e4( d e2) c
  r r f
  c'4 d c bes a2
  f1.
  \time 2/2
  r4 g c2.
  d4 c bes
  a8([ g] a4) f2
  R1
  R1
  R1
  \time 3/2
  R1.
  d'1 d2
  g,1 c2
  f,1.
  R1.
  g1 g2
  a1 a2
  bes1.(
  c)
  R1.*4
  a1 a2
  g( f) g
  f1 r2
  R1.
  d'1 d2
  c( d c)
  bes1.
  R1.
  R1.
  a1 a2
  e( f) g
  \time 2/2
  f2 r4 bes2
    bes4 c2.
    c4 a4.( g16[ f]
  e8[ f] g4) r4 a8([ bes])
  c4 c c2.
    c4 a2\fermata \bar"|."|
    
  
  

}

altIVoice = \relative c' {
}

tenIVoice = \relative c' {
}

basIVoice = \relative c' {
}



sopIIVoice = \relative c'' {
}

altIIVoice = \relative c' {
}

tenIIVoice = \relative c' {
}

basIIVoice = \relative c' {
}
