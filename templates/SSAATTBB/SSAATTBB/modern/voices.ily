%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSAATTBB/SSAATTBB/modern/voices.ily

global = {
  \key c \major
  \time 4/4
  \partial 4
  \dynamicUp
}

commonMarks = {
}

sopIMarks = {
}

sopIIMarks = {
}

altIMarks = {
}

altIIMarks = {
}

tenIMarks = {
}

tenIIMarks = {
}

basIMarks = {
}

basIIMarks = {
}



sopIVoice = \relative c'' {<< 
{ \commonMarks }
{ \sopIMarks }
{

}
>>}

sopIIVoice = \relative c'' {<< 
{ \commonMarks }
{ \sopIIMarks }
{
}
>>}

altIVoice = \relative c' {<< 
{ \commonMarks }
{ \altIMarks }
{
}
>>}

altIIVoice = \relative c' {<< 
{ \commonMarks }
{ \altIIMarks }
{
}
>>}

tenIVoice = \relative c' {<< 
{ \commonMarks }
{ \tenIMarks }
{
}
>>}

tenIIVoice = \relative c' {<< 
{ \commonMarks }
{ \tenIIMarks }
{
}
>>}

basIVoice = \relative c { << 
{ \commonMarks }
{ \basIMarks }
{
}
>> }


basIIVoice = \relative c {
<<
{ \commonMarks }
{ \basIIMarks }
{
}
>>
}
