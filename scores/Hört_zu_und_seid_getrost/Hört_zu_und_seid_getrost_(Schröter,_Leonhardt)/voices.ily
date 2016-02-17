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
  \time 2/2
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
  % tempo for midi only
  \set Score.tempoHideNote = ##t
  \tempo 2 = 60
}

%incipites

sopIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 2/2
  a'1 a'1
}

altIncipit = {
  \clef "mensural-c2"
  \key f \major
  \time 2/2
  f'1 f'1
}

tenIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 2/2
  r2 r c' c'
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 2/2
  r2 r f f1
}

% articulation, dynamics, fermata and breathing marks
commonArt = {
  %{01%} s1 |
  %{02%} s |
  %{03%} s |
  %{04%} s \once \undo \hide Staff.BarLine \bar "||" | \break
  %{05%} \mark "Prima Pars" s |
  %{06%} s |
  %{07%} s |
  %{08%} s |
  %{09%} s |
  %{10%} s |
  %{11%} s |
  %{12%} \time 3/2 \tempo 2 = 90 s1 \bar "" \break s2 |
  %{13%} s1. |
  %{14%} s |
  %{15%} s |
  %{16%} s |
  %{17%} \time 2/2 \tempo 2 = 60 s2. \bar "" \break s4 |
  %{18%} s1 |
  %{19%} s |
  %{20%} s |
  %{21%} s |
  %{22%} s |
  %{23%} s |
  %{24%} s |
  %{25%} s |
  %{26%} s |
  %{27%} s |
  %{28%} s |
  %{29%} s |
  %{30%} s \once \undo \hide Staff.BarLine \bar "||" |
}

sopArt = {
  %{01%} s1 |
  %{02%} s |
  %{03%} s |
  %{04%} s\fermata |
  %{05%} s |
  %{06%} s |
  %{07%} s |
  %{08%} s |
  %{09%} s |
  %{10%} s |
  %{11%} s |
  %{12%} s1. |
  %{13%} s |
  %{14%} s |
  %{15%} s |
  %{16%} s |
  %{17%} s1 |
  %{18%} s |
  %{19%} s |
  %{20%} s |
  %{21%} s |
  %{22%} s |
  %{23%} s |
  %{24%} s |
  %{25%} s |
  %{26%} s |
  %{27%} s |
  %{28%} s |
  %{29%} s |
  %{30%} s |
}

altArt = {
  %{01%} s1 |
  %{02%} s |
  %{03%} s2 s1.\fermata
  %{04%} |
  %{05%} s1 |
  %{06%} s |
  %{07%} s |
  %{08%} s |
  %{09%} s |
  %{10%} s |
  %{11%} s |
  %{12%} s1. |
  %{13%} s |
  %{14%} s |
  %{15%} s |
  %{16%} s |
  %{17%} s1 |
  %{18%} s |
  %{19%} s |
  %{20%} s |
  %{21%} s |
  %{22%} s |
  %{23%} s |
  %{24%} s |
  %{25%} s |
  %{26%} s |
  %{27%} s |
  %{28%} s |
  %{29%} s |
  %{30%} s |
}

tenArt = {
  %{01%} s1 |
  %{02%} s |
  %{03%} s |
  %{04%} s\fermata |
  %{05%} s |
  %{06%} s |
  %{07%} s |
  %{08%} s |
  %{09%} s |
  %{10%} s |
  %{11%} s |
  %{12%} s1. |
  %{13%} s |
  %{14%} s |
  %{15%} s |
  %{16%} s |
  %{17%} s1 |
  %{18%} s |
  %{19%} s |
  %{20%} s |
  %{21%} s |
  %{22%} s |
  %{23%} s |
  %{24%} s |
  %{25%} s |
  %{26%} s |
  %{27%} s |
  %{28%} s |
  %{29%} s |
  %{30%} s |
}

basArt = {
  %{01%} s1 |
  %{02%} s |
  %{03%} s |
  %{04%} s\fermata |
  %{05%} s |
  %{06%} s |
  %{07%} s |
  %{08%} s |
  %{09%} s |
  %{10%} s |
  %{11%} s |
  %{12%} s1. |
  %{13%} s |
  %{14%} s |
  %{15%} s |
  %{16%} s |
  %{17%} s1 |
  %{18%} s
  %{19%} s |
  %{20%} s |
  %{21%} s |
  %{22%} s |
  %{23%} s |
  %{24%} s |
  %{25%} s |
  %{26%} s |
  %{27%} s |
  %{28%} s |
  %{29%} s |
  %{30%} s |
}


% the tunes
sopVoice = <<
  \commonArt
  \sopArt
  \relative c''
  {
    %{01%} a2 a |
    %{02%} r f |
    %{03%} g4 g bes2 |
    %{04%} a1 |
    %{05%} c2 c |
    %{06%} d2. c4 |
    %{07%} c4.\melisma bes16[ a] bes8[ a] a2\melismaEnd
    %{08%} g4 a1.
    %{09%} |
    %{10%} R1 |
    %{11%} R1 |
    %{12%} r1 a2 |
    %{13%} a1 c2 |
    %{14%} c1 bes2 |
    %{15%} \[ a\melisma g2. \] f4 |
    %{16%} f1\melismaEnd e2 |
    %{17%} f2 r4 f |
    %{18%} f2 g |
    %{19%} a2. a4 |
    %{20%} f2 g |
    %{21%} a r4 c |
    %{22%} c2 c |
    %{23%} c4.\melisma bes8 a4\melismaEnd g |
    %{24%} f4.\melisma g8 a4\melismaEnd g4.\melisma
    %{25%}  f8 f2\melismaEnd e4 |
    %{26%} f1 |
    %{27%} R1*4 |

    %{31%}
  }
>>

altVoice = <<
  \commonArt
  \altArt
  \relative c'
  {
    %{01%} f2 f |
    %{02%} r4 c d d |
    %{03%} e2 f1.
    %{04%} |
    %{05%} a2. g4 |
    %{06%} f8[\melisma e f g] a2.\melismaEnd
    %{07%}  g4 f4.\melisma e8 | 
    %{08%} d4\melismaEnd d e f2
    %{09%}  f4 d8[\melisma e f g] |
    %{10%} a2\melismaEnd g4 e4.\melisma
    %{11%}  d8 d2\melismaEnd c4 |
    %{12%} d1 c2 |
    %{13%} d2 c c |
    %{14%}  g' a f1
    %{15%}  e2 d1
    %{16%}  c |
    %{17%} c2 r4 c |
    %{18%} d2 e |
    %{19%} f4.\melisma e16[ d] c4\melismaEnd c |
    %{20%} d8[\melisma c] f2\melismaEnd e4 |
    %{21%} f f g g |
    %{22%} a a g2.
    %{23%}  g4 c,4.\melisma bes8 |
    %{24%} a4\melismaEnd a f' e |
    %{25%} d2 c |
    %{26%} a bes4 c |
    %{27%} d bes a4.\melisma bes8[ |
    %{28%} c a] d4. c16[ bes] c4\melismaEnd |
    %{29%} d2. d4 |
    %{30%} c1 |
  }
>>

tenVoice = <<
  \commonArt
  \tenArt
  \relative c'
  {
    %{01%} r2 r4 c |
    %{02%} c a bes a |
    %{03%} \[ c2\melisma d\melismaEnd \] |
    %{04%} c1 |
    %{05%} f2. e4 |
    %{06%} d8[\melisma c d e] f2.\melismaEnd
    %{07%}  e4 d2 |
    %{08%} bes2 a4 f2
    %{09%}  f4 f'2.\melisma
    %{10%}  e8[ d e f] g2\melismaEnd
    %{11%}  f4 f e |
    %{12%} d1 f2 |
    %{13%} f1 f2 |
    %{14%} e2.\melisma f4 d2 |
    %{15%} c2. bes4\melismaEnd a2 |
    %{16%} bes2 g1 |
    %{17%} a2 r4 a |
    %{18%} a2 c |
    %{19%} c f,4 f'4.\melisma
    %{20%}  e8[ d c] bes4\melismaEnd bes |
    %{21%} c c d e |
    %{22%} f2.\melisma e8[ d] |
    %{23%} e4\melismaEnd e f e |
    %{24%} d d c4.\melisma bes8 |
    %{25%} a4\melismaEnd bes g2 |
    %{26%} f4 c' d a |
    %{27%} bes8[\melisma c d bes] c2\melismaEnd |
    %{28%} f,4 bes4.\melisma a16[ g16] a4\melismaEnd |
    %{29%} bes2. bes4 |
    %{30%} a1 |
  }
>>

basVoice = <<
  \commonArt
  \basArt
  \relative c
  {
    %{01%} r2 r4 f |
    %{02%} f2 r4 d |
    %{03%} c c bes2 |
    %{04%} f'1 |
    %{05%} R\breve
    %{06%}  |
    %{07%} R1 |
    %{08%} r2 c |
    %{09%} c d2.
    %{10%}  c4 c2 |
    %{11%} bes a |
    %{12%} r1 f'2 |
    %{13%} d4\melisma e f g a bes |
    %{14%} c bes a2\melismaEnd bes |
    %{15%} f c \[ d\melisma |
    %{16%} bes\melismaEnd \] c1 |
    %{17%} f2 r4 f |
    %{18%} d2 c |
    %{19%} f4.\melisma g8 a4\melismaEnd a |
    %{20%} bes2 g |
    %{21%} f4 f bes c |
    %{22%} f,8[\melisma g a bes] c2.\melismaEnd
    %{23%}  c,4 f c |
    %{24%} d4.\melisma e8 f4\melismaEnd c |
    %{25%} d bes c2 |
    %{26%} f2 r4 f |
    %{27%} bes, bes f'4.\melisma g8 |
    %{28%} a4\melismaEnd bes f2 |
    %{29%} bes,2. bes4 |
    %{30%} f'1 |
  }
>>
