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
  %{00%} s |
  %{00%} s |
  %{00%} s |
  %{00%} s |
  %{00%} s |
  %{00%} s |
  %{00%} s |
  %{00%} s |
  %{00%} s |
  %{00%} s |
  %{00%} s |
  %{00%} s \once \undo \hide Staff.BarLine \bar "|." |
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
    %{13%} cis1. |
  }
>>

tenIIVoice = <<
  \tenIIArt
  \relative c' {
    %{00%} r4 |
    %{01%} R1.*3

    %{03%}  |
    %{04%} r2. r2 bes4 |
  }
>>

basIVoice = <<
  \basIArt
  \relative c {
    %{00%} r4 |
    %{01%} R1.*3

    %{03%}  |
    %{04%} r2. r2 g4 |
  }
>>

basIIVoice = <<
  \basIIArt
  \relative c' {
    %{00%} r4 |
    %{01%} R1.*3

    %{03%}  |
    %{04%} r2. r2 g4 |
  }
>>
