%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this is based on templates/SAM/modern/voices.ily

% common settings of all voices
global = {
  \key f \major
  \time 2/2
  \partial 2
  \autoBeamOff
  %\override DynamicLineSpanner.staff-padding = #3
}

% articulation, dynamics, fermata and breathing marks
commonArt = {
    s2
    s1 * 3
    \time 2/4
    s2
    \time 2/2
    s1 * 8\breathe
    s1 * 4
    s2\bar "|."
}

sopArt = {
  s2
  s1 * 3\breathe
  % \time 2/4
  s2
  % \time 2/2
  s1 * 4\breathe
  s1 * 7
  s2
}

altArt = {
  s2
  s1 *3
  % \time 2/4
  s4\breathe s
  % \time 2/2
  s1 * 4
  s2\breathe s
  s1 * 5
  s2\breathe s
  s1
  s2
}

menArt = { 
  s2
  s1 *3\breathe
  % \time 2/4
  s2
  % \time 2/2
  s1 * 4\breathe
  s1 * 7
  s2
}


% the tunes
sopVoice = <<
  \commonArt
  \sopArt
  \relative g' {
    g2
    g f
    bes( a4) g
    a2 g\breathe
    \time 2/4
    g
    \time 2/2
    bes c~
    c bes
    c d
    bes1\breathe
    bes2 c 
    d bes4 c4~(
    c bes2) a4
    g1\breathe
    g
    g2 f
    bes a4( g)
    << {\voiceOne a1 b!2} \new Voice {\voiceTwo a1 g2} >>
  }
>>


altVoice = <<
  \commonArt
  \altArt
  \relative g'
  {
    e2
    e2~( e8[ d e f]
    g) f d4. c8 d4~(
    d8[ e] fis!4) g2~
    % \time 2/4
    g4\breathe es!4(
    % \time 2/2
    f! g) as!2~(
    as!8[ g f es!]) d4. d8
    f4( g) a!2
    bes4.( a8 g4 f8[ es]
    d2)\breathe a'4 c
    f,2. e!4
    a8([ g] f4. e8) d4
    e1
    es!2~( es8[ f g as!])
    bes2 as4 g4~(
    g8[ f] es4)\breathe f4.( e8)
    d4 es!4. d8 c4
    << {g'2 } \new Voice {\voiceTwo d2} >>
  }
>>

menVoice = <<
  \commonArt
  \menArt
  \relative g,
  {
    c2
    c d
    es! f4( g)
    d2 g
    % \time 2/4
    es!
    % \time 2/2
    bes f'
    c g'(
    f) f
    bes1
    g2 f
    bes4.( a8) g2
    a bes
    c1
    c,1
    es!2 f
    g d~(
    d4 c) c2
    << {\voiceOne g'2 } \new Voice {\voiceTwo g,2} >>
  }
>>
