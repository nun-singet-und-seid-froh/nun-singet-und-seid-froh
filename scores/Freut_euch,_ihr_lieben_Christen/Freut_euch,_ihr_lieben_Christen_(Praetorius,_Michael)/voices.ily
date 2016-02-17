%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/voices.ily

% common settings of all voices
global = {
  \key c \major
  \time 4/4 
  \partial 2.
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
%{00%} g4 c c
%{02%} d e f2
%{03%} e4 e d c
%{04%} d d c2
%{05%} a4\rest g c c
%{06%} d e f2 
%{07%} e4 e d c 
%{08%} d d c2 
%{09%} a4\rest c g' g 
%{10%} g f g2
%{11%} g4 e f g
%{12%} a f g2 
%{13%} g,4\rest g' g g
%{14%} f f e2
%{15%} d4 d e f 
%{16%} g4.\melisma f8 e4 f 
%{17%} d2\melismaEnd d
%{17%} c1\bar"|."\undo \hide Staff.BarLine
    }
>>

altVoice = <<
  \altArt
  \relative c'
    {
%{00%} e4 g a
%{01%} a c c2
%{02%} c4 c b a
%{03%} a b g2
%{04%} s4 g g f
%{05%} d g a2
%{06%} a4 g a e
%{07%} g g g2
%{08%} s4 g g g 
%{09%} g a b2
%{10%} b4 c d b
%{11%} c a b2
%{12%} s4 c d b 
%{13%} a a a2
%{14%} fis4 g g a
%{15%} b4.\melisma a8 g4 a
%{16%} g2\melismaEnd g
%{17%} g1
    }
>>

tenVoice = <<
  \tenArt
  \relative c'
    {  
%{00%} c4 e f
%{01%} f g a2
%{02%} a4 a a e
%{03%} f d e2
%{04%} s4 e e c
%{05%} b c a2
%{06%} c4 b a c
%{07%} c b e2
%{08%} s4 e e d
%{09%} e c d2
%{10%} d4 a' a g
%{11%} e d d2
%{12%} s4 e d d
%{13%} f d cis2
%{14%} d4 b c f
%{15%} d4.\melisma c16[ d] e4 c2
%{16%}   b8[ a]\melismaEnd b2
%{17%} e1
    }
>>    

basVoice = <<
  \basArt
  \relative c
    { 
%{00%} c4 c f
%{01%} d c f2
%{02%} c4 c' g a
%{03%} f g c,2
%{04%} c4\rest c' c g
%{05%} g e d2
%{06%} a'4 c d a
%{07%} g g c,2
%{08%} c4\rest c' c b 
%{09%} c a g2
%{10%} g4 a d e
%{11%} c d g,2
%{12%} c,4\rest c' b g
%{13%} d' d a2
%{14%} d,4 g e d
%{15%} g4.\melisma a16[ b] c4 f,
%{16%} g2\melismaEnd g
%{17%} c,1\bar"|."\undo \hide Staff.BarLine
    }
>>
 