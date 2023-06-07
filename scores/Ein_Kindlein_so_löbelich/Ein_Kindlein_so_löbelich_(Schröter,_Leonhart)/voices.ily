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
  %\partial 2
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

%incipites

sopIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 2/2
  r2 f'1
}

altIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 2/2
  r\breve r1 c'2
}

tenIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 2/2
  c'1
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 2/2
  f1
}

% articulation, dynamics, fermata and breathing marks
commonArt = {
    %{01%} s1
    %{02%} s
    %{03%} s
    %{04%} s
    %{05%} s
    %{06%} s
    %{07%} s
    %{08%} s
    %{09%} s
    %{10%} s
    %{11%} s
    %{12%} s
    %{13%} s
    %{14%} s
    %{15%} s
    %{16%} s
    %{17%} s
    %{18%} s
    %{19%} s
    %{20%} s
    %{21%} s
    %{22%} s
    %{23%} s
    %{24%} s
    %{25%} s
    %{26%} s
    %{27%} s
    %{28%} s
    %{29%} s
    %{30%} s
    %{31%} s
    %{32%} s
    %{33%} s
    %{34%} s
    %{35%} s
    %{36%} s
    %{37%} s
    %{38%} s
    %{39%} s \once \undo \hide Staff.BarLine \bar "|."
}

sopArt = \commonArt

altArt = \commonArt

tenArt = \commonArt

basArt = \commonArt


% the tunes
sopVoice = <<
  \sopArt
  \relative c'
  {
    %{01%} r2 f |
    %{02%} f4 f g2 |
    %{03%} a bes4.\melisma a8 |
    %{04%} bes4\melismaEnd g f f |
    %{05%} g2. f4 |
    %{06%} d2 e4 f2\melisma
    %{07%}  e4\melismaEnd f2 |
    %{08%} r4 f f f |
    %{09%} g2 a |
    %{10%} bes4.\melisma a8 bes4\melismaEnd g |
    %{11%} f f g2.
    %{12%}  f4 d2 |
    %{13%} e4 f2\melisma e4\melismaEnd |
    %{14%} f2 r4 f |
    %{15%} c' c d c |
    %{16%} a bes c1
    %{17%}  r1
    %{18%}  r4 c |
    %{19%} c2 c |
    %{20%} d2. c4 |
    %{21%} a2 g |
    %{22%} f r4 f |
    %{23%} d e f2 |
    %{24%} d4 c2\melisma bes4\melismaEnd |
    %{25%} c1.
    %{26%}  r4 f2
    %{27%}  f4 g2 |
    %{28%} a bes4.\melisma a8 |
    %{29%} bes4\melismaEnd g f2 |
    %{30%} r4 g2 f4 |
    %{31%} d e f2 |
    %{32%} d c |
    %{33%} r4 c d2 |
    %{34%} bes d |
    %{35%} e4 f2\melisma e4\melismaEnd |
    %{36%} f\longa |
  }
>>

altVoice = <<
  \altArt
  \relative c'
  {
    %{01%} R1 |
    %{02%} r4 c d e |
    %{03%} f2 f4 f2
    %{04%}  e4 f c |
    %{05%} es2. c4 |
    %{06%} bes a c1
    %{07%}  a2 |
    %{08%} r2 r4 c |
    %{09%} d e f2 |
    %{10%} f4 f2 e4 |
    %{11%} f c es2.
    %{12%}  c4 bes a |
    %{13%} c2 c |
    %{14%} r4 a a'2.
    %{15%}  g4 f e |
    %{16%} f g e f |
    %{17%} e f f4. e8 |
    %{18%} d4 d e f |
    %{19%} f2 f |
    %{20%} f2. e4 |
    %{21%} c d4.\melisma c16[ bes] c4\melismaEnd |
    %{22%} d d d4.\melisma c16[ bes] | 
    %{23%} a4\melismaEnd c d4.\melisma e8 |
    %{24%} f4\melismaEnd e d2 |
    %{25%} \[ g,\melisma a\melismaEnd \] |
    %{26%} r4 c2 c4 |
    %{27%} d4. c8 d4 e |
    %{28%} f f g4. f8 |
    %{29%} f4 e d f2
    %{30%}  e4 d4.\melisma c8 |
    %{31%} bes4\melismaEnd a d8[\melisma c] c2\melismaEnd
    %{32%}  bes4 c2 |
    %{33%} r4 f, f'4.\melisma e8 |
    %{34%} d4\melismaEnd d a8[\melisma g a bes] |
    %{35%} c4\melismaEnd c c2 |
    %{36%} a4 c d2.
    %{37%}  c4 a d |
    %{38%} d2 c1.
    %{39%}  |
  }
>>

tenVoice = <<
  \tenArt
  \relative c'
  {
    %{01%} c2 d2.
    %{02%}  c4 bes2 |
    %{03%} c d2.
    %{04%}  c4 f, a |
    %{05%} bes2.\melisma a8[ g] |
    %{06%} f4\melismaEnd f g a |
    %{07%} g2 f4 c' |
    %{08%} d2. c4 |
    %{09%} bes2 c |
    %{10%} d2. c4 |
    %{11%} f, a bes2.\melisma
    %{12%}  a8[ g] f4\melismaEnd f |
    %{13%} g a g2 |
    %{14%} f4 f f'2.
    %{15%}  e4 d a |
    %{16%} d d c f, |
    %{17%} c' c d c |
    %{18%} a bes c a |
    %{19%} a2 a |
    %{20%} bes2. g4 |
    %{21%} a4.\melisma g16[ f] g4\melismaEnd g |
    %{22%} a a bes4.\melisma a16[ g] |
    %{23%} f4\melismaEnd g bes2.
    %{24%}  g4 g4.\melisma f8[ |
    %{25%} e d] e4\melismaEnd f4.\melisma g8 |
    %{26%} \[ a2 f \]\melismaEnd
    %{27%} r2 r4 bes |
    %{28%} c2 es4. c8 |
    %{29%} d4 c a d2
    %{30%}  c4 bes4.\melisma a8 |
    %{31%} g4\melismaEnd c bes f |
    %{32%} g g a g |
    %{33%} a2 a4 bes |
    %{34%} f g f f |
    %{35%} g a g2 |
    %{36%} f r4 bes
    %{37%} bes c d a |
    %{38%} bes2 a1.
    %{39%}  |
  }
>>

basVoice = <<
  \basArt
  \relative c
  {
    %{01%} f2 bes2.
    %{02%}  a4 g g |
    %{03%} f4. f8 bes,2 |
    %{04%} r2 r4 f' |
    %{05%} es2. f4 |
    %{06%} bes, d c2 |
    %{07%} c r4 f |
    %{08%} bes2. a4 |
    %{09%} g g f4. f8 |
    %{10%} bes,2 r |
    %{11%} r4 f' es2.
    %{12%}  f4 bes, d |
    %{13%} c1 |
    %{14%} f1 |
    %{15%} R1 |
    %{16%} r4 g c2 |
    %{17%} a bes4 a
    %{18%} fis g c, f |
    %{19%} f2 f |
    %{20%} bes,2. c4 |
    %{21%} f4.\melisma e16[ d] e4\melismaEnd e |
    %{22%} d2. d4 |
    %{23%} d c bes2.
    %{24%}  c4 g2 |
    %{25%} c r4 f2
    %{26%}  f4 a a |
    %{27%} bes4.\melisma a8 g4\melismaEnd g |
    %{28%} f f es4. f8 |
    %{29%} bes,4 c d2 |
    %{30%} R1
    %{31%} R1
    %{32%} r2. c4 |
    %{33%} f4.\melisma e8[ d c] bes2\melismaEnd
    %{34%}  g4 d' d |
    %{35%} c2 c4 c |
    %{36%} f4.\melisma e8[ d c] bes2\melismaEnd
    %{37%}  a4 d d |
    %{38%} bes2 f'1.
    %{39%}  |
  }
>>
