#(define-markup-command (openBracket layout props heitgh) (number?)
  (interpret-markup layout props
    (markup #:line (#:with-dimensions (cons 0 0) (cons 0 0)
      (#:path 0.25
        (list (list (quote moveto) -1 0)
        (list (quote lineto) -2 -0)
        (list (quote lineto) -2 (* heitgh -1))
        (list (quote lineto) -1 (* heitgh -1))))))))


oBreak = { \break \noPageBreak }
oPageBreak = \pageBreak

oNoBreak = \noBreak

global = {
  \time 4/4
  \key c \major
  \autoBeamOff
  \numericTimeSignature
  \dynamicUp
  \override Beam.breakable = ##t 
\set Score.rehearsalMarkFormatter = #format-mark-circle-letters  
}

commonDynArt = {
  % the line breaks reflect the bars in the soprano voice
  
  \tempo "Nicht zu langsam, ernst und mit viel Ausdruck" 4=96
  s4 s s s \oNoBreak
  s s s s \oNoBreak
  s s s s \oNoBreak 
  s s s s \oNoBreak
  s s s s \oBreak
  s s s s \oNoBreak
  s s s s \oNoBreak
  s s\tempo "Zögern" s s \oNoBreak
  s s s s \oNoBreak
  % Rehearsal Mark (A)
  \mark \default
  s \tempo "Tempo 1" s s s \oBreak
  s s s s \oNoBreak
  s s s s \oNoBreak
  s s s s \oNoBreak
  s s s s \oNoBreak
  s s \mark \default s \oBreak
  
  s s s s \oNoBreak
  s s s s \oNoBreak
  s s s s \oNoBreak
  
  s s s s \oNoBreak
  s s s s \oNoBreak
  s s \oBreak \oPageBreak
  
  s s s s s 
  s s s s s 
  s s s s s 
  s s
  \tempo "Zögern"
  s s s s
  \tempo "Etwas fließender" 4=120
  \mark \default
  s s 
  
  s s s s \oNoBreak
  s s s s s s \oNoBreak
  s s s s \oBreak
  s s s s s s \oNoBreak
  s s s \oNoBreak
  s s s s \oNoBreak
  s\tempo "Zögern" s \oBreak 
  s s \oNoBreak
  s s\tempo "Voriges Zeitmaß" 4=96 s s \oNoBreak
  s s s \oNoBreak
  s s s s \oNoBreak
  s s s s \oNoBreak
  \tempo "Zögern"
  s s s s \bar "||" \oPageBreak
  
  % Rehearsal mark (D)
  \mark \default
  \tempo "Sehr rasch, voller Freude" 2=132
  s s
  \repeat volta 2 {
    s s
    s s
    s s
    s s
    s s s s 
    s s s s \oBreak
    s s s s s s
    s s s
    s s s
    s s s s 
    s s \oBreak s s s s
    s s s s s s 
    s s s s 
    s s s s 
    % Rehearsal mark (E)
    \mark \default
    \tempo "Ganz frei, psalmodierend, aber immer im Hauptzeitmaß"
    s s s s \oBreak
    s s s s 
    s s s s s s
    s s s s s s
    s s\tempo "Zögern" s s 
    s s s s 
    % Rehearsal mark (F)
    \mark \default
    \tempo "a tempo"
    s s \oPageBreak
  } % end of volta
  
  s s
  s s
  s s
  s s
  s s s s
  s s s s
  s s s s s s
  s s s
  s s s
  s s s s
  s s s s s s
  s s s s s s
  s s s s
  s s s s
  \mark \default
  \tempo "Ganz frei"
  s s s s
  s s s s
  s s s s s s
  s s s s s s
  s s s s
  s s s s s s
  s s s s s s
  
  s s s s
  s s s s s s
  s s s s s s \bar "||"
  \mark \default
  \tempo "Ganz ruhig und heiter" 4=100
  s s s s
  s s s s
  s s s s 
  s s s s 
  s s s s
  s s s s s s
  s s s s
  s s s
  s s s 
  s s\tempo "immer ruhiger" s s
  s s s
  s s\tempo "immer ruhiger" s
  s s s
  s s s
  s s s s\bar"|."
}

sopTune = \relative c'' {
  \time 4/4
  R1 |
  R1 |
  r4 d\p d a |
  d g d d |
  es2( 4. c8 |
  
  bes4 c a2) |
  g1 |
  R1 |
  R |
  r4 e'\p d b? |
  
  e a e e |
  f2( e4. d8 |
  c4 d b2) |
  a\breathe a4\mp a |
  \time 3/4
  a f a~( |
  \time 4/4
  
  a4 b d b |
  a4.) a8 g4 f |
  a2\> a~ |
  \time 3/2
  a\! r a4^\markup{\italic meno \dynamic p} a
  \time 3/4
  a f a~(
  \time 6/4
  a\bar "" 
  
  b e b4. a8 g4 |
  \time 4/4
  a) a a a |
  f1\> |
  g1 |
  \time 3/2 
    r2\!\bar "" \break
    
    r e'4\mf d |
  \time 4/4 
  fis4. fis8 e4 cis |
  \time 3/2
  b2 cis\breathe e4 d |
  \time 4/4
  fis4. fis8 e4 cis |
  \time 3/2
  
  b2\breathe e4 d fis4. fis8 |
  \time 3/4
  cis4 cis\breathe b8 b |
  \time 4/4
  fis'4 fis cis cis\breathe |
  fis4. fis8 \bar"" 
    e4 d |
  
  << \voiceOne{ e2\> e\!} \new Voice { \voiceTwo b2 b } >>\oneVoice
  \time 3/4
  R2. |
  \time 4/4
  a4\mp a a f? |
  a4. g8\> e4 d |
  e2 e\! 
  \time 2/4
  b'4^\markup{ \italic poco \dynamic f } b
  % begin of volta
    e e\breathe |
    b b |
    e e\breathe |
    b b |
    \time 4/4
    e2.( d4 |
    b2 cis~ |
    \time 6/4
    cis?4\breathe b cis e2 d4 |
    \time 3/4
    e2\startGroup) e4^\markup{Quasi 6/4} \breathe |
    e d e~\stopGroup |
    \time 4/4
    e e\breathe d d |
    \time 6/4
    e2 \bar""
      e4\breathe e2 e4\breathe |
    \time 3/2
    e2.( fis4 e d |
    \time 4/4
    b2) b4\breathe b |
    b b\> b b\!\breathe |
    b^\markup{\italic meno \dynamic f} b cis2~( |
    cis?4 b2 cis4 |
    \time 3/2
    b4\breathe cis2 b4 cis b |
    cis2 d2.) d4 |
    \time 4/4
    cis4\> b2.~\! |
    b4 r r2
    \time 2/4
    b4^\markup{\italic poco \dynamic f } b |
  % end of volta
  
  e e\breathe |
    b b |
    e e\breathe |
    b b |
    \time 4/4
    e2.( d4 |
    b2 cis~ |
    \time 6/4
    cis?4\breathe b\bar "" \break
      
      cis! e2 d4 |
    \time 3/4
    e2\startGroup) e4^\markup{Quasi 6/4} \breathe |
    e d e~\stopGroup|
    \time 4/4
    e e\breathe d d |
    \time 6/4
    e2 e4\breathe e2 e4\breathe |
    \time 3/2
    e2~( \bar "" \break
    
      e4 fis e d |
    \time 4/4
    b2) b4\breathe b |
    b b\> b b\!\breathe |
    b b cis2~( |
    cis4 b2 cis4 |
    \time 3/2
    b4\breathe cis2 b4 cis b | \break
    
    cis2 d2.) d4 |
    \time 4/4
    cis4\> b2.~ |
    \tempo "Zögern"
    \time 6/4
    b4\! r r b^\markup{ \dynamic mp \italic { sehr innig } } b b \tempo "Ruhiger und immer meh beruhigen" |
    b4. b8 b4 d2( e4 | \pageBreak
    
    \time 4/4
    fis e4. d8 cis4 |
    \time 6/4
    b2\breathe fis'4 e4. d8 cis4\> |
    \time 3/2
    b4) a b2 b\!  | 
    \time 4/4
    % Rehearsal mark (H)
    
    e4\p( cis4. e8[ cis e \oBreak |
    fis gis fis e] cis2) |
    b4\breathe fis'2( e4 |
    cis b cis2) |
    b1~ | \break
    \time 3/2
    b2. r4 r2 |
    \time 4/4
    b4( gis4. b8[ gis b |
    \time 3/4
    cis dis] cis4.\breathe cis8[ |
    d! e] d4.\breathe d8[ | \break
    \time 4/4
    e fis] e4. \breathe fis8[ e cis] |
    \time 3/4
    e2) e4 \breathe |
    e2 cis4 \breathe |
    << \voiceOne {
      e4.( c8\>[ e c] |
      e2 fis4 |
      \time 4/4
      gis2) gis\pp
       } \new Voice { \voiceTwo
      e4.( c8[ e c] |
      e2 fis4 |
      \time 4/4
      e2) e
      }
    >>    
}

altTune = \relative c'' {
  a2\p g4 e | 
  a d a a | 
  \time 3/4
  bes2( a4~ |
  a8[ g] f4 g |
  a2) g4\breathe |
  g2 f4\breathe |
  
  \time 4/4
  g2 f4 d |
  g c g8 g bes4~( |
  bes8 g4\breathe bes8 g4 f |
  es4 f8\>[ es] d2) |
  e!\!\breathe a\p |
  
  g4 e a d |
  a a bes2( |
  a4. g8 f4 g |
  e2.\> d4~ |
  \time 3/4
  d) c r\! |
  \time 3/2 
  
  r4 e2\pp^\markup{\italic echohaft}^\markup\openBracket #34 e4 e c |
  \time 4/4
  e4.( d8 e4.\breathe d8[ |
  \time 3/2
  fis8 d] e2) e4 d b |
  c2\> b1\! |
  
  \time 3/4
  R2. |
  
  \time 4/4
  e4^\markup{\italic echohaft}^\markup\openBracket #32 \pp  e e c |
  \time 6/4
  e4.( f?8[ a f] e4.\breathe f8[ a f] |
  \time 4/4
  e4) e e e | 
  c2 \bar"" \break
    g'~\> |
  g\breathe a4\mf g |
  b4. b8 a4 fis |
  \time 6/4
  e2 a4\breathe a2 g4 |
  \time 4/4
  b4. b8 \bar""
    a4 fis |
  \time 3/2
  e2\breathe a4 g b4. b8 |
  \time 3/4
  fis4 fis\breathe fis8 fis |
  \time 3/2
  b4. b8 a4 fis\bar""
    a2\> |
  \time 3/4
  e4\breathe e^\markup{\italic echohaft}\pp e |
  \time 4/4
  c( e4. d8 e4~ |
  e8[\breathe d e d] e4.) d8 |
  c4 b\> c2~ |
  c b\! |
  \time 2/4
  
  r2 |
  % begin of volta
    e4^\markup{ \italic poco \dynamic f } e |
    g g \breathe |
    e e |
    g g \breathe |
    e e |
    g g \breathe |
    fis fis |
    a a \breathe |
    
    gis gis |
    b b \breathe |
    b b \breathe |
    \time 3/2
    << 
      \voiceTwo {
      c1( d2 |
      b a b~ |
      b\breathe d b |
      a fis2.\breathe e4 |
      fis e fis2\>) fis2
      }
    % this odd order of voiceTwo and voiceOne is necessary for correct lyric alignment      
    \new Voice { 
      \voiceOne 
      c'1( d2^\markup \openBracket #32 |
      b a b~ |
      b\breathe d b |
      a b1) |
      b1. 
      
     } >> \oneVoice
     \time 4/4
     fis4\!^\markup{ \italic meno \dynamic f } fis gis2~( |
     gis?4 fis2 gis4 |
     \time 3/2
     fis4\breathe gis2 fis4 gis fis |
     gis2 a2.) a4 |
     \time 4/4
     gis\> fis\!\breathe b,\p b |
     d d b2 |
     \time 2/4
     b4 r |
  % end of volta
  
  e4^\markup{ \italic poco \dynamic f } e |
    g g \breathe |
    e e |
    g g \breathe |
    e e |
    g g \breathe |
    fis fis |
    a a \breathe |
    
    gis gis |
    b b \breathe |
    b b \breathe |
    \time 3/2
    << \voiceTwo {
      c1( d2 |
      b a b~ |
      b\breathe d b |
      a fis2.\breathe e4 |
      fis e fis2\>) fis2\breathe
      }
    % this odd order of voiceTwo and voiceOne is necessary for correct lyric alignment
    \new Voice { 
      \voiceOne 
      c'1( d2^\markup \openBracket #32 |
      b a b~ |
      b\breathe d b |
      a b1) |
      b1.     
     } >> \oneVoice
   \time 4/4
   fis4\! fis gis2~( |
   gis?4 fis2 gis4 |
   \time 3/2
   fis4\breathe gis2 fis4 gis fis |
   gis2 a2.) a4 |
   \time 4/4
   gis\> fis\!\breathe b,\p b |
   \time 3/2
   d4 e b\> b4.\!\breathe b4^\markup{ \italic meno \dynamic p } b8 |
   d4 e b\> b4.\!\breathe b4\pp b8 |
   \time 4/4
   
   d4( e2 fis4 |
   \time 3/2
   d e4. d8) b4 a2\> |
   << { s1 s2\! } e'1. >> |
   \time 4/4
   R1|
   r2 gis4\p( fis~ |
   fis8[ gis fis\breathe gis b cis b gis] |
   \time 3/4
   fis4.\breathe gis8[ fis e] |
   fis4.\breathe gis8[ fis e] |
   \time 3/2
   fis2 \bar"" gis\breathe gis4( fis?~ |
   \time 4/4
   fis8[ gis fis gis\breathe b cis b gis] |
   fis4. gis8[ fis gis] b4~ |
   \time 3/4
   b8[\breathe gis fis gis] b4~ |
   b8[ cis] \bar"" b4.\breathe gis8[ |
   b cis] b4) b\breathe |
   fis2 b4\breathe |
   fis2 b4\breathe |
   fis2\> b4\breathe |
   \time 3/2
   fis2 b1\pp |
}

tenTune = \relative c' {
  R1 |
  R |
  R |
  R |
  d4\p c2 a4 |
  d g d d |
  es2 d8\breathe d es4~( |
  es8 d4\breathe es8 d4 c |
  bes c8\>[ bes] a2) |
  g2.\! r4 |
  
  r c\p bes g |
  \time 3/4
  c2\breathe a4 |
  d2\breathe b?4 |
  \time 3/2
  e a e e\> f2 |
  \time 3/4
  e2 r4\! |
  \time 3/2
  
  r4 b2\pp b4 b e |
  \time 4/4
  b4.( a8 b4. \breathe a8[ |
  \time 3/2
  cis8 a] b2) b4 a g |
  a2\> e'1\! |
  \time 3/4
  
  R2. |
  \time 4/4
  b4\pp c d c |
  \time 6/4
  b4.( c8[ d c] b4.\breathe c8[ d c] |
  \time 3/2 
  b4) b a g a2 |
  \time 4/4
  b1\> |
  r2\! a4\mf g |
  b4. b8 a4 fis |
  \time 3/2
  e2 a\breathe a4 g |
  b4. b8 c2 d |
  e\> dis r\! |
  \time 3/4
  R2. |
  c?2^\markup{\italic echohaft}^\markup\openBracket #25 \pp c4 |
  b2 a4 |
  b4.( a8 b4~ |
  \time 4/4
  b8[\breathe a b a] b4.) b8 |
  a4 g\> a2~ |
  a gis\!
  \time 2/4
  
  r2 |
  % begin of volta
    c4^\markup{ \italic poco \dynamic f } d |
    e e\breathe |
    c d |
    e e\breathe |
    c d |
    e b\breathe |
    d e |
    fis cis\breathe |
    
    e fis |
    gis gis\breathe |
    e fis |
    \time 3/2
    g!1.~(  |
    g2 fis e |
    
    fis1 e2~ |
    e4\breathe d b d e2~ |
    e) dis1\>\breathe |
    \time 4/4
    d!4\!^\markup{ \italic meno \dynamic f } d e2~( |
    
    e4 d2 e4 |
    \time 3/2
    d4\breathe e2 d4 e d |
    e2 fis2.) fis4 |
    \time 4/4
    e4\> d\!\breathe << \voiceOne {
      b\p b 
      b a fis!2\> |
      \time 2/4
      fis4\! } \new Voice { \voiceTwo
      b a 
      g fis e2 
      d4 }
    >> \oneVoice
    r4
  % end of volta
  
  c'^\markup{ \italic poco \dynamic f } d |
  e e \breathe |
  c d |
  e e \breathe |
  c d |
  e b \breathe |
  d e |
  fis cis\breathe |
  e fis |
  gis gis\breathe |
  e fis\breathe |
  \time 3/2
  g?1.~( |
  g2 fis e |
  fis1 e2~ |
  e4\breathe d b d e2~ |
  e) dis1\>\breathe |
  \time 4/4
  d!4\! d e2~( |
  e4 d2 e4 |
  \time 3/2
  d4\breathe e2 d4 e d
  e2 fis2.) fis4 |
  \time 4/4
  e\> d\breathe |
  fis,\p fis |
  \time 3/2
  g g fis\> fis4.\! \breathe fis4^\markup{ \italic meno \dynamic p } fis8 |
  a4 g fis\> fis4.\breathe fis4\pp fis8 |
  \time 4/4
  
  a4( b2 a4) |
  \time 3/2
  g2 a1\> |
  << { s1 s2\! } gis1. >> |
  \time 4/4
  R1 |
  R1 |
  e'4\p( cis4. e8[ cis e |
  fis gis fis e] cis2) |
  e4\breathe cis2 b4\breathe
  \time 3/4
  cis2 e4\breathe |
  cis2 b4\breathe |
  cis2 e4\breathe |
  cis2 b4\breathe |
  a2 b4\breathe |
  a4~ \bar "" a b\breathe |
  <<
    \voiceOne { a2 b4\breathe } |
    \new Voice { \voiceTwo a2 gis4 }
  >>

  <<
    \voiceOne { a2 b4\breathe } |
    \new Voice { \voiceTwo a2 gis4 }
  >>
    <<
    \voiceOne { a2 b4\breathe } |
    \new Voice { \voiceTwo a2 gis4 }
  >>
    <<
    \voiceOne { a2\> b4\breathe } |
    \new Voice { \voiceTwo a2 gis4 }
  >>
  \time 3/2
  
    <<
    \voiceOne { cis2 b1\pp } |
    \new Voice { \voiceTwo a2 b1 }
  >>
}

basTune = \relative c {
  R1 |
  R |
  R |
  R |
  R |
  
  R |
  c2\p bes4 g |
  \time 3/4
  c2\breathe g4 |
  c2\breathe g4\> |
  \time 3/2
  c f c2.\! r4 |
  \time 4/4
  
  R1 |
  \time 3/2
  a'2\p g4 e a d |
  \time 3/4
  a2\breathe d4 |
  a\> a bes4~ |
  bes a r4\! |
  \time 3/2
  
  r4 a2\pp g4 f a |
  \time 3/4
  e2( g4 |
  \time 4/4
  e\breathe a e) e |
  \time 3/4
  d4.( c8) b4 |
  \time 3/2
  a2\> e1\! |
  \time 3/4
  
  R2. |
  \time 4/4
  e'4\pp e e e |
  \time 6/4
  a( e4. d8[ e d] e4.\breathe d8[ |
  \time 3/2
  e d] e4.) d8 c4 b a |
  e1\> r2\! |
  \time 4/4
  r2 d'4\mf c |
  e4. e8 d4 b |
  \time 3/2 
  a2 e'\breathe \bar ""
    d4 c |
  \time 4/4
  e4. e8 d4 b |
  \time 3/2
  a2\> b r\! |
  \time 3/4
  R2. | 
  \time 3/2
  
  a'2.\pp a4 g f |
  \time 3/4
  e2( c4 |
  \time 4/4
  e2\breathe c4 e~ |
  e) d\> c b |
  a2 e\! |
  \time 2/4
  
  r2 |
    % begin of volta
    g'4^\markup{ \italic poco \dynamic f } f |
    e e\breathe |
    g f |
    e e\breathe |
    g f |
    e e\breathe |
    a g |
    fis fis \breathe |
    
    b a |
    gis gis \breathe |
    b b\breathe |
    \time 3/2
    << b1. { s1 s2^\markup{\italic {Unterstimmen unterordnen} } } >>|
    b1. \breathe |
    
    b1. |
    b2\breathe b2 b4\breathe b |
    b b b2\> b\breathe |
    \time 4/4
    b4\!^\markup{ \italic meno \dynamic f } b a2~( |
    a4 b2 a4 |
    \time 3/2
    b4\breathe a2 b4 a b |
    a2 g2.) g4 |
    \time 4/4
    a\> b\!\breathe b,\p b |
    g b b2\> |
    \time 2/4
    b4\! r |
  % end of volta
  
     g'4^\markup{ \italic poco \dynamic f } f |
    e e\breathe |
    g f |
    e e\breathe |
    g f |
    e e\breathe |
    a g |
    fis fis \breathe |
    
    b a |
    gis gis \breathe |
    b b\breathe |
    \time 3/2
    << b1. { s1 s2^\markup{ \italic { Unterstimmen unterordnen } } } >> \breathe |
    b1. |    
    b1. |
    b2\breathe b2 b4\breathe b |
    b b b2\> b\breathe |
    \time 4/4
    b4\! b a2~( |
    a4 b2 a4 |
    \time 3/2
    b4\breathe a2 b4 a b |
    a2 g2.) g4 |
    \time 4/4
    a\> b\!\breathe b,\p b |
    \time 3/2
    g4 b b\> b4.\!\breathe b4^\markup{ \italic meno \dynamic p } b8  |
    g4 b4 b\> b \breathe b2\pp |
    \time 4/4
    
    b4 g2( a4 |
    \time 3/2
    b4. b8 a4) |
    4 a2\> |
    << { s1 s2\! } e1. >> |
    \time 4/4
    R1 |
    R1 |
    R1 |
    a'4\p( fis4. a8[ fis a |
    b cis b a] fis2) |
    \time 3/2
    e4\breathe b'4.( cis8[ b a] fis2) |
    e4\breathe b'4.( cis8[ b a] fis2) |
    \time 4/4
    e8\breathe cis'8([ b a] fis2) | 
    e8\breathe cis'8([ b a] fis2) |
    e4\breathe fis2 e4\breathe |
    \time 3/4
    fis2 e4\breathe |
    fis2\> e4\breathe |
    \time 3/2
    d2 e1\pp
}

sopVoice = <<
  \commonDynArt
  \sopTune
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
