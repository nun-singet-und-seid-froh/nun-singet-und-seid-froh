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
  \partial 1
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
  \hide Staff.BarLine
}

%incipites

sopIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 4/2
  g'\breve g'1
}

altIncipit = {
  \clef "mensural-c2"
  \key f \major
  \time 4/2
  d'\breve d'1
}

tenIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 4/2
  bes\breve bes1
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 4/2
  g\breve g1
}

% articulation, dynamics, fermata and breathing marks
sopArt = {
  s1
  s1*16
  \undo \hide Staff.BarLine \bar "|."
}

altArt = \sopArt

tenArt = \sopArt

basArt = \sopArt


% the tunes
sopVoice = <<
  \sopArt
  \relative c''
  {
    %{01%}
    g4.( a8 bes4) c
    a bes2( a8[ g] a4) d,8 g4( fis16[ e] fis4)
    g bes4.( a16[ g] f4) g g2 f4
    a g a g a2. bes4
    bes8([ c] d2) bes g4 g( a)
    f2. bes4( a g2) fis4
    g bes4.( a8[ g f]) es4 d d'4.( c16[ bes]
    a4) bes2( a8[ g] f4 g2) fis4
    g1
  }
>>

altVoice = <<
  \altArt
  \relative c'
  {
    %{01%}
    r4 d2 es4
    d4 d4.( e8[ f g] f4) d d2
    bes4 d4.( c8 d4) d es2 d4
    f4 e f d f2. g4
    d g f g2 g4 e f
    bes,4.( c8[ d e] f2) d4 es d
    bes d2 bes4 c bes4.( c8 d4)
    d2. d4 c d es d
    b1
  }
>>

tenVoice = <<
  \tenArt
  \relative c'
  {
    %{01%}
    g2 g
    f bes a4( g) a2
    g r g bes
    c2. bes4 c2 d
    bes r bes c
    d bes4( d) c( bes) a2
    g r g g
    f bes a4( g) a2
    g1

  }
>>

basVoice = <<
  \basArt
  \relative c'
  {
    %{01%}
    r4 g2 c,4
    d bes4.( c8[ d e] f4) g d2
    g,4 g'4.( a8 bes4) bes es, es bes
    f' c f  g f4.( e8 d4) g4
    g4.( a8 bes4) es,2 es4 c f
    r bes,2 bes4 f' g c, d
    g, g'4.( f8[ es d] c4) g4.( a8[ bes c])
    d4 bes4.( c8[ d e] f4) bes,( c) d
    g,1
  }
>>
