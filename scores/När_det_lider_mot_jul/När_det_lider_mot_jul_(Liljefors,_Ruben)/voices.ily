%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/modern/voices.ily

% common settings of all voices
global = {
  \key bes \major
  \time 4/4
  \autoBeamOff
  \dynamicUp
  \override DynamicLineSpanner.staff-padding = #3
}

% articulation, dynamics, fermata and breathing marks
sopArt = {
  s4\pp_\markup{\italic {c. b. ch.}} s2.
  s2. s4\p
  s4\< s8 s8\! s4\> s8\! s8\<
  s4 s8\! s8\> s4.\! s8\p
  s1
  s2\< s4\! s4\mf
  s2 s4. s8\<
  s8 s8\! s8\> s8 s4.\! s8\p
  s1
  s2\> s8 s8\! s8\breathe s8\p
  s4\< s8 s8\! s4\> s8 s8\!
  s4\> s8 s8\! s4\p s4\mf
  s4. s8\> s4 s4\!
  s4\>^\markup{\italic{ ritard. }} s8 s8\! s4^\fermata s8\<\p^\markup{\italic{a tempo}} s8
  s4.\> s8 s4\! s8\< s8 
  s8 s4.\! s4 s4
  s2.\> s4\! \bar "||"\break

  s4\pp_\markup{\italic {c. b. ch.}} s2.
  s2. s4\p
  s4 s4 s4 s8 s8\<
  s8\! s8\> s4 s4\! s8 s8\p
  s1
  s2\> s8 s8\! s4\mf
  s2. s4\<
  s8\! s8\> s8 s8\! s4. s8\p
  s1
  s2.\> s16\! s8.\<
  s2\f\< s2\!
  s4 s8\< s8 s8 s4\! s8
  s1\>
  s4^\markup{\italic{ ritard. }} s8 s8\! s4^\fermata \bar "" \break s8\mf^\markup{\italic {a tempo}} s8
  s2 s4 s8\< s8
  s4 s4\! s4\f s4
  s1\>
  s4\pp_\markup{\italic{c. b. ch.}} s4 s2
  s1\bar"|."
}

altArt = \sopArt

tenArt = \sopArt

basArt = \sopArt


% the tunes
sopVoice = <<
  \sopArt
  \relative c''
  {
    \tempo "ruhig und ernst"
    
    \new Voice = "con bocca chiusa" {
      d4( c8[ a] bes4 g
      a2.) 
    } \oneVoice
    f4
    d' f,8 a c4 bes8 d
    es4 bes8 c d4. d8

    c4 a8 bes g4 a8 fis!
    g2. f4
    d' f,8 a c4 bes8 d
    es4 bes8 c d4. d8
    c4 a8 bes g4 a8 fis!
    g2.~g8 bes8

    g4 bes8 c es4 c8 bes

    a4 c8 es f4 d8[ c]
    bes4 a8 g a4 g8 f
    g4 f8 es f4 d8 f
    bes4.( g8) f4 a8[ bes]
    c2 bes4 a
    bes2. r4

    \new Voice = "con bocca chiusa" { 
      d4( c8[ a] bes4 g
      a2.) 
    } \oneVoice
    f4
    d' f,8 a c4 bes8 d
    es4 bes8 c d4. d8

    c4 a8 bes g4 a8 fis!
    g2. f4
    d' f,8 a c4 bes8 d
    es4 bes8 c d4. d8
    c4 a8 bes g4 a8 fis!
    g2.~g8 bes8

    es2. c8 bes
    a4 c8 es f4 d8 c
    bes4 a8[ g] a4 g8 f
    g4 f8 es8 f4 d8 f
    bes4. g8 f4 a8 bes
    c2 bes4 a
    bes1
    \new Voice = "con bocca chiusa" { 
      d4( c8[ a] bes4 g
      a2 bes) 
    } \oneVoice
  }
>>

altVoice = <<
  \altArt
  \relative c'
  {
    \new Voice = "con bocc chiusa"{
      d4( es8[ f] d4 es
      c2.)
    } \oneVoice
    f4 
    d d8 d4 d8 d8 g
    g4 g8 ges! f4. d8
    es4 f8 d8 es8[ d] cis! c!
    bes4 c8 d e!4 es 
    d4 d8 d d4 d8 g
    g4 g8 ges! f4. d8
    es4 f8 d es[ d] cis! c!
    bes4 c8 es d4( es8) f
    es4 es8 es es4 g8 g
    f4 f8 g a4 f 
    d2 d4 d
    c2 c4 d8 f
    es2 f4 es8[ d]
    c2 d4 es
    f2. r4

    \new Voice = "con bocc chiusa"{
      d4( es8[ f] d4 es
      c2.)
    } \oneVoice
    f4 
    d d8 d4 d8 d8 g
    g4 g8 ges! f4. d8
    es4 f8 d8 es8[ d] cis! c!
    bes4 c8 d e!4 es 
    d4 d8 d d4 d8 g
    g4 g8 ges! f4. d8
    es4 f8 d es[ d] cis! c!
    bes4 c8 es d4( es8) f
    es2( g4) g8 g
    f4 f8 g a4 f8 f
    d2 d4 d
    c2 c4 d8 f
    es4. es8 f4 es8 d 
    c2 d4 es
    f1

    \new Voice = "con bocc chiusa"{
      d4( es8[ f] d4 es
      c2 d)
    } \oneVoice
  }
>>

tenVoice = <<
  \tenArt
  \relative c
  {
    \new Voice = "con bocca chiusa" {
      f4( g8[ a] f4 g 
      f2.)
    } \oneVoice
    f4 
    f f8 fis! a4 g8 bes
    bes4 bes8 bes bes4. f8
    g4 a8 f8 g4 g8 a
    g2. a4
    f4 f8 fis! a4 g8 bes
    bes4 bes8 bes8 bes4. f8
    g4 a8 f8 g4 g8 a
    g2.( g8) f
    bes4 g8 g g4 c8 es
    c4 a8 c d4 a
    bes2 bes4 bes
    g2 f4 f8 bes
    bes2 bes4 f4 
    g2 bes4 c
    d2. r4

    \new Voice = "con bocca chiusa" {
      f,4( g8[ a] f4 g 
      f2.)
    } \oneVoice
    f4 
    f f8 fis! a4 g8 bes
    bes4 bes8 bes bes4. f8
    g4 a8 f8 g4 g8 a
    g2. a4
    f4 f8 fis! a4 g8 bes
    bes4 bes8 bes8 bes4. f8
    g4 a8 f8 g4 g8 a
    g2.( g8) bes
    g4 bes8[ c] es4 c8 es
    c4 a8 c d4 a8 a
    bes2 bes4 bes
    g2 f4 f8 bes
    bes4. bes8 bes4 f8 f 
    g2 bes4 c
    d1

    \new Voice = "con bocca chiusa" {
      f,4( g8[ a] f4 g 
      f2 f2)
    } \oneVoice

  }
>>

basVoice = <<
  \basArt
  \relative c
  {
    \new Voice = "con bocca chiusa" {
      bes4( c8 d bes4 c
      f,2.)
    } \oneVoice
    f'4 
    bes, bes8 bes g4 g8 g'
    es4 es8 es bes4. bes8
    c4 d8 bes8 c4 a8 d
    g,4 a8 bes c4 f
    bes, bes8 bes g4 g8 g'
    es4 es8 es bes4. bes8
    c4 d8 bes c4 a8 d
    g,4 a8 c bes4( c8) d
    es4 es8 d8 c4 es8 c
    f4 f8 es8 d4 d
    g4 f8 es8 f4 es8 d
    es4 d8 c a4 bes8 d
    g4.( es8) d4 c8[ bes]
    es2 f4 f
    bes,2. r4

    \new Voice = "con bocca chiusa" {
      bes4( c8 d bes4 c
      f,2.)
    } \oneVoice
    f'4 
    bes, bes8 bes g4 g8 g'
    es4 es8 es bes4. bes8
    c4 d8 bes8 c4 a8 d
    g,4 a8 bes c4 f
    bes, bes8 bes g4 g8 g'
    es4 es8 es bes4. bes8
    c4 d8 bes c4 a8 d

    g,4 a8 c bes4( c8) d
    es2( c4) es8 c
    f4 f8 es d4 d8 d
    g4 f8[ es] f4 es8 d
    es4 d8 c a4 bes8 d
    g4. es8 d4 c8 bes 
    es2 f4 f
    bes,1

    \new Voice = "con bocca chiusa" {
      bes4( c8 d bes4 c
      f,2 bes)
    } \oneVoice

  }
>>
