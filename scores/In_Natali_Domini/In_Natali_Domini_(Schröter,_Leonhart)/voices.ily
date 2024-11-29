% this is standard version 1.0: SATB/polyphonic/mensural

% common settings of all voices
global = {
  \key f \major
  \time 3/2
}

%incipites

sopIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 3/2
  g'\breve g'1
}

altIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 3/2
  d'\breve d'1
}

tenIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 3/2
  g\breve bes1
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 3/2
  g\breve g1
}

% articulation, dynamics, fermata and breathing marks
sopArt = { }

altArt = { }

tenArt = { }

basArt = { }


% the tunes
sopVoice = <<
  \sopArt
  \relative c'' {
    g2 g4 fis2 g4 |
    f2 f4 g2. |
    fis2 g4 a4 g2 |
    f2 f4 g2. |
    f2 g4 a2 f4 |
    f2 e4 f2. |
    a2 bes4 d4 c2 |
    bes2 a4 a2. |
    bes2 bes4 a2 g4 |
    f2 g4 f2. |
    bes2 bes4 a2 g4 |
    f2 g4 fis2. |
    f2 g4 a4 g2 |
    f2 f4 g2. |
    \once \undo \hide Staff.BarLine \bar"|."
  }
>>

altVoice = <<
  \altArt
  \relative c' {
    d2 d4 d2 c4 |
    d2 d4 b2. |
    d2 d4 f4 e2 |
    d2 d4 d2. |
    d2 d4 f2 d4 |
    c2 c4 a2. |
    f'2 f4 d4 a'2 |
    \[ f4\melisma g4\melismaEnd \] e4 fis2. |
    f2 f4 f2 d2
     c4 c4 d2. |
    f2 f4 f2 d2
     c4 c4 d2. |
    d2 d4 f4 e2
     d2 d4 d2. |
    \once \undo \hide Staff.BarLine \bar "|."
  }
>>

tenVoice = <<
  \tenArt
  \relative c' {
    g2 bes4 a2 g4 |
    bes4 a2 g2. |
    a2 bes4 c2 g4 |
    bes4 a2 g2. |
    a2 bes4 c2 bes4 |
    a4 g2 f2. |
    c'2 d4 f2 e4 |
    d2 c4 d2. |
    d2 d4 c2 bes4 |
    a2 g4 a2. |
    d2 d4 c2 bes4 |
    a2 g4 a2. |
    a2 bes4 c2 g4 |
    bes4 a2 g2. |
    \once \undo \hide Staff.BarLine \bar "|."
  }
>>

basVoice = <<
  \basArt
  \relative c' {
    g2 g4 d2 e4 |
    d2 d4 g,2. |
    d'2 g4 f4 c2 |
    d2 d4 g,2. |
    d'2 g4  f2 bes,4 |
    f'4 c2 d2. |
    f2 bes4 \[ bes4\melisma f4\melismaEnd \] a4 |
    \[ bes4\melisma g4\melismaEnd \] a4 d,2. |
    bes2 bes4 f'2 g4 |
    \[ d4\melisma f4\melismaEnd \] e4 d2. |
    bes2 bes4 f'2 g4 |
    \[ d4\melisma f4\melismaEnd \] e4 d2. |
    d2 g4 f4 c2 |
    d2 d4 g,2. |
    \once \undo \hide Staff.BarLine \bar "|."
  }
>>
