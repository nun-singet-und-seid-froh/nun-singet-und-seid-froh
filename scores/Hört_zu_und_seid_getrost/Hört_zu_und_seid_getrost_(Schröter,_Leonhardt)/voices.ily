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
commonArtPartI = {
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

altArt = { \altArtPartI \sopArtPartII \sopArtPartIII }

tenArt = \sopArt

basArt = \sopArt


% the tunes
sopNotesPartI = \relative c'' {
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
  %{27%} R1*4

  %{30%}  |
}

sopINotesPartII = \relative c'' {
  %{31%} c2 c4 c |
  %{32%} d2. c4 |
  %{33%} c4.\melisma bes16[ a bes8 a] a2\melismaEnd
  %{34%}  g4 a2 |
  %{35%} r4 a a2 |
  %{36%} c c2.
  %{37%}  bes4 a g4.\melisma
  %{38%}  f8 f2\melismaEnd e4 |
  %{39%} f2 r4 f |
  %{40%} f2 g |
  %{41%} a2. g4 |
  %{42%} f2 g |
  %{43%} a r4 c |
  %{44%} c2 c |
  %{45%} c4.\melisma bes8 a4\melismaEnd g |
  %{46%} f4.\melisma g8[ a f] g4.
  %{47%}  f8 f2\melismaEnd e4 |
  %{48%} f1 |
  %{49%} s |
  %{50%} s |
  %{51%} s |
  %{52%} s |
}

sopIINotesPartII = \relative c'' {
  \set Staff.shortInstrumentName = "D II"
  %{31%} a2 g4 a |
  %{32%} \[ bes2\melisma a\melismaEnd \] |
  %{33%} g2 d'2.
  %{34%}  d4 c2 |
  %{35%} c d |
  %{36%} g, a |
  %{37%} d, e |
  %{38%} f g |
  %{39%} a r4 a |
  %{40%} bes a c2 |
  %{41%} d d4 d4.\melisma
  %{42%}  c16[ bes a8 bes] c2\melismaEnd |
  %{43%} c1 |
  %{44%} r4 c, f g |
  %{45%} a8[\melisma g a bes] c2\melismaEnd |
  %{46%} c r4 c4.\melisma
  %{47%}  bes8[ bes a16 bes] c4\melismaEnd c |
  %{48%} a1 |
  %{49%} r4 f f'4.\melisma e8[ |
  %{50%} d c] bes2\melismaEnd a4 |
  %{51%} bes c bes bes |
  %{52%} a1 |
  \set Staff.shortInstrumentName = "D"
}

sopNotesPartIII = \relative c'' {
  %{53%} c2 c |
  %{54%} d c |
  %{55%} c bes |
  %{56%} a r4  a |
  %{57%} a2 c |
  %{58%} c4.\melisma bes8 a4\melismaEnd g4.\melisma
  %{59%}  f8\melismaEnd f2 e4 |
  %{60%} f2 r4 f |
  %{61%} f2 g |
  %{62%} a a |
  %{63%} f g |
  %{64%} a r4 c |
  %{65%} c2 c |
  %{66%} c a |
  %{67%} bes4.\melisma a8[ g f] g4.
  %{68%}  f8 f2\melismaEnd e4 |
  %{69%} f1 |
  %{70%} R1*2
  %{71%}  |
}

sopVoice = <<
  \commonArt
  \sopArt
  { \sopNotesPartI \sopIINotesPartII \sopNotesPartIII }
>>

sopIVoice = <<
  \commonArt
  { s1*11 | s1.*5 | s1*14 | \sopArtPartII s1*19 | }
  { s1*11 | s1.*5 | s1*14 | \sopINotesPartII s1*19 | }
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
    %{31%} f2 e4 e |
    %{32%} f2. f,4 |
    %{33%} c'2\melisma f4. e8 |
    %{34%} d4\melismaEnd d e a |
    %{35%} g a d,8[\melisma e f d] |
    %{36%} e[ f] g4. f16[ e] f4\melismaEnd |
    %{37%} g4.\melisma f8[ e d] c2\melismaEnd
    %{38%}  d4 bes2 |
    %{39%} c r4 c |
    %{40%} d f4.\melisma e16[ d] e4\melismaEnd |
    %{41%} d d f8[\melisma e d c] |
    %{42%} d[ e] f2\melismaEnd e4 |
    %{43%} f2 r4 f, |
    %{44%} f' g a e |
    %{45%} f f e e |
    %{46%} a4. g8 f4\melisma e8[ d] |
    %{47%} e4\melismaEnd f g g |
    %{48%} c, c d4.\melisma c8 |
    %{49%} bes[ a bes c] d2.\melismaEnd
    %{50%}  d4 f4.\melisma e8 |
    %{51%} d4\melismaEnd c d d |
    %{52%} c1 |
    %{53%} a'2. a4 |
    %{54%} f4.\melisma g8 a4. g16[ f] |
    %{55%} e4\melismaEnd f g g |
    %{56%} c,2 r4 f |
    %{57%} f2 g |
    %{58%} a4.\melisma g8 f4\melismaEnd e |
    %{59%} d2 c |
    %{60%} a4 bes d2.
    %{61%}  c4 d8[\melisma c d e]\melismaEnd |
    %{62%} f2. e4\melisma |
    %{63%} d8[ c] f2\melismaEnd e4 |
    %{64%} f f e f |
    %{65%} g a g2.
    %{66%}  g4 c,2 |
    %{67%} f4.\melisma e8 d4\melismaEnd c |
    %{68%} d d c2 |
    %{69%} r4 d2 c4 |
    %{70%} bes4.\melisma c8 d4\melismaEnd d |
    %{71%} c1 |
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
    %{31%} f2 c'4 c |
    %{32%} bes4.\melisma c8[ d e] f2\melismaEnd
    %{33%}  e4 d2 |
    %{34%} bes a4 f'4
    %{35%} e f4.\melisma e8 d4\melismaEnd |
    %{36%} c4.\melisma bes8 a2\melismaEnd |
    %{37%} g c4.\melisma bes8 |
    %{38%} a4\melismaEnd bes g2 |
    %{39%} f r4 f |
    %{40%} bes d c c |
    %{41%} f4.\melisma e8[ d c] bes4.
    %{42%}  c8 d4\melismaEnd c2 |
    %{43%} f,4 f f'4.\melisma g8 |
    %{44%} a4\melismaEnd e  f c |
    %{45%} r f, c' c |
    %{46%} f4.\melisma e8 d4 c8[ bes] |
    %{47%} c4\melismaEnd d c c |
    %{48%} f, f f'4.\melisma e8 |
    %{49%} d[ c d a] bes4\melismaEnd bes |
    %{50%} bes8[\melisma a bes c] d4. c8 |
    %{51%} bes4\melismaEnd a bes bes |
    %{52%} f1 |
    %{53%} f'2. f4 |
    %{54%} d8[\melisma c d e] f2\melismaEnd |
    %{55%} c d4 e |
    %{56%} f2 r4 c |
    %{57%} d2 e |
    %{58%} f c4.\melisma bes8 |
    %{59%} a4\melismaEnd bes g2 |
    %{60%} f r |
    %{61%} r4 f bes bes |
    %{62%} c2. a4 |
    %{63%} d4.\melisma c8 bes4\melismaEnd bes |
    %{64%} c a c4.\melisma d8[ |
    %{65%} e c] f2 e8[ d] |
    %{66%} e4\melismaEnd e f4.\melisma e8[ |
    %{67%} d c] bes4. a8 g4\melismaEnd |
    %{68%} a bes g2 |
    %{69%} f4 bes2 c4 |
    %{70%} d4.\melisma c8 bes4\melismaEnd bes |
    %{71%} a1 |
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
    %{08%} r2 c' |
    %{09%} c d2.
    %{10%}  c4 c2 |
    %{11%} bes a |
    %{12%} r1 f2 |
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
    %{31%} R1*22

    %{52%}  |
    %{53%} f2 f |
    %{54%} bes f |
    %{55%} a g |
    %{56%} f r4 f |
    %{57%} d2 c |
    %{58%} f2. c4 |
    %{59%} d bes c2 |
    %{60%} r4 f bes2.
    %{61%}  a4 g g |
    %{62%} f4.\melisma g8[ a bes c a] |
    %{63%} bes4. a8 g4\melismaEnd g |
    %{64%} f2 a |
    %{65%} c2. c4 |
    %{66%} c c, f2 |
    %{67%} bes,4 bes2 es4 |
    %{68%} d bes c2 |
    %{69%} r4 bes2 a4 |
    %{70%} bes2. bes4 |
    %{71%} f'1 |
  }
>>
