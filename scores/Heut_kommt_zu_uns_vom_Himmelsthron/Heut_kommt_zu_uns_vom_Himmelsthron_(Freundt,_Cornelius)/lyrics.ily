%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/SATB/mensural/lyrics.ily

% the lyrics within the staves
sopLyrics = \lyricmode {
  Heut kommt zu uns __  vom Him -- mels -- thron
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  Je -- sus Chris -- tus, Je -- sus Chris -- tus, Ma -- ri -- en -- kind,
  durch ihn wir Gott ver -- söh -- net sind,
  durch ihn wir Gott __ ver -- söh -- net sind.

}

altLyrics = \lyricmode {
  Heut kommt zu uns __  vom Him -- mels -- thron,
  heut kommt zu uns vom Him -- mels -- thron
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  Je -- sus Chris -- tus, Je -- sus Chris -- tus, Ma -- ri -- en -- kind,
  durch ihn wir Gott ver -- söh -- net sind,
  durch ihn wir Gott __ ver -- söh -- net sind,
  ver -- söh -- net sind.
}

tenLyrics = \lyricmode {
  Heut kommt zu uns __  vom Him -- mels -- thron
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  Je -- sus Chris -- tus, Je -- sus Chris -- tus, Ma -- ri -- en -- kind,
  durch ihn wir Gott ver -- söh -- net sind,
  durch ihn wir Gott __ ver -- söh -- net sind,
  ver -- söh -- net sind.
}

basLyrics = \lyricmode {
  Heut kommt zu uns __  vom Him -- mels -- thron,
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  der hoch -- ge -- lob -- te Got -- tes -- sohn,
  Je -- sus Chris -- tus, Ma -- ri -- en -- kind,
  durch ihn wir Gott ver -- söh -- net sind,
  durch ihn wir Gott ver -- söh -- net sind,
  ver -- söh -- net sind.
}

stanzas =
\markup {
  \abs-fontsize #14
  \column
  {
    \fill-line {
      \null
      \column {
        \line {
          \bold "2. "
          \column {
            "Zu Bethlehem im Krippelein"
            "Geboren wird dies Kindelein"
            "Zu Heil und Trost den Menschen all,"
            "Die es erlöst von ihrem Fall"
            \null
          }
        }
      }
      \null
      \column {
        \line {
          \bold "3."
          \column {
            "Drum lasst uns heut mit Freud und Wonn'"
            "preisen und loben Gottes Sohn!"
            "Lasst uns singen mit Herz und Mund:"
            "Ehr sei Gott heut und alle Stund."
            \null
          }
        }
      }
      \null
    }
  }
}