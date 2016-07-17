global = {
  \override Staff.BarLine.allow-span-bar = ##f
  \key g \major
  \time 4/4
  \partial 4
  \dynamicUp
  \override DynamicLineSpanner.staff-padding = #2
  \autoBeamOff
}

commonMarks = {
  %{00%} s4
  %{01%} s1*10
  %{11%} s4\f s4 s2
  %{12%} s1*7
  %{19%} s4\f s4 s2
  %{20%} s1*13
  %{33%} s1\fermata
}

womenMarks = {
  %{00%} s4\f
  %{01%} s1*30
  %{31%} s2 s4 s8\f s8
}

menMarks = {
  %{00%} s4
  %{01%} s1
  %{02%} s2 s4 s4\f
  %{03%} s1 s2 s4 s4\f
  %{04%} s1*26
  %{31%} s2 s4\f s4
}

sopIVoice = \relative c'' {
  <<
    \tempo "Allegro moderato."
    { \commonMarks }
    { \womenMarks}
    {
      %{00%} g4
      %{01%} b c8 c d4 g,8 g
      %{02%} a2 b4 d
      %{03%} e2. e4
      %{04%} d2 r2
      %{05%} r2 r4 g4
      %{06%} fis e d d
      %{07%} e d c c
      %{08%} c4. c8 b4 d4
      %{09%} g2 cis,2
      %{10%} d a
      %{11%} d4 d d d8 d
      %{12%} d4. d8 d4 d\noPageBreak
      %{13%} c?2 c4 c
      %{14%} f1
      %{15%} e2 e4 e
      %{16%} e( d) c2
      %{17%} r2 c4 c
      %{18%} c( b) a2
      %{19%} b4 b b b8 b
      %{20%} c4. c8 c4 c
      %{21%} f2 f4 4
      %{22%} f2 e2
      %{23%} f4 e d2
      %{24%} c2 c4 c
      %{25%} c( b) a( g)
      %{26%} fis g a2
      %{27%} d,2 e'4 e
      %{28%} d4  a b c
      %{29%} b2 a4 g
      %{30%} b c8 c d4 g,8 g
      %{31%} a2 b4 b8 b
      %{32%} e1
      %{33%} d1\bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
  >>
}

sopIIVoice = \relative c'' {
  <<
    { \commonMarks }
    { \womenMarks}
    {
      %{00%} g4
      %{01%} b c8 c d4 g,8 g
      %{02%} a2 b4 d
      %{03%} d2 c
      %{04%} b r4 g4
      %{05%} d' c b b
      %{06%} c2 b4 b
      %{07%} e e e e
      %{08%} d4. d8 d4 d
      %{09%} d2 cis
      %{10%} d2 a
      %{11%} b4 b b d8 d
      %{12%} g,4. g8 g4 g
      %{13%} c?2 c4 c
      %{14%} d1(
      %{15%} e4 d) c r4
      %{16%} r2 e4 e
      %{17%} e( d) c2
      %{18%} R1
      %{19%} g4 g g g8 g
      %{20%} c4. c8 c4 c
      %{21%} c2 c4 c
      %{22%} bes2( c)
      %{23%} c r
      %{24%} R1
      %{25%} r2 c4 c
      %{26%} c( b) a( g)
      %{27%} fis g c2~
      %{28%} c4 d d c
      %{29%} b2 a4 g
      %{30%} b c8 c d4 g,8 g
      %{31%} a2 b4 d8 d
      %{32%} d2( c)
      %{33%} b1 \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
  >>
}

altIVoice = \relative c'' {
  <<
    { \commonMarks }
    { \womenMarks }
    {
      %{00%} g4
      %{01%} b c8 c d4 g,8 g
      %{02%} a2 b4 b
      %{03%} b( a) g2
      %{04%} g4 g fis e
      %{05%} d e d2(
      %{06%} fis) g4 g
      %{07%} g g a a
      %{08%} a4. a8 g4 d
      %{09%} b'2 g
      %{10%} g fis
      %{11%} fis4 fis fis b8 b
      %{12%} b4. b8 b4 b
      %{13%} a2 a4 a
      %{14%} a2( g)
      %{15%} g2 c4 b
      %{16%} a( b) c2
      %{17%} r2 a4 a
      %{18%} a( g) fis2
      %{19%} g4 g g g8 g
      %{20%} g4. g8 g4 g
      %{21%} f2 f4 f
      %{22%} g2 g
      %{23%} a4 a b?2
      %{24%} c a4 g
      %{25%} fis?4( g fis e)
      %{26%} d2 a'4 a
      %{27%} a( g) fis( e)
      %{28%} a2( d,4) a'
      %{29%} g2 fis4 g
      %{30%} b c8 c d4 g,8 g
      %{31%} a2 b4 b8 b
      %{32%} b4( a) g2~
      %{33%} g1 \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
  >>
}

altIIVoice = \relative c'' {
  <<
    { \commonMarks }
    { \womenMarks }
    {
      %{00%} g4
      %{01%} b c8 c d4 g,8 g
      %{02%} a2 b4 g
      %{03%} g( fis) e( fis)
      %{04%} g g fis e
      %{05%} d e d2(
      %{06%} c) d4 d
      %{07%} g g e e
      %{08%} a4. a8 d,4 a'
      %{09%} g2 e
      %{10%} a d,
      %{11%} d4 d d d8 d
      %{12%} e4. e8 e4 g
      %{13%} g2 g4 c
      %{14%} c2( b
      %{15%} g4 b) a r
      %{16%} r2 c4 b
      %{17%} a( b a g
      %{18%} fis g) d2
      %{19%} d4 d d d8 d
      %{20%} c4. c8 c4 c
      %{21%} a'2 a4 a
      %{22%} g2 g
      %{23%} r b?4 a
      %{24%} g2 e
      %{25%} r a4 a
      %{26%} a( g fis e)
      %{27%} d2 fis4( g
      %{28%} a2 g4) g
      %{29%} g2 d4 g4
      %{30%} b4 c8 c d4 g,8 g
      %{31%} a2 d,4 g8 g
      %{32%} g4( fis e fis)
      %{33%} g1 \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
  >>
}

tenIVoice = \relative c' {
  <<
    { \commonMarks }
    { \menMarks }
    {
      %{00%} r4
      %{01%} R1
      %{02%} r2 r4 b
      %{03%} e2 e
      %{04%} b r4 g
      %{05%} b c8 c d4 g,8 g
      %{06%} a2 b4 d
      %{07%} c d e a,
      %{08%} a4. d8 d4 d
      %{09%} g,2 a
      %{11%} a d
      %{12%} d4 d d d8 d
      %{13%} d4. d8 d4 e
      %{14%} e2 e4 e
      %{15%} f2( g)
      %{16%} g e4 g
      %{17%} fis?( g) c,2
      %{18%} r e4 e
      %{19%} a,( b) c( d)
      %{20%} d b b b8 b
      %{21%} a4. a8 e'4 4
      %{22%} d2 d4 d d2 c
      %{23%} c4 c d2
      %{24%} e c4 c
      %{25%} a( b c e)
      %{26%} a, r a a
      %{27%} a( d) c2~
      %{28%} c4 c( b) a
      %{29%} b( c) d2~(
      %{30%} d g~
      %{31%} g4 fis) g d
      %{32%} e1
      %{33%} g, \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
  >>
}

tenIIVoice = \relative c' {
  <<
    { \commonMarks }
    { \menMarks }
    {
      %{00%} r4
      %{01%} R1
      %{02%} r2 r4 g
      %{03%} c2 c
      %{04%} d r4 g,
      %{05%} b c8 c d4 g,8 g
      %{06%} a2 b4 g
      %{07%} g g c c
      %{08%} d4. a8 b4 a
      %{09%} b2 cis
      %{10%} a a
      %{11%} b4 fis fis fis8 fis
      %{12%} g4. g8 g4 g
      %{13%} e'2 a,4 a
      %{14%} a2( b)
      %{15%} c r
      %{16%} r e4 e
      %{17%} c g a a
      %{18%} d2 d,
      %{19%} d4 d e e8 e
      %{20%} a4. a8 e4 c'
      %{21%} f,2 f4 f
      %{22%} bes1
      %{23%} a2 r
      %{24%} e'4 d c2
      %{25%} d2 a4 a
      %{26%} a( b c e)
      %{27%} a, r a a
      %{28%} a d d e
      %{29%} d2( c)
      %{30%} b1(
      %{31%} d2) b4 b
      %{32%} c1
      %{33%} d \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
  >>
}

basIVoice = \relative c' {
  <<
    { \commonMarks }
    { \menMarks }
    {
      %{00%} r4
      %{01%} R1
      %{02%} r2 r4 g
      %{03%} g2 g4( a)
      %{04%} b2 r4 g
      %{05%} b  c8 c d4 g,8 g
      %{06%} a2 b4 b
      %{07%} c b a g
      %{08%} fis4. fis8 g4 fis
      %{09%} e2 e
      %{10%} d d
      %{11%} b'4 b b b8 b
      %{12%} b4. b8 b4 b
      %{13%} c?2 a4 a
      %{14%} d1
      %{15%} c2 c4 c
      %{16%} c( b a g)
      %{17%} fis( g) c, c
      %{18%} d2 d
      %{19%} g4 g e e8 e
      %{20%} e4. e8 a4 a
      %{21%} a2 a4 a
      %{22%} bes2 g
      %{23%} f4 f f2
      %{24%} e e4 e
      %{25%} d2 d~
      %{26%} d c'4 c
      %{27%} c( b) a( g)
      %{28%} fis2( g4) c,
      %{29%} d1~(
      %{30%} d2 d')
      %{31%} c b4 b
      %{32%} g2.( a4)
      %{33%} b1 \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
  >>
}


basIIVoice = \relative c {
  <<
    { \commonMarks }
    { \menMarks }
    {
      %{00%} r4
      %{01%} R1
      %{02%} r2 r4 g'4
      %{03%} c,2 c
      %{04%} g r4 g'4
      %{05%} b c8 c d4 g,8 g
      %{06%} a2 b4 b,
      %{07%} c b a g
      %{08%} fis4. fis'8 g4 fis
      %{09%} e2 e
      %{10%} d d
      %{11%} b4 b b b8 b
      %{12%} e4. e8 e4 e
      %{13%} a2 a4 a
      %{14%} d,2( g,)
      %{15%} c r
      %{16%} r c'4 c
      %{17%} c( b) a2
      %{18%} R1
      %{19%} g,4 g g g8 g
      %{20%} a4. a8 a4 a
      %{21%} d2 d4 d
      %{22%} g2( c,)
      %{23%} f r
      %{24%} r a,4 a
      %{25%} d1
      %{26%} d2 c4 c
      %{27%} c( b a g
      %{28%} fis) fis g c
      %{29%} d1
      %{30%} g,1~
      %{31%} g2 g'4 g
      %{32%} c,1
      %{33%} g1 \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
  >>
}
