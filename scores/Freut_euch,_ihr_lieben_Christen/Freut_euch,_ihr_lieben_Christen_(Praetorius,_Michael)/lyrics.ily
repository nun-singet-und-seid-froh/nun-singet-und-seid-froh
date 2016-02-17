%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/lyrics.ily

% the lyrics within the staves

% this is standard version 1.0: SATB/homophonic

commonLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Freut euch, ihr lie -- ben Chris -- ten,
      freut euch von Her -- zen sehr!
      Euch ist ge -- bo -- ren Chris -- tus,
      recht gu -- te neu -- e Mär.
      Es sin -- gen uns die En -- gel
      aus Got -- tes ho -- hem Thron,
      gar lieb -- lich tun sie sin -- gen,
      für -- wahr ein sü -- ßen Ton.
    }
    \new Lyrics {
      \set associatedVoice = "sop"
      \set stanza = "2. "
      Al -- so tun sie nun sin -- gen
      das Kind -- lein ist euch hold
      Es ist des Va -- ters Wil -- le,
      der hats al -- so ge -- wollt.
      Es ist euch dar -- ge -- ge -- ben,
      da -- durch ihr sol -- let han
      des Va -- ters Gunst und Se -- gen,
      sein Gnad ist auf -- ge -- tan.
    }
  >>
}

stanzas =
\markup {
  \fill-line {
    " "
    \column {
      \line {
        \bold "3. "
        \column {
          "Nicht lasset euch erschrecken"
          "Sein klein gering Gestalt"
          "Was tut er darunter decken"
          "Sein mächtig groß Gewalt"
          "Es liegt dort in der Krippe"
          "In Elend Jammer groß"
          "Doch ist er aller Ding ein Herr,"
          "Sein Herrschaft hat kein Maß."
        }
      }
    }
    " "
    \column {
      \line {
        \bold "4."
        \column {
          "Tod, Teufel, Sünd und Hölle"
          "Haben den Sieg verlorn"
          "Das Kindlein tut sie fällen"
          "Ganz nichts gilt jetzt ihr Zorn"
          "Ihr Macht, die ist gekränket,"
          "Dar ist kein Zweifel an"
          "Das Kindlein tut sie fällen"
          "das sei euch kund getan."
        }
      }
    }
    " "
  }
}