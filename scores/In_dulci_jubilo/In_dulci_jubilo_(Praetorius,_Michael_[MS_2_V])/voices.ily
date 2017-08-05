%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSAATTBB/[SATB][SATB]/mensural/voices.ily

global = {
  \key f \major
  \time 3/2
  \dynamicUp
  \hide Staff.BarLine
  %use
  %\once \undo \hide Staff.BarLine \bar"|" to create a bar that spans the systems
}

% the incipites
CDrei = \markup \concat {
	\musicglyph #"timesig.mensural44"
	\lower #0.5
	\override #'(font-name . "LucidaBlackletter") { "3 " }
}

IncipitLayout = {
	\override NoteHead.style = #'neomensural
	\override Rest.style = #'neomensural
	\override NoteHead.font-size = #2.0
	\override Stem.thickness = #3.0
	\override Staff.KeySignature.extra-offset = #'(-0.75 . 0)
	\override Staff.Clef.extra-offset = #'(0.75 . 0)
	\override Staff.TimeSignature.extra-offset = #'(-0.75 . 0)
	\override Staff.TimeSignature.font-size = #1.125
	\override Staff.TimeSignature.X-extent = #'(0 . 1.5)
	\override Score.SpacingSpanner.uniform-stretching = ##t
	\override Score.SpacingSpanner.strict-note-spacing = ##t
	\set Score.proportionalNotationDuration = #(ly:make-moment 1/1)
}

sopIincipit = {
    \IncipitLayout
    \clef "petrucci-c1"
    \key f \major
    \time 4/4
    \override Staff.TimeSignature.stencil = #ly:text-interface::print
    \override Staff.TimeSignature.text = #(markup CDrei)
    f'1 s1 s1 s1 s1 s1 s1 s1 s1
}

altIincipit = {
	\IncipitLayout
	\clef "petrucci-c3"
	\key f \major
	\time 4/4
	\override Staff.TimeSignature.stencil = #ly:text-interface::print
	\override Staff.TimeSignature.text = #(markup CDrei)
	r\longa*1/4 r\breve*1/2
	f'1 s1 s1 s1 s1 s1 s1
}

tenIincipit = {
	\IncipitLayout
	\clef "petrucci-c4"
	\key f \major
	\time 4/4
	\override Staff.TimeSignature.stencil = #ly:text-interface::print
	\override Staff.TimeSignature.text = #(markup CDrei)
	r\longa*1/4 r\longa*1/4 c'\longa*1/4\rest c'\longa*1/4\rest r\longa*1/4
	c'1 s1 s1 s1
}

basIincipit = {
	\IncipitLayout
	\override Staff.Clef.font-size = #1.5 % only for mensural.f clef
	\clef "mensural-f"
	\key f \major
	\time 4/4
	\override Staff.TimeSignature.stencil = #ly:text-interface::print
	\override Staff.TimeSignature.text = #(markup CDrei)
	r\longa*1/4 r\longa*1/4 f\longa*1/4\rest f\longa*1/4\rest r\longa*1/4
	f,1 s1 s1 s1
}

sopIIincipit = {
	\IncipitLayout
	\clef "petrucci-c1"
	\key f \major
	\time 4/4
	\override Staff.TimeSignature.stencil = #ly:text-interface::print
	\override Staff.TimeSignature.text = #(markup CDrei)
	e'\breve*1/2\rest
	f'1 s1 s1 s1 s1 s1 s1 s1
}

altIIincipit = {
	\IncipitLayout
	\clef "petrucci-c3"
	\key f \major
	\time 4/4
	\override Staff.TimeSignature.stencil = #ly:text-interface::print
	\override Staff.TimeSignature.text = #(markup CDrei)
	r\longa*1/4 r\longa*1/4 e'\longa*1/4\rest
	f'1 s1 s1 s1 s1 s1
}

tenIIincipit = {
	\IncipitLayout
	\clef "petrucci-c4"
	\key f \major
	\time 4/4
	\override Staff.TimeSignature.stencil = #ly:text-interface::print
	\override Staff.TimeSignature.text = #(markup CDrei)
	r\longa*1/4 r\longa*1/4 c'\longa*1/4\rest
	f1 s1 s1 s1 s1 s1
}

basIIincipit = {
	\IncipitLayout
	\override Staff.Clef.font-size = #1.5 % only for mensural.f clef
	\clef "mensural-f"
	\key f \major
	\time 4/4
	\override Staff.TimeSignature.stencil = #ly:text-interface::print
	\override Staff.TimeSignature.text = #(markup CDrei)
	r\longa*1/4 r\longa*1/4 f\longa*1/4\rest f\longa*1/4\rest r\longa*1/4 r\longa*1/4 b,\breve*1/2\rest
	c1 s1
}

% common marks

commonMarks = {
	\key f \major
	\time 3/2
	\once \override Staff.TimeSignature.style = #'single-digit
	s1.*86
	
	\newSpacingSection
	\time 2/2
	s1*6
	
	\newSpacingSection
	\time 3/2
	\once \override Staff.TimeSignature.style = #'single-digit
	s1.*24
	
	\newSpacingSection
	\time 2/2
	s1*5 s2
	\override NoteHead.style = #'baroque
	s2
	\undo \hide Staff.BarLine
	\bar "|."
}


% the tunes
sopITune = \relative c' { % CANTUS
	f2 f f a1 bes2 c1 d2 c1 bes2
	% 005
	a4 g f2 f a1 bes2 c bes4 c d2 c1 r2 R1.
	% 010
	R1. f,2 f f a1 bes2 c d1 c1.
	% 015
	R1. R1. r2 r c f,1 f2 a1 bes2
	% 020
	c2 d1 c1. R1. r2 r c c4 bes a g a bes
	% 025
	c2 g1 r2 r c2 c4 bes a g a bes c1 f,2 a1 bes2
	% 030
	c2 d1 c1. R1.*7
	
	% 039
	c1 d2 c1 bes2 \[ a g \] a f1. R1.*2
	% 045
	g1 a2 g1 f2 \[ e d \] e c1 r2 c'1 d2
	% 050
	c4 bes c a bes bes a2 f1 c'1 d2 c4 bes c a bes g \[ a2 g \] a
	% 055
	f1 f2 g1 g2 a1 g2 f g a R1.
	% 060
	R1. r2 r a c1 d2 c1 bes2 a g a
	% 065
	g1 r2 R1.*3 r2 r f
	% 070
	c'1 d2 c1 bes2 a g a f1. R1.*3
	% 077
	r2 r a2 c4 d c2 bes a4 g a2 f
	% 080
	R1. r2 r f g4 a g2 f e4 d e2 c r r f
	% 085
	c'4 d c bes a2 f1.
	% 087
	r4 g c2. d4 c bes a8[\melisma g] a4\melismaEnd f2 R1*3
	
	% 093
	R1. d'1 d2 g,1 c2 f,1. R1. g1 g2 a1 a2
	% 100
	\[ bes1. c1. \] R1.*4
	% 106
	a1 a2 \[ g f \] g f1 r2 R1.
	% 110
	d'1 d2 \[ c d \] c bes1. R1.*2
	% 115
	a1 a2 \[ e f \] g f2 r4 bes2 bes4 c2. c4 a4.\melisma g16[ f]
	% 120
	e8[ f] g4\melismaEnd r4 a8[ bes] c4 c c2. c4 a\breve*1/4\fermata
}

sopIITune = \relative c' { % QUINTA VOX
	R1. f2 f g a1 bes2 c1 d2 c1.
	% 006
	c2 f, f a1 bes2 c bes4 c d2 c1 b2 c1.
	% 011
	R1.*3 g2 g g a1 bes2 c d1 c1.
	% 018
	c2 c f, f4 g a2 d c1 b2 c1 c2
	% 022
	c4 bes a g a bes c2 g1 R1.
	% 025
	r2 r c c4 bes a g a bes c2 c c
	c4 bes a g a bes c2 f,1 R1.*2
	% 032
	c'1 d2 c1 bes2 \[ a g \] a f1 f2 g1 g2 a1 g2 f g1 a1. R1.*2
	% 042
	c1 d2 c1 bes2 \[ a g \] a g1 r2 R1.*2
	% 048
	c1 d2 c4 bes c a bes bes a2 f r c'1 d2 c4 bes c a bes bes a2 f r2 R1.*4
	% 058
	r2 r f g1 g2 a1 g2 f g a R1.*3
	% 065
	r2 r f c'1 d2 c1 bes2 a g a g1 r2 R1.*3
	% 073
	r2 r f g1 g2 a1 g2 f1 g2 a1. R1.
	% % 079
	r2 r a c4 d c2 bes a4 g a2 f R1.
	% 083
	r2 r g c4 d c bes a2 f1 f2 c'4 d c bes a2
	
	g r2 R1
	% 089
	r2 r4 f g2. g4 a2. g4 \[ f2 g \] a1.
	
	% 094
	d,1 d2 e1 e2 \[ f1. c'1. \] R1.*4
	% 102
	d,1 d2 e1 e2 \[ f1. c'1. \] R1.*2
	% 108
	a1 a2 \[ g f \] g f1 r2 R1.
	% 112
	d'1 d2 \[ c bes \] c bes1. R1.*2
	
	% 117
	r2 r4 d,2 d4 e2. e4 \[ f2 c' \] r4 a2
	a4 g2. g4 f\breve*1/4\fermata
}

altITune = \relative c' { % ALTVS
	R1.*3 f2 f f f4\melisma g a2\melismaEnd a f4\melisma e d c d2 c1\melismaEnd r2
	R1. R1. g'2 g g a4\melisma g4 f2\melismaEnd c c f f g1 g2 e1. R1.*2
	r2 r c c1 a2 c1 bes2 es d g g1. R1. r2 r g a4\melisma g f e
	f g a2\melismaEnd e1 r2 r a a4\melisma g f e f g a1\melismaEnd a2 f1. g1. g1. R1.
	R1.*6 f1 f2 f1 f2 f1. c1 r2 R1.*2 e1 f2 e1 c2 c1. a1 r2 f'1 f2 f1 f2 f1. f1.
	f1 bes,2 f' e f d1 d2 d1 e2 f1 e2 c1. R1.*2 r2 r f e1 d2 f1 d2 f1.
	e1 r2 R1.*2 r2 r c c4\melisma d e2\melismaEnd a, e'1 d2 f\melisma e4 f g2\melismaEnd \[ f1.\melisma d1.\melismaEnd \] R1.*3 r2 r f
	e4 d f2 d d2 d1 R1. r2 r a'2 e4 f e2 a, c2 c1 r2 r f2 f1. c1.
	r4 e f2. f4 f d2 c4 d2 R1*3 R1. d1 g e2 a a1. R1.
	d,1 e2 f1 f2 g1\melisma d2 f1\melismaEnd r2 R1.*4 f1 f2 c1 c2 c1 r2 R1. f1 f2
	f1 f2 d1. R1.*2 f1 f2 \[ e\melisma d\melismaEnd \] e c2 r4 d2 g4 g2
	g4 a2 d,4 g8[\melisma f] e4\melismaEnd r f2 f4 e2. e4 f\breve*1/4\fermata
}

altIITune = \relative c' { % SEXTA VOX
	R1.*6 f2 f f f1. e2 f1\melisma e1.\melismaEnd R1.*3 c2 c
	e f f d \[ f\melisma d\melismaEnd \] g e1 f2 f4\melisma g a2\melismaEnd a f1 d2 g,4\melisma a b c d2
	e1\melismaEnd e2 a4\melisma g f e f g a2\melismaEnd e1 R1. r2 r g2 a4\melisma g f e f g
	f2\melismaEnd a a a4\melisma g f e f2\melismaEnd f1. R1.*2 f1 f2 \[ f\melisma c\melismaEnd \] g' \[ f\melisma e \] f\melismaEnd d1 d2
	d1 e2 f1 e2 d2\melisma e1 f1.\melismaEnd R1.*2 f1 f2 f1 f2 f1. e1 r2 R1.*2 f1 f2 f1 d2
	a a r a1 d2 f f f c1 r2 R1.*4 r2 r f e1 d2 f1 d2 d1. R1.*2 r2 r c
	c4\melisma d e2\melismaEnd a, e'1 d2 f\melisma e4 f g2\melismaEnd c, c2.\melisma d4 e2\melismaEnd c r R1.*3 r2 r d e1 d2 f1
	e2 d1. ~ d1. R1. r2 r f e4 d e2 g f2 c1 R1. r2 r e f1 c2 c1 c2 c1.
	% 087
	c2 r R1 r2 r4 d2 d e4 f2.\melisma e4 d2.\melismaEnd d4 f1.
	% 093
	f1 bes,2 c1 c2 \[ d1.\melisma e1.\melismaEnd \] R1.*4
	b1 bes2 \[ g\melisma c\melismaEnd \] g \[ d'1.\melisma e1.\melismaEnd \] R1.*2 c2 f f c2.\melisma d4 e2\melismaEnd d1 r2 R1. f1 f2 f1 f2 f1.
	R1.*2 r2 r4 bes,2 bes4 g2. c4 \[ d2\melisma g,\melismaEnd \] r4 f8[\melisma g] a[ bes] c2\melismaEnd c4 c c c\breve*1/4\fermata
}

tenITune = \relative c' { % TENOR
	R1.*10 c2 a a a4\melisma bes c2\melismaEnd d e4\melisma d8[ c] b4 a  b!2 c1.\melismaEnd
	R1.*2 r2 r a a2.\melisma bes4 c bes a1\melismaEnd g2 r g1 g2 c1 R1. r2 r c a4\melisma bes c1\melismaEnd c1. r2 r f,
	a4\melisma bes c2. bes4 a bes c2. bes4 a1\melismaEnd d2 c1 b2 e1. R1.*8 c1 d2 c bes c a1.
	R1.*3 g1 a2 g f g f1 r2 c'1 bes2 c f,1 r2 c' f, f4\melisma g a2\melismaEnd d a1 d2 d1.
	a1 a2 bes1 c2 c1 c2 a\melisma bes c\melismaEnd R1.*2 r2 r a a2.\melisma g4 f g\melismaEnd a2 a g a2\melisma c1\melismaEnd c1 r2 R1.
	R1. r2 r f, g1 d'2 g,2 g1 a1 d2 d bes a a1. R1.*3 r2 r a a4 f a2
	g f4\melisma e f2\melismaEnd d R1. r2 r c' c4 c c2 f, g2 g1 r2 r a a4 bes a g f2 f1.
	% 087
	r4 c' a4.\melisma bes8 c[ bes16 a] bes4\melismaEnd a8 a g4 f2 f R1*3
	% 093
	R1. f2 bes1
	r2 c c a1. R1. bes1 c2 c1 d2 d2.\melisma c4 bes2 a1.\melismaEnd R1.
	R1.*3 c1 d2 \[ g,\melisma a\melismaEnd \] e f1 r2 R1. a1 bes2 \[ a\melisma g\melismaEnd \] a
	b1. R1.*2 c1 c2 c1 c2 a r4 f4. d8 d g4
	c4 c8 c4 r a2 c r4 c2 c4 c4.\melisma bes16[ a] g4\melismaEnd g a\breve*1/4\fermata
}

tenIITune = \relative c' { % SEPTIMA VOX
	R1.*6 f,2 f f a1 bes2 c\melisma d1 c1.\melismaEnd R1.*3 g2 g
	c c1 bes2 a\melisma b1 \[ c2 g\melismaEnd \] f c1. c1 g'2 g1. g1 g2 a4\melisma bes c1\melismaEnd c1. R1. r2 r c
	a4\melisma bes c1\melismaEnd c1 c2 c1. c1 r2 R1.*2 a1 bes2 a1 d2 d1. a1 a2
	b1 c2 c1 c2 a c1 c r2 R1.*3 c1 d2 c bes c c1. R1.*2 a1
	b2 a1 f c'2 d c4\melisma bes c a bes\melismaEnd bes a\melisma g f1\melismaEnd f1 r2 R1.*4 r2 r a
	c1 bes2 \[ d\melisma c\melismaEnd \] bes a1. R1.*2 r2 r f g1 d'2 g,1. a1 d,4\melisma e
	f2 e f\melismaEnd c1 r2 R1.*3 r2 r a' c1 bes2 d c1 a1\melisma bes2 f1.\melismaEnd R1.
	r2 r a a4 f c'2 d d a1 R1. r2 r c a4 bes a g f2 f1 f2
	a4 bes a g f2 e r R1 r2 r4 bes'2 bes g4 c c c2 a4 bes2 bes4 a1. \[ bes2\melisma f\melismaEnd \]
	g g1 a2 \[ a\melisma g \] f g1.\melismaEnd R1.*4 f1 f2 \[ c'\melisma g\melismaEnd \] c a1\melisma bes2 g1.\melismaEnd R1.*2 a4\melisma bes
	c2\melismaEnd d \[ g,\melisma a\melismaEnd \] c a1 r2 R1. f1 f2 \[ a\melisma g\melismaEnd \] a d1. R1.*2 r2 r4 f,2 g4 g4.\melisma f8 e4\melismaEnd a
	f4.\melisma e16[ d] e2\melismaEnd r4 a4.\melisma g8[ a]\melismaEnd f g2. c,4 c\breve*1/4\fermata
}

basITune = \relative c, { % BASSVS
	R1.*10 f2 f f f'1 d2 c2\melisma g'1 c,1.\melismaEnd R1.*2
	r2 r f f1. f1 r2 c g'1 c,1. R1. r2 r c f1. c1. r2 r f, f'1.
	f,1 f2 f'1 f2 c g'1 c,1. R1.*7 f1 f2 f1 f2 f,1. f1. R1.*2 c'1 c2 c1 c2 c1. f,1 r2
	f'1 bes,2 f1 bes2 f'2 f1 f f2 f1 g2 d1. d1 d2 g1 c,2 f1 c2 f,1. R1.*2
	r2 r d' a1 bes2 f1 g2 d'\melisma e f\melismaEnd c1 r2 R1.*2 r2 r f, c'1 d2 c1 bes2 a1\melisma g2 d'1.\melismaEnd d1.
	R1.*3 r2 r d a4 bes f2 g d' d1 R1. r2 r f, c'4 c c2 d c c1 r2 r f f,1. f1.
	% 087
	r4 c' f,4.\melisma g8 a[ f] bes4\melismaEnd f g8 g d'[\melisma e] f4\melismaEnd bes,2 R1*3
	% 093
	R1. bes1
	d2 c1 e2 d1. R1. g1 c,2 f1 d2 \[ g1.\melisma f\melismaEnd \] R1.*4 f1 d2 \[ e\melisma f\melismaEnd \] c f,1 r2 R1. d'1 bes2
	f'1 f2 bes,1. R1.*2 f'1 f2 c1 c2 f, r4 bes2 d4 c2. e4 d8[\melisma e]
	f4\melismaEnd g c, r f,2 f'4 c2. c4 f\breve*1/4\fermata 
}

basIITune = \relative c { % OCTAVA VOX
	R1.*13 c2 c c f1 g2 a\melisma g1 c,\melismaEnd
	f,2 f1 f2 f1 g2 c\melisma g1 c\melismaEnd c2 f1. c1. R1. r2 r2 c
	f1. f,1 f2 f'1. f,1. R1.*2 f'1 bes,2 f'1 g2 d1. d1 d2
	g1 c,2 f1 c2 d2\melisma c1 f1.\melismaEnd R1.*2 f1 f2 f1 f2 f1. c1. R1.*2 f1 bes,2 f1 bes2 f'2 f1
	f,1 f2 f f f f1 r2 R1.*4 r2 r f' c1 g'2 d4\melisma e f2\melismaEnd g d1. R1.*2 r2 r f, c'1
	d2 c1 bes2 a1\melisma g2\melismaEnd f1. R1.*4 r2 r d' c4\melisma d e f g\melismaEnd g d\melisma e f2\melismaEnd c d1\melisma
	g,2 d'1.\melismaEnd R1. r2 r d a4 bes c2 g d'4\melisma e f2\melismaEnd f, R1. r2 r c' f,1 f2
	f1 f2 f1. c'2 r2 R1 r2 r4 bes g4.\melisma a8 bes[ g c]\melismaEnd c f,4.\melisma g8 a[
	b c]\melismaEnd c d[\melisma c bes a] g[ a bes g] d'1.\melismaEnd bes1 g2 c1
	a2 \[ d1.\melisma c1.\melismaEnd \] R1.*4 bes1 bes2 c1 c2 \[ d1.\melisma c1.\melismaEnd \] R1.*2 f1 d2
	\[ e2\melisma f\melismaEnd \] c d1 r2
	
	R1. bes1 bes2 f'1 f2 bes,1. R1.*2 r2 r4 bes2 g4 c2. a4
	\[ d2\melisma c\melismaEnd \] r4 f2 f,4 c'2. c4 f,\breve*1/4\fermata
}

sopIVoice = <<
  { \commonMarks }
  { \sopITune }
>>

sopIIVoice = <<
  { \commonMarks }
  { \sopIITune }
>>

altIVoice = <<
  { \commonMarks }
  { \altITune }
>>

altIIVoice = <<
  { \commonMarks }
  { \altIITune }
>>

tenIVoice = <<
  { \commonMarks }
  { \tenITune }
>>

tenIIVoice = <<
  { \commonMarks }
  { \tenIITune }
>>

basIVoice = <<
  { \commonMarks }
  { \basITune }
>>

basIIVoice = <<
  { \commonMarks }
  { \basIITune }
>>