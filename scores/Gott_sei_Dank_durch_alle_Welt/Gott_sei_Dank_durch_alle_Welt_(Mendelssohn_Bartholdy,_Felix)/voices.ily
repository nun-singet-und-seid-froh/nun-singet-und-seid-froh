%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/voices.ily

% common settings of all voices
global = {
  %\override Staff.BarLine.allow-span-bar = ##f
  \key g \major
  \time 4/4
  \partial 2
}

sopVoice = \relative c' {
  \tempo "Allegro moderato."
  d4 g
  g4. fis8 g4 b
  b( a) d d
  d4. c8 b4 a
  b2 d,4 g
  g4. fis8 g4 b
  b( a) d a
  a4. fis8 fis4 e
  d2  d'4 d
  d g, c b
  b( a) d d
  d g, c b
  a2 e'4 e
  e d c b
  c2 a4 b8( c)
  d4 g, g a
  b2 e4. e8
  e4 d c b
  c2 a4 b8( c)
  d4. g,8 g4 a
  g2 \bar"|."
}

altVoice = \relative c' {
  d4 d
  d4. d8 d4 g
  g( fis) g fis
  e4. e8 d4 d
  d2 d4 d
  d4. d8 b4 d
  e2 d4 e
  fis4. d8 d4 cis
  d2 d4 d
  d g a g
  g( fis) d d
  d g a g
  fis2 g4 g
  e e e e
  e2 fis4 fis
  g d d fis
  g2 g4. g8
  e4 e e e
  e2 fis4 fis
  g4. g8 g4 fis
  d2
}

tenVoice = \relative c' {
  b4 b
  b4. a8 g4 d'
  d2 g,4 g
  g4. a8 b4 c
  b2 b4 b
  b4. a8 g4 g
  g2 fis4 a
  a4. a8  b4 a8( g)
  fis2 d'4 d
  d d d d
  d2 d4 d
  d d d d
  d2 e4 e
  c b a gis
  a2 a4 d
  d b b d
  d2 e4. e8
  c4 d e b
  a2 a4 d
  d4. b8 b4 c
  b2
}

basVoice = \relative c' {
  g4 g
  g4. d8 b4 g
  d'2 b4 b
  c4. c8 d4 d |
  g,2 g'4 g |
  g4. d8 e4 d |
  cis4( a) b cis |
  d4. fis8 g4 a8( a,)
  d2 d'4 d
  d b fis g
  d2 d'4 d
  d b fis g
  d2 c4 c
  c c c e
  a,2 d4 c
  b4 g d' d
  g2 c4. c8
  c4 b a gis
  a2 d,4 c
  b g d' d
  <g g,>2
}