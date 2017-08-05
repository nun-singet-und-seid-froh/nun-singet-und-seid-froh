%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/SATTB/modern/voices.ily

% common settings of all voices
global = {
  \key a \major
  \time 6/4 
  \partial 1
  \dynamicUp
  \override DynamicLineSpanner.staff-padding = #2
}

% articulation, dynamics, fermata and breathing marks
sopArt = { \override Hairpin.minimum-length = #5
        \tempo "Con moto."
%{00%}  s4\f\< s4 s2
%{01%}  s2\! s2 s4 s4\>
%{02%}  <<{s8 s4.\!} s2\fermata>> s4\ff\< s2 s4\!
%{03%}  s2 s2 s4 s4\>
%{04%}  s2\!\fermata s4\f\< s4 s2
%{05%}  s2 s4\! s4 s4 s4\>
%{06%}  s2\fermata\! s4\pp\< s4 s2\!
%{07%}  s2 s2 s4\> s4
%{08%}  s2\!\fermata s4\< s4 s2\!
%{09%}  s2 s2 s4\> s4\!
%{10%}  s2\pp\fermata s4\f\< s4 s2 
%{11%}  s2\! s2 s2
%{12%}  s2\fermata s4\ff\< s4 s4 s4\!
%{13%}  s2 s4\> s2\!\fermata s4\ff\<
%{14%}  s2 s4\! s4 s4\> s4
%{15%}  s2\fermata\!\bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
} 

altArt = \sopArt

tenIArt = \sopArt

tenIIArt = \sopArt

basArt = \sopArt



% the tunes
sopVoice = <<
  \sopArt
  \relative c''
    { 
%{00%}  cis4 e2 d4
%{01%}  cis2 b4 a( b) cis
%{02%}  b2 e4 d2 d4
%{03%}  cis2 cis4 b( a) b
%{04%}  a2 cis4 b2 b4
%{05%}  cis4( dis) e e( fis) dis
%{06%}  e2 b4 cis2 b4
%{07%}  cis( dis) e e( fis) dis
%{08%}  e2 e4 fis2 e4
%{09%}  fis2 e4 fis( e) d
%{10%}  cis2 e4 fis2 e4
%{11%}  fis2 e4 fis( e) d
%{12%}  cis2 e4 a,2 a4
%{13%}  d2 cis4 b2 e4
%{14%}  d2 cis4 b( a) b
%{15%}  a2
    }
>>

altVoice = <<
  \altArt
  \relative c''
    { \autoBeamOff
%{00%}  a4 a( gis) fis  
%{01%}  cis( fis8[ a]) d,8([ e]) fis2 fis4
%{02%}  gis2 a8([ gis]) fis4( d) b'4
%{03%}  b4.( gis8) a([ gis]) fis2 gis4
%{04%}  a2 a4 dis,4( fis) gis
%{05%}  a2 gis4 fis2 fis4
%{06%}  gis2 fis4 eis( fis) b,
%{07%}  e?4( fis) gis a2 a4 
%{08%}  gis2 a4 a2 e4
%{09%}  ais( b) e, a( g) fis
%{10%}  eis2 a4 a2 g8([ b])
%{11%}  fis4( gis?) a? a( g) g
%{12%}  e2 e4 e( d) e
%{13%}  d2 a'4 gis2 a8([ gis])
%{14%}  fis2 e4 d4.( cis8) b([ e])
%{15%}  e2           
    }
>>

tenIVoice = <<
  \tenIArt
  \relative c'
    {\autoBeamOff
%{00%}  e4 e4.( cis8) fis4
%{01%}  fis4.( e8) d([ cis]) d2 cis8([ fis])
%{02%}  b,2 a4 a4.( d8) e4
%{03%}  e2 e4 d( cis) b
%{04%}  cis2 e4 dis2 e4
%{05%}  e( fis) e8([ dis]) cis4.( fis8) fis4
%{06%}  e2 fis4 cis4.( dis8) e4
%{07%}  cis( fis) e8([ dis]) cis4.( fis8) fis4
%{08%}  e2 e4 d2 e4
%{09%}  cis( d) e d8([ cis] b4.) a8
%{10%}  gis2 e'8([ cis]) a4( fis') g
%{11%}  fis4.( d8) e([ a]) a([ fis] g4.) d8
%{12%}  a2 e'4 fis( a) e8([ cis])
%{13%}  d4.( e8) e([ fis]) b,2 a4
%{14%}  fis'4( d8[ e]) fis4 fis2 e8([ d])
%{15%}  cis2
    }
>>    

tenIIVoice = <<
  \tenIIArt
  \relative c'
    { \autoBeamOff 
%{00%}  a4 a2 a8([ b)]
%{01%}  b4( a) b fis4.( gis8) a4
%{02%}  gis2 e'4 a,2 b4
%{03%}  e4( d) cis fis,4.( a8) gis([ e])
%{04%}  e2 a8([ gis)] fis4.( b8) b4
%{05%}  a2 cis8([ b]) a2 b4
%{06%}  b2 b4 gis( a) b
%{07%}  a2 gis4 cis2 b4
%{08%}  b2 cis4 d4.( c8) b4
%{09%}  cis( b) a a( e) fis8([ d'])
%{10%}  gis,2 cis2 c4 b
%{11%}  cis?( d) cis c( b) bes
%{12%}  a2 b4 a2 a4
%{13%}  a4( gis) a8([ fis]) gis2 e'4
%{14%}  a,( b) cis fis,2 gis4
%{15%}  a2
    }
>>

basVoice = <<
  \basArt
  \relative c
    {  
%{00%}  a'4 cis,2 d4
%{01%}  fis2 g4 d2 dis4
%{02%}  e2 cis4 d( fis) gis
%{03%}  a( b,) cis d4.( b8) e4
%{04%}  a,2 a4 b2 e4
%{05%}  a,4( fis') cis a'8([ gis a fis]) b4 
%{06%}  e,2 d4 cis( fis) gis
%{07%}  a4( fis) cis a2 b4
%{08%}  e2 a4 d,( fis) g
%{09%}  fis( b,) cis d( e) b
%{10%}  cis2 a4 d( dis) e
%{11%}  ais,( b) cis dis( e) g
%{12%}  a2 gis4 fis2 cis4
%{13%}  b2 cis8([ dis]) e2 cis4
%{14%}  d( gis,) ais b2 <<e4 e,4>>
%{15%}  <<e'2 a,2>>  
    }
>>
 