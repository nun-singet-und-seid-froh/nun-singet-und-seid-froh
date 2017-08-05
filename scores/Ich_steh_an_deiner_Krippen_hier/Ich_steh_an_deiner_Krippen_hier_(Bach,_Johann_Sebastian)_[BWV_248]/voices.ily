%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/modern/voices.ily

% common settings of all voices
global = {
  \override Staff.BarLine.allow-span-bar = ##f
  \autoBeamOff
  
  \key g \major
  \time 4/4 
  \partial 4 
}

% articulation, dynamics, fermata and breathing marks
sopArt = { }

altArt = { }

tenArt = { }

basArt = { }


% the tunes
sopVoice = <<
  \sopArt
  \relative c''
    {  
      \repeat volta 2 {
%{00%} 	  g4
%{01/05%} g8[ a] b4 a g
%{02/06%} a a b\fermata g8[ a]
%{03/07%} b4 c d c8[ b]
%{04/08%} a([ g] a4) g
      }
       \once \override Staff.BarLine.allow-span-bar = ##t
       \break
       b4
%{09%} b a g fis
%{10%} g8[ a] b4 a\fermata a
%{11%} g fis g d
%{12%} g a b\fermata g8[ a]
%{13%} b4 c d c8[ b]
%{14%} a8([ g] a4) g\fermata\bar"|."
       \once \override Staff.BarLine.allow-span-bar = ##t
    }
>>

altVoice = <<
  \altArt
  \relative c'
    {
      \repeat volta 2 {
%{00%} 	  d4
%{01/05%} e8[ fis] g4 g8([ fis]) g4
%{02/06%} g fis g\fermata e8[ fis]
%{03/07%} g( b4) a16[ g] fis4 g
%{04/08%} g( fis) d
      }
      \once \override Staff.BarLine.allow-span-bar = ##t
       g4
%{09%} g4. fis8 fis[ e] e([ dis])
%{10%} e4 d? d\fermata d
%{11%} d8[ c] d4 d8[ c] b4
%{12%} b e dis\fermata b
%{13%} e e d?8[ e16 fis] g4
%{14%} g( fis) d\fermata
\once \override Staff.BarLine.allow-span-bar = ##t
    }
>>

tenVoice = <<
  \tenArt
  \relative c'
    { 
      \repeat volta 2 {
%{00%} 	  b4
%{01/05%} b e e8([ d]) d4
%{02/06%} e8([ c]) a([ d]) d4\fermata
%{03/07%} e4 d g,8([ a]) b([ c]) d4
%{04/08%} d( c8[ b]) b4
      }
      \once \override Staff.BarLine.allow-span-bar = ##t
       d4
%{09%} d d8([ c]) b([ c]) fis,([ b])
%{10%} b([ a]) a([ g]) fis4\fermata fis
%{11%} g8([ a]) b([ c]) b([ a]) g4
%{12%} g fis8[ e] fis4\fermata e8[ fis] 
%{13%} g4. a8 b[ c] d4
%{14%} d( c8[ b]) b4\fermata
      \once \override Staff.BarLine.allow-span-bar = ##t
    }
>>    

basVoice = <<
  \basArt
  \relative c
    {   
      \repeat volta 2 {
%{00%}    g'8[ fis]
%{01/05%} e4. d8 c4. b8
%{02/06%} c[ a] d4 g,\fermata c
%{03/07%} g'8[ fis] e4 b'8([ a]) g4
%{04/08%} d'( d,) g4
      }
       g8[ a]
%{09%} b[ c] d4 g,8[ a] b4
%{10%} e,8[ fis] g4 d\fermata d'8[ c]
%{11%} b4. a8 g4. fis8
%{12%} e[ d] c4 b\fermata e
%{13%} e8[ d] c4 b8[ a] g4
%{14%} e'2 g,4\fermata
    }
>>
 
