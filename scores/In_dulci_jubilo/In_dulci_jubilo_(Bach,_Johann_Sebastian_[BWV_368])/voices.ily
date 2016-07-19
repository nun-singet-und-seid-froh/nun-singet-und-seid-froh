%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/voices.ily

% common settings of all voices
global = {
  \key f \major
  \time 3/4
  \partial 4
  \dynamicUp
  \autoBeamOff
  \phrasingSlurDashed
}

% articulation, dynamics, fermata and breathing marks
sopArt = {
}

altArt = {
}

tenArt = {
}

basArt = {
}


% the tunes
sopVoice = <<
  \sopArt
  \relative c'
  {
    f4 |
    f2 f4 |
    a2 bes4
    c2( d4
    c2)\fermata c4
    f,2 f4
    a2 bes4
    c2( d4
    c2.\fermata)\break
    c2 d4
    c2 bes4
    a4.( bes8[ a g])
    f2\fermata f4
    g2 g4
    a2 g4
    f2( g4
    a2\fermata)\( a4\)

    c2 d4
    c2 bes4
    a4.( bes8[ a g])
    f2\fermata f4
    g2 g4
    a2 g4
    f2( g4
    a2.\fermata)

    d,2 d4
    e2 e4
    f8([ e f g a bes]
    c2.)\fermata
    a2 a4
    g2 g4
    f2.~
    f2.\fermata\bar"|."
  }
>>

altVoice = <<
  \altArt
  \relative c'
  {
    c4
    d2 d4
    e2 e4
    f2.~
    f2 f4
    f4( e) d
    c2 d4
    c( e g
    e2.)

    f2 f4
    e( f) g
    cis,( d e)
    a,2 f'4
    f( e8[ d]) e4
    f2 e4
    f4.( g8[ f e]
    f2)\( f4\)

    f2 f4
    g( f) g
    g( f e)
    d2 f4
    f( e8[ d]) e4
    f2 e4
    e( a, d
    cis2.)

    d2 d4
    d( c!8[ d]) e4
    e( d2
    c2.)
    c4( f8[ e]) f4
    f2 e4
    f8([ es d c d bes]
    c2.)
  }
>>

tenVoice = <<
  \tenArt
  \relative c'
  {
    a4
    a2 bes4
    c2 bes4
    a2( bes4
    a2)\fermata a4
    a2 bes4
    a( g) f
    g( c bes
    g2.)\fermata

    a2 bes4
    g2 e'4
    e( d cis)
    a2\fermata c!4
    d( bes) c
    c2 c4
    c( a c~
    c2)\(\fermata c4\)
    a2 bes4
    g2 e'4
    e( d cis)
    a2\fermata c4
    d( bes) c
    c2 c4
    a2( bes4
    e,2.)\fermata

    r8 f([ g a]) bes([ a])
    g4( a8[ bes]) c([ bes])
    a4.( g8[ f d]
    g2.) \fermata
    a4( bes) c
    d( bes) c
    c( bes8[ a bes g]
    a2.)\fermata


  }
>>


basVoice = <<
  \basArt
  \relative c
  {
    f4
    d( c) bes
    a( bes8[ a]) g([ a])
    f([ f' es d c bes]
    f'2) f4

    d4( c) b
    f'( e) d
    e( c g
    c2.)

    f2 bes4
    bes( a) g
    g( f e)
    d2 a4
    bes( g) c
    f,8([ g a bes]) c([ bes])
    a4( f c'
    a2)\( a4\)

    f'4( e) d
    e( d) c
    f8([ g] a4 a,)
    d2 a4
    bes( g) c
    f,8([ g a bes]) c([ bes])
    a4( f c'
    a2.)

    bes4( a) g
    c!( bes) a
    d8([ c d e f d]
    e2.)

    f,4( g) a
    bes( g) c
    a( bes2
    f2.)

  }
>>
