%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/lyrics.ily

% the lyrics within the staves

commonLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      In dul -- ci ju -- bi -- lo __
      \skip4 sin -- get und seid froh, __
      un -- sers Her -- zens Won -- ne
      liegt in __ prae -- se -- pi -- o, __
      \skip4 leuch -- tet als die Son -- ne
      ma -- tris in gre -- mi -- o __
      Al -- pha es et O, __
      Al -- pha es et O, __
    }
    \new Lyrics \lyricsto "sop"
    {
      \set stanza = "2. " O Je -- su par -- vu -- le! __
      Nach dir ist mir so weh! __
      Tröst mir mein Ge -- mü -- te,
      O pu -- er op -- ti -- me __
      Durch al -- le dei -- ne Gü -- te,
      O prin -- ceps glo -- ri -- ae. __
      Tra -- he me post te! __
      Tra -- he me post te! __
    }
    \new Lyrics \lyricsto "sop"
    {
      \set stanza = "3. "
      O pa -- tris ca -- ri -- tas! __
      O na -- ti le -- ni -- tas! __
      Wir wärn all ver -- lo -- ren
      per nos -- tra cri -- mi -- na, __
      so hat er uns er -- wor -- ben
      cae -- lo -- rum gau -- di -- a. __
      Ei -- a, wärn wir da! __
      Ei -- a, wärn wir da! __
    }

    \new Lyrics \lyricsto "sop"
    {
      \set stanza = "4. "
      U -- bi sunt gau -- di -- a? __
      \skip4 Nir -- gend mehr denn da, __
      da die Eng -- el sing -- en __
      \skip4 no -- va can -- ti -- ca, __
      \skip4 und die Schel -- len kling -- en
      in re -- gis cu -- ri -- a. __
      Ei -- a, wärn wir da! __
      Ei -- a, wärn wir da! __
    }
  >>
}

% the lyrics of the stanzas below the staves
stanzas = { }