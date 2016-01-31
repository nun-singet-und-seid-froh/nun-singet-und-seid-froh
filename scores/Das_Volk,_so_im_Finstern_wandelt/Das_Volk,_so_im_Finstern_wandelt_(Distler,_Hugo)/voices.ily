global = {
  \key c \major
  \partial 4
  \autoBeamOff
  \dynamicUp
}

sopVoice = \relative c' {
  r4
  \time 2/4
  r4 e^\markup{\italic meno}
  \time 3/4
  f4. e4 e8
  \time 4/4
  g4 f e e
  \time 3/4
  r4 r e8 e
  a2 a4
  \time 4/4
  e4 e2.\fermata
  \mark
  \time 3/8
  R4.
  R4.
  b'8\mp b a
}

altVoice = \relative c' {
  r4
  \time 2/4
  r4 c
  \time 3/4
  e4. c4 c8
  \time 4/4
  e4 d c b
  \time 3/4
  r4 r c8 c
  e2 e4
  \time 4/4 b2 b\fermata
  
}

tenVoice = \relative c' {
  a4\p
  \time 3/4
  b4. a4 a8
  \time 4/4
  c4( a8[ a b a] c4~
  \time 3/4
  c8[ a b a b e]
  b4) b\breathe a8 a
  \time 2/4
  c4 b
  \time 4/4
  << { \voiceOne a2 b4 \times 2/3 { b8 b a } } { \voiceTwo a2 g\fermata }  >>\oneVoice
  \time 3/8
  e'4\breathe b8
  e\breathe b b
  e4.~
  e8 r r
  R4.
  R4.
  \time 3/4
}



basVoice = \relative c {
  r4
  \time 2/4
  r4 e4
  \time 3/4
  a4. e4 e8
  \time 4/4
  e4 g4 g e
  \time 3/4
  r4 r e8 e
  f2 f4
  \time 4/4
  e4 e2.\fermata
}
  