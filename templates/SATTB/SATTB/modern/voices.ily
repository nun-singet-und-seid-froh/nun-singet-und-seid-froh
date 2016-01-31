% based on templates/SATTB/SATTB/modern/voices.ily

% common settings of all voices
global = {
  \key as \major
  \time 3/4
  \partial 4
  \dynamicUp
  \autoBeamOff
  \override DynamicLineSpanner.staff-padding = #3
}

% articulation, dynamics, fermata and breathing marks
sopArt = {

}

altArt = \sopArt

teniArt = \sopArt

teniiArt = \sopArt

basArt = \sopArt


% the tunes
sopVoice = <<
  \sopArt
  \relative c'
  {
    \tempo "Andante."
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

teniVoice = <<
  \teniArt
  \relative c'
  {
    %{00%}
  }
>>

teniiVoice = <<
  \teniiArt
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
