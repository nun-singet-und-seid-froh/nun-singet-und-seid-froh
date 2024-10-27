% modification of templates/SATTB/modern/voices.ily

% common settings of all voices
global = {
  \key g \major
  \time 2/2
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
  \phrasingSlurDashed
}

% articulation, dynamics, fermata and breathing marks
sopArt = {
}

altArt = \sopArt

tenArt = \sopArt

basArt = \sopArt


% the tunes
sopVoice = <<
  \sopArt
  \relative c''
  {
    \tempo "Allabreve, feierlich langsam"
%{01%}
  b2.\p b4
  b2 b
  b2. b4^\markup{ \italic { cresc. sempre } }
  c2 b\breathe
  b( a4) g
  a2 
  b\(
  c\)(\ff a4 b
  c2 d2~ 
  d4.. ) d16 d2\break
%{10%}
  R1^\markup{ \italic { G.P. } }
  d2.\p d4
  d2 d
  d2.^\markup{ \italic { cresc. sempre } } d4
  es2 d\breathe
  d( c4) bes
  c2 d
  es\ff( c4 d
  es2 f~
  f4..) f16 f2\break
%{20%}
  R1^\markup{ \italic { G.P. } }
  bes,1^\markup{ \dynamic ff \italic sempre }~
  bes2 bes
  ges'1^^(
  f2 es)
  bes\breathe bes
  bes4.. bes16 bes2
  ges'1^^(
  f2) es
  d!4 d2^> d4
%{30%}
  d^> d^> r d
  d2 es4 d
  c2.( d4~
  d4..) d16 d2
  R1^\markup{ \italic { G.P. } }\break
  c2\pp g
  a4^\markup{ \italic cresc. }( b) b( c)
  d4..^> d16 d2
  R1
  d2\mf a
% 40 
  b4^\markup{ \italic cresc. }( cis) cis( d)
  e4.. e16 e2
  R1
  e2\ff( b
  c!4^> d^>) es^>( f^>)\breathe
  g2( bes,
  c4^\markup{ \italic cresc. } d es f
  g2\fff) d
  es4( f) g( as)
  as1~
% 50
  as2 g
  g r\break
  r es\pp g,1~
  g2 es'
  g,1~
  g2 es'
  g,1~
  g2 f4 g
  gis2^\markup{ \dynamic mf \italic cresc. }( cis~\noBreak
% 60  
  cis4) b dis,( e)\(
  gis2^>\)( fis4) e^\markup{ \italic dim. }
  e2( dis)
  e4 e8.\ff e16 e2~(
  e8[ fis e fis] gis[ a] b4)
  gis4 e'8.^>\fff e16 e2~
  e4 dis^> e^> fis^>
  gis1^^ 
  e2^^ r
  c!2\pp cis
% 70
  cis4 b r e,8 e
  a1\<(
  gis2\! fis
  e gis4^\markup{ \italic dim. } fis
  e2 dis)
  e4 r r2
  R1
  r4 e'8.\fff e16 e2~
  e4 dis^> e^> fis^>
  gis1^^~(
% 80  
  gis
  a2) a^^
  r r4 a,8.\pp a16
  a2 gis
  r r4 cis8.\p cis16
  cis2 b
  r fis'~(
  fis e
  b) gis
  e1~^\markup{ \dynamic p \italic { dim. sempre } }
  e
  e2\ppp r
  \bar"|."
  }
>>

altVoice = <<
  \altArt
  \relative c''
  {
%{01%}
  g2.\p g4
  fis4( a) g( fis)
  fis2( g4) fis^\markup{ \italic { cresc. sempre } }
  e2 d\breathe
  c2. c4
  c2 e\(
  e\ff\)( c4 d
  e2 fis
  g4..) g16 g2
%{10%}
  R1
  bes2.\p bes4
  a( c) bes( g)
  f4^\markup{ \italic { cresc. sempre } }( e d) bes'8[ a]
  g2 f\breathe
  es2. es4
  es2 g
  g\ff( es4 f
  g2 a
  bes4..) bes16 bes2
%{20%}
  R1  
  bes1^\markup{ \dynamic ff \italic sempre }~
  bes2 bes
  des,1^^(
  es4 f ges as)
  bes2\breathe bes
  bes4.. bes16 bes2
  des,1^^(
  es4 f) ges( as)
  bes4 bes2^> f4
%{30%}
  g!^> g^> r g
  es2 es4 es
  es2.( f4
  g4..) g16 g2
  R1
  e!2\pp e
  e^\markup{ \italic cresc. }  e
  g d
  e4( fis) fis( g)
  a4..^>\mf a16 a2
  r fis4^\markup{ \italic cresc. }  fis
  a2\f e
  fis4( gis) gis( a)
  b4.. b16 b2
  r2 g!4^\markup{ \italic cresc. }  a\breathe
  
  bes2\ff( f
  g4^\markup{ \italic cresc. } as bes ces
  bes2\fff) as
  g4( c!) bes( d)
  d1~
  d2 es
  es r
  R1
  r2 bes,\pp
  c r
  r c
  es r
  r2 dis
  e! e4 e
  e2^\markup{ \dynamic mf \italic cresc. }( dis
  e4) e a,( gis)\(
  cis2.^>\) cis4^\markup{ \italic dim. }
  b1
  b4 r r e8.\ff e16 
  e2.( fis4)
  gis4 gis8.^>\fff gis16 gis2~
  gis4 gis^> gis^> gis^>
  cis1^^
  cis2^^ r
  g!2\pp g
  fis4 fis r e8 e
  cis1\<(
  bis\!
  cis^\markup{ \italic dim. }
  b!)
  b4 r r e8.\ff e16
  e2 e4 e8.\fff e16
  gis1~
  gis4 gis^> gis^> gis^>
  cis1^^~
  cis~
  cis2 cis^^
  r r4 dis,8.\pp dis16
  e4 e r2
  r r4 dis8.\p dis16
  e4 e r2
  r2 gis4\mf( a
  gis2. fis4
  e2) e
  b1^\markup{ \dynamic p \italic { dim. sempre } }~
  b
  b2\ppp r
  }
>>

%since both tenorI and tenorII are only split at a short passage, the common 
%parts are defined separately to be used both in the tenIVoice and tenIIVoice

tenCommonPartOne = 
  \relative c'
  {
  \autoBeamOff
  \dynamicUp
%{01%}
  e2.\p e4
  b2 b
  g2. g4^\markup{ \italic { cresc. sempre } } 
  g2 g\breathe
  e2. e4 a2 \phrasingSlurDashed gis\(
  c4\ff\)( d e d
  c1~
  c4..) c16 b2
%{10%}
  R1
  g'2.\p g4
  d2 d
  d4^\markup{ \italic { cresc. sempre } }( e f) bes,
  bes2 bes4( as)\breathe
  g2. g4
  c2 b!
  c\ff( g'4 f
  es1~
  es4..) es16 d2
%{20%}
  R1
  r2 bes2^\markup{ \dynamic ff \italic sempre }~
  bes bes
  bes1^^( ges2 es')
  f\breathe bes,
  bes4.. bes16 bes2
  bes1^^(
  ges2) es'
  f4 f2^> bes,4
  b!^> b^> r b
  g2 g4 g
  c1(
  c4..) c16 b2
  R1
  c2\pp c
  c2^\markup{ \italic cresc. }
  }

tenIPartOne = \relative c' {
  c2
}

tenIIPartOne = \relative c' {
  a2
}

tenCommonPartTwo = \relative c' {
  \autoBeamOff
  \dynamicUp
  c4..^> c16 b2
  b b
  d\mf d
}

tenIPartTwo = \relative c' {
  fis2^\markup{ \italic cresc. } d
}

tenIIPartTwo = \relative c' {
  d2 b
}

tenCommonPartThree = \relative c' {
  d4.. d16 cis2
  r cis4 cis
}

tenIPartThree = \relative c' {
  e2.\ff( fis4
  g!2) es\breathe
}

tenIIPartThree = \relative c' {
  e1~
  e2 c!
}

tenCommonPartFour = \relative c' {
  \autoBeamOff
  \dynamicUp
  es2( as,
  g4^\markup{ \italic cresc. } c des d
  es2\fff) bes
  bes4( es) es( f)
  f1~
  f2 es
  es r
  R1
  r2 es,\pp
  es r
  r es
  g r
  r a
  bes a4 ais
  b!1^\markup{ \dynamic mf \italic cresc. }~
  b4 b fis( e)\(
  b'2^>\)( a4) gis^\markup{ \italic dim. }
  fis2( gis4 a)
  gis r  r2
  r4 e'8.\ff e16 e2
  e4 e8.^>\fff e16 e2~
  e4 dis^> e^> dis^>
  e1^>
  gis2^> r
  e2\pp e
  dis4 dis r b8 b
  fis1\<(
  dis\!
  cis2 b'4^\markup{ \italic dim. } a
  fis2 gis4 a)
  gis4 r r2
  r4 e'8.\ff e16 e2
  e4 e8.\ff e16 e2~
  e4 fis^> e^> dis^>
  e1^^~
  e~
  e2 e^^
  r r4 a,8.\pp a16
  b4 b r e8.\p dis16
  cis4 b a gis8[ fis]
  gis4 gis r gis'8.\mf fis16
  e4 dis cis c
  b b r b'8.\ff a16
  gis4 e b^\markup{ \italic dim. } a
  gis1^\markup{ \dynamic p \italic { dim. sempre } }~
  gis
  gis2\pp r
}

tenIVoice = {
  \partCombineAutomatic \tenCommonPartOne
  \partCombineApart \tenIPartOne
  \partCombineAutomatic \tenCommonPartTwo
  \partCombineApart \tenIPartTwo
  \partCombineAutomatic \tenCommonPartThree
  \partCombineApart \tenIPartThree
  \partCombineAutomatic \tenCommonPartFour
}

tenIIVoice = {
  \partCombineAutomatic \tenCommonPartOne
  \partCombineApart \tenIIPartOne
  \partCombineAutomatic \tenCommonPartTwo
  \partCombineApart \tenIIPartTwo
  \partCombineAutomatic \tenCommonPartThree
  \partCombineApart \tenIIPartThree
  \partCombineAutomatic \tenCommonPartFour
}

tenVoice = { \partCombine \tenIVoice \tenIIVoice }

basCommonPartOne =
  \relative c
  {
  \autoBeamOff
  \dynamicUp
%{01%}
  R1
  R1
  e2.\p d4^\markup{ \italic { cresc. sempre } }
  c2 g\breathe
  a2. c4
  f2 \phrasingSlurDashed e\(
  a1~\)(
  a
  g4..) g16 g2
%{10%}
  R1
  R1
  R1
  bes2.\p^\markup{ \italic { cresc. sempre } } bes4
  es,2 bes\breathe
  c2. es4
  as2 g
  c,\ff( c'~
  c ces
  bes4..) bes16 bes2
%{10%}
  R1
  r2 bes2^\markup{ \dynamic ff \italic sempre }~
  bes bes
  ges,1^^(
  ces2 ces')
  bes\breathe bes
  bes4.. bes16 bes2
  ges,1^^(
  ces2) ces'
  bes4 bes2^> as4
  g^> g^> r g
  c,2 c4 c
  as'1(
  g4..) g16 g2
  R1
  R1
  R1
  g2\p g
  g
  }

basIPartOne = \relative c {
    g'2
  g4..^>\mf  g16 fis2
}

basIIPartOne = \relative c {
    e2
  d4.. d16 d2
}

basCommonPartTwo = \relative c {
  R1
  a'2\f a
}

basIPartTwo = \relative c {
  cis'2^\markup{ \italic cresc. } a
  a4.. a16 gis2
}

basIIPartTwo = \relative c {
  a'2 fis
  e4.. e16 e2
}

basCommonPartThree = \relative c {
  \autoBeamOff
  \dynamicUp
  R1\breathe
  bes'2( d,
  es4^\markup{ \italic cresc. } f g as
  bes2\fff) f
  g4( as) bes( b)
  c1~
  c2 c
  c r
  R1
  r2 g,\pp
  as r
  r a!
  bes r
  r b
  c c4 c
  b2^\markup{ \dynamic mf \italic cresc. }( a'
  gis4) gis b,( cis)\(
  a2.^>\) a4^\markup{ \italic dim. }
  b1
  e,4 r r2
  R1
  r4 cis''8.^>\fff cis16 cis2~
  cis4 gis^> cis^> cis^>
  cis1^^
  cis2^^ cis,4^\markup{ \italic dim. } b
  ais1\pp( 
  a!4) a r gis8 gis
  fis1\<(
  gis\!
  a2 fis^\markup{ \italic dim. }
  b1)
  e,4 e'8.\ff e16 e2~
  e4 e e\fff dis
  cis1~
  cis4 cis^> cis^> cis^> 
  cis'1^^~(
  cis4 gis e cis
  a1~
  a2) gis4\pp( fis)
  e1~
  e2 e
  e1\p~
  e2 e
  e1~^\markup{ \italic cresc. }
  e2 e
  e1^\markup{ \dynamic p \italic { dim. sempre } }~
  e
  e2\ppp r
}

basIVoice = {
  \partCombineAutomatic \basCommonPartOne
  \partCombineApart \basIPartOne
  \partCombineAutomatic \basCommonPartTwo
  \partCombineApart \basIPartTwo
  \partCombineAutomatic \basCommonPartThree
}

basIIVoice = {
  \partCombineAutomatic \basCommonPartOne
  \partCombineApart \basIIPartOne
  \partCombineAutomatic \basCommonPartTwo
  \partCombineApart \basIIPartTwo
  \partCombineAutomatic \basCommonPartThree
}

basVoice = { \partCombine \basIVoice \basIIVoice }
