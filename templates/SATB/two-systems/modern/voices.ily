% based on templates/SATB/two-systems/modern/voices.ily

% common settings of all voices
global = {
  \key c \major
  \time 3/4
  \partial 4
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

% articulation, dynamics, fermata and breathing marks
sopArt = {
}

altArt = {
}

tenArt = {
}

basArt = {
}


% the tunes
sopVoice = <<
  \sopArt
  \relative c'
  {
    %{00%}
  }
>>

altVoice = <<
  \altArt
  \relative c'
  {
    %{00%}
  }
>>

tenVoice = <<
  \tenArt
  \relative c'
  {
    %{00%}
  }
>>


basVoice = <<
  \basArt
  \relative c
  {
    %{00%}
  }
>>
