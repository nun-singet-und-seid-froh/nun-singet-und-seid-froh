%

% common settings of all voices
global = {
  \key f \major
  \time 2/2
  \partial 4
}

%incipites

sopIncipit = {
  \clef "mensural-c1"
  \key f \major
  \time 2/2
  r2 r f'
}

altIncipit = {
  \clef "mensural-c2"
  \key f \major
  \time 2/2
  r2 r f'
}

tenIncipit = {
  \clef "mensural-c3"
  \key f \major
  \time 2/2
  r\longa r\longa r2 r f
}

basIncipit = {
  \clef "mensural-f"
  \key f \major
  \time 2/2
  r\longa r\longa r2 r f
}

% articulation, dynamics, fermata and breathing marks
sopArt = { }

altArt = { }

tenArt = { }

basArt = { }


% the tunes
sopVoice = <<
  \sopArt
  \relative c' {
    f4 |
    c' c c c |
    d c8[ bes] a4 a |
    bes c d d |
    c2 r4 a |
    a a a a |
    bes g a c |
    bes a a g |
    a2 r4 c |
    c c c a |
    c bes8[ a] g4 c |
    a f g g |
    f2 r4 a |
    a8[ g] a[ bes] c4 f, |
    g4. g8 g4 g |
    f a bes bes |
    a2 r4 f |
    c' c c4.\melisma bes8[ |
    a g] a2 g8[ f] |
    e4 f2\melismaEnd e4 |
    f2.
    \undo \hide Staff.BarLine \bar"|."
  }
>>

altVoice = <<
  \altArt
  \relative c' {
    f4 |
    f f f f |
    bes,8[ c] d[ e] f4 f |
    g a bes bes |
    a2 r4 f |
    f f f f |
    f e8[ d] c4 c |
    g' e d d |
    e2 r4 f |
    f8[ e] f[ g] a4 f |
    e4. e8 e4 c |
    d f f e |
    f2 r4 f |
    f f c d |
    es4. f8 g4 e |
    d c bes g |
    c c c d |
    e\melisma f2\melismaEnd e4 |
    f c2 d4 |
    g, c2 c4 |
    a2.
    \undo \hide Staff.BarLine \bar "|."
  }
>>

tenVoice = <<
  \tenArt
  \relative c {
    r4 |
    R1*3 |
    r2 r4 f |
    c' c c c |
    d c8[ bes] a4 a |
    bes c d d |
    c2 r |
    R1*3 |
    r2 r4 c |
    c c c a |
    c bes8[ a] g4 c |
    a f g g |
    f2 a |
    c4 bes8[ a] g4 g |
    f1~ |
    f~ |
    f2.
    \undo \hide Staff.BarLine \bar "|."
  }
>>

basVoice = <<
  \basArt
  \relative c {
    r4 |
    R1*3 |
    r2 r4 f |
    f f f f |
    bes,8[ c] d[ e] f4 f |
    g a bes bes |
    a2 r |
    R1*3 |
    r2 r4 f |
    f8[ e] f[ g] a4 f |
    e4. e8 e4 c |
    d f f e |
    f f4.\melisma e8\melismaEnd d4 |
    c f, c'2
    f,4 f'4.\melisma e8\melismaEnd d4 |
    c f, c'2 |
    f,2.
    \undo \hide Staff.BarLine \bar "|."
  }
>>
