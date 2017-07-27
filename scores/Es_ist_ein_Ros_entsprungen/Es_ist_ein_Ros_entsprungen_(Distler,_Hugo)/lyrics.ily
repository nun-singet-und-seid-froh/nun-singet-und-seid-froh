%the lyrics (as well as the voices) for each stanza are put into
%separate variables (which are numbered One, Two, Three, etc.) to
%arrange the score.ly more clearly

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 1           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopLyricsVerseOne = \lyricmode {
  {
    <<
      {
        Es ist ein Ros ent -- sprun -- gen
        aus ei -- ner __ Wur -- zel zart, __
      }
      \new Lyrics {
        \set associatedVoice = "sop"
        als uns die Al -- ten sun -- gen,
        von Jes -- se __ kam die
      }
    >>
    Art, __
    und hat ein Blüm -- lein bracht
    mit -- ten im kal -- ten Win -- ter
    wohl zu der hal -- ben Nacht. __
  }
}

altLyricsVerseOne = \lyricmode {
  <<
    {
      Es ist ein Ros ent -- sprun -- gen
      aus ei -- ner Wur -- zel zart, __
    }
    \new Lyrics {
      \set associatedVoice = "alt"
      als uns die Al -- ten sun -- gen,
      von Jes -- se kam __ die
    }
  >>
  Art, __
  und hat ein Blüm -- lein bracht __
  mit -- ten im kal -- ten Win -- ter
  wohl zu der hal -- ben Nacht. __

  <<
    {
      Das Rös -- lein, das ich mei -- ne,
      da -- von Je -- sai -- as, Je -- sai -- as sagt,
    }
    \new Lyrics {
      ist Ma -- ri -- a, die rei -- ne
      die uns das Blüm -- lein, das "Blüm -"
    }
  >>
  - lein bracht. Aus Got -- tes ew -- gem Rat
  hat sie ein Kind ge -- bo -- ren
  und blieb ein rei -- ne, ein rei -- ne Magd.
}

tenLyricsVerseOne = \lyricmode {
  <<
    {

      Es ist ein Ros ent -- sprun -- gen
      aus ei -- ner Wur -- zel zart, __
    }
    \new Lyrics {
      \set associatedVoice = "ten"
      als uns die Al -- ten sun -- gen,
      von Jes -- se kam __ die
    }
  >>
  Art, __
  und hat ein Blüm -- lein bracht __
  mit -- ten im kal -- ten Win -- ter
  wohl zu der hal -- ben Nacht. __
}

basLyricsVerseOne = \lyricmode {
  <<
    {
      aus ei -- ner Wur -- zel zart __
    }
    \new Lyrics {
      \set associatedVoice = "bas"
      von Jes -- se kam die
    }
  >>
  Art, __
  und hat ein Blüm -- lein bracht
  wohl zu der hal -- ben Nacht.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 2           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopLyricsVerseTwoFirstVolta = \lyricmode {
  % no automatic syllable durations here b/c Rös -- collides with repeat bar.
  Das4 Rös2 -- lein,4 \set associatedVoice = "sop" das ich mei1. -- ne,1 __ \skip1 
  da2 von4 Je4 -- sai1 -- \skip8 as4. __ sagt2
  ist4 Ma8 -
  
  bracht.2

  Aus4 Got -- tes,8 aus8 Got4 -- tes ew2 --  gem4 Rat4.
  hat8 sie4 ein Kind ge -- bo1. -- ren1 \skip1
  und2 blieb4 ein rei1 -- \skip8 ne4. __ Magd. __
}

sopLyricsVerseTwoSecondVolta = \lyricmode {
  \set associatedVoice = "sop" \skip4 \set associatedVoice = "sopTemp" \skip4
  ri2 -- a,4 \set associatedVoice = "sop" die rei1. -- ne,1 __ \skip2 \skip2
  die2 uns4 das Blüm1 -- \skip8 lein4. __
}

altLyricsVerseTwoFirstVolta = \lyricmode {
  Das Rös -- lein, das ich mei -- ne
  da -- von Je -- sai -- as,
  Je -- sai -- as sagt

  \skip1 lein bracht.

  Aus Got -- tes ew -- gem Rat
  hat sie ein Kind ge --  bo -- ren
  und blieb ein rei -- ne,
  ein rei -- ne Magd.
}

altLyricsVerseTwoSecondVolta = \lyricmode {
  \set associatedVoice = "alt" \skip2
  ist4 \set associatedVoice = "altTemp" Ma4 -- ri2  -- a,4 \set associatedVoice = "alt" die rei1. -- ne2,
  \skip2 \skip2 \skip4 die4 uns4 das4 Blüm2 -- lein,8

  das8 Blüm-4
}

tenLyricsVerseTwoFirstVolta = \lyricmode {
  Das4 Rös2 -- lein,4 das ich mei -- ne,
  da -- von Je -- sai -- as sagt,

  bracht.

  Aus4 Got -- tes ew -- gem Rat
  hat sie ein Kind ge -- bo -- ren
  und blieb ein rei -- ne Magd.
}

tenLyricsVerseTwoSecondVolta = \lyricmode {
  \skip2 \skip1 \skip2
  ist4 Ma -- ri2 -- a,4 \set associatedVoice = "ten" die rei1 -- \skip1 ne,4
  die uns das Blüm2. -- lein
}

basLyricsVerseTwoFirstVolta = \lyricmode {
  Das Rös -- lein, das ich mei -- ne,
  da -- von Je -- sai -- as sagt,

  bracht.

  Aus Got -- tes ew -- gem Rat
  hat sie ein Kind ge -- bo -- ren
  und blieb ein rei -- ne Magd.
}

basLyricsVerseTwoSecondVolta = \lyricmode {
  \skip2 \skip1 \skip1 \skip2
  ist4 Ma -- ri2 -- a,4 \set associatedVoice = "bas" die rei1 -- ne,2 \skip4
  die4 uns das Blüm -- lein
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 3           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopLyricsVerseThree = \lyricmode {
  Das Blü -- me -- lein so klei -- ne,
  das duf -- tet uns so süß, __ so süß; __
  mit sei -- nem hel -- len Schei -- ne ver -- treibts __
  die Fin -- ster -- nis.
  Wahr Mensch und wah -- rer Gott,
  hilft uns aus al -- lem Lei -- de,
  ret -- tet von Sünd und Tod, von Sünd und Tod.
}

altLyricsVerseThree =  \lyricmode {
  Das Blü -- me -- lein so klei -- ne,
  das duf -- tet uns so süß; __
  mit sei -- nem hel -- len Schei -- ne ver -- treibts __
  die Fin -- ster -- nis.
  Wahr Mensch und wah -- rer Gott,
  hilft uns aus al -- lem Lei -- de,
  ret -- tet von Sünd, von Sünd und Tod.
}

tenLyricsVerseThree =  \lyricmode {
  Das Blü -- me -- lein so klei -- ne,
  das duf -- tet uns so süß; __
  mit sei -- nem hel -- len Schei -- ne ver -- treibts
  die Fin -- ster -- nis. __
  Wahr Mensch und wah -- rer Gott,
  hilft uns aus al -- lem Lei -- de,
  ret -- tet von Sünd und Tod. __
}

basLyricsVerseThree = \lyricmode {
  Ei -- a! Ei -- a! Ei -- a! Ei -- a! Ei -- a!
  Ei -- a! Ei -- a! Ei -- a! Ei -- a! Ei -- a!
  Ei -- a! Ei -- a! Ei -- a! Ei -- a! Ei -- a!
  Ei -- a! Ei -- a! Ei -- a! Ei -- a! Ei -- a!
  Ei -- a! Ei -- a!
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 4           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopLyricsVerseFour = \lyricmode {
  Lob, Ehr sei Gott, dem Va -- ter,
  Lob, Ehr sei Gott, dem Va -- ter,
  Lob, Ehr sei Gott, dem Va -- ter,
  dem Sohn und heil -- gen Geist.
  dem Sohn, dem Sohn, __ dem Sohn, und heil -- gen Geist.
  Ma -- ri -- a, Got -- tes Mut -- ter,
  Ma -- ri -- a, Got -- tes Mut -- ter
  Ma -- ri -- a, Got -- tes Mut -- ter,
  dein Hilf __ an uns __ be -- weis,
  dein Hilf, __ dein Hilf, __ dein Hilf __ an uns __ be -- weis
  und bitt, und bitt dein lie -- bes Kind, __
  dass es uns woll be -- hü -- ten,
  dass es uns woll be -- hü -- ten,
  dass es uns woll be -- hü -- ten,
  ver -- zei -- hen un -- ser Sünd,
  ver -- zeihn, ver -- zeihn,
  ver -- zei -- hen un -- ser Sünd.
}

altLyricsVerseFour = \lyricmode {
  Lob, Ehr sei Gott, Lob, Ehr sei Gott, dem Va -- ter,
  Lob, Ehr sei Gott, dem Va -- ter,
  Gott, dem Va -- ter,
  Lob, Ehr sei Gott, dem Va -- ter,
  dem Sohn und heil -- gen Geist,
  dem Sohn, dem Sohn, dem Sohn und heil -- gen Geist.
  Ma -- ri -- a, Got -- tes Mut -- ter, Got -- tes Mut -- ter
  Ma -- ri -- a, Got -- tes Mut -- ter, Got -- tes Mut -- ter
  Ma -- ri -- a, Got -- tes Mut -- ter,
  dein Hilf __ an uns __ be -- weis,
  dein Hilf, __ dein Hilf, __ dein Hilf __ an uns __ be -- weis
  und bitt, __ und bitt __ und bitt dein lie -- bes Kind, __
  dass es uns woll, dass es uns woll be -- hü -- ten,
  dass es uns woll be -- hü -- ten, woll be -- hü -- ten,
  dass es uns woll be -- hü -- ten,
  ver -- zei -- hen un -- ser Sünd,
  ver -- zeihn, ver -- zeihn,
  ver -- zei -- hen un -- ser Sünd.
}

tenLyricsVerseFour = \lyricmode {
  Lob, Ehr sei Gott, dem Va -- ter, sei Gott, dem Va -- ter,
  sei Gott, dem Va -- ter,
  dem Sohn __ und heil -- gen Geist,
  dem Sohn und heil -- gen Geist.

  Ma -- ri -- a, Got -- tes Mut -- ter,
  Got -- tes Mut -- ter,
  Got -- tes Mut -- ter,
  dein Hilf an uns __ be -- weis,
  dein Hilf __ an uns be -- weis
  und bitt, __ und bitt, __ und bitt dein lie -- bes Kind, __

  dass es uns woll be -- hü -- ten,
  uns woll be -- hü -- ten,
  uns woll be -- hü -- ten,
  ver -- zei -- hen, ver -- zei -- hen, ver -- zei -- hen,
  ver -- zei -- hen un -- ser Sünd.

}

basLyricsVerseFour = \lyricmode {
  Lob, Ehr, sei Gott, dem Va -- ter, __
  dem Sohn und heil -- gen Geist, dem heil -- gen Geist.
  Ma -- ri -- a, Got -- tes Mut -- ter,
  dein Hilf an uns __ be -- weis, an uns __ be -- weis
  und bitt, und bitt, __ und bitt dein lie -- bes Kind, __

  dass es uns woll be -- hü -- ten, __
  ver -- zei -- hen, ver -- zei -- hen un -- ser Sünd.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 5           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopLyricsVerseFive = \lyricmode {
  {
    <<
      {
        So sin -- gen wir all A -- men
        das heißt: nun werd es wahr, __
      }
      \new Lyrics {
        \set associatedVoice = "sop"
        was wir be -- gehrn all -- sa -- men.
        O Je -- su, hilf uns
      }
    >>
    dar __
    in dei -- nes Va -- ters Reich,
    drin wol -- len wir dich lo -- ben.
    O Gott, uns das ver -- leih. __
  }
}

altLyricsVerseFive = \lyricmode {
  <<
    {
      So sin -- gen wir all A -- men
      das heißt: nun werd es wahr, __
    }
    \new Lyrics {
      \set associatedVoice = "alt"
      was wir be -- gehrn all -- sa -- men.
      O Je -- su, hilf uns
    }
  >>
  dar __
  in dei -- nes Va -- ters Reich,
  drin wol -- len wir dich lo -- ben.
  O Gott, uns das __ ver -- leih. __
}


tenLyricsVerseFive = \lyricmode {
  <<
    {
      So sin -- gen wir all A -- men
      das heißt: nun werd es wahr, __
    }
    \new Lyrics {
      \set associatedVoice = "ten"
      was wir be -- gehrn all -- sa -- men.
      O Je -- su, hilf uns
    }
  >>
  dar __
  in dei -- nes Va -- ters Reich,
  drin wol -- len wir dich lo -- ben.
  O Gott, uns das __ ver -- leih. __
}

basLyricsVerseFive = \lyricmode {
  <<
    {
      das heißt: nun werd es wahr, __
    }
    \new Lyrics {
      \set associatedVoice = "bas"
      O Je -- su, hilf uns
    }
  >>
  dar __
  in dei -- nes Va -- ters Reich,
  O __ Gott, uns das ver -- leih.
}
