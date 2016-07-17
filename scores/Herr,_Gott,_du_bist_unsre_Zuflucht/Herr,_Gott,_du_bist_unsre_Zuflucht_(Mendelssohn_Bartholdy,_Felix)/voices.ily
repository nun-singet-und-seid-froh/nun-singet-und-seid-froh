%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSAATTBB/[SS][AA][TT][BB]/modern/voices.ily

global = {
  %\override Staff.BarLine.allow-span-bar = ##f
  \key f \major
  \time 4/4
  \partial 2
  \dynamicUp
  %\override DynamicLineSpanner.staff-padding = #2
  \autoBeamOff
}

commonMarks = {
  %{00%} s2\p
  %{01%} s s\<
  %{02%} s1
  %{03%} s2\> s
  %{04%} s2 s\!
  %{05%} s1*6

  %{11%} s2^\markup{\italic cresc.} s2
  %{12%} s1*2

  %{14%} s4\f s4 s2
  %{15%} s1*3

  %{18%} s2\pp s2
  %{19%} s1*7

  %{26%} s2\f s2
  %{27%} s1*3

  %{30%} s2\pp s2
  %{31%} s1*4

  %{35%} s2 s\f
  %{36%} s1*4

  %{40%} s1\fermata
  \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t

}

womenMarks = {
  %{00%} s2
  %{01%} s1*10

  %{10%} s4\p s2.
  %{11%} s4\< s4 s2
  %{12%} s2 s2\!
  %{13%} s1*11

  %{25%} s2\cresc s2
  %{26%} s1*11

  %{37%} s2 s4.\p s8
}

menMarks = {
  %{00%} s2
  %{01%} s1*12

  %{13%} s4\< s4 s2
  %{14%} s1*10

  %{24%} s2 s4\cresc s4
}

sopIVoice = \relative c'' {
  <<
    \tempo "Andante."
    { \commonMarks }
    { \womenMarks }
    {
      %{00%} d,2
      %{01%} f bes
      %{02%} a a4 a
      %{03%} c2 c
      %{04%} f, bes
      %{05%} a1
      %{06%} R1*3

      %{09%} R1\break
      %{10%} g4 g g g
      %{11%} bes2 bes
      %{12%} d4 d d d
      %{13%} d2 d
      %{14%} g g
      %{15%} c,4 c c c
      %{16%} f1
      %{17%} e2 r\break
      %{18%} c2 c
      %{19%} f,2. f4
      %{20%} bes2 bes
      %{21%} a2. f8[ g]
      %{22%} a2 a
      %{23%} a r
      %{24%} R1
      %{25%} bes4 bes bes bes
      %{26%} es2 es
      %{27%} g4 g g g
      %{28%} g1
      %{29%} fis2 r
      %{30%} d d
      %{31%} g,2. g4
      %{32%} c2 bes
      %{33%} a2. f8[ g]
      %{34%} a2 a
      %{35%} a2 a4. a8
      %{36%} d2 a2~
      %{37%} a d,4. d8
      %{38%} e1~
      %{39%} e
      %{40%} d
    }
  >>
}

sopIIVoice = \relative c'' {
  <<
    { \commonMarks }
    { \womenMarks }
    {
      %{00%} d,2
      %{01%} f bes
      %{02%} a a4 a
      %{03%} c2 c
      %{04%} f, bes
      %{05%} e,1
      %{06%} R1*4

      %{10%} g4 g g g
      %{11%} g2 g
      %{12%} bes4 bes bes bes
      %{13%} bes2 bes
      %{14%} c c
      %{15%} c4 c c c
      %{16%} c1
      %{17%} c2 r
      %{18%} c2 c
      %{19%} f,2. f4
      %{20%} bes2 bes
      %{21%} a2. f8[ g]
      %{22%} a2 a
      %{23%} a r
      %{24%} R1
      %{25%} bes4 bes bes bes
      %{26%} bes2 es
      %{27%} es4 es es d
      %{28%} cis1
      %{29%} d2 r
      %{30%} d d
      %{31%} g,2. g4
      %{32%} c2 bes
      %{33%} a2. f8[ g]
      %{34%} a2 a
      %{35%} a2 a4. a8
      %{36%} d2 a2~
      %{37%} a d,4. d8
      %{38%} e1~
      %{39%} e
      %{40%} d
    }
  >>
}

altIVoice = \relative c'' {
  <<
    { \commonMarks }
    { \womenMarks }
    {
      %{00%} d,2
      %{01%} f bes
      %{02%} a f4 f
      %{04%} e2 a
      %{04%} d, d
      %{05%} cis1
      %{06%} R1*4

      %{10%} g'4 g g g
      %{11%} g2 g
      %{12%} g4 g g g
      %{13%} bes2 bes
      %{14%} bes bes
      %{15%} f4 f f f
      %{16%} as1
      %{17%} g2 r
      %{18%} a?4( g) f( e)
      %{19%} d2. d4
      %{20%} g( f) e( d)
      %{21%} cis2 d
      %{22%} d cis
      %{23%} d r
      %{24%} R1
      %{25%} g4 g g g
      %{26%} bes2 bes
      %{27%} bes4 bes bes bes
      %{28%} bes2( a)
      %{29%} a r
      %{30%} bes4( a) g( f?)
      %{31%} e2. g4
      %{32%} g( f) e( d)
      %{33%} cis2 d
      %{34%} d cis
      %{35%} d a'4. a8
      %{36%} d2 a2~
      %{37%} a d,4. d8
      %{38%} d1(
      %{39%} cis)
      %{40%} d
    }
  >>
}

altIIVoice = \relative c'' {
  <<
    { \commonMarks }
    { \womenMarks }
    {
      %{00%} d,2
      %{01%} f bes
      %{02%} a f4 f
      %{03%} a2 c,
      %{04%} d g
      %{05%} cis,1
      %{06%} R1*4

      %{10%} g'4 g g g
      %{11%} g2 g
      %{12%} g4 g g g
      %{13%} g2 g
      %{14%} g g
      %{15%}  a4 a a a
      %{16%} f1
      %{17%} g2 r
      %{18%} f4( g) f( e)
      %{19%} d2. d4
      %{20%} d2 g
      %{21%} e d
      %{22%} e e
      %{23%} d r
      %{24%} R1
      %{25%} g4 g g g
      %{26%} g2 g
      %{27%} g4 g g g
      %{28%} g2( a)
      %{29%} a2 r
      %{30%} bes4( a) g( f?)
      %{31%} e2. e4
      %{32%} c2 g'
      %{33%} e d
      %{34%} e e
      %{35%} d a'4. a8
      %{36%} d2 a2~
      %{37%} a d,4. d8
      %{38%} d1(
      %{39%} cis)
      %{40%} d
    }
  >>
}

tenIVoice = \relative c' {
  <<
    { \commonMarks }
    { \menMarks }
    {
      %{00%} d,2
      %{01%} f bes
      %{02%} a a4 a
      %{03%} a2 a
      %{04%} f g
      %{05%} e1
      %{06%} R1*2

      %{08%} d'4\p d d d
      %{09%} d2 d
      %{10%} d c
      %{11%} d4 d d d
      %{12%} d2 d
      %{13%} d4 d d d
      %{14%} c c c c
      %{15%} c2 c
      %{16%} c4 c c2
      %{17%} c2 r
      %{18%} c2 c
      %{19%} bes2. bes4
      %{20%} bes2 bes
      %{21%} e,( a~
      %{22%} a) r2
      %{23%} d4\p\< d d d\!
      %{24%} d2 d
      %{25%} d4 d d d
      %{26%} bes2 bes
      %{27%} es4 es es es
      %{28%} es2( g)
      %{29%} a, r
      %{30%} d d
      %{31%} c2. g4
      %{32%} a2 bes
      %{33%} e,? a
      %{34%} g g
      %{35%} f a4. a8
      %{36%} d2 a2~
      %{37%} a r
      %{38%} r2 e4.\p e8
      %{39%} a1
      %{40%} a

    }
  >>
}

tenIIVoice = \relative c' {
  <<
    { \commonMarks }
    { \menMarks }
    {
      %{00%} d,2
      %{01%} f bes
      %{02%} a d4 d
      %{03%} c2 c
      %{04%} bes e,
      %{05%} e1
      %{06%} a4\p a a a
      %{07%} a2 a
      %{08%} a a
      %{09%} a( g~
      %{10%} g) c
      %{11%} bes4 bes bes bes
      %{12%} bes2 bes
      %{13%} bes4 bes bes bes
      %{14%} bes bes bes bes
      %{15%} a2 a
      %{16%} as4 as as2
      %{17%} c2 r
      %{18%} f,2 f
      %{19%} f2. f4
      %{20%} g2 g
      %{21%} g f4( d)
      %{22%} a'2 a
      %{23%} d, r
      %{24%} c'4\p c c c
      %{25%} bes2 bes
      %{26%} es4 es es es
      %{27%} g, g g g
      %{28%} bes2( es)
      %{29%} fis, r
      %{30%} bes bes
      %{31%} bes2. c4
      %{32%} c2 g
      %{33%} g f4( d)
      %{34%} a'2 a
      %{35%} a a4. a8
      %{36%} d2 a2~
      %{37%} a r
      %{38%} r2 e4.\p e8
      %{39%} a1
      %{40%} fis
    }
  >>
}

basIVoice = \relative c' {
  <<
    { \commonMarks }
    { \menMarks }
    {
      %{00%} d,2\p
      %{01%} f bes\<
      %{02%} a d,4 d
      %{03%} e2\> e
      %{04%} d e\!
      %{05%} e1
      %{06%} R1
      %{07%} f4\p f f f
      %{08%} f2 f
      %{09%} f1
      %{10%} es
      %{11%} d4 d d d
      %{12%} g2 g
      %{13%} g4 g g g
      %{14%} g g g g
      %{15%} c2 f,
      %{16%} f4 f f2
      %{17%} c r
      %{18%} f2 f
      %{19%} f2. f4
      %{20%} e2 e
      %{21%} e f
      %{22%} e e
      %{23%} fis r
      %{24%} a4\p a a a
      %{25%} bes2 bes
      %{26%} bes4 bes bes bes
      %{27%} bes bes bes bes
      %{28%} g1
      %{29%} d'2 r
      %{30%} g, g
      %{31%} g2. g4
      %{32%} a2 e
      %{33%} e f
      %{34%} e e
      %{35%} f a4. a8
      %{36%} d2 a~
      %{37%} a d,4.\p d8
      %{38%} a1~
      %{39%} a
      %{40%} d
    }
  >>
}


basIIVoice = \relative c {
  <<
    { \commonMarks }
    { \menMarks }
    {
      %{00%} d2\p
      %{01%} f bes\<
      %{02%} a d,4 d
      %{03%} a2\> a
      %{04%} bes g\!
      %{05%} a1
      %{06%} R1*3

      %{09%} bes4\p bes bes bes
      %{10%} c2 c
      %{11%} g4 g g g
      %{12%} g2 g
      %{13%} g'4 g g g
      %{14%} e? e e e
      %{15%} f2 f
      %{16%} f,4 f f2
      %{17%} c' r
      %{18%} a2 a
      %{19%} bes2. a4
      %{20%} g2 g
      %{21%} a a
      %{22%} a g
      %{23%} fis r
      %{24%} fis'4\p fis fis fis
      %{25%} g2 g
      %{26%} g4 g g g
      %{27%} es4 es es es
      %{28%} es1
      %{29%} d2 r
      %{30%} bes bes
      %{31%} c2. bes4
      %{32%} a2 g
      %{33%} a a
      %{34%} a a
      %{35%} d a'4. a8
      %{36%} d2 a~
      %{37%} a d,4.\p d8
      %{38%} a1~
      %{39%} a
      %{40%} d
    }
  >>
}
