%the lyrics (as well as the voices) for each stanza are put into
%separate variables (which are numbered One, Two, Three, etc.) to
%arrange the score.ly more clearly

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 1           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopLyricsVerseOne = \lyricmode {
  {
    <<

      \new Lyrics = "lineOne"
      {
        Es ist ein Ros ent -- sprun -- gen
        aus ei -- ner Wur -- zel zart,
      }
      \new Lyrics {
        \set associatedVoice = "sop"
        als uns die Al -- ten sun -- gen,
        von Jes -- se kam die
      }
    >>
    Art,
    und hat ein Blüm -- lein bracht
    mit -- ten im kal -- ten Win -- ter
    wohl zu der hal -- ben Nacht.
  }
}

altLyricsVerseOne = \lyricmode {
  <<
    {
      Es ist ein Ros ent -- sprun -- gen
      aus ei -- ner Wur -- zel zart,
    }
    \new Lyrics {
      \set associatedVoice = "alt"
      als uns die Al -- ten sun -- gen,
      von Jes -- se kam die
    }
  >>
  Art,
  und hat ein Blüm -- lein bracht __
  mit -- ten im kal -- ten Win -- ter
  wohl zu der hal -- ben Nacht.

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


tenLyricsVerseOne = \lyricmode { <<
  {

    Es ist ein Ros ent -- sprun -- gen
    aus ei -- ner Wur -- zel zart,
  }
  \new Lyrics {
    \set associatedVoice = "ten"
    als uns die Al -- ten sun -- gen,
    von Jes -- se kam die
  }
                                 >>
                                 Art,
                                 und hat ein Blüm -- lein bracht __
                                 mit -- ten im kal -- ten Win -- ter
                                 wohl zu der hal -- ben Nacht.
}

basLyricsVerseOne = \lyricmode {
  <<
    {
      aus ei -- ner Wur -- zel zart
    }
    \new Lyrics {
      \set associatedVoice = "bas"
      von Jes -- se kam die
    }
  >>
  Art,
  und hat ein Blüm -- lein bracht
  wohl zu der hal -- ben Nacht.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 2           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopLyricsVerseTwoFirstVolta = \lyricmode {
  Das4 Rös2 -- lein,4 das ich mei1. -- ne,1 \skip1
  da2 von4 Je4 -- sai1 -- \skip8 as4. sagt2
  ist4 Ma8 -
  bracht2
  Aus4 Got -- tes,8 aus8 Got4 -- tes ew2 --  gem4 Rat4.
  hat8 sie4 ein Kind ge -- bo1. -- ren1 \skip1
  und2 blieb4 ein rei1 -- \skip8 ne4. Magd.
}

sopLyricsVerseTwoSecondVolta = \lyricmode {
  \skip2
  ri2 -- a,4 die4 rei1. -- ne,2 \skip1.
  die2 uns4 das Blüm1 -- \skip8 lein4.
}

altLyricsVerseTwoFirstVolta = \lyricmode {
  \skip2 Das4 Rös2 -- lein,4 das ich mei1. -- ne2
  \skip2 \skip1 \skip4 da4 -- von4 Je4 -- sai2 -- as,8
  Je -- sai4. as8 sagt2 \skip4.

  lein8 bracht2

  Aus4 Got4 -- tes4 ew2. -- gem4 Rat2. \skip8
  hat8 sie4 ein4 Kind4 ge4 --  bo1. -- ren2 \skip2
  \skip1 \skip4 und4 blieb4 ein4 rei2 -- ne,8
  ein8 rei4. -- ne8 Magd.
}

altLyricsVerseTwoSecondVolta = \lyricmode {
  \skip2 ist4 Ma4 -- ri2  -- a,4 die rei1. -- ne2,
  \skip2 \skip2 \skip4 die4 uns4 das4 Blüm2 -- lein,8

  das8 Blüm4.


}

altLyricsVerseTwo = \lyricmode {
  \lyricsto "alt"
  {
    \repeat volta 2 {
      <<
        {
          Das Rös -- lein, das ich mei -- ne,
          da -- von Je -- sai -- as, Je -- sai --
        }
        \new Lyrics {
          \set associatedVoice = "alt"
          ist Ma -- ri -- a, die rei -- ne,
          die uns das Blüm -- lein, das Blüm -
        }
      >>
    }
    \alternative {
      {  as sagt, }
      { lein bracht. }
    }
    Aus Got -- tes ew -- gem Rat
    hat sie ein Kind ge -- bo -- ren
    und blieb ein rei -- ne, ein rei -- ne Magd.
  }
}


tenLyricsVerseTwo = \lyricmode { <<
  {
    Das Rös -- lein, das ich mei -- ne,
    da -- von Je -- sai -- as sagt,
  }
  \new Lyrics {
    \set associatedVoice = "ten"
    ist Ma -- ri -- a, die rei -- ne,
    die uns das Blüm -- lein
  }
                                 >>
                                 bracht.
                                 Aus Got -- tes ew -- gem Rat
                                 hat sie ein Kind ge -- bo -- ren
                                 und blieb ein rei -- ne Magd.
}

basLyricsVerseTwo = \lyricmode {
  <<
    {
      Das Rös -- lein, das ich mei -- ne,
      da -- von Je -- sai -- as sagt,
    }
    \new Lyrics {
      \set associatedVoice = "bas"
      ist Ma -- ri -- a, die rei -- ne,
      die uns das Blüm -- lein
    }
  >>
  bracht.
  Aus Got -- tes ew -- gem Rat
  hat sie ein Kind ge -- bo -- ren
  und blieb ein rei -- ne Magd.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Verse 2           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopLyricsVerseThree = \lyricmode {
  Das Blü -- me -- lein so klei -- ne,
  das duf -- tet uns so süß, so süß __
  mit sei -- nem hel -- len Schei -- ne ver -- treibts __
  die Fin -- ster -- nis.
  Wahr Mensch und wah -- rer Gott,
  hilft uns aus al -- lem Lei -- de,
  ret -- tet von Sünd und Tod, von Sünd und Tod.
}

altLyricsVerseThree =  \lyricmode {
  Das Blü -- me -- lein so klei -- ne,
  das duf -- tet uns so süß, __
  mit sei -- nem hel -- len Schei -- ne ver -- treibts __
  die Fin -- ster -- nis.
  Wahr Mensch und wah -- rer Gott,
  hilft uns aus al -- lem Lei -- de,
  ret -- tet von Sünd, von Sünd und Tod.
}

tenLyricsVerseThree =  \lyricmode {
  Das Blü -- me -- lein so klei -- ne,
  das duf -- tet uns so süß, __
  mit sei -- nem hel -- len Schei -- ne ver -- treibts
  die Fin -- ster -- nis.
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
  dem Sohn, dem Sohn, dem Sohn, und heil -- gen Geist.
  Ma -- ri -- a, Got -- tes Mut -- ter,
  Ma -- ri -- a, Got -- tes Mut -- ter
  Ma -- ri -- a, Got -- tes Mut -- ter,
  dein Hilf an uns be -- weis,
  dein Hilf, dein Hilf, dein Hilf an uns be -- weis
  und bitt, und bitt dein lie -- bes Kind,
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
  dein Hilf an uns be -- weis,
  dein Hilf, dein Hilf, dein Hilf an uns be -- weis
  und bitt, und bitt und bitt dein lie -- bes Kind,
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
  dem Sohn und heil -- gen Geist,
  dem Sohn und heil -- gen Geist.
  
  Ma -- ri -- a, Got -- tes Mut -- ter,
  Got -- tes Mut -- ter,
  Got -- tes Mut -- ter,
  dein Hilf an uns be -- weis,
  dein Hilf an uns be -- weis
  und bitt, und bitt, und bitt dein lie -- bes Kind,
  
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
  dein Hilf an uns be -- weis, an uns be -- weis
  und bitt, und bitt, und bitt dein lie -- bes Kind,
  
  dass es uns woll be -- hü -- ten,
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
        das heißt: nun werd es wahr,
      }
      \new Lyrics {
        \set associatedVoice = "sop"
        was wir be -- gehrn all -- sa -- men.
        O Je -- su, hilf uns
      }
    >>
    dar
    in dei -- nes Va -- ters Reich,
    drin wol -- len wir dich lo -- ben.
    O Gott, uns das ver -- leih.
  }
}

altLyricsVerseFive = \lyricmode {
  <<
    {
      So sin -- gen wir all A -- men
      das heißt: nun werd es wahr,
    }
    \new Lyrics {
      \set associatedVoice = "alt"
      was wir be -- gehrn all -- sa -- men.
      O Je -- su, hilf uns
    }
  >>
  dar
  in dei -- nes Va -- ters Reich,
  drin wol -- len wir dich lo -- ben.
  O Gott, uns das ver -- leih.
}


tenLyricsVerseFive = \lyricmode {
  <<
    {
      So sin -- gen wir all A -- men
      das heißt: nun werd es wahr,
    }
    \new Lyrics {
      \set associatedVoice = "ten"
      was wir be -- gehrn all -- sa -- men.
      O Je -- su, hilf uns
    }
  >>
  dar
  in dei -- nes Va -- ters Reich,
  drin wol -- len wir dich lo -- ben.
  O Gott, uns das ver -- leih.
}
basLyricsVerseFive = \lyricmode {
  <<
    {
      das heißt: nun werd es wahr,
    }
    \new Lyrics {
      \set associatedVoice = "bas"
      O Je -- su, hilf uns
    }
  >>
  dar
  in dei -- nes Va -- ters Reich,
  O Gott, uns das ver -- leih.
}
