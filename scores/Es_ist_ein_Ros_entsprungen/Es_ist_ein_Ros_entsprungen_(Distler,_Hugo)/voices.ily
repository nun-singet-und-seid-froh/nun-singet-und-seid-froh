%when comparing bar numbers of different voices keep in mind that
%they are not synchronized - bar numbers do not necessarily appear
%at the same time - because the different voices use different meters

global = {
  \set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
  \autoBeamOff
  \dynamicUp
  \set Score.markFormatter = #format-mark-circle-letters
  \key e \major
  \time 3/2
}

%the voices (as well as the lyrics) for each stanza are put into
%separate variables (which are numbered One, Two, Three, etc.) to
%arrange the score.ly more clearly

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 1           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopVoiceVerseOne = \relative c'' {
  \partial 2
  \tempo \markup { "Choral, ganz schlicht" } 4 = 84

  \repeat volta 2 {
    b2\p
    \time 4/4
    b4 b cis b
    b2 gis \breathe
    a gis4 fis4~
    fis e2 dis4
  }
  \alternative {
    {
      \time 3/2 \tempo "Zögern"
      %\set Timing.measureLength = #(ly:make-moment 1)
      << { \voiceOne e1 } \new Voice{ \voiceTwo { e4.( fis8) gis2 } } >> \oneVoice
      \once \override Staff.BarLine.allow-span-bar = ##t
    }
    {
      \time 3/2 \tempo "Zögern"
      %\set Timing.measureLength = #(ly:make-moment 3/2)
      << { \voiceOne e1 } \new Voice{ \voiceTwo { e4.( fis8) gis2 \breathe } } >> \oneVoice gis2 |
    }
  }
  \time 4/4 \tempo "Tempo I"
  fis4 dis e cis
  b2 \breathe b'
  \mark \default b4 b cis b
  b2 gis \breathe
  a2 gis4 fis~
  fis \tempo "Zögern" e2 dis4
  << { \voiceOne e1 } \new Voice{ \voiceTwo { e4.( fis8) gis2 } } >>
  \bar "||"
}

altVoiceVerseOne = \relative c' {
  \partial 2
  \repeat volta 2 {
    r4 e\p |
    \time 4/4
    e fis a a |
    gis4( fis8[ e] fis2) |
    e4 \breathe e dis b |
    cis4.( dis8 e4) fis |
  }

  \alternative {
    {
      \time 3/2
      %\set Timing.measureLength = #(ly:make-moment 1)
      gis4.( fis8 e2)
      %\once \override Staff.BarLine.allow-span-bar = ##t |
    }
    {
      \time 5/4
      %\set Timing.measureLength = #(ly:make-moment 5/4)
      gis4.( fis8 e2) \breathe e4
    }
  }   %}   <<{\voiceOne f1} \new Voice{\voiceTwo {f4.( g8) a2 \breathe}}>>\oneVoice  a2 |


  e e gis4.( fis8) e4
  \time 4/4
  \times 2/3 { fis8.[(^\markup{ \italic "ruhig" } g16 e8] } fis2) \breathe e4
  e fis a a \time 4/4 % \tempo "a tempo"???
  gis4 (fis8[ e] fis2)
  e4 \breathe e dis b
  cis4.( dis8 e4) fis
  gis4. (fis8 e2) \bar "||"
}

tenVoiceVerseOne = \relative c' {
  \partial 2
  \repeat volta 2 {
    r4 b\p
    b cis e e dis2
    \time 5/4
    cis4 \breathe cis2 cis4 cis
    e4.( dis8 b4 cis) b
  }
  \alternative {
    {
      \time 3/2
      %\set Timing.measureLength = #(ly:make-moment 1)
      gis8[( a b cis] b2)
      %\once \override Staff.BarLine.allow-span-bar = ##t
    }
    {
      \time 5/4
      %\set Timing.measureLength = #(ly:make-moment 5/4)
      gis8[( a b cis] b2) \breathe b4
    }
  }
  b2 gis4 cis cis
  \time 4/4
  dis8[(^\markup{ \italic "ruhig" } cis] b4) b2
  \time 3/2
  b4 cis e e dis2
  \time 5/4
  cis4 \breathe cis2 cis4 cis
  e4.( dis8 b4 cis) b
  \time 4/4
  gis8([ a b cis] b2) \bar "||"
}

basVoiceVerseOne = \relative c' {
  \partial 2
  \repeat volta 2 {
    r2
    \time 4/4
    r1
    r2 r4 cis4~\p
    cis a2 b4
    gis2 fis
  }
  \alternative {
    {
      \time 3/2
      e4. (cis8 e2)
    }
    {
      \time 3/2
      e4. (cis8 e2) \breathe e |
    }
  }
  \time 4/4
  %{06%}	b4 cis e e
  %{07%}  b2. r4
  %{08%}  r1
  %{09%}  r2 r4 cis'4~
  %{10%}  cis a2 b4
  %{11%}  gis2 fis
  %{12%}  e1 \bar "||"
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 2           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalTwo = {
  \key e \major
  \time 4/4
  \set Score.markFormatter = #format-mark-circle-letters
  \autoBeamOff
  \dynamicUp
}

sopVoiceVerseTwo = \relative c' {
  % second stanza
  \partial 2
  \tempo "Choral, zart" 4 = 92
  b'4 << { \voiceOne b~ } \new Voice = "sopTemp" { \voiceTwo b } >>
  \repeat volta 2 {
    << { \voiceOne b b } \new Voice = "sopTemp" { \voiceTwo b2 } >> \oneVoice cis4 b
    \time 3/2
    b4.( a4 gis8 e4 fis2)
    gis1 r2 \break
    r2 a gis4 fis
    e4.^\markup{\italic fließend }( fis8[ a gis b8. a16 gis8]) gis4( fis8)\break
  }
  \alternative {
    {
      \time 4/4 \set Timing.measureLength = #(ly:make-moment 1)
      e2 \breathe b'4 b
    }

    {
      \time 3/4
      e,2 \breathe gis4\mp
    }
  }

  \time 4/4
  fis4 dis8 fis8 fis4 dis
  \time 3/4
  e4.(\> dis8) cis4\break
  \time 3/2
  b4. \breathe b'8\p \bar ";" \mark \default b4 b cis b
  b( a4. gis8[ fis e] fis2)
  gis1 r2
  r2 a gis4 fis
  e4.( fis8[^\markup{ \italic "fließend" } a gis b8. a16 gis8]) gis4( fis8)
  \time 4/4
  << { \voiceTwo e1 } \new Voice { \voiceOne { e8([ fis] b2.) } } >> \bar "||" \break
}

altVoiceVerseTwo =  \relative c' {
  \time 3/2 \partial 1
  r2
  \repeat volta 2 {
    e4\p << { \voiceOne e~ \bar "|" \time 4/4 e e }
      \new Voice { \voiceTwo e e2 }
    >>
    \oneVoice
    fis4 e
    \time 3/2
    e4.( cis4 e8[ cis b] gis4. b8)
    \time 4/4
    cis2 r
    R1
    r4 d cis b
    a8([ b16 cis] b4) b8 \breathe b cis4~
  }
  \alternative {
    { cis8 << { \voiceOne cis8 b2 } \new Voice { \voiceTwo { a8 gis2 } } >> \oneVoice r4 }
    { cis8 \repeatTie << { \voiceOne cis8 b2 } \new Voice { \voiceTwo { a8 gis2 } } >> \oneVoice dis'4\mp }
  }
  \time 3/2
  cis4 ais b2( ais4)\> gis %TODO: split dynamics
  \time 4/4
  fis2. r8\! e'\p
  e4 e fis e
  \time 3/2
  e( cis4. e8[ cis b] gis4. b8)
  \time 4/4
  cis2 r
  R1
  r4 d4 cis b
  a8([ b16 cis] b4) b8 b cis4~
  cis8 << { \voiceOne cis8 b2.} \new Voice { \voiceTwo { a8 gis2. } } >>
  \bar "||"
}

tenVoiceVerseTwo = \relative c' {
  \partial 2
  \time 4/4
  r2
  \repeat volta 2 {
    R1
    r2 b4\p << { \voiceOne b~
     b b } \new Voice = "tenTemp" { \voiceTwo b b2 } >> \oneVoice cis4 b
    b( gis4.^\markup{ \italic "fließend" } a8 b4~
    b8[ a16 gis fis8 e] fis2)
    << { \voiceOne gis4 } \new Voice { \voiceTwo { e4 \breathe } } >> \oneVoice a4 gis fis
    e8.([ fis16 gis8] fis4 e8) d4
  }
  \alternative {
    { e2. r4 }
    { e2. r4 }
  }
  r2 r4 gis\mp
  fis dis? \bar "" e8[\> dis] c4
  << { \voiceOne dis4 } \new Voice { \voiceTwo { b4 } } >> \oneVoice r4\! r2
  r2 r4 r8 b'8\p
  b4 b cis b
  b( gis4.^\markup{ \italic "fließend" } a8 b4~
  b8[ a16 gis fis8 e] fis2)
  << { \voiceOne gis4 } \new Voice { \voiceTwo { e4 \breathe } } >> \oneVoice
  a4 gis fis
  e8.[( fis16 gis8] fis4 e8) d4
  e1 \bar "||"
}

basVoiceVerseTwo = \relative c {
  \partial 2
  \time 4/4
  r2
  \repeat volta 2 {
    R1
    R1
    r2 e4\p << { \voiceOne e~
    e e } \new Voice { \voiceTwo e e2 } >> \oneVoice fis4 e
    dis( fis4. e8[ cis b])
    cis2 r4 e
    b e g, b
  }
  \alternative {
    { e,2. r4 }
    { e2. r4 }
  }
  \time 3/2
  r1 r2
  \time 4/4
  r2 \bar ";" r2
  r2 r4 cis'\mp
  b gis4 a8([ gis]) fis4
  \time 3/2
  e4. \breathe e'8\p e4 e fis e
  \time 4/4
  d4( fis4. e8[ cis b]
  cis4) cis r4 e
  b e gis, b
  e,1 \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 3           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
globalThree = {
  \key e \major
  \dynamicUp
  \set Score.markFormatter = #format-mark-circle-letters
}

sopVoiceVerseThree = \relative c'' {
  \tempo \markup{ "Choral, wie ein Wiegenlied" } 4 = 80
  \time 2/4
  gis2\p
  \time 4/4
  gis4. b8 b4 gis4
  fis4.( gis8) dis4-- \breathe gis
  dis dis cis gis'
  b4.( gis8[ fis gis] e4~
  e8) \breathe \tempo "Zögern" cis8 e2.~\>
  \mark \default e4\! \tempo "Tempo I" r gis2\p
  gis4. b8 \bar "" b4 gis
  fis4.( gis8) dis4-- \breathe gis
  dis2( cis4) gis'4
  b4.( gis8[ fis gis] e4~
  e8[ cis] \tempo "zög." e4.)\> fis8 gis4\!
  \bar "||"

  \time 5/4
  \tempo "Tempo I sehr Zart" dis'2^\markup{ \italic meno \dynamic p } dis cis4
  \time 3/2
  b gis b2. r4
  \mark \default gis2\p gis4. b8 \bar "" b4 gis
  \time 3/4
  fis4.( gis8) dis4-- \breathe
  gis dis dis
  \time 3/2
  gis gis b4.( gis8[ fis gis] e4~
  \time 4/4
  e8) \breathe cis8--^\markup{ Zögern } e4.-- fis8-- gis4--\fermata \bar "||"
}

altVoiceVerseThree = \relative c' {
  \time 2/4
  r4 cis\p
  \time 4/4
  gis'4. gis8 fis4 e
  \time 3/2
  cis2 b2. b4
  \time 6/4
  cis4.( dis8) \bar "" \break e4 e4.( dis8) cis4
  \time 4/4
  b4.( a8\>[ b cis] e4~
  \time 3/2
  e)\! \breathe e\p e e fis e
  \time 4/4
  gis4.( fis8 dis4 cis4)
  b2. \breathe b4
  \time 6/4
  cis4.( dis8) e4 e4.( dis8 cis4
  \time 4/4
  b4) a\> b2\!
  \bar "||"

  \time 5/4
  b'2^\markup{ \italic meno \dynamic p } ais gis4
  \time 3/2
  fis4.( e8[ fis gis] fis4. e8) dis4
  b \breathe cis\p gis'4. gis8 \bar "" fis4 e
  cis2 b1 \breathe
  \time 4/4
  cis4.( dis8) e4 e
  \time 6/4
  e2 \breathe e4-- e4-- cis-- e--\fermata
  \bar "||"
}

tenVoiceVerseThree = \relative c' {
  \time 2/4
  b2\p
  \time 3/2
  b4 b cis b b2
  \time 6/4
  gis2 \breathe a4 gis2 fis4
  \time 4/4
  e2 cis
  << { \voiceOne e4.( fis8[\> a gis] b4~ b)\! } \new Voice { \voiceTwo e,1( b'4) } >> \oneVoice
  r4 b2^\markup{ \italic (m) \dynamic p }
  \time 3/2
  b4 b \bar "" \break
  cis b b2
  \time 6/4
  gis2 \breathe a4 gis2 fis4
  \time 4/4
  e2 cis2
  e1
  \bar "||"

  \time 5/4
  gis'2^\markup{ \italic meno \dynamic p } fis dis4
  \time 3/2
  e8([ dis]) cis4 << \voiceOne { dis2. } \new Voice { \voiceTwo b2. } >> \oneVoice r4
  b2^\markup{ \italic (m) \dynamic p } b4 b \bar "" cis b

  \time 4/4
  b2 gis \breathe
  a4 gis2 fis4
  e2 cis
  << \voiceOne { e4.( fis8 gis2)\fermata } \new Voice { \voiceTwo e1\fermata } >>
  \bar "||"
}

basIVoiceVerseThree = \relative c {
  \time 3/4 s4
  \set Timing.measureLength = #(ly:make-moment 4/4)
  e4\pp^\markup{ \italic { Bass stets unterordnen } } << { \voiceOne e2 } \new Voice { \voiceTwo b2 } >> \breathe \oneVoice
  \set Timing.measureLength = #(ly:make-moment 3/4)
  \repeat unfold 13 {
    e4 \bar "" << \voiceOne { e2 } \new Voice { \voiceTwo b2 } >> \oneVoice \breathe
  }
  e4 \bar "" << \voiceOne { e2 } \new Voice { \voiceTwo b2 } >> \oneVoice
  \bar "||"
  R2.*4
  \repeat unfold 6 {
    e4 \bar "" << \voiceOne { e2 } \new Voice { \voiceTwo b2 } >> \oneVoice \breathe
  }
  e4 \bar "" << \voiceOne { e2 } \new Voice { \voiceTwo b2 } >>
  \bar "||"
}

basIIVoiceVerseThree = \relative c {
  \dynamicDown
  \time 3/4
  s4
  \set Timing.measureLength = #(ly:make-moment 4/4)
  a\pp e2 \breathe
  \set Timing.measureLength = #(ly:make-moment 3/4)
  \repeat unfold 13 {
    a4 \bar "" e2 \breathe
  }
  a4 \bar "" e2
  \bar "||"

  R2.*4
  \repeat unfold 6 {
    a4 \bar "" e2 \breathe
  }
  a4 \bar "" e2
  \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 4           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalFour = {
  \key e \major
  \autoBeamOff
  \dynamicUp
  \set Score.markFormatter = #format-mark-circle-letters
}

sopVoiceVerseFour = \relative c'' {
  \tempo \markup {"Choral, Allabreve-Bewegung"} 4 = 144
  \time 3/2
  b2^\markup{ \dynamic mf \italic hell } b4. b8 cis cis b4~(
  b8[ cis] b4. cis8 b2 gis4)\noBreak
  b2. r4 r2
  gis2 gis4. gis8 b b 
  << 
    {
      \voiceOne \tieDown gis4~( \tieNeutral
      gis8[ b] gis4. \breathe b8[ gis b] cis2)
    }
    \new Voice {
      \voiceTwo gis4(
      s2 s8 b[ gis b] gis4. fis8)
    }
  >> \oneVoice
  \time 4/4 << { \voiceOne dis'4 } \new Voice { \voiceTwo dis,4 \breathe } >> \oneVoice dis'4 dis4. dis8
  fis8 fis\> dis4 dis\! \breathe e4^\markup{ \italic più \dynamic f }
  cis4( b2) gis4
  ais8([ b] cis2) cis4
  b2. \breathe e4
  \time 3/4
  cis4( b) \breathe e4
  cis4( \bar "" \break b) \breathe e
  \time 4/4
  cis4( b2) gis4
  \tempo "Zögern" ais8[( b] cis2\>)  cis4
  b2. \breathe \tempo "Tempo I" b4\mp \mark \default
  b b cis8 cis b4~(
  \noBreak\time 3/2
  b8[ cis] b4. cis8 b2 gis4)
  b2. r4 r2
  gis4 gis2 fis4 b8 b 
  << 
    {
      \voiceOne \tieDown gis4~( \tieNeutral
      gis8[ b] gis4. \breathe b8[ gis b] cis2)
    }
    \new Voice {
      \voiceTwo gis4(
      s2 s8 b[ gis b] gis4. fis8)
    }
  >> \oneVoice
  \time 4/4
  << { \voiceOne dis'4 } \new Voice { \voiceTwo dis,4 } >> \oneVoice \breathe dis'4 dis4. dis8
  fis fis dis4\> dis\! \breathe e^\markup{ \dynamic p \italic zart }
  cis( b2) gis4
  ais8([ b] cis2) cis4
  b2. \breathe e4
  \time 3/4
  cis( b) \breathe e
  cis( \bar "" \break b) \breathe e
  \time 4/4 cis( b2) gis4
  ais8([\!\tempo \markup{ "Zögern" } b] cis2) cis4\>
  b1\!
  \tempo "Verhaltener" 4=112 \mark \default R1
  r4 dis^\markup{ innig } ais4( gis~
  gis) \breathe dis' ais( gis8) gis--
  gis4.( fis8 e4) fis--
  \tempo "Zögern" dis4.(\> fis8 dis2)\! \breathe \break
  
  \time 3/2
  \mark \default
  \tempo "Tempo I, aber sehr zart bis zum Schluss" 4 = 144 b'2\p b4. b8 cis cis b4~(
  b8[ cis] b4. cis8 b2 gis4)
  b2. r4 r2
  gis2 gis4. gis8 b b 
  <<
    {
      \voiceOne gis4~(
      gis8[ b] gis4. \breathe b8[ gis b] cis2) 
    }
    \new Voice {
      \voiceTwo gis4(
      s2 s8 b[ gis b] gis4. fis8)
    }
  >> \oneVoice
  \time 4/4 << { \voiceOne dis'4 } \new Voice { \voiceTwo dis,4 \breathe } >> \oneVoice
  %gis8[ b gis4. \breathe b8[ gis b] << \voiceOne { cis2) dis4 } \new Voice { \voiceTwo gis,4. fis8) dis4 \breathe }>>\oneVoice 
    dis'4 dis4. dis8
  fis8 fis\> dis4 dis\! \breathe e4
  cis4( b2) gis4
  ais8([ b] cis2) cis4
  b2. \breathe e4
  \time 3/4
  cis4( b) \breathe e4
  cis4( \bar "" \break b) \breathe e
  \time 4/4 \tempo "Verlangsamen"
  cis4( b2) gis4
  ais8[(-- b]-- cis2--\>) cis4--
  b1--\! \fermata \bar "||"
}

altVoiceVerseFour = \relative c' {
  \time 4/4
  r4 e4^\markup{ \dynamic mf \italic hell } dis b
  e \breathe e dis b
  e4. dis8 cis2
  \time 3/2
  b4 \breathe fis' fis4. fis8 gis8 gis fis4~(
  fis8[ e]) dis4 \breathe gis8 gis fis4.( e8 dis4
  e2) dis \breathe r
  \time 4/4
  gis2 gis4. gis8
  ais8 ais << { \voiceOne ais4\> b2\! } \new Voice { \voiceTwo gis4 gis2\! } >> \oneVoice
  r4 b4^\markup{ \italic più \dynamic f } gis( fis~
  fis) e fis8([ gis] a?4~
  \time 3/2
  a) a gis2. \breathe b4
  \time 3/4
  gis4( fis) \bar "" \breathe \break b4
  gis( fis) \breathe b
  \time 4/4
  gis4( fis2) e4
  fis8([ gis] a2\>) a4
  gis \breathe e\mp \bar "" \break dis b
  e e dis b \breathe
  e4. dis8 cis2
  \time 3/2
  b4 \breathe fis' fis4. fis8 gis gis fis4~(
  fis8[ e]) dis4 \breathe gis8 gis fis4.( e8 dis4
  e2) dis \breathe r
  \time 4/4
  gis4 gis2 gis4
  ais8 ais << { \voiceOne ais2\> b4\! } \new Voice { \voiceTwo gis2 gis4 } >> \oneVoice
  r4 b4^\markup{ \dynamic p \italic zart } gis( fis~
  fis) e fis8([ gis] a?4~
  \time 3/2
  a) a gis2. \breathe b4
  \time 3/4
  gis4( fis) \bar "" \breathe \break b
  gis( fis) \breathe b
  \time 4/4
  gis4( fis2) e4
  \time 3/2
  fis8([ gis] a2\>) a4 gis2\!
  \time 4/4
  r4 gis4^\markup{ \italic meno \dynamic p } fis( dis~
  dis) \breathe gis fis( dis~
  dis) \breathe gis fis dis
  e4.( dis8 cis4) cis
  b8\>([ cis] b4. a8 b4~
  b4) \breathe fis'4\p dis b
  fis' \breathe fis dis b
  fis'4.( e8) dis4 cis
  \time 3/2
  b4 \breathe fis' fis4. fis8 gis gis fis4~(
  fis8[ e]) dis4 \breathe gis8 gis fis4.( e8 dis4
  e2) dis r
  \time 4/4
  gis2 gis4. gis8
  ais8 ais\> gis2 gis4\!
  r b gis( fis~
  fis) e fis8([ gis] a?4~
  \time 3/2
  a) a gis2. \breathe b4
  gis( fis) \breathe b
  gis( fis) \breathe b
  \time 4/4
  gis( fis2) e4\>
  \time 3/2
  fis8([-- gis]-- a2)-- a4-- gis2--\!\fermata \bar "||"
}

tenVoiceVerseFour = \relative c' {
  \time 3/2
  R1.
  R1.
  dis2^\markup{ \dynamic mf \italic hell } dis4. dis8 e e dis4~
  dis4 dis8 dis e e dis4.( cis8 b4
  a2) gis4 \breathe gis gis a
  \time 4/4
  cis4( b4. cis8 dis4
  cis2\>) gis2\!
  r2 r4 fis'4^\markup{ \italic più \dynamic f }
  dis( cis4. b8) a4
  b8([ cis] dis4. cis8 b4 \breathe
  cis8[ dis] e4. dis8[ cis \breathe cis8
  dis e] fis4. e8) dis4
  e \breathe fis dis( cis~
  cis8[ b]) a4 b4\> cis
  \time 3/2
  b1\! r2
  
  R1.
  dis4\mp dis2 dis4 e8 e dis4~
  dis dis \breathe e8 e dis4.( cis8 b4
  \time 6/4
  a2) gis4 \breathe gis2 a4
  \time 4/4
  cis4( b4. cis8 dis4\>
  cis2) gis\!
  r2 r4 fis'4^\markup{ \dynamic p \italic zart }
  dis( cis4. b8) a4
  b8([ cis] dis4. cis8 b4 \breathe
  cis8[ dis] e4. dis8[ cis \breathe cis
  dis e] fis4. e8) dis4
  e \breathe fis dis( cis~
  \time 3/2
  cis8[ b]) a4 b\> cis b2\!
  \time 4/4
  r4 dis4^\markup{ \italic meno \dynamic p } cis( ais~
  ais) \breathe dis cis( ais~
  ais) \breathe dis cis ais
  b4.( ais8 gis4) gis--
  fis4.\>( gis8 fis4. e8\!
  \time 3/2
  << { \voiceOne fis2) } \new Voice { \voiceTwo dis2 } >> \oneVoice
  r1
  
  R1.
  dis'2\p dis4. dis8 e e dis4~
  dis4 dis8 \breathe dis e e dis4.( cis8 b4
  a2) gis4 \breathe gis gis a
  \time 4/4
  cis4( b4. cis8 dis4
  cis2\>) << { \voiceOne b2 } \new Voice { \voiceTwo gis2 } >> \oneVoice
  r2\! r4 fis'4
  dis( cis4. b8) a4 \breathe
  b8[ cis] dis4.( cis8) b4 \breathe
  cis8[ dis] e4.( dis8[ cis \breathe cis8
  dis e] fis4. e8 dis4)
  e \breathe fis dis( cis~--\>
  \time 3/2
  cis8[ b])-- a4-- b4-- cis-- b2--\!\fermata \bar "||"
}

basVoiceVerseFour = \relative c' {
  \time 3/2
  R1.
  R1.
  b2^\markup{ \italic poco \dynamic f } b b
  cis1 b2
  b1.
  gis1.
  R1.
  \time 4/4
  r2 r4 b^\markup{ \italic più \dynamic f }
  gis fis e4.(^\markup{ \italic "gleichmäßig" } dis8[
  e fis] gis4. fis8[ e \breathe e
  fis gis] a4. gis8) fis4
  \time 3/2
  e4 \breathe cis dis( e2) c4
  \time 4/4
  e1~\>
  e2\! r
  \time 3/2
  R1.
  b'2\mf b2. b4
  cis1 b2
  b1.
  gis1.\>
  R1.\!
  \time 4/4
  r2 r4 b4^\markup{ \dynamic p \italic zart }
  gis fis e4.(^\markup{ \italic "gleichmäßig" } dis8[
  e fis] gis4. fis8[ e \breathe e
  fis gis] a4. gis8) fis4
  e4 \breathe cis dis( e~
  \time 3/2
  e) cis e2.\> \breathe gis4\!^\markup{ \italic meno \dynamic p }
  \time 4/4
  fis( dis2) \breathe gis4
  fis( dis2) \breathe gis4
  \time 3/2
  fis dis e4.( dis8 b4 cis~
  cis) fis,4-- b1~\>
  b2\! r1
  R1.
  b'2^\markup{ \italic (m) \dynamic p \italic { nur sehr zart hervor } } b2 b2
  cis1 b2
  b1.
  gis1.\>
  R1.\!
  \time 4/4
  r2 r4 b4
  gis(^\markup{ \italic "gleichmäßig" } fis) e2 \breathe
  e8[ fis] gis4~(
  gis8[ fis e \breathe e
  fis gis] a4. gis8 fis4)
  e4 cis(-- dis-- e\>~--
  \time 3/2
  e) cis-- e1--\!\fermata \bar "||"
}