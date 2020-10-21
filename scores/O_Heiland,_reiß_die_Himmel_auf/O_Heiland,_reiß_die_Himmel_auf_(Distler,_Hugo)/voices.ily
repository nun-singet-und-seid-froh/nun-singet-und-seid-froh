%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/modern/voices.ily

% common settings of all voices
global = {
  \key c \major
  \partial 4
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

%breaks

% comment the next three lines to ignore breaking
oBreak = { \bar"" \break } 
oPageBreak = { \bar"" \pageBreak }
oNoBreak = { \noBreak }

breaks = {
%line breaks follow barring of sopranITune 
	s4 \oNoBreak
	s1 \oNoBreak
	s2. \oNoBreak
	s2 \oNoBreak
	s1. \oBreak

	s2. \oNoBreak
	s \oNoBreak
	s1. \oNoBreak
	s1 \oBreak

	s4 s s s s  \oNoBreak
	s2  \oNoBreak
	s4 s s s s  \oNoBreak
	s2.  \oNoBreak
	s2\bar"."
}

% articulation, dynamics, fermata and breathing marks
sopIArt = {
%line breaks follow barring of sopranITune 
	s4
	s1
	s2.
	s2
	s1.

	s2.
	s
	s1.
	s1

	s4 s s s s
	s2
	s4 s s s s
	s2.
	s2\bar"."
}

sopIIArt = \sopIArt

altArt = \sopIArt

% the tunes
sopITune = \relative c'' {
    r4
	\time 4/4
	r2 r4 a 
	\time 3/4
	c2 d4 
	\time 2/4
	e a, 
	\time 6/4
	c( b4. c8 d4) b2 
	\time 3/4
	a2 r4 
	a a b 
	\time 6/4
	c f,4.( g8[ a bes]) g4 g 
	\time 4/4 f \breathe c' c c 
	\time 5/4
	c a d4.( e8) d4 
	\time 2/4
	c4 \breathe a 
	\time 5/4
	a g a4.( g8) f4 
	\time 3/4
	g e2 
	fis2 
}

sopIVoice = <<
	\breaks
	\sopIArt
  	\sopITune
>>

sopIITune = \relative c' {
    r4 
	\time 2/4
	r d 
	\time 3/4
	f2 g4 
	a2 d,4 
	\time 4/4
	f( e4. d8) e4 
	\time 3/4
	d2 r4 
	e e f 
	g2 d4 
	\time 6/4
	e4.(d8 e4 f2) e4 
	\time 4/4
	f \breathe c' a c 
	\time 3/4
	f,2 f4 
	\time 2/4
	bes4. a8 
	g4 \breathe f 
	\time 5/4
	f g e2 d4 
	\time 3/4
	d4 c2 
	d2
}

sopIIVoice = <<
	\breaks
	\sopIIArt
  	\sopIITune
>>

altTune	 = \relative c' {
	a4 
	c2 d4 
	e2 a,4 
	c b2 
	a r4 
 	b b c 
	d2 a4 
	c4.( d8) b4 
	a2 r4 
	R2. 
	\time 4/4
	f'4 f2 f4 
	\time 3/4
	e2 d4 
	\time 2/4
	<< \voiceOne { g g e \breathe d }  \new Voice { \voiceTwo g f c d } >> \oneVoice
	\time 3/4
	d2 d4 
	\time 5/4
	a2 a4 a g 
	\time 3/4
	a2 
}

altVoice = <<
	\breaks	
	\altArt
  	\altTune
>>
