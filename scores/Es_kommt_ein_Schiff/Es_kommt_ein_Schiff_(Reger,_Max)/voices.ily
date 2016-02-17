%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this is standard version 1.0: SATTB

% common settings of all voices
global = {
  \key as \major
  \time 3/4
  \partial 4
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

% articulation, dynamics, fermata and breathing marks
sopArt = {
  \repeat volta 6 {
  s4\p\<
  s2 s4\!
  s2.
  s4 s4\> s4
  s4\! s4\bar ""\break s4\<
  s4 s4\! s4
  s2.
  s4\> s4 s4
  s4\! s4 s4\p\<
  s2. |
  s2. |
  s4\f\> s4 s4
  s4 s4\! s4\p\<
  s2 s4\!
  s2 s4\>
  }
  \alternative {
    { s2. 
      s4\pp s4
      \bar "||"}
    { s2. 
      s4\pp s4 
      \bar "|."}
  }
}

altArt = \sopArt

tenIArt = \sopArt

tenIIArt = \sopArt

basArt = \sopArt


% the tunes
sopVoice = <<
  \sopArt
  \relative c'
  {
    \tempo "Andante."
    \repeat volta 6 {
    %{00%} f4
    %{01%} f2 f4
    %{02%} g2 g4
    %{03%} as( bes c)
    %{04%} c2 c4
    %{05%} bes2 bes4
    %{06%} f2 g4
    %{07%} as2.~
    %{08%} as2 as4
    %{09%} c2 es4
    %{10%} f2 f4
    %{11%} es2( c4)
    %{12%} as2 bes4
    %{13%} c2 bes4
    %{14%} as2 g4
   
    }
    \alternative {
      { %{15%} f2.~
        %{16%} f4 r 
      }
      { %{15%} f2.~
        %{16%} f4 r
      }
    }
  }
>>

altVoice = <<
  \altArt
  \relative c'
  {
    \repeat volta 6 {
    %{00%} f4
    %{01%} f4.( c8) f4
    %{02%} c4.( d8) es4
    %{03%} f4( g2)
    %{04%} f4( c) f
    %{05%} f2 es4~
    %{06%} es des8[ c] bes4
    %{07%} as( c des
    %{08%} es2) f4
    %{09%} g4.( f8) es8[ c']
    %{10%} c4( des8[ c]) bes4
    %{11%} bes4.( g8 es4~
    %{12%} es) des f
    %{13%} es2 des4
    %{14%} c( des8[ c]) bes4
   
    }
    \alternative {  
      {  
         %{15%} as2.~
         %{16%} as4 r4 }
      {
        %{15%} a2.~
        %{16%} a4 r4 }
    }
  }
>>

tenIVoice = <<
  \tenIArt
  \relative c'
  {
    \repeat volta 6 {
    %{00%} c4
    %{01%} c( bes) as
    %{02%} g( a8[ b]) c4
    %{03%} c( es8[ f] e4)
    %{04%} f2 es4~
    %{05%} es des8[ c] bes[ es]
    %{06%} f2 es4
    %{07%} es2( des4
    %{08%} c2) c8[ d]
    %{09%} es4.( f8) g4
    %{10%} f2 as4
    %{11%} as( g ges~
    %{12%} ges) f f
    %{13%} ges2 g4~
    %{14%} g4 f4. e8

    }
    \alternative {
     { %{15%} f2.~ 
       %{16%} f4 r4 }
     { %{15%} f2.~ 
       %{16%} f4 r4 }
    }
  }
>>

tenIIVoice = <<
  \tenIIArt
  \relative c'
  {
    \repeat volta 6 {
    %{00%} as4
    %{01%} as( bes) c
    %{02%} c( f,) es8[ c']
    %{03%} c4( g c8[ bes]~
    %{04%} bes4) as8[ g] f4
    %{05%} f2 ges4
    %{06%} as8[ a bes c] des4
    %{07%} des( c bes
    %{08%} as2) c4
    %{09%} c2 c4
    %{10%} c( bes) bes
    %{11%} bes2( c4~
    %{12%} c4) des8[ c] bes4
    %{13%} ges4( es') bes
    %{14%} f2 c'4
    }
    \alternative {
    {
      %{15%} c2.~
      %{16%}  c4 r 
    }
    {
      %{15%} c2.~
      %{16%}  c4 r 
    }
    }
  }
>>

basVoice = <<
  \basArt
  \relative c
  {
    \repeat volta 6 {
    %{00%} f4
    %{01%} as( g) f
    %{02%} es( d) c
    %{03%} f( es8[ des!] c4)
    %{04%} f2 a,4
    %{05%} bes2 es4
    %{06%} des4.( bes8) es4
    %{07%} as,2.~
    %{08%} as2 f'4
    %{09%} es( d) c
    %{10%} des!2 d4
    %{11%} es2( as,4)
    %{12%} f'2 des4
    %{13%} es( c) e
    %{14%} f( bes,) c
    }
    \alternative {
     { %{15%} << { \voiceOne c2.~ c4 } \new Voice { \voiceTwo f,2.~ f4 } >> \oneVoice r4}
     { %{15%} << { \voiceOne c'2.~ c4 } \new Voice { \voiceTwo f,2.~ f4 } >> \oneVoice r4 }
    }
  }
>>
