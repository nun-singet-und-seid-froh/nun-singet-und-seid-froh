% obvious errata in the edition:

% in the bar before (D) (last bar page 5) in the bass voice, the meter for the
% following bar is given as 3/4 while in fact it is 7/8 - as printed correctly on 
% page 6

global = {
  \key c \major
  \partial 4
  \autoBeamOff
  \dynamicUp
  \set Score.rehearsalMarkFormatter = #format-mark-circle-letters
  \override Staff.TimeSignature.style = #'numbered
}

oBreak = { \break \noPageBreak }
oPageBreak = \pageBreak
oNoBreak = \noBreak

commonDynArt = {
  % linebreaks in this voice are corresponding with the bars of sopTune
  % \time changes in sopTune are reflected in comments
  % for easier reading all s have duration 4  except in the bars of meter 3/8 
  \tempo \markup "Langsam" 4=72 
  s4 
  s s
  s s s 
  s s s s
  s s s \oBreak \noPageBreak
  s s s\noBreak
  s s s s\mark \default 
  
  s8 s s
  s8 s s
  s8 s s
  s8 s s \oBreak \noPageBreak
  s8 s s 
  s8 s s 
  
  s4 s s
  s s\tempo "zart" s 
  s s s
  s s s \mark \default \oPageBreak
  
  \tempo "Tempo I. (Wie anfangs)"
  s s s s 
  s s s s 
  
  s s s 
  s s s \oBreak \noPageBreak
  
  s s s s 
  s s s s 
  
  s s s \mark \default \tempo \markup {
    \concat {
      "ruhig und zart "
      (
      \smaller \general-align #Y #DOWN \note {4.} #1
      " = "
      \smaller \general-align #Y #DOWN \note {4} #1
      " )"
    }
  }
    \oBreak \noPageBreak
  
  s8 s s 
  s s s 
  s s s
  s s s 
  s s s 
  s s s \oBreak \noPageBreak
  s s s 
  s s s
  s \tempo "zart" s s
  s s s
  \tempo "nicht zögern"
  s s s
  s s s\bar"||"\oPageBreak
  \mark \default \tempo "Fließend, sehr leicht" 4=80
   
  s4 s s 
  s s s
  
  s 
  
  s s s
  s s s\oBreak \noPageBreak
  
  s s s s
  
  \tempo "Zögern, schlicht"
  s s s \noPageBreak \noBreak
  
  s 
  \tempo "Langsamer" 4=69 s4. s8 s4
  
  s s s
  s s s\mark \default \oBreak\noPageBreak
  
  \tempo "Voran" 4=84
  s 
  
  s s
  s s
  s s
  \tempo 4=96
  s s
  s \tempo "Im Zeitmaß, aber ruhig" s
  
  s s s \oBreak \noPageBreak
  s s s 
  s s s  
  s s s 
  s s \tempo "Zögern" s \oPageBreak
  
  s s \tempo "Sehr ruhig" 4=84 s s
  s s s s 
  
  s s s s \tempo "Zögern" s s\oBreak \mark \default 
  
  s \tempo "Sehr rasch und leicht" 4=184 s s
  s s s 
  s s s 
  
  % 3/2
  s s s s s s 
  % 3/4
  s s s \oBreak\noPageBreak
  s s s 
  s s s
  s s s 
  s s s 
  s s s 
  s s s\oBreak \noPageBreak
  s s s 
  s s s
  s s s
  % 3/2
  s s s s s s
  s s s s s s\oPageBreak \mark \default
  \tempo "Im Zeitmaß, aber frei psalmodierend"
  s s s s s s
  % 2/2
  s s s s 
  % 4/2
  s s s s s s s s 
  % 5/2
  s s s s s s s s s s\mark \default
  % 3/4
  s \tempo "Wie vorher" s s
  s s s \oBreak \noPageBreak
  s s s 
  % 4/4
  s s s s 
  s s s s 
  s s s s 
  % 3/4
  s s s\oBreak
  s s s
  s s s 
  s s s
  s s s 
  % 3/2
  s s s s s s\oBreak
  s s s s s s\mark \default
  % 4/2
  s s \tempo "Frei" s s s s s s
  s s s s s s s s 
  % 6/4 
  s s s s s s
  % 5/2
  s s s s s s s s s s\oPageBreak
  \mark \default
  %3/4
  
  s s s\tempo "Wie vorher"   
  
  s s s 
  s s s
  s s s
  s s s
  s s s
  s s s\oBreak
  s s s
  s s s
  s s s
  s s s 
  s s s
  s s s 
  s s s\oBreak
  s s s 
  s s s
  s s s 
  % 3/2
  s s s s s s
  s s s s \tempo "Frei" s s \mark \default 
  
  % 2/2
  s s s s \oBreak
  s s s s 
  s s s s 
  % 4/2
  s s s s s s s s
  % 5/2
  s s s s s s\tempo "Zögern"s s s s
  % 9/2 
  s s s
  s s s 
  s s s 
  s s s
  s s s
  s s s\bar"|."
}

sopTune = \relative c' {
    r4\noBreak
  \time 2/4
    r4 e^\markup{ \italic meno \dynamic p } |
  \time 3/4 
    f4. e4 e8 |
  \time 4/4
    g4 f e e |
  \time 3/4
    r4 r e8 e |
    a2 a4
  \time 4/4
    e4 e2.\>\fermata \noBreak
  % Rehearsal Mark (A)
  \time 3/8
    R4.\!
    R4.
    b'8\mp b a
    e'4\breathe cis8 |
    fis4\breathe b,8 |
    e4\breathe cis8 |  
  \time 3/4
    fis8\breathe b, e\breathe cis fis\breathe d |
    g4^-( e8[ d e\breathe g] |
    % tempo "zart"
    e[\breathe g e d e\breathe g] |
    e[\breathe g e\> d] e4) |
  \time 4/4
  % Rehearsal Mark (B)
  % \tempo "Tempo I. (Wie anfangs)"
    e2. r4\! |
    r a,2^\markup { \italic meno \dynamic p } a8 a |
  \time 3/4
    a4\breathe a f |
    a4 a2 |
    \time 4/4
    r4 r a f |
    a a4. a8 b b |
  \time 3/4
    a4 gis\breathe \times 2/3{ b8\mp b a } |
  % Rehearsal Mark (C)
  \time 3/8
  %\tempo 4.= 4 Ruhig und zart
    e'4 b8\breathe |
    b b a |
    e'4 b8\breathe |
    e4 b8\breathe |  
    b b a\breathe |
    e'4 b8\breathe |
    cis8 cis b |
    fis'4 cis8\breathe |
    dis dis\> %{ \tempo "zart" %} cis |
    gis'4. 
    % \tempo "nicht zögern"
    dis4. |
    R4.\! |
  % Rehearsal Mark (D)
  \time 3/4
  % \tempo "Fließend, sehr leicht" 4=80
    e4.\p e8 e cis |
  \time 6/8
    e4 fis8 e4 cis8\breathe |  
  \time 1/4
    cis4^- |
  \time 3/4
    e4.^- e8 e e |
  \time 6/8
    b4 e8\breathe e4 e8
  \time 4/4
    g4 e e8 e d b 
  \time 6/8
    % \tempo "Zögern, schlicht"
    d4\>( e fis8[ e] ) |
  \time 4/4
    e4\breathe %{\tempo "Langsamer" 4=69 %} e,4.\! e8 d4
  \time 3/2
    f?2( e4 c d) d\> |
  % Rehearsal Mark (E)
  \time 1/4
  % \tempo "Voran" 4=84
    cis4\breathe |
  \time 2/4
    a'2^-\f\breathe|
    c^-\breathe |
    d^-\breathe |
    %\tempo 4=96
    d^-\breathe |
    g4^-\breathe %{ \tempo "Im Zeitmaß, aber ruhig" %} g8 g |
  \time 3/4
    e4 d\breathe e8 e |
    b4^\markup{ \italic { sempre dim. } } a\breathe bes8 bes |
    g4 d\breathe f'8 f |
    d4 c\breathe d8 d |
    a4 g\breathe %{\tempo "Zögern"%} a8 a8 |
  \time 4/4
    e4 d\breathe %{\tempo "Sehr ruhig" 4=84%} a'2(\p |
    c4 d2 c4 |
  \time 6/4
    d f4. e8 c4 %{\tempo "Zögern"%} d) d |
  % Rehearsal Mark (F)
  \time 3/4
    e4\fermata\breathe %{\tempo "Sehr rasch und leicht" 4=184%}  e2\p |
    d4 b a |
    b b cis |
  \time 3/2
    fis2( e4 d b2) |
  \time 3/4
    b4\breathe b2 |
    a4 fis e |
    fis2 fis4~ |
    fis\breathe b a |
    b2 b4~ |
    b\breathe e d |
    e2 e4~ |
    e\breathe e d |
    e2 e4~ |
    e\breathe e d
  \time 3/2
    e2 e e |
    f!1\> g2\! |
  % Rehearsal Mark (G)
  % \tempo "Im Zeitmaß, aber frei psalmodierend
    r2 e2. e4 |
  \time 2/2
    g2 g4 e |
  \time 4/2
    g1( e2\breathe g |
  \time 5/2
    a g e g1) |
  % Rehearsal Mark (H)
  \time 3/4
    g4\breathe %{\tempo "Wie vorher"%} d2\mf |
    c4 a g |
    a a b |
  \time 4/4
    e2 e4\breathe b |
    e2 e4\breathe cis |
    fis2 fis4\breathe d |
  \time 3/4
    g2 g4 |
    r4 g2 |
    f4 d c |
    d2 d4 |
    r d d |
  \time 3/2
    g2 g\> f |
    d1 d2\! |
  % Rehearsal Mark (I)  
  \time 4/2
    r2 %{\tempo "Frei"%} e1 g2 |
    e2.(\breathe g2 e g4 |
  \time 6/4
    e\breathe g a g2 a4 |
  \time 5/2  
    g2) e e d1 |
  % Rehearsal Mark (K)
  \time 3/4
    e2. |
    %\tempo "Wie vorher"
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    r4 e2\f |
    d4 b a |
    b2 b4 |
    r4 cis b |
    cis2 cis4 |
    r4 d b |
    d2 d4 |
    r4 << { \voiceOne e d } \new Voice { \voiceTwo e4 d } >> \oneVoice |
  \time 3/2  
    << { \voiceOne e2 fis gis\> } \new Voice { \voiceTwo e2 e e } >> \oneVoice |
    << { \voiceOne e2 e1\! } \new Voice { \voiceTwo b2 b1 } >> \oneVoice |
  %\tempo "Frei"  
  % Rehearsal Mark (L)
  \time 2/2
    R1 |
    R1 |
    r2 e,^\markup{ \dynamic p \italic ausdrucksvoll } |
  \time 4/2
    a1 a2\breathe e |
  \time 5/2
    a1 b2 %{\tempo "Zögern"%} c b |
  \time 9/2
    a2.\>( g4 e g a1) a2 b1.\! |
}

altTune = \relative c' {
    r4 |
  \time 2/4
    r4 c^\markup{ \italic meno \dynamic p } |
  \time 3/4
    e4. c4 c8 |
  \time 4/4 |
    e4 d c b |
  \time 3/4 |
    r4 r c8 c8 |
    e2 e4 |
  \time 4/4 
    b2\> b\fermata |
  % Rehearsal Mark (A)
  \time 3/8
    R4.\! |
    R4. |
    R4. |
    a'8\mp a fis |
    b4.\breathe |
    a8 a fis |
  \time 3/4  
    b4\breathe b b8 g |
  \time 3/8  
    c4^-( a8 |
    g4 a8 |
    c4 a8 |
    g4 a8 |
  \time 3/4
    c4 a8[\> g] a4) |
  % Rehearsal Mark (B)
  \time 4/4
    gis2. r4\! |
    r e2^\markup{ \italic meno \dynamic p } e8 e |
  \time 3/4
    e4\breathe e a |
    e e2 |
  \time 4/4
    r4 r e a |
    e e4. e8 g g |
  \time 3/4
    fis4 e2\breathe |
  % Rehearsal Mark (C)
  \time 3/8
    e8^\mp e d |
    a'4 e8\breathe |
    e e d |
    a'4 e8\breathe |
    fis8 fis e |
    b'4 fis8\breathe |
    cis'4 gis8\breathe |
    cis4 gis8\breathe |
    cis4 gis8\breathe |
    gis\> gis fis |
    cis'4 gis8\! |
    R4. |
  % Rehearsal Mark (D)    
  \time 3/4
    b4.\p b8 b cis |
  \time 6/8
    b4 b8 gis4 gis8\breathe |
  \time 1/4
    gis4^- |
  \time 3/4
    b4.^- b8 b b |
  \time 6/8
    a4 b8\breathe b4 b8 |
  \time 4/4
    g4 a b8 b b d |
  \time 3/4
    b2\>( a4) |
  \time 4/4
    b4\breathe b,\! a g |
  \time 3/2
    a2( c4. b8 a4) b\> |
  % Rehearsal Mark (E)
  \time 2/4
    a2\breathe |
    a'^-\f\breathe  |
    a^-\breathe |
    a^-\breathe |
    bes^-\breathe |
    c4^-\breathe d8 d |
  \time 3/4
    a4 g\breathe \bar"" a8^\markup{ \italic { sempre dim. } } a |
    e4 d\breathe c'8 c |
    g4 f\breathe a8 a |
    e4 d \breathe a'8 a |
    e4 d\breathe \bar"" a'8 a |
  \time 5/4
    e4 d\breathe f4.\p( g8 a4 |
  \time 4/4
    bes4 a4. g8 f4 |
    g2 a4) << { \voiceOne b!4 } \new Voice { \voiceTwo b4 } >> \oneVoice |
  % Rehearsal Mark (F)
  \time 3/4
    << { \voiceOne cis2.\fermata } \new Voice { \voiceTwo a2. } >> \oneVoice |
    R2. |
    R2. |
    r4 a2\p |
    g4 e d |
    e e fis |
    b2 b4~ |
    b r r |
    r << { \voiceOne e2 } \new Voice { \voiceTwo e,2 } >> \oneVoice |
    << { \voiceOne d'4 b a } \new Voice { \voiceTwo d,4 b a } >> \oneVoice |
    << { \voiceOne b'2 b4~ b } \new Voice { \voiceTwo b,2 b4~ b } >> \oneVoice 
      r4 r |
    R2. |
    r4 b'2 |
    a4\breathe c2 |
    b4\breathe d2 |
    c4 a g |
  \time 3/2
    a2\> a4 a g g\! |
  % Rehearsal Mark (G)
    r2 a2. a4 |
  \time 2/2
    bes2 bes4 a |
  \time 4/2
    bes1( a2\breathe bes |
  \time 5/2
    c bes a bes1) |
  % Rehearsal Mark (H)
  \time 3/4
    bes2. |
    R2. |
    r4 a2\mf |
    g4 e d |
    e e fis |
  \time 4/4
    b2 b4\breathe fis |
  \time 3/2
    b2 b4\breathe g c~ \bar"" c |
  \time 3/4
    c\breathe c2 |
    bes4 g f |
  \time 5/4
    g2 g4\breathe g f |
  \time 3/2
    g2 g\> g |
    g1 fis2\! |
  % Rehearsal Mark (I)
  \time 4/2
    r2 a1 bes2 |
    a2.(\breathe bes2 a bes4 |
  \time 6/4
    a\breathe bes c bes2 c4 |
  \time 5/2
    bes2) a g f1 |
  % Rehearsal Mark (K)
  \time 3/4
    e2. |
    R2. |
    r4 a2\f |
    g4 e d |
    e e fis |
  \time 4/4
    b2 b4\breathe fis |
    b2\bar"" b4\breathe fis |
    b2 b4\breathe b~ |
  \time 3/4
    b b2 |
    a4 fis e |
    fis2 fis4 |
    r4 b2 |
    a4 fis e |
    fis2 fis4 |
    r cis'2 |
    b4 gis fis |
  \time 3/2
    gis2 fis e\> |
    fis gis\!\breathe e4^\markup{ \dynamic p \italic { e dim. sempre } } e |
  % Rehearsal Mark (L)
  \time 2/2
    a2 g!4 g |
    e2 e4\breathe d |
    e2 e4\breathe d |
  \time 6/2
    e2( g1 e2\breathe g2 e2\breathe |
    g2 a2 g2 << { \voiceOne e1.~ e2 fis1) gis1. } \new Voice { \voiceTwo e1.~ e e } >> \oneVoice 
}

tenTune = \relative c' {
  a4\p
  \time 3/4
  b4. a4 a8
  \time 4/4
  c4( a8[\breathe a b a] c4~
  \time 3/4
  c8[ a b\breathe a b e]
  b4) b\breathe \bar"" a8 a
  \time 2/4
  c4 b
  \time 4/4
  << { \voiceOne a2\> b4 \times 2/3 { b8\mp b a } } \new Voice { \voiceTwo a2 g\fermata }  >>\oneVoice
  % Rehearsal Mark (A)
  \time 3/8
    e'4\breathe b8
    e\breathe b b
    e4.~
    e8 r r
    R4.
    R4.
  \time 3/4
    d4.\mp d8 d4 |
    e2\breathe d4 |
    e2\breathe d4 |
    c2.\>
  % Rehearsal Mark (B)
  \time 6/4
    b4\breathe b2\p b8 b c4 b8 b |
  \time 5/4
    f'2( d4 bes2) |
  \time 4/4  
    bes4\breathe bes c \bar"" d |
    e2( f4 e~ |
    e8[ g e\breathe e d] c4 d8) |
  \time 2/4
    b2 |
  % Rehearsal Mark (C)
  \time 3/8
    R4. |
    R4. |
    R4. |
    R4. |
  \time 3/4
    b4\mp b a |
  \time 3/8
    e'4( cis8~[ |
    cis\breathe e cis |
  \time 3/4
    b] cis4\breathe e8\>[ cis b] |
  \time 3/8
    cis4) bis8\!|
    R4. |
  % Rehearsal Mark (D)
  \time 3/4
    e4.\p e8 fis gis |
  \time 6/8
    e4 d8 e4 fis8\breathe |
  \time 1/4
    gis4^- |
  \time 3/4
    e4.^- e8 b b |
  \time 6/8
    e4 e8\breathe e4 d8 |
  \time 4/4
    c4 e e8 e fis g |
  \time 6/8
    fis4\>( e d8[ e]) |
  \time 4/4  
    e4\breathe g,4.\! g8 g4 |
  \time 3/2
    a2( b4 a4. g8) fis4\> |
  % Rehearsal Mark (E)
  \time 2/4
    e2\breathe |
    f'\f^-\breathe |
    e^-\breathe |
    d^-\breathe |
    g^-\breathe |
  \time 3/4
    e^-\breathe e8 e |
    b4\bar"" a^\markup{ \italic { sempre dim. } }\breathe c8 c |
    g4 f\breathe d'8 d |
    a4 g\breathe c8 c |
    g4 f\breathe a8 a |
    e4\bar"" d\breathe a'8 a |
  \time 4/4
    e4 d\breathe a'2\p( |
    g4 f d c |
    d e4. f8) g4 |
  % Rehearsal Mark (F)
  \time 3/4
    a2.\fermata |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    r4 e'2\p |
    d4 b a |
    b b cis |
  \time 3/2
    fis2( e4 d b2) |
  \time 3/4
    b4\breathe d2 |
    c4 a g |
    a2 a4~ |
    a\breathe a'2 |
    g4 e d |
    e e e |
  \time 3/2
    << { \voiceOne c1\> e2\! } \new Voice { \voiceTwo c1 g2 } >> \oneVoice
  % Rehearsal Mark (G)
    r2 c2. c4 |
  \time 2/2
    d2 d4 c |
  \time 4/2
    d1( c2\breathe d |
  \time 5/2
    e d c d1)
  % Rehearsal Mark (H)
  \time 3/4
    d2. |
    R2. |
    R2. |
    R2. |
    R2. |
    r4 e2\mf |
    d4\breathe fis2 |
    e4\breathe g2 |
    f?4 d c |
    d2 d4 |
    r g2 |
    f4 d c |
  \time 3/2
    d2 d\> d |
    a1 a2\! |
  % Rehearsal Mark (I)
  \time 4/2
    r2 c1 d2 |
    c2.(\breathe d2 c d4 |
  \time 6/4
    c4\breathe d e d2 e4 |
  \time 5/2
    d2) c c bes1 |
  % Rehearsal Mark (K)
  \time 3/4
    d4\breathe e2\f |
    d4 b a |
    b2 b4 |
    r e2 |
    d4 b a |
    b2 b4 |
    r b a |
    b2 b4 |
    r e2\breathe |
  \time 3/2
    e\breathe e\breathe e\breathe |
  \time 3/4
    d4 b a |
    b2 b4 |
    r4 b a |
    b2 b4 |
    r4 b a |
    b2 b4 |
    r4 b a |
    b b b\> |
  \time 3/2
    cis2 e\!\breathe c!4^\markup{ \dynamic p \italic { e dim. sempre } } c |
  % Rehearsal Mark (L)
  \time 2/2
    f2 e4 e |
    d2 c4\breathe e |
    d2 c4\breathe a4 |
  \time 6/2
    c2( d1 c2\breathe d c\breathe |
    d e d1 c2\> b |
    a1.) e'1.\!
}

basTune = \relative c {
    r4
  \time 2/4
    r4 e4^\markup{ \italic meno \dynamic p }
  \time 3/4
    a4. e4 e8
  \time 4/4
    e4 a4 a e
  \time 3/4
    r4 r e8 e
    f2 f4
  \time 4/4
    e4\> e2.\fermata
  % Rehearsal Mark (A)
  \time 3/8 
    R4.\! |
    R4. |
    R4. |
    R4. |
    R4. |
    R4. |
  \time 3/4
    b'4.\mp b8 b4 |
    c2\breathe b4 |
    c2\breathe b4 |
    a2.\> |
  % Rehearsal Mark (B)
  \time 4/4
    e2. r4\! |
    r e2^\markup{ \italic meno \dynamic p } e8 e |
  \time 3/4
    e4 e d |
    d2 e4 |
  \time 4/4
    r r e d |
    a' a4. a8 g g |
  \time 3/4
    e4 e2 |
  % Rehearsal Mark (C)
  \time 3/8
    R4. |
    R4. |
  \time 3/4
    e4\mp e d |
    a'2 e4\breathe |
    e e d |
    << { a'2. } {s4. s\>} >>|
  \time 3/8
    gis4.
    R4.\!
  % Rehearsal Mark (D)
  \time 7/8  
    e4\p e4. e8 e |
    e4 e8 e4 e8\breathe e |
  \time 4/4
    e4 e e e |
  \time 3/4
    e e\breathe \bar"" e8 e |
  \time 3/2
    e4. e8 e4 e\> e e  |
  \time 5/4
    e e\!\breathe c bes d |
    a4.( g8 f4 g) g\> |
  % Rehearsal Mark (E)
  \time 2/4
    a2\breathe |
    a'^\f^-\breathe |
    d,^-\breathe |
    bes'^-\breathe |
  \time 3/4
    es,^-\breathe c'8 c |
    a4 e!\breathe a8 a |
    f4^\markup{ \italic { sempre dim. } } c\breathe d8 d |
    c4 a\breathe d8 d |
    c4 a\breathe d8 d |
    c4 a\breathe d8 d |
  \time 5/4
    c4 a\breathe f'2\p( c4 |
  \time 3/4
    f4. g8 a4 |
    bes4. a8[ g f] |
    g2) d4 |
  % Rehearsal Mark (F)
    a'2.\fermata |
    R2. |
    R2. |
    R2. |
    r4 a2\p |
    g4 f e |
    e e fis |
    b2 b4~ |
    b r r |
    R2. |
    r4 a2 |
    g4\breathe b2 |
    a4\breathe c2 |
    b4\breathe d2 |
    c4 a g |
  \time 3/2
    a2 a a |
    f1\> c2\!
  % Rehearsal Mark (G)
    r2 a'2. a4 |
  \time 2/2
    g2 g4 a |
  \time 4/2
    g1( a2\breathe g2 |
  \time 5/2
    f g a g1) |
  % Rehearsal Mark (H)
  \time 3/4
    g2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    r4 c2\mf |
    bes4 g f\> |
    g g a |
  \time 3/2
    d1 d,2\! |
  % Rehearsal Mark (I)
  \time 4/2
    r2 a'1 g2 |
    a2.(\breathe g2 a g4 |
  \time 6/4
    a\breathe g f g2 f4 |
  \time 5/2
    g2) a a bes1 |
  % Rehearsal Mark (K)
  \time 3/4
    a2. |
    r4 a2\f |
    g4 e d |
    e2 e4 |
    r4 a2 |
    g4 e d |
    e2 e4 |
    r4 e d |
    e2 e4 |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    R2. |
    r4 e d |
    e e fis\> |
  \time 3/2
    b2 e,\!\breathe a,4^\markup{ \dynamic p \italic { e dim, sempre } } a 
  % Rehearsal Mark (L)
  \time 2/2
    f2 g4 g |
    a2 a4\breathe bes |
    a2 a4\breathe bes |
  \time 6/2
    a2( g1 a2\breathe g a\breathe |
    g f g a1.~\>
    a) << { \voiceOne e'1.\! } \new Voice { \voiceTwo e,1. } >> \oneVoice
}


sopVoice = <<
  { \commonDynArt }
  { \sopTune }
>>

altVoice = <<
  \commonDynArt
  \altTune
>>

tenVoice = <<
  \commonDynArt
  \tenTune
>>

basVoice = <<
  \commonDynArt
  \basTune
>>
