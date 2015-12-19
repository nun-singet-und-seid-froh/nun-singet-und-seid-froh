stafftovoice = \midi {
  \context {
    \Staff
    \remove "Staff_performer"
  }
  \context {
    \Voice
    \consists "Staff_performer"
  }
}

commonVoice = {
  \set Staff.midiInstrument = #"recorder"
}

highlightedVoice= {
  \set midiInstrument = #"trumpet"
}
