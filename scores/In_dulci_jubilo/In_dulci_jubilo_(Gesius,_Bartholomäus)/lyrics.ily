%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/SATB/mensural/lyrics.ily

sopLyrics = \lyricmode {
  <<
    {

      \set stanza = "1. "
      In dul -- ci Iu -- bi -- lo, __
      Nun sin -- get und seid froh, __
      un -- sers Her -- zen Won -- ne
      liegt in __ prae -- se -- pi -- o, __
      und leuch -- tet als die Son -- ne
      Ma -- tris in gre -- mi -- o __
      Al -- pha es et O, __
      Al -- pha es et O!
    }
    \new Lyrics \lyricsto "sop"
    {
      \set stanza = "2. " O Je -- su par -- vu -- le! __
      Nach dir ist mir so weh! __
      Tröst mir mein Ge -- mü -- te,
      O pu -- er op -- ti -- me __
      Durch al -- le dei -- ne Gü -- te,
      O prin -- ceps glo -- ri -- ae. __
      Tra -- he me post te, __
      Tra -- he me post te!
    }
  >>
}

altLyrics =  \lyricmode {
  <<
    {

      \set stanza = "1. "
      In dul -- ci Iu -- bi -- lo, __
      Nun sin -- get und seid froh, __
      un -- sers Her -- zen Won -- ne
      liegt in __ prae -- se -- pi -- o, __
      und leuch -- tet als die Son -- ne
      Ma -- tris in gre -- mi -- o __
      Al -- pha es et O, __
      Al -- pha es et O!
    }
    \new Lyrics \lyricsto "alt"
    {
      \set stanza = "2. " O Je -- su par -- vu -- le! __
      Nach dir ist mir so weh! __
      Tröst mir mein Ge -- mü -- te,
      O pu -- er op -- ti -- me __
      Durch al -- le dei -- ne Gü -- te,
      O prin -- ceps glo -- ri -- ae. __
      Tra -- he me post te, __
      Tra -- he me post te!
    }
  >>
}
tenLyrics =  \lyricmode {
  <<
    {

      \set stanza = "1. "
      In dul -- ci Iu -- bi -- lo, __
      Nun sin -- get und seid froh, __
      un -- sers Her -- zen Won -- ne
      liegt in __ prae -- se -- pi -- o, __
      und leuch -- tet als die Son -- ne
      Ma -- tris in gre -- mi -- o __
      Al -- pha es et O, __
      Al -- pha es et O!
    }
    \new Lyrics \lyricsto "ten"
    {
      \set stanza = "2. " O Je -- su par -- vu -- le! __
      Nach dir ist mir so weh! __
      Tröst mir mein Ge -- mü -- te,
      O pu -- er op -- ti -- me __
      Durch al -- le dei -- ne Gü -- te,
      O prin -- ceps glo -- ri -- ae. __
      Tra -- he me post te!
      Tra -- he me post te!
    }
  >>
}
basLyrics =  \lyricmode {
  <<
    {

      \set stanza = "1. "
      In dul -- ci Iu -- bi -- lo, __
      Nun sin -- get und seid froh, __
      un -- sers Her -- zen Won -- ne
      liegt in __ prae -- se -- pi -- o, __
      und leuch -- tet als die Son -- ne
      Ma -- tris in gre -- mi -- o __
      Al -- pha es et O, __
      Al -- pha es et O!
    }
    \new Lyrics \lyricsto "bas"
    {
      \set stanza = "2. " O Je -- su par -- vu -- le! __
      Nach dir ist mir so weh! __
      Tröst mir mein Ge -- mü -- te,
      O pu -- er op -- ti -- me __
      Durch al -- le dei -- ne Gü -- te,
      O prin -- ceps glo -- ri -- ae. __
      Tra -- he me post te, __
      Tra -- he me post te!
    }
  >>
}
% with stanzas
stanzas =
\markup {
  \magnify #1.2 {
    \fill-line {
      \center-column {
        \line {
          %left column of stanzas
          \column {
            \line {
              \column { "3. " }
              \column {
                "O patris caritas!"
                "O nati lenitas!"
                "Wir wärn all verloren"
                "per nostra crimina,"
                "so hat er uns erworben"
                "caelorum gaudia."
                "Eia, wärn wir da!"
                "Eia, wärn wir da!"
                \null
              }
            }
          }
          %space between the two columns of stanzas
          \column {
            \line {
              \column {
                \hspace #5
              }
            }
          }

          %right column of stanzas
          \column {
            \line {
              \column { "4. " }
              \column {
                "Ubi sunt gaudia?"
                \line{ \rest #"2" " Nirgend mehr denn da," }
                "da die Engel singen"
                "nova cantica,"
                "und die Schellen klingen"
                "in regis curia."
                "Eia, wärn wir da!"
                "Eia, wärn wir da!"
                \null
              }
            }
          }
        }
      }
    }
  }
}