%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSAATTBB/[SATB][SATB]/mensural/voices.ily

global = {
  \key c \major
  \time 4/4
  \partial 4
  \dynamicUp
  \hide Staff.BarLine 
  %use 
  %\once \undo \hide Staff.BarLine \bar"|" to create a bar that spans the systems
}

commonArt = {
}

sopIArt = {
}

sopIIArt = {
}

altIArt = {
}

altIIArt = {
}

tenIArt = {
}

tenIIArt = {
}

basIArt = {
}

basIIArt = {
}



sopIVoice = \relative c'' {<< 
{ \commonArt }
{ \sopIArt }
{

}
>>}

sopIIVoice = \relative c'' {<< 
{ \commonArt }
{ \sopIIArt }
{
}
>>}

altIVoice = \relative c' {<< 
{ \commonArt }
{ \altIArt }
{
}
>>}

altIIVoice = \relative c' {<< 
{ \commonArt }
{ \altIIArt }
{
}
>>}

tenIVoice = \relative c' {<< 
{ \commonArt }
{ \tenIArt }
{
}
>>}

tenIIVoice = \relative c' {<< 
{ \commonArt }
{ \tenIIArt }
{
}
>>}

basIVoice = \relative c { << 
{ \commonArt }
{ \basIArt }
{
}
>> }


basIIVoice = \relative c {
<<
{ \commonArt }
{ \basIIArt }
{
}
>>
}
