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
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
  % tempo for midi only
  \set Score.tempoHideNote = ##t
  \tempo 1 = 60
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
commonArtPartI = {
  %{01%} s\breve |
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
  %{12%} \time 3/1 \tempo 1 = 90 s \bar "" \break s1 |
  %{13%} s\breve. |
  %{14%} s |
  %{15%} s |
  %{16%} s |
  %{17%} \time 4/2 \tempo 1 = 60 s1. \bar "" \break s2 |
  %{18%} s\breve |
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
  %{30%} s \once \undo \hide Staff.BarLine \bar "||" \break |
}

commonArtPartII = {
  %{31%} \mark "Secunda pars" s |
  %{32%} s |
  %{33%} s |
  %{34%} s |
  %{35%} s |
  %{36%} s |
  %{37%} s |
  %{38%} s |
  %{39%} s |
  %{40%} s |
  %{41%} s |
  %{42%} s |
  %{43%} s |
  %{44%} s |
  %{45%} s |
  %{46%} s |
  %{47%} s |
  %{48%} s |
  %{49%} s |
  %{50%} s |
  %{51%} s |
  %{52%} s \once \undo \hide Staff.BarLine \bar "||" \break |
}

commonArtPartIII = {
  %{53%} \mark "Tertia pars" s |
  %{54%} s |
  %{55%} s |
  %{56%} s |
  %{57%} s |
  %{58%} s |
  %{59%} s |
  %{60%} s |
  %{61%} s |
  %{62%} s |
  %{63%} s |
  %{64%} s |
  %{65%} s |
  %{66%} s |
  %{67%} s |
  %{68%} s |
  %{69%} s |
  %{70%} s |
  %{71%} s \once \undo \hide Staff.BarLine \bar "|." |
}

commonArt = { \commonArtPartI \commonArtPartII \commonArtPartIII }

sopArtPartI = {
  %{01%} s\breve |
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
  %{12%} s\breve. |
  %{13%} s |
  %{14%} s |
  %{15%} s |
  %{16%} s |
  %{17%} s\breve |
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

sopArtPartII = {
  %{31%} s |
  %{32%} s |
  %{33%} s |
  %{34%} s |
  %{35%} s |
  %{36%} s |
  %{37%} s |
  %{38%} s |
  %{39%} s |
  %{40%} s |
  %{41%} s |
  %{42%} s |
  %{43%} s |
  %{44%} s |
  %{45%} s |
  %{46%} s |
  %{47%} s |
  %{48%} s |
  %{49%} s |
  %{50%} s |
  %{51%} s |
  %{52%} s |
}

sopArtPartIII = {
  %{53%} s |
  %{54%} s |
  %{55%} s |
  %{56%} s |
  %{57%} s |
  %{58%} s |
  %{59%} s |
  %{60%} s |
  %{61%} s |
  %{62%} s |
  %{63%} s |
  %{64%} s |
  %{65%} s |
  %{66%} s |
  %{67%} s |
  %{68%} s |
  %{69%} s |
  %{70%} s |
  %{71%} s |
}

sopArt = { \sopArtPartI \sopArtPartII \sopArtPartIII }

altArtPartI = {
  %{01%} s\breve |
  %{02%} s |
  %{03%} s1 s\breve.\fermata
  %{04%} |
  %{05%} s\breve |
  %{06%} s |
  %{07%} s |
  %{08%} s |
  %{09%} s |
  %{10%} s |
  %{11%} s |
  %{12%} s\breve. |
  %{13%} s |
  %{14%} s |
  %{15%} s |
  %{16%} s |
  %{17%} s\breve |
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

altArt = { \altArtPartI \sopArtPartII \sopArtPartIII }

tenArt = \sopArt

basArt = \sopArt


% the tunes
sopNotesPartI = \relative c'' {
  %{01%} a1 a |
  %{02%} r f |
  %{03%} g2 g bes1 |
  %{04%} a\breve |
  %{05%} c1 c |
  %{06%} d1. c2 |
  %{07%} c2.\melisma bes8[ a] bes4 a a1\melismaEnd
  %{08%} g2 a\breve.
  %{09%} |
  %{10%} R\breve |
  %{11%} R\breve |
  %{12%} r\breve a1 |
  %{13%} a\breve c1 |
  %{14%} c\breve bes1 |
  %{15%} \[ a\melisma g1. \] f2 |
  %{16%} f\breve\melismaEnd e1 |
  %{17%} f1 r2 f |
  %{18%} f1 g |
  %{19%} a1. a2 |
  %{20%} f1 g |
  %{21%} a r2 c |
  %{22%} c1 c |
  %{23%} c2.\melisma bes4 a2\melismaEnd g |
  %{24%} f2.\melisma g4 a2\melismaEnd g2.\melisma
  %{25%}  f4 f1\melismaEnd e2 |
  %{26%} f\breve |
  %{27%} R\breve*4

  %{30%}  |
}

sopINotesPartII = \relative c'' {
  %{31%} c1 c2 c |
  %{32%} d1. c2 |
  %{33%} c2.\melisma bes8[ a] bes4 a a1\melismaEnd
  %{34%}  g2 a1 |
  %{35%} r2 a a1 |
  %{36%} c c1.
  %{37%}  bes2 a g2.\melisma
  %{38%}  f4 f1\melismaEnd e2 |
  %{39%} f1 r2 f |
  %{40%} f1 g |
  %{41%} a1. g2 |
  %{42%} f1 g |
  %{43%} a r2 c |
  %{44%} c1 c |
  %{45%} c2.\melisma bes4 a2\melismaEnd g |
  %{46%} f2.\melisma g4 a f] g2.
  %{47%}  f4 f1\melismaEnd e2 |
  %{48%} f\breve |
  %{49%} s |
  %{50%} s |
  %{51%} s |
  %{52%} s |
}

sopIINotesPartII = \relative c'' {
  \set Staff.shortInstrumentName = "D II"
  %{31%} a1 g2 a |
  %{32%} \[ bes1\melisma a\melismaEnd \] |
  %{33%} g1 d'1.
  %{34%}  d2 c1 |
  %{35%} c d |
  %{36%} g, a |
  %{37%} d, e |
  %{38%} f g |
  %{39%} a r2 a |
  %{40%} bes a c1 |
  %{41%} d d2 d2.\melisma
  %{42%}  c8[ bes] a4 bes c1\melismaEnd |
  %{43%} c\breve |
  %{44%} r2 c, f g |
  %{45%} a4\melisma g a bes c1\melismaEnd |
  %{46%} c r2 c2.\melisma
  %{47%}  bes4 bes a8[ bes] c2\melismaEnd c |
  %{48%} a\breve |
  %{49%} r2 f f'2.\melisma e4 |
  %{50%} d c bes1\melismaEnd a2 |
  %{51%} bes c bes bes |
  %{52%} a\breve |
  \set Staff.shortInstrumentName = "D"
}

sopNotesPartIII = \relative c'' {
  %{53%} c1 c |
  %{54%} d c |
  %{55%} c bes |
  %{56%} a r2  a |
  %{57%} a1 c |
  %{58%} c2.\melisma bes4 a2\melismaEnd g2.\melisma
  %{59%}  f4\melismaEnd f1 e2 |
  %{60%} f1 r2 f |
  %{61%} f1 g |
  %{62%} a a |
  %{63%} f g |
  %{64%} a r2 c |
  %{65%} c1 c |
  %{66%} c a |
  %{67%} bes2.\melisma a4 g f g2.
  %{68%}  f4 f1\melismaEnd e2 |
  %{69%} f\breve |
  %{70%} R\breve*2
  %{71%}  |
}

sopVoice = <<
  \commonArt
  \sopArt
  { \sopNotesPartI \sopIINotesPartII \sopNotesPartIII }
>>

sopIVoice = <<
  \commonArt
  { s\breve*11 | s\breve.*5 | s\breve*14 | \sopArtPartII s\breve*19 | }
  { s\breve*11 | s\breve.*5 | s\breve*14 | \sopINotesPartII s\breve*19 | }
>>

altVoice = <<
  \commonArt
  \altArt
  \relative c'
  {
    %{01%} f1 f |
    %{02%} r2 c d d |
    %{03%} e1 f\breve.
    %{04%} |
    %{05%} a1. g2 |
    %{06%} f4\melisma e f g a1.\melismaEnd
    %{07%}  g2 f2.\melisma e4 |
    %{08%} d2\melismaEnd d e f1
    %{09%}  f2 d4\melisma e f g |
    %{10%} a1\melismaEnd g2 e2.\melisma
    %{11%}  d4 d1\melismaEnd c2 |
    %{12%} d\breve c1 |
    %{13%} d1 c c |
    %{14%}  g' a f\breve
    %{15%}  e1 d\breve
    %{16%}  c |
    %{17%} c1 r2 c |
    %{18%} d1 e |
    %{19%} f2.\melisma e8[ d] c2\melismaEnd c |
    %{20%} d4\melisma c f1\melismaEnd e2 |
    %{21%} f f g g |
    %{22%} a a g1.
    %{23%}  g2 c,2.\melisma bes4 |
    %{24%} a2\melismaEnd a f' e |
    %{25%} d1 c |
    %{26%} a bes2 c |
    %{27%} d bes a2.\melisma bes4 |
    %{28%} c a d2. c8[ bes] c2\melismaEnd |
    %{29%} d1. d2 |
    %{30%} c\breve |
    %{31%} f1 e2 e |
    %{32%} f1. f,2 |
    %{33%} c'1\melisma f2. e4 |
    %{34%} d2\melismaEnd d e a |
    %{35%} g a d,4\melisma e f d |
    %{36%} e f g2. f8[ e] f2\melismaEnd |
    %{37%} g2.\melisma f4 e d c1\melismaEnd
    %{38%}  d2 bes1 |
    %{39%} c r2 c |
    %{40%} d f2.\melisma e8[ d] e2\melismaEnd |
    %{41%} d d f4\melisma e d c |
    %{42%} d e f1\melismaEnd e2 |
    %{43%} f1 r2 f, |
    %{44%} f' g a e |
    %{45%} f f e e |
    %{46%} a2. g4 f2\melisma e4 d |
    %{47%} e2\melismaEnd f g g |
    %{48%} c, c d2.\melisma c4 |
    %{49%} bes a bes c d1.\melismaEnd
    %{50%}  d2 f2.\melisma e4 |
    %{51%} d2\melismaEnd c d d |
    %{52%} c\breve |
    %{53%} a'1. a2 |
    %{54%} f2.\melisma g4 a2. g8[ f] |
    %{55%} e2\melismaEnd f g g |
    %{56%} c,1 r2 f |
    %{57%} f1 g |
    %{58%} a2.\melisma g4 f2\melismaEnd e |
    %{59%} d1 c |
    %{60%} a2 bes d1.
    %{61%}  c2 d4\melisma c d e\melismaEnd |
    %{62%} f1. e2\melisma |
    %{63%} d4 c f1\melismaEnd e2 |
    %{64%} f f e f |
    %{65%} g a g1.
    %{66%}  g2 c,1 |
    %{67%} f2.\melisma e4 d2\melismaEnd c |
    %{68%} d d c1 |
    %{69%} r2 d1 c2 |
    %{70%} bes2.\melisma c4 d2\melismaEnd d |
    %{71%} c\breve |
  }
>>

tenVoice = <<
  \commonArt
  \tenArt
  \relative c'
  {
    %{01%} r1 r2 c |
    %{02%} c a bes a |
    %{03%} \[ c1\melisma d\melismaEnd \] |
    %{04%} c\breve |
    %{05%} f1. e2 |
    %{06%} d4\melisma c d e f1.\melismaEnd
    %{07%}  e2 d1 |
    %{08%} bes1 a2 f1
    %{09%}  f2 f'1.\melisma
    %{10%}  e4 d e f g1\melismaEnd
    %{11%}  f2 f e |
    %{12%} d\breve f1 |
    %{13%} f\breve f1 |
    %{14%} e1.\melisma f2 d1 |
    %{15%} c1. bes2\melismaEnd a1 |
    %{16%} bes1 g\breve |
    %{17%} a1 r2 a |
    %{18%} a1 c |
    %{19%} c f,2 f'2.\melisma
    %{20%}  e4 d c bes2\melismaEnd bes |
    %{21%} c c d e |
    %{22%} f1.\melisma e4 d |
    %{23%} e2\melismaEnd e f e |
    %{24%} d d c2.\melisma bes4 |
    %{25%} a2\melismaEnd bes g1 |
    %{26%} f2 c' d a |
    %{27%} bes4\melisma c d bes c1\melismaEnd |
    %{28%} f,2 bes2.\melisma a8[ g8] a2\melismaEnd |
    %{29%} bes1. bes2 |
    %{30%} a\breve |
    %{31%} f1 c'2 c |
    %{32%} bes2.\melisma c4 d e f1\melismaEnd
    %{33%}  e2 d1 |
    %{34%} bes a2 f'2
    %{35%} e f2.\melisma e4 d2\melismaEnd |
    %{36%} c2.\melisma bes4 a1\melismaEnd |
    %{37%} g c2.\melisma bes4 |
    %{38%} a2\melismaEnd bes g1 |
    %{39%} f r2 f |
    %{40%} bes d c c |
    %{41%} f2.\melisma e4 d c bes2.
    %{42%}  c4 d2\melismaEnd c1 |
    %{43%} f,2 f f'2.\melisma g4 |
    %{44%} a2\melismaEnd e  f c |
    %{45%} r f, c' c |
    %{46%} f2.\melisma e4 d2 c4 bes |
    %{47%} c2\melismaEnd d c c |
    %{48%} f, f f'2.\melisma e4 |
    %{49%} d c d a bes2\melismaEnd bes |
    %{50%} bes4\melisma a bes c d2. c4 |
    %{51%} bes2\melismaEnd a bes bes |
    %{52%} f\breve |
    %{53%} f'1. f2 |
    %{54%} d4\melisma c d e f1\melismaEnd |
    %{55%} c d2 e |
    %{56%} f1 r2 c |
    %{57%} d1 e |
    %{58%} f c2.\melisma bes4 |
    %{59%} a2\melismaEnd bes g1 |
    %{60%} f r |
    %{61%} r2 f bes bes |
    %{62%} c1. a2 |
    %{63%} d2.\melisma c4 bes2\melismaEnd bes |
    %{64%} c a c2.\melisma d4 |
    %{65%} e c f1 e4 d |
    %{66%} e2\melismaEnd e f2.\melisma e4 |
    %{67%} d c bes2. a4 g2\melismaEnd |
    %{68%} a bes g1 |
    %{69%} f2 bes1 c2 |
    %{70%} d2.\melisma c4 bes2\melismaEnd bes |
    %{71%} a\breve |
  }
>>

basVoice = <<
  \commonArt
  \basArt
  \relative c
  {
    %{01%} r1 r2 f |
    %{02%} f1 r2 d |
    %{03%} c c bes1 |
    %{04%} f'\breve |
    %{05%} R\longa
    %{06%}  |
    %{07%} R\breve |
    %{08%} r1 c' |
    %{09%} c d1.
    %{10%}  c2 c1 |
    %{11%} bes a |
    %{12%} r\breve f1 |
    %{13%} d2\melisma e f g a bes |
    %{14%} c bes a1\melismaEnd bes |
    %{15%} f c \[ d\melisma |
    %{16%} bes\melismaEnd \] c\breve |
    %{17%} f1 r2 f |
    %{18%} d1 c |
    %{19%} f2.\melisma g4 a2\melismaEnd a |
    %{20%} bes1 g |
    %{21%} f2 f bes c |
    %{22%} f,4\melisma g a bes c1.\melismaEnd
    %{23%}  c,2 f c |
    %{24%} d2.\melisma e4 f2\melismaEnd c |
    %{25%} d bes c1 |
    %{26%} f1 r2 f |
    %{27%} bes, bes f'2.\melisma g4 |
    %{28%} a2\melismaEnd bes f1 |
    %{29%} bes,1. bes2 |
    %{30%} f'\breve |
    %{31%} R\breve*22

    %{52%}  |
    %{53%} f1 f |
    %{54%} bes f |
    %{55%} a g |
    %{56%} f r2 f |
    %{57%} d1 c |
    %{58%} f1. c2 |
    %{59%} d bes c1 |
    %{60%} r2 f bes1.
    %{61%}  a2 g g |
    %{62%} f2.\melisma g4 a bes c a |
    %{63%} bes2. a4 g2\melismaEnd g |
    %{64%} f1 a |
    %{65%} c1. c2 |
    %{66%} c c, f1 |
    %{67%} bes,2 bes1 es2 |
    %{68%} d bes c1 |
    %{69%} r2 bes1 a2 |
    %{70%} bes1. bes2 |
    %{71%} f'\breve |
  }
>>
