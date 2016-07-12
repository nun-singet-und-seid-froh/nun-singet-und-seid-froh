%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/SATB/modern/lyrics.ily

sopLyrics = \lyricmode {
  <<
    {
      \set stanza = "1."
      Es ist ein Reis ent -- sprung -- en
      aus ei -- ner Wur -- zel zart.
      Wie uns  die Al -- ten sung -- en
      von Jes -- se __ kam die Art.
      Und hat ein Blüm -- lein bracht
      und hat __ ein Blüm -- lein bracht.
      Mit -- ten im kal -- ten Win -- ter
      wohl zu der hal -- ben Nacht,
      wohl zu der hal -- ben Nacht.
    }
    \new Lyrics {
      \set associatedVoice = "sopran"
      \set stanza = "2. "
      Das Reis -- lein, das ich mei -- ne,
      da -- von Je -- sa -- ja sagt
      Hat uns ge -- bracht al -- lein -- e
      Ma -- rie, die __ rei -- ne Magd.
      Aus Got -- tes ew' -- gem Rat,
      aus Got -- tes ew' -- gem Rat,
      hat sie ein Kind __ ge -- bo -- ren
      und blieb ein’ rei -- ne Magd,
      und blieb ein’ rei -- ne Magd.
    }
  >>
}

altLyrics = \lyricmode {
  <<
    {
      \set stanza = "1."
      Es ist ein Reis ent -- sprung -- en
      aus ei -- ner Wur -- zel zart.
      Wie uns  die Al -- ten sung -- en.
      Und hat ein Blüm -- lein bracht
      und hat __ ein Blüm -- lein bracht.
      Mit -- ten im kal -- ten Win -- ter
      wohl zu der hal -- ben Nacht,
      wohl zu der hal -- ben Nacht.
    }
    \new Lyrics {
      \set associatedVoice = "alt"
      \set stanza = "2. "
      Das Reis -- lein, das ich mei -- ne,
      da -- von Je -- sa -- ja sagt
      Hat uns ge -- bracht al -- lein -- e
      Aus Got -- tes ew' -- gem Rat,
      aus Got -- tes ew' -- gem Rat,
      hat sie ein Kind __ ge -- bo -- ren
      und blieb ein’ rei -- ne Magd,
      und blieb ein’ rei -- ne Magd.
    }
  >>

}

tenLyrics = \lyricmode {
  <<
    {
      \set stanza = "1."
      Es ist ein Reis __ ent -- sprung -- en,
      wie uns  die Al -- ten sung -- en
      von Jes -- se __ kam die Art.
      Und hat ein Blüm -- lein bracht
      und hat ein Blüm -- lein bracht.
      Mit -- ten im kal -- ten, im kal -- ten Win -- ter
      wohl zu __ der hal -- ben Nacht,
      wohl zu __ der hal -- ben Nacht.
    }
    \new Lyrics {
      \set associatedVoice = "Tenor"
      \set stanza = "2. "
      Das Reis -- lein, das __ ich mei -- ne,
      hat uns ge -- bracht al -- lein -- e
      Ma -- rie, __ die rei -- ne Magd.
      Aus Got -- tes ew' -- gem Rat,
      aus Got -- tes ew' -- gem Rat,
      hat sie ein Kind, ____ ein Kind ge -- bo -- ren
      und blieb ein’ rei -- ne Magd,
      und blieb ein’ rei -- ne Magd.
    }
  >>

}
basLyrics = \lyricmode {
  <<
    {
      \set stanza = "1."
      Es ist ein Reis __ ent -- sprung -- en,
      wie uns  die Al -- ten sung -- en
      von Jes -- se __ kam die Art.
      Und hat ein Blüm -- lein bracht, __
      und hat __ ein Blüm -- lein bracht. __
      Mit -- ten im kal -- ten,
      im kal -- ten Win -- ter
      wohl zu der hal -- ben Nacht,
      wohl zu der hal -- ben Nacht.
    }
    \new Lyrics {
      \set associatedVoice = "Bass"
      \set stanza = "2. "
      Das Reis -- lein, das __ ich mei -- ne,
      hat uns ge -- bracht al -- lein -- e
      Ma -- rie, die rei -- ne Magd.
      Aus Got -- tes ew' -- gem Rat, __
      aus Got -- tes ew' -- gem Rat, __
      hat sie ein Kind, ____ ein Kind ge -- bo -- ren
      und blieb ein’ rei -- ne Magd,
      und blieb ein’ rei -- ne Magd.
    }
  >>
}

stanzas= ""