%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSAATTBB/[SS][AA][TT][BB]/modern/voices.ily

global = {
 \key g \major
 \time 4/4
 \dynamicUp
 \autoBeamOff
 
 %\override DynamicLineSpanner.staff-padding = #3
}

commonMarks = {
%{01%}  s1
%{02%}  s1
%{03%}  s1
%{04%}  s1
%{05%}  s1
%{06%}	s1
%{07%}	s1
%{08%}	s1
%{09%}	s1
%{10%}	s1
%{11%}	s4 s\pp s s
%{12%}	s1
%{13%}	s2 s4\cresc s4\!
%{14%}	s4\f s4 s2
%{15%}	s4 s4\f s2
%{16%}	s1
%{17%}	s1
%{18%}	s1
%{19%}	s1
%{20%}	s1
%{21%}	s1
%{22%}	s2 s4\cresc s4\!
%{23%}	s1
%{24%}	s1
%{25%}  s1
%{26%}  s1
%{27%}	s1
%{28%}	s1
%{29%}	s2 s4\f s4
%{30%}	s1
%{31%}	s2 s4\decr s4
%{32%}	s2 s4\! s4
%{33%}	s1
%{34%}	s1\fermata
\bar "|."
}

sopIMarks = {
%{01%}  s1
%{02%}  s
%{03%}  s4.\mf\< s8 s4 s\!
%{04%}  s2.\> s4\!
%{05%}  s1
%{06%}	s1
%{07%}	s1
%{08%}	s1
%{09%}	s1
%{10%}	s1
%{11%}	s1
%{12%}	s1
%{13%}	s1
%{14%}	s1
%{15%}	s1
%{16%}	s1
%{17%}	s4 s4\mf s2
}

sopIIMarks = {
%{01%}  s1
%{02%}  s1
%{03%}  s1
%{04%}  s1
%{05%}  s1
%{06%}	s1
%{07%}	s4.\mf\< s8 s4 s4\!
%{08%}	s2.\> s4\!
%{09%}	s1
%{10%}	s1
%{11%}	s1
%{12%}	s1
%{13%}	s1
%{14%}	s1
%{15%}	s1
%{16%}	s1
%{17%}	s4 s4\mf s2
}

altIMarks = {
%{01%}  s1
%{02%}  s1
%{03%}  s1 
%{04%}  s4.\mf\< s8 s4 s4\!
%{05%}  s2.\> s4\!
%{06%}	s1
%{07%}	s1
%{08%}	s1
%{09%}	s1
%{10%}	s1
%{11%}	s1
%{12%}	s1
%{13%}	s1
%{14%}	s1
%{15%}	s1
%{16%}	s1
%{17%}	s2 s4\decr s4
%{18%}	s4 s4\! s2
%{19%}  s4 s8 s8 s2
}

altIIMarks = {
%{01%}  s1
%{02%}  s1
%{03%}  s1
%{04%}  s1
%{05%}  s1
%{06%}	s4.\mf\< s8 s4 s4\!
%{07%}	s2.\> s4\!
%{08%}	s1
%{09%}	s1
%{10%}	s1
%{11%}	s1
%{12%}	s1
%{13%}	s1
%{14%}	s1
%{15%}	s1
%{16%}	s1
%{17%}	s2 s4\decr s4
%{18%}	s2 s4\! s4
%{19%}  s1
%{20%}  s1
%{21%}  s4 s4\mf s2

}

tenIMarks = {
%{01%}  s4.\mf\< s8 s4 s4\!
%{02%}  s2.\> s4\!
%{03%}  s1
%{04%}  s1
%{05%}  s1
%{06%}	s1
%{07%}	s1
%{08%}	s1
%{09%}	s1
%{10%}	s1
%{11%}	s1
%{12%}	s1
%{13%}	s1
%{14%}	s1
%{15%}	s1
%{16%}	s1
%{17%}	s2 s4\decr s4
%{18%}	s4 s4\! s2
%{19%}  s4 s8\mf s8 s2
}

tenIIMarks = {
%{01%}  s1
%{02%}  s1
%{03%}  s1
%{04%}  s1
%{05%}  s1
%{06%}	s1
%{07%}	s1
%{08%}	s4.\mf\< s8 s4 s4\!
%{09%}	s2.\> s4\!
%{10%}	s1
%{11%}	s1
%{12%}	s1
%{13%}	s1
%{14%}	s1
%{15%}	s1
%{16%}	s1
%{17%}	s2. s4\decr
%{18%}	s4 s4\! s2
%{19%}  s4 s8 s8 s2
}

basIMarks = {
%{01%}  s1
%{02%}  s1
%{03%}  s1
%{04%}  s1
%{05%}  s4.\mf\< s8 s4 s4\!
%{06%}	s2.\> s4\!
%{07%}	s1
%{08%}	s1
%{09%}	s1
%{10%}	s1
%{11%}	s1
%{12%}	s1
%{13%}	s1
%{14%}	s1
%{15%}	s1
%{16%}	s1
%{17%}	s2. s4\decr
%{18%}	s4 s4\! s2
%{19%}  s4 s8\mf s8 s2
}

basIIMarks = {
%{01%}  s1
%{02%}  s1
%{03%}  s4.\mf\< s8 s4 s\!
%{04%}  s2.\> s4\!
%{05%}  s1
%{06%}	s1
%{07%}	s1
%{08%}	s1
%{09%}	s1
%{10%}	s1
%{11%}	s1
%{12%}	s1
%{13%}	s1
%{14%}	s1
%{15%}	s1
%{16%}	s1
%{17%}	s1
%{18%}	s1
%{19%}  s1
%{20%}  s1
%{21%}  s4 s4\mf s2

}



sopIVoice = \relative c'' {<< 
{ \commonMarks }
{ \sopIMarks}
{
%{01%}  r1
%{02%}  g4.g8 b4 d
%{03%}  e2. d4
%{04%}  c e, c' b
%{05%}  a fis d'2(
%{06%}	d8) d d2 c4
%{07%}	b( c d2 
%{08%}	d4) c b2
%{09%}	g4 e'2 b8([ c])
%{10%}	d2 d2(
%{11%}	d4) a a a8. a16
%{12%}	d2 d
%{13%}	a4\rest d d d8. e16
%{14%}	fis2 fis
%{15%}	a,4\rest fis'4 e e8 e
%{16%}	e2.( dis4)
%{17%}	e b8([ c]) d?4 c8 b
%{18%}	a4 a8 b c4 c8 c
%{19%}	b4 d g2
%{20%}	d d(
%{21%}	d4) g, c2
%{22%}	a4\rest g d'4. d8
%{23%}	d4 c8([ b8]) c4( g'4
%{24%}	g4 fis8 e d4) c
%{25%}  b2 a4\rest cis
%{26%}  d2 a4\rest c?8[ d] 
%{27%}	e4 d8 c b4 b8 c
%{28%}	d4 c8 b a4 a8([ b])
%{29%}	b2 g4 g
%{30%}	g2 e'2(
%{31%}	e) d2(
%{32%}	d c4) c
%{33%}	c2( b4 a)
%{34%}	g1
}
>>}

sopIIVoice = \relative c'' {<< 
{ \commonMarks }
{ \sopIIMarks}
{
%{01%}	r1
%{02%}	r
%{03%}	r
%{04%}	r
%{05%}	r
%{06%}  r
%{07%}  g4. g8 b4 d
%{08%}  e2. d4(
%{09%}  d) c8 c c4 b
%{10%}  a2 a(
%{11%}  a4) a a a8. a16
%{12%}  a2 a
%{13%}  r4 a a a8. a16 
%{14%}  d2 d
%{15%}  r4 d4 d d8 d
%{16%}  d4( c b2)
%{17%}  b4 g8([ a]) b4 a8 g
%{18%}  fis4 fis8 g a4 a8 a
%{19%}  g4 b8([ a]) g2
%{20%}  c4. b8 a4 g4(
%{21%}	g) r r g
%{22%}	d'2. c4 
%{23%}	b4 g c( e
%{24%}	d4.) d8 d2
%{25%}	r1
%{26%}	r4 a d c?8 b
%{27%}	c4 b8 a g([ a]) b4(
%{28%}	b) a8([ g]) g4 fis8([ g])
%{29%}	g2 g4 g
%{30%}  g2 c2(
%{31%}  c) b2(
%{32%}  b2 c4) c
%{33%}	c( g2 a4)
%{34%}  b1
}
>>}

altIVoice = \relative c' {<< 
{ \commonMarks }
{ \altIMarks}
{
%{01%}  r1
%{02%}  r
%{03%}  r
%{04%}  c4.c8 e4 g
%{05%}  a2.( d,4
%{06%}  fis2) fis
%{07%}  g4 d f2
%{08%}  e g(
%{09%}  g4) g g4. g8
%{10%}  g4( fis) fis2(
%{11%}  fis4) fis fis fis8. e16
%{12%}  d2 d
%{13%}  r4 fis fis fis8. fis16
%{14%}  fis2 b2
%{15%}  r4 b b b8 b b4( a2 fis4)
%{16%}  g2 g
%{17%}  d e4 fis
%{18%}  g2 d
%{19%}  a'4. g8 fis4( f)
%{20%}  e r r g
%{21%}	g d8 d d4 d8 d
%{22%}	g2 e4 a
%{23%}	b( a8[ g] fis4.) fis8
%{24%}	g4 g8([ a]) b4 a8 g
%{25%}	fis4 f8 g a4 g8 g
%{26%}	g4. d8 b'8([ a]) g4
%{27%}	g fis8 g d4 d
%{28%}	d2 d4 g
%{29%}	g1
%{30%}  c2( fis,)
%{31%}  g g4( f)
%{32%}  g( c,) d2(
%{33%}	d1)
%{34%}	
}
>>}

altIIVoice = \relative c' {<< 
{ \commonMarks }
{ \altIIMarks}
{
%{01%}  r1
%{02%}  r
%{03%}  r
%{04%}  r
%{05%}  r
%{06%}  d4. d8 fis4 a
%{07%}  b2. a4
%{08%}  g c, g'2(
%{09%}  g4) e8 e g4 b
%{10%}  d,2 d(
%{11%}  d4) d d d8. e16
%{12%}  fis2 fis
%{13%}  r4 fis fis fis8. fis16
%{14%}  fis2 fis
%{15%}  r4 fis g g8 g
%{16%}  e2( b')
%{17%}  b d,4 e
%{18%}  fis d r2
%{19%}  r1
%{20%}  r
%{21%}	r4 e8([ f]) g4 f8 e
%{22%}	d4 d8 e fis?4 fis8 fis
%{23%}	g4. e8 e4 e
%{24%}	g4. d8 d2
%{25%}	r4 e8([ fis]) g4 fis8 e
%{26%}	d4  d8 d d4( e8 f)
%{27%}	g4 r r g
%{28%}	g d8 d d4 d
%{29%}	d2 b4 b 
%{30%}  g'1
%{31%}  fis
%{32%}  f2 e4( c)
%{33%}	c2( g'4 fis?)
%{34%}	g1
}
>>}

tenIVoice = \relative c' {<< 
{ \commonMarks }
{ \tenIMarks}
{
%{01%}  g4. g8 b4 d
%{02%}  e2. d4
%{03%}  c g c b
%{04%}  a2 c4 d4(
%{05%}  d) a a fis
%{06%}  fis2 d'2(
%{07%}  d4) d8 d d4 b
%{08%}  g'2 f
%{09%}  e4. c8 c4 d
%{10%}  d2 a2( 
%{11%}  a4) a a a8. g16
%{12%}  fis2 fis
%{13%}  r4 a a d8. d16
%{14%}  d2 d
%{15%}  r4 d g, b8 b 
%{16%}  b4( c fis, b)
%{17%}  b2 b4 e
%{18%}  a,( d) d2
%{19%}  r4 b8([ c]) d4 c8 b
%{20%}  a4 a8 b c4 d8 d
%{21%}	e4. d8 c4 c
%{22%}	d4. d8 d2
%{23%}	r4 c8([ d]) e4 d8 c
%{24%}	b4 b8 c d4 d8 d
%{25%}	d4. d8 cis4 r
%{26%}	r2 r4 g'8([ f])
%{27%}	e4 e8 fis? g4 b,8 a
%{28%}	g4 a8 b d4 c
%{29%}	b2 d4 d
%{30%}  e1(
%{31%}  e2) b
%{32%}  d g,4( c)
%{33%}	e2( d4 c)
%{34%}	b1
}
>>}

tenIIVoice = \relative c' {<< 
{ \commonMarks }
{ \tenIIMarks}
{
%{01%}  r1
%{02%}  r
%{03%}  r
%{04%}  r
%{05%}  r
%{06%}  r
%{07%}  r
%{08%}  g4. g8 b4 d
%{09%}  e2. d4(
%{10%}  d) a a fis(
%{11%}  fis) fis fis fis8. g16
%{12%}  a2 a
%{13%}  r4 fis fis fis8. fis16
%{14%}  fis2 fis
%{15%}  r4 b e e8 e
%{16%}  e4( a,2 b4)
%{17%}  b2 r4 a4(
%{18%}  a) d, d'2(
%{19%}  d4) g,2 r4
%{20%}  r1
%{21%}	r4 g g g8 a
%{22%}	b4 b8 b a4 a8 a
%{23%}	g4. g8 g4 g
%{24%}	g4. g8 d'2
%{25%}	r4 b4( g) a
%{26%}	a a8 a a4 c8([ g])
%{27%}	g4 r g g
%{28%}	d d8 d d'4 d
%{29%}	d2 b4 b
%{30%}  c2 c2(
%{31%}  c) d2(
%{32%}  d) e4( f)
%{33%}	e2( b4 c)
%{34%}	d1
}
>>}

basIVoice = \relative c { << 
{ \commonMarks }
{ \basIMarks}
{
%{01%}  r1
%{02%}  r
%{03%}  r
%{04%}  r
%{05%}  d4. d8 fis4 a4
%{06%}  b2. a4
%{07%}  g4. g8 g2(
%{08%}  g4) g8 g g4 b
%{09%}  c,4. c8 e4 g
%{10%}  a2 d,2(
%{11%}  d4) d d d8. d16
%{12%}  d2 d
%{13%}  r4 d d d8. d16
%{14%}  b'2 b
%{15%}  r4 b b e,8 e
%{16%}  a4( fis2 a4)
%{17%}  g2 r4 c4(
%{18%}  c) b a2
%{19%}  b4 g8([ a]) b4 a8 g
%{20%}  fis4 fis8 g a4 b8 b
%{21%}	c4. g8 g4 g
%{22%}	g2 d4 d
%{23%}	b'4( c2) a4
%{24%}	d, d d'4. d8
%{25%}	g,2 r
%{26%}	r4 a8([ g]) f4 g8 g
%{27%}	g2 r4 g8 a
%{28%}	b4 c8 d d,4 d
%{29%}	d2 g4 g
%{30%}  c2 g
%{31%}  a fis
%{32%}  b2( g4 a
%{33%}	g2) d2(
%{34%}	d1)
}
>> }


basIIVoice = \relative c {
<<
{ \commonMarks }
{ \basIIMarks}
{
%{01%}  r1
%{02%}  r
%{03%}  c4. c8 e4 g
%{04%}  a2. g4
%{05%}  fis d d c
%{06%}  b2 d
%{07%}  g, g
%{08%}  g1
%{09%}  c4 c2 g4
%{10%}  d'2 d2(
%{11%}  d4) d d d8. d16
%{12%}  c2 c
%{13%}  r4 c c c8. c16
%{14%}  b2 b
%{15%}  r4 b g g8 g
%{16%}  a2( b)
%{17%}  e b4( c)
%{18%}  d2 d4 d
%{19%}  g,2 g
%{20%}  r1
%{21%}	r4 c8([ d]) e4 d8 c
%{22%}	b4 b8 c d4 d8 d
%{23%}	e4. e8 a,4 a
%{24%}	d2 d
%{25%}	e2. a,4
%{26%}	d4 d8([ e]) f4 e8 d
%{27%}	c4 c8 d e4 e8 e
%{28%}	d2 d
%{29%}	g,2 g'4 g
%{30%}  c2 c,
%{31%}  a b
%{32%}  g1
%{33%}	g(
%{34%}	g)
}
>>
}