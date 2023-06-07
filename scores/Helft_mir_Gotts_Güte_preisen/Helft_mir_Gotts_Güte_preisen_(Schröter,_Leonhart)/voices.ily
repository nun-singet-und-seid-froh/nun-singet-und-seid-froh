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
  \time 2/2
  \partial 4
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
  \hide Staff.BarLine
}

% the incipites

sopIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 2/2
  r1 r2 g'2
}

altIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 2/2
  r1 r2 d'2
}

tenIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 2/2
  r1 r2 g2
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 2/2
  r1 r2 g2
}




% the tunes
sopVoice = \relative c'
  {
    % 00
    g'4
    % 01
    g4. a8 bes4 bes
    a2 f4 f
    g g a a
    d,2 r4 g
    g4. a8 bes4 bes
    % 06
    a2 f4 f
    g g a a
    d,1
    R1
    r2 d'
    % 11
    c4 bes a g
    a2 r4 a
    bes c d bes
    c2 a4 c
    bes a g g
    % 16
    a2 f4 f
    d g g f
    g2 r4 a
    bes c d bes
    c2 a4 c
    % 21
    bes a g g
    a2 f4 f
    d g g f
    g1 \once \undo \hide Staff.BarLine \bar "|."
}

altVoice = \relative c' {
  % 00
  d4
  % 01
  d4. f8 f4 g
  e2 d4 d
  d g,8 g'4\melisma f16 e f8\melismaEnd f
  g2 r4 d
  d4. f8 f4 g
  e2 d4 d
  d g,8 g'4\melisma f16[ e] f8\melismaEnd f
  g4 g f2.
    e4 d c
  d f f4.\melisma g8
  a4\melismaEnd g f4.\melisma e16[ d]
  e4\melismaEnd e f f
  g g g g
  e2 f4 g
  g f d d
  f8.[\melisma e32 d] e4\melismaEnd d d
  f e d d
  d2 r4 f
  g g g g
  e2 f4 g
  g f d d
  f8.[\melisma e32 d] e4\melismaEnd d d
  f e d d
  b!1 \once \undo \hide Staff.BarLine \bar "|."
}

tenVoice = \relative c' {
  % 00
  g4
  % 01
  bes4. c8 d4 d
  c2 a4 a
  bes d c c
  b!2 r4 bes
  bes4. c8 d4 d
  cis2 a4 a
  bes d c c
  bes2. d4
  c4. bes8 a4 g
  a2 d
  f4 d c d4.\melisma
    c16[ bes] c4\melismaEnd d d
  d es d d
  c2 d4 es
  d d bes d8 d4\melisma
    c16[ bes] c4\melismaEnd a a
  bes g bes a
  g2 r4 d'
  d es d d
  c2 d4 es
  d d bes d8 d4\melisma
    c16[ bes] c4\melismaEnd a a
  bes g bes a
  g1 \once \undo \hide Staff.BarLine \bar "|."
}

basVoice =
\relative c' {
  % 00
  g4
  g4. f8 bes4 g
  a2 d,4 d
  g bes a a
  g2 r4 g
  g4. f8 bes4 g
  a2 d,4 d
  g bes a a
  g2 r4 bes
  a4. g8 f4 e
  d2 r4 bes
  f' g a bes
  a2 r4 d,
  g c, g' g
  a2 d,4 c
  g' d g bes
  a2 d,4 d
  bes c d d
  g2 r4 d
  g c, g' g
  a2 d,4 c
  g' d g bes
  a2 d,4 d
  bes c d d
  g,1 \once \undo \hide Staff.BarLine \bar "|."
}
