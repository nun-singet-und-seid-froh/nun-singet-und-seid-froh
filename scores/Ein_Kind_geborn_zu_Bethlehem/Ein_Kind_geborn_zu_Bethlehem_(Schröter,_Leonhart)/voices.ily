% this is standard version 1.0: SATB/polyphonic/mensural

% common settings of all voices
global = {
  \key f \major
  \time 6/4
  \partial 4
}

%incipites

sopIIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 3/2
  r1 r g'
}

sopIIIncipit = {
  \clef "mensural-g"
  \key f \major
  \time 3/2
  r1 r bes'
}

altIIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 3/2
  r1 r d
}

altIIIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 3/2
  r\maxima r r\longa r1 r d'
}

tenIIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
  r1 r g
}

tenIIIncipit = {
  \clef "mensural-c4"
  \key f \major
  \time 3/2
  r\maxima r r\longa r1 r bes
}

basIIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
  r\maxima r r\longa r1 r g,
}

basIIIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
  r\maxima r r\longa r1 r g
}

% articulation, dynamics, fermata and breathing marks
sopIArt = {
  %{00%} s4 |
  %{01%} s1. |
  %{02%} s |
  %{03%} s |
  %{04%} s2. s2 \bar "" s4 |
  %{05%} s1. |
  %{06%} s |
  %{07%} s |
  %{08%} s2. s2 \bar "" \break s4 |
  %{09%} s1. |
  %{10%} s |
  %{11%} s |
  %{12%} s |
  %{13%} s \once \undo \hide Staff.BarLine \bar "|." |
}

sopIIArt = \sopIArt

altIArt = \sopIArt

altIIArt = \sopIArt

tenIArt = \sopIArt

tenIIArt = \sopIArt

basIArt = \sopIArt

basIIArt = \sopIArt


% the tunes
sopIVoice = <<
  \sopIArt
  \relative c'' {
    %{00%} g4 |
    %{01%} g2 g4 a2 a4 |
    %{02%} bes2 g4 f2 f4 |
    %{03%} bes2\melisma c4 bes2\melismaEnd a4 |
    %{04%} bes1. |
    %{05%} R1.*3

    %{07%}  |
    %{08%} r2. r2 bes4 |
    %{09%} bes2 bes4 a2 g4 |
    %{00%} g4 f2 g2 g4 |
    %{01%} f2\melisma g4 a2\melismaEnd a4 |
    %{02%} bes2\melisma a4 g2\melismaEnd f4 |
    %{03%} g1.
  }
>>

sopIIVoice = <<
  \sopIIArt
  \relative c'' {
    %{00%} bes4 |
    %{01%} bes2 bes4 c2 c4 |
    %{02%} d2 c4 a8\melisma bes c a bes c |
    %{03%} d2\melismaEnd g,4 d'2 d4 |
    %{04%} d1. |
    %{05%} R1.*3

    %{07%}  |
    %{08%} r2. r2 d4 |
    %{09%} d2 d4 c2 c4 |
    %{10%} d2 d4 d2 d4 |
    %{11%} \[ bes\melisma a\melismaEnd \] c c2 c4 |
    %{12%} d d c c d d |
    %{13%} d1. |
  }
>>

altIVoice = <<
  \altIArt
  \relative c' {
    %{00%} d4 |
    %{01%} d2 d4 f2 f
    %{02%}  g4 e f4.\melisma e8 d e |
    %{03%} \[ f4 g\melismaEnd \] e g2 f4 |
    %{04%} g1. |
    %{05%} R1.*3

    %{07%}  |
    %{08%} r2. r2 f4 |
    %{09%} f2 f4 f2 e4 |
    %{10%} d2 d4 d2 d4 |
    %{11%} d8\melisma e f d e4\melismaEnd f f f |
    %{12%} f4. f8 f,4 g bes d |
    %{13%} d1. |
  }
>>

altIIVoice = <<
  \altIIArt
  \relative c' {
    %{00%} r4 |
    %{01%} R1.*3

    %{03%}  |
    %{04%} r2. r2 d4 |
    %{05%} d2 d4 e2 e4 |
    %{06%} f2 d4 c2 c4 |
    %{07%} f2\melisma g4 f2\melismaEnd f4 |
    %{08%} f1 r4 bes, |
    %{09%} bes bes d a4.\melisma bes8 c g\melismaEnd |
    %{10%} g'4\melisma a4.\melismaEnd d,8 d2 r4 |
    %{11%} r2. r2 a4 |
    %{12%} d d f e d d |
    %{13%} d1. |
  }
>>

tenIVoice = <<
  \tenIArt
  \relative c' {
    %{00%} g4 |
    %{01%} g2 g4 f2 f4 |
    %{02%} \[ bes4\melisma g\melismaEnd \] c f,2 bes4 |
    %{03%} bes4.\melisma a16 g c4 \melismaEnd g8\melisma a bes c d4\melismaEnd |
    %{04%} \[ g,2. \melisma d\melismaEnd \] |
    %{05%} R1.*3

    %{07%}  |
    %{08%} r2. r2 f4 |
    %{09%} f2 d4 f f g4.\melisma
    %{10%}  d8 d'4\melismaEnd a bes2 bes4 |
    %{11%} \[ bes\melisma d\melismaEnd \] c a f c' |
    %{12%} bes2 c4 g4. d8 d'4 |
    %{13%} b1. |
  }
>>

tenIIVoice = <<
  \tenIIArt
  \relative c' {
    %{00%} r4 |
    %{01%} R1.*3

    %{03%}  |
    %{04%} r2. r2 bes4 |
    %{05%} bes2 bes4 c2 c4 |
    %{06%} d4.\melisma e8[ f d] es2\melismaEnd es4 |
    %{07%} d2 d d,4 d'4.\melisma
    %{08%}  c16[ bes] c4\melismaEnd d2 r4 d |
    %{09%} d2 bes4 c2 c4 |
    %{10%} bes a2 g r4 |
    %{11%} r2. f4 c'8[ \melisma bes a g] |
    %{12%} f4\melismaEnd f a c bes a |
    %{13%} g1. |
  }
>>

basIVoice = <<
  \basIArt
  \relative c {
    %{00%} r4 |
    %{01%} R1.*3

    %{03%}  |
    %{04%} r2. r2 g4 |
    %{05%} g2 g4 c2 c4 |
    %{06%} bes4.\melisma c8[ d bes] c2\melismaEnd c4 |
    %{07%} bes2 bes'4 a4.\melisma g8[ f e] |
    %{08%} \[ d4 bes\melismaEnd \] f' bes,2 bes4 |
    %{09%} bes2 bes4 f2 c'4 |
    %{10%} g d'2 g, r4 |
    %{11%} r2. r2 f4 |
    %{12%} bes bes f c' g d' |
    %{13%} g,1. |
  }
>>

basIIVoice = <<
  \basIIArt
  \relative c' {
    %{00%} r4 |
    %{01%} R1.*3

    %{03%}  |
    %{04%} r2. r2 g4 |
    %{05%} g2 g4 g2 g4 |
    %{06%} bes2 bes4 g4.\melisma f8[ g a] |
    %{07%} bes2\melismaEnd g4 d8[\melisma c d e f g] |
    %{08%} a[ f] bes4\melismaEnd a bes2 bes,4 |
    %{09%} d2 f4 f c8[\melisma d e c] |
    %{10%} g'4\melismaEnd d d d2. |
    %{11%} r2 c4 c'8[\melisma bes a g f e] |
    %{12%} d4\melismaEnd d8 f4 c8 \[ e4\melisma g\melismaEnd \] d |
    %{13%} d1. |
  }
>>
