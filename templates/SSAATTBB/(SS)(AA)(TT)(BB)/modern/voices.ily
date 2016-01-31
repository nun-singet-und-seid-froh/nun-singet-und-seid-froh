% based on templates/SSAATTBB/(SS)(AA)(TT)(BB)/modern/voices.ily

global = {
  \override Staff.BarLine.allow-span-bar = ##f
  \key c \major
  \time 4/4
  \partial 4
  \dynamicUp
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
{ \sopiMarks }
{

}
>>}

sopiiVoice = \relative c'' {<< 
{ \commonMarks }
{ \sopiiMarks }
{
}
>>}

altiVoice = \relative c' {<< 
{ \commonMarks }
{ \altiMarks }
{
}
>>}

altiiVoice = \relative c' {<< 
{ \commonMarks }
{ \altiiMarks }
{
}
>>}

teniVoice = \relative c' {<< 
{ \commonMarks }
{ \teniMarks }
{
}
>>}

teniiVoice = \relative c' {<< 
{ \commonMarks }
{ \teniiMarks }
{
}
>>}

basiVoice = \relative c { << 
{ \commonMarks }
{ \basiMarks }
{
}
>> }


basiiVoice = \relative c {
<<
{ \commonMarks }
{ \basiiMarks }
{
}
>>
}
