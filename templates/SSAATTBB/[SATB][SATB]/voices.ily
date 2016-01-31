global = {
\override Staff.BarLine.allow-span-bar = ##f
 \key g \major
 \time 4/4
 \dynamicUp
 \override DynamicLineSpanner.staff-padding = #3
}

commonMarks = {
}

sopiMarks = {
}

sopiiMarks = {
}

altiMarks = {
}

altiiMarks = {
}

teniMarks = {
}

teniiMarks = {
}

basiMarks = {
}

basiiMarks = {
}



sopiVoice = \relative c'' {<< 
{ \commonMarks }
{ \sopiMarks}
{

}
>>}

sopiiVoice = \relative c'' {<< 
{ \commonMarks }
{ \sopiiMarks}
{
}
>>}

altiVoice = \relative c' {<< 
{ \commonMarks }
{ \altiMarks}
{
}
>>}
%{01%}  r1
%{02%}  g4.g8 b4 d
%{03%}  e2. d4
%{04%}  c e, c' b
%{05%}  a fis d'2(
%{06%}	d8) d d2 c4
%{07%}	b( c d2 
%{08%}	d4) c b2
%{09%}	g4 e'2 b8[ c]
%{10%}	d2 d2(
%{11%}	d4) a a a8. a16
%{12%}	d2 d
%{13%}	a4\rest d d d8. e16
%{14%}	fis2 fis
%{15%}	a,4\rest fis'4 e e8 e
%{16%}	e2.( dis4)
%{17%}	e b8[ c] d4 c8 b
%{18%}	a4 a8 b c4 c8 c
%{19%}	b4 d g2
%{20%}	d d(
%{21%}	d4) g, c2
%{22%}	a4\rest g d'4. d8
%{23%}	d4 c8[ b8] c4( g'4
%{24%}	g4 fis8 e d4) c
%{25%}  b2 a4\rest cis
%{26%}  d2 a4\rest c?8[ d] 
%{27%}	e4 d8 c b4 b8 c
%{28%}	d4 c8 b a4 a8[ b]
%{29%}	d2 g,4 g
%{30%}	g2 e'2(
%{31%}	e) d2(
%{32%}	d c4) c
%{33%}	c2( b4 a)
%{34%}	g1
altiiVoice = \relative c' {<< 
{ \commonMarks }
{ \altiiMarks}
{
}
>>}

teniVoice = \relative c' {<< 
{ \commonMarks }
{ \teniMarks}
{
}
>>}

teniiVoice = \relative c' {<< 
{ \commonMarks }
{ \teniiMarks}
{
}
>>}

basiVoice = \relative c { << 
{ \commonMarks }
{ \basiMarks}
{
}
>> }


basiiVoice = \relative c {
<<
{ \commonMarks }
{ \basiiMarks}
{
}
>>
}