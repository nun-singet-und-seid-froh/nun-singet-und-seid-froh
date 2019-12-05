%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/SATTB/modern/voices.ily

piuf =
#(make-dynamic-script
  (markup #:line
          (#:normal-text
           #:italic "più"
           #:dynamic "f")))

% common settings of all voices
global = {
  \autoBeamOff
  \dynamicUp

  \key a \major
  \time 3/4
}

% articulation, dynamics, fermata and breathing marks
sopArt = {
  %{01%} s2\f\< s4
  %{02%} s4 s4\! s4
  %{03%} s2.
  %{04%} s2\> s4
  %{05%} s2\< s4
  %{06%} s4\! s2
  %{07%} s2 s4\>
  %{08%} s2 s4\p
  %{09%} s2\f\< s4
  %{10%} s4 s4\! s4
  %{11%} s2.
  %{12%} s2\> s4\!
  %{13%} s2^\piuf\< s4
  %{14%} s2 s4\!
  %{15%} s4 s4 s4\>
  \once \override Script.script-priority = #-100
  %{16%} s2.\p\fermata \bar"|."
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
    %{01%} a2 cis4
    %{02%} e2 cis4
    %{03%} d( e) fis
    %{04%} e2 b4
    %{05%} cis2 e4
    %{06%} d4( cis) b
    %{07%} a2 fis4
    %{08%} gis2 e4\noPageBreak
    %{09%} cis'2 d4
    %{10%} e2 fis4
    %{11%} e2 b4
    %{12%} cis2 a4
    %{13%} d2 d4
    %{14%} cis( b) cis
    %{15%} a( fis) gis
    %{16%} a2.
  }
>>

altVoice = <<
  \altArt
  \relative c''
  {
    %{01%} a2\f\< a4
    %{02%} g2 fis4
    %{03%} fis2 b4
    %{04%} gis2 gis4
    %{05%} a( e) e
    %{06%} fis( a) d,
    %{07%} fis4.( e8) dis4
    %{08%} e2 b4
    %{09%} a'2 a4
    %{10%} a4.( gis8) fis4
    %{11%} gis4.( a8) fis4
    %{12%} gis2 fis4
    %{13%} fis2 e4
    %{14%} e2 a8[ gis]
    %{15%} fis2 e8[ d]
    %{16%} cis2.
  }
>>

tenIVoice = <<
  \tenIArt
  \relative c'
  {
    %{01%} e2 fis4
    %{02%} g2 cis,4
    %{03%} b2 fis'4
    %{04%} gis2 e4
    %{05%} e^-( a^-) gis^-
    %{06%} fis^-( e^-) d^-
    %{07%} cis2^- b4^-
    %{08%} b2^- gis4^-
    %{09%} a2 a4
    %{10%} e'2 b4
    %{11%} e2 fis4
    %{12%} eis2 fis4
    %{13%} d4.( cis8) b4
    %{14%} cis4.( d8) e4~
    %{15%} e d8[ cis] b4
    %{16%} a2.
  }
>>

tenIIVoice = <<
  \tenIIArt
  \relative c'
  {
    %{01%} cis4.( b8) a4
    %{02%} b2 ais4
    %{03%} b2 b4
    %{04%} b2 b4
    %{05%} a2 a4
    %{06%} a2 fis4
    %{07%} fis2 fis4
    %{08%} e2 e4
    %{09%} e'2 d4
    %{10%} a( cis) fis,8[ b]
    %{11%} b2 b4
    %{12%} gis2 a4
    %{13%} a2 gis4
    %{14%} a2 a4
    %{15%} a2 e4
    %{16%} e2.
  }
>>

basVoice = <<
  \basArt
  \relative c'
  {
    %{01%} a4.( gis8) fis4
    %{02%} e2 fis4
    %{03%} b,( cis) d
    %{04%} e2 e4
    %{05%} a2 cis,4
    %{06%} d( a) b
    %{07%} fis'2 b,4
    %{08%} e2 e4
    %{09%} a4.( gis8) fis4
    %{10%} cis2 dis4
    %{11%} e2 d!4
    %{12%} cis2 fis4
    %{13%} b,2 e4
    %{14%} a,2 cis4
    %{15%} d2 e4
    %{16%} a,2.
  }
>>
