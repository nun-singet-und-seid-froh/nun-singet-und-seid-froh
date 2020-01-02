%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this is based on templates/SAM/modern/voices.ily

% common settings of all voices
global = {
  \key g \minor
  \time 4/4
  \partial 4
  \autoBeamOff
  %\override DynamicLineSpanner.staff-padding = #3
}

% articulation, dynamics, fermata and breathing marks
commonArt = {
  \repeat volta 2 {
    s4
    s1 * 3
    \time 6/4
    s1. 
    \time 4/4
    s1 * 5
    s2.
  } \break

  \time 4/4
  s4
  s1  
  \time 6/4
  s1. \breathe
  \time 4/4
  s1 * 3
  \time 3/4
  s2.
  \time 6/8
  s2.
  \time 6/4
  s1.
  \time 4/4
  s1 * 3\bar "|."
}

sopArt = { 
    s4
    s1 * 2 \breathe
    s1
    % \time 6/4
    s1.
    % \time 4/4
    s1
    s2 s4 \breathe s4
    s1 * 2 \breathe
    s1
    s2.

    % end of volta
    s4
    s1
    % \time 6/4
    s1.
    % \time 4/4
    s1 * 3
    % \time 3/4
    s2 \breathe s4
    % \time 6/8
    s2.
    % \time 6/4
    s1. \breathe
    % \time 4/4
    s1 * 3
}

altArt = { 
  s4
  s1
  s1
  s1
  % \time 6/4
  s1.
  s4 s4. \breathe s4
  s1 * 3 \breathe
  s1 * 2
  % end of volta
}

menArt = { }


% the tunes
sopVoice = <<
  \commonArt
  \sopArt
  \relative g' {
    d4
    g4. a8 bes4 d 
    bes a8([ g]) a2
    bes4 bes8 bes c2
    
    % \time 6/4
    d1 r4 bes8([ c])
    
    % \time 4/4
    % fix position of dot getting positioned differently 
    % due to invisible voice
    \once \override Dots.extra-offset = #'(-1.2 . 0)
    d4. d8 d4 f
    \once \override Dots.extra-offset = #'(-1.2 . 0)
    c4. bes8 c4 d
    bes4. a8 bes bes c bes 
    \once \override Dots.extra-offset = #'(0 . -1)
    a4. g8 a2
    g4. a8 bes4 d
    bes4.( a8) g4

    % end of volta
    d4
    g4 g8 a bes4 d
    % \time 6/4
    c8([ bes]) a g d2 a'2
    % \time 4/4
    bes4 bes8 bes c2
    d r4 bes8 c
    d2 d4 d8 f
    % \time 3/4
    c8 c c4 f8([ d])
    % \time 6/8
    bes8 bes bes c4 bes8
    % \time 6/4
    a4 a8 d8 a1
    % \time 4/4
    g4.( a8 bes4 c~
    c) bes4 a g
    a2 b!
  }
>>

sopTwoVoice =
  \relative g' { 
    %make notes smaller
    \override NoteHead.font-size = #-2       
    \override Voice.Stem.length = #5
    \override Flag.font-size = #-3

    %make voice effectively invisible
    \override Slur.transparent = ##t
    \override Stem.transparent = ##t
    \override Dots.transparent = ##t
    \override Beam.transparent = ##t
    \override NoteHead.transparent = ##t

    % align invisible notes exactly in position of visible ones, 
    % in order to make lyrics align identically
    \override NoteColumn.force-hshift = 0 
    
    d4
    g4. a8 bes4 d 
    bes8 bes a8 g 
    \override Slur.transparent = ##f
    \override Stem.transparent = ##f
    \override Dots.transparent = ##f
    \override Beam.transparent = ##f
    \override NoteHead.transparent = ##f
    \override NoteColumn.force-hshift = 1.2

      a4 a
    \override Slur.transparent = ##t
    \override Stem.transparent = ##t
    \override Dots.transparent = ##t
    \override Beam.transparent = ##t
    \override NoteHead.transparent = ##t

    s1

    % \time 6/4
    s1 s4 bes8([ c])

    % \time 4/4
    d4. d8 d4 f
    c4. bes8 

    % Make notes visible in differing part
    \override Slur.transparent = ##f
    \override Stem.transparent = ##f
    \override Dots.transparent = ##f
    \override Beam.transparent = ##f
    \override NoteHead.transparent = ##f
    
    % Shift visible notes to resolve overlap
    \override NoteColumn.force-hshift = 1.2
      c8 c 
    
    \override Slur.transparent = ##t
    \override Stem.transparent = ##t
    \override Dots.transparent = ##t
    \override Beam.transparent = ##t
    \override NoteHead.transparent = ##t
    \override NoteColumn.force-hshift = 0

    d4 bes4. a8 bes bes c bes 
    a4. g8 

    \override Slur.transparent = ##f
    \override Stem.transparent = ##f
    \override Dots.transparent = ##f
    \override Beam.transparent = ##f
    \override NoteHead.transparent = ##f
    \override NoteColumn.force-hshift = 1.2

      a4 a

    \override Slur.transparent = ##t
    \override Stem.transparent = ##t
    \override Dots.transparent = ##t
    \override Beam.transparent = ##t
    \override NoteHead.transparent = ##t
    \override NoteColumn.force-hshift = 0

    g4. a8 bes4 d
    bes4.( a8) g4   
}

altVoice = <<
  \commonArt
  \altArt
  \relative g'
  {
    r4
    R1
    R1
    4. f8 f([ es]) bes'4
    % \time 6/4
    a2( g) r4 bes
    % \time 4/4
    a4 a4.\breathe a8 a4
    a a8 a g4.( f8
    es4 d2) c4
    d1
    e!4 d4. g8 g4 g8([ a g f]) d4

    % end of volta

    d4
    d e!8 f g4 f
    \time 6/4
    f e!8 d e2 fis! \breathe
    \time 4/4
    a4 g8 f! g4( a)
    b!2 r4 g~
    g8 g bes!4 a g8 f
    \time 3/4
    g8 g d4 es!8([ f])
    \time 6/8
    g8 g f es4 bes8
    \time 6/4
    f'4 f8 f e!2( d)
    \time 4/4
    es!2 d4 c8([ d
    es f] g4.) f8 es d
    <<\voiceOne {c2 g'} \new Voice {\voiceTwo c, d}>>
  }
>>

altTwoVoice = \relative g' {
    \override NoteHead.font-size = #-2       
    \override Voice.Stem.length = #5
    \override Flag.font-size = #-3

    \override Slur.transparent = ##t
    \override Stem.transparent = ##t
    \override Dots.transparent = ##t
    \override Beam.transparent = ##t
    \override NoteHead.transparent = ##t

    \override NoteColumn.force-hshift = 0
    s4
    s1
    s1
    s1
    % \time 6/4
    s1 s4 bes
    % \time 4/4
    a4 a4.\breathe a8 a4
    a a8 a g4.( f8
    es4 d2) c4
    
    \override Slur.transparent = ##f
    \override Stem.transparent = ##f
    \override Dots.transparent = ##f
    \override Beam.transparent = ##f
    \override NoteHead.transparent = ##f
    \override NoteColumn.force-hshift = 1.2

    d2 d

    \override Slur.transparent = ##t
    \override Stem.transparent = ##t
    \override Dots.transparent = ##t
    \override Beam.transparent = ##t
    \override NoteHead.transparent = ##t
    \override NoteColumn.force-hshift = 0

    s1 
    s2.
  }

menVoice = <<
  \commonArt
  \menArt
  \relative g
  {
      r4
      R1
      R1
      g4 a8 f8 g2
      % \time 6/4
      g1 r2
      % \time 4/4
      R1 * 4
      c4 a2 a8 g
      es4( f) g

      % end of volta
      bes4 
      a g8 f es4 bes
      \time 6/4
      f'4 f8 f g2 d \breathe
      \time 4/4
      d'4 d8 d c2
      g r
      R1
      \time 3/4
      R2.
      \time 6/8
      R2.
      \time 6/4
      R1.
      \time 4/4
      c2( bes4 as!~
      as) es es es 
      f2 g
  }
>>

