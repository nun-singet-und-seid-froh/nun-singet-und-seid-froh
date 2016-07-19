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
  \time 3/2
  r1 r f'
}

altIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 3/2
  r2 r c'
}

tenIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
  bes\breve bes1
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
  g\breve g1
}

% articulation, dynamics, fermata and breathing marks
sopArt = {

}

altArt = \sopArt

tenArt = \sopArt

basArt = \sopArt

% the tunes
sopVoice = <<
  \sopArt
   
  \relative c'
  {
    % change to modern clef before publication
    \clef "mensural-c1"
    f2 |
    f1 f2 |
    a1 bes2
    c1\melisma d2
    c1\melismaEnd c2
    f,1 f2
    a1 bes2
    c1\melisma d2
    c1\melismaEnd
    c1 d2
    c1 bes2
    a1 fis1
    f!2 g1 g2 a1 g2 fis1\melisma g2 a1\melismaEnd a2 c1 d2 c1 bes2 a1 fis1 f!2 g1 g2 a1 g2 fis1\melisma g2 a1\melismaEnd d,1 d2 e1 e2 f\breve\melisma c'1\melismaEnd a1 a2 g2^\markup{"?"}\melisma f1\melismaEnd e2 f\breve 
    \bar"|." 
  }
>>

altVoice = 
  %\altArt
  \relative c'
  {
    % change to modern clef before publication
    c2
    c1 c2
    c1 f2
    e1\melisma d2 
    e1\melismaEnd f2
    c1 c2
    f1 f2 e1\melisma d2 e1\melismaEnd
    f1 f2
    e1 d2
    cis1 d1 
       d2 e1 e2 
    f1 e2 
    d1\melisma e2
    f1\melismaEnd f2
    f1 f2
    c1 g'2 
    e1 d1 d2 d1
    e2 
    f1
    d2 d1\melisma e2 f1\melismaEnd
    f,1 bes2
    g1 g2

  }

tenVoice = <<
  \tenArt
  \relative c'
  {
   R2
   
  }
>>

basVoice = <<
  \basArt
  \relative c
  {
    R2
  }
>>
