% this is based on templates/SAM/modern/voices.ily

% common settings of all voices
global = {
  \key as \major
  \time 3/4
  \partial 4
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

% articulation, dynamics, fermata and breathing marks
sopArt = { }

altArt = { }

menArt = { }


% the tunes
sopVoice = <<
  \sopArt
  \relative c''
  {
  }
>>

altVoice = <<
  \altArt
  \relative c'
  {
  }
>>

menVoice = <<
  \menArt
  \relative c
  {
  }
>>

