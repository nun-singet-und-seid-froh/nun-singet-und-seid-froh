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
  \time 3/2
  \partial 2
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

%incipites

sopIncipit = {
  \clef "mensural-c1"
  \key f \major
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/2
  r1 r f'
}

altIncipit = {
  \clef "mensural-c3"
  \key f \major
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/2
  r1 r c'
}

tenIncipit = {
  \clef "mensural-c4"
  \key f \major
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/2
  r1 r a
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/2
  r1 r f
}

% articulation, dynamics, fermata and breathing marks
sopArt = {
  s2
  s1.*30
  s1 \once \undo \hide Staff.BarLine \bar "|."
}

altArt = \sopArt

tenArt = \sopArt

basArt = \sopArt

% the tunes
sopVoice = <<
  \sopArt
  \relative c' {
    f2 |
    f1 f2 |
    a1 bes2
    c1\melisma d2
    c1\melismaEnd c2
    f,1 f2
    a1 bes2
    c1\melisma d2
    c1\melismaEnd r2
    c1 d2
    c1 bes2
    a1.
    fis1 f?2
    g1 g2
    a1 g2
    fis1\melisma g2
    a1\melismaEnd a2
    c1 d2
    c1 bes2
    a1.
    fis1 f!2
    g1 g2
    a1 g2
    fis1\melisma g2
    a1\melismaEnd r2
    d,1 d2
    e1 e2
    \[ f1.\melisma
    c'1\melismaEnd \] r2
    a1 a2
    \[ g2\melisma f\melismaEnd \] e2
    f1
  }
>>

altVoice = <<
  \altArt
  \relative c' {
    % change to modern clef before publication
    c2
    c1 c2
    c1 f2
    e1\melisma d2
    e1\melismaEnd f2
    c1 c2
    f1 f2
    e1\melisma d2
    e1\melismaEnd r2
    f1 f2
    e1 d2
    cis1.
    d1 d2
    e1 e2
    f1 e2
    d1\melisma e2
    f1\melismaEnd f2
    f1 f2
    \[ f2\melisma c\melismaEnd \] g'
    e1.
    d1 d2
    d1 e2
    f1 d2
    d1\melisma e2
    f1\melismaEnd r2
    f,1 bes2
    g1 g2
    \[ d'1.\melisma
    e1\melismaEnd \] r2
    f1 e2
    d1 c2
    c1
  }
>>

tenVoice = <<
  \tenArt
  \relative c'
  {
    a2
    a1 a2
    a1 f2
    g2.\melisma a4 b2
    c1\melismaEnd a2
    a1 a2
    c1 d2
    g,2.\melisma a4 b2
    c1\melismaEnd r2
    a1 bes2
    g1 g2
    e1.
    d1 a'2
    c1 c2
    c1 c2
    a1\melisma b2
    c1\melismaEnd c2
    a1 bes2
    a1 d2
    cis1.
    d2 a1
    b c2
    c1 bes2
    a1\melisma b2
    c1\melismaEnd r2
    bes1 f2
    c'1 c2
    a2.\melisma g4 f2
    g1\melismaEnd r2
    d'1 c2
    bes2.\melisma a4\melismaEnd g2
    f1
  }
>>

basVoice = <<
  \basArt
  \relative c
  {
    f2
    f1 f2
    f1 d2
    c1\melisma g'2
    c,1\melismaEnd f2
    f1 f2
    f1 d2
    c1\melisma g'2
    c,1\melismaEnd r2
    f1 bes,2
    c1 g2
    a1.
    d1 d2
    c1 c2
    f1 c2
    d1\melisma g2
    f1\melismaEnd f2
    f1 bes,2
    f'1 g2
    a1.
    d,1 d2
    g1 c,2
    f1 g2
    d1\melisma g2
    f1\melismaEnd r2
    bes,1 bes2
    c1 c2
    \[ d1.\melisma
    c1\melismaEnd \] r2
    d1 a2
    bes1 c2
    f,1
  }
>>
