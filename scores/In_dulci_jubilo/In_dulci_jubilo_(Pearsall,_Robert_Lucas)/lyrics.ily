%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% basOneed on templates/SATB/SATB/modern/lyrics.ily

sopOneLyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      In dul -- ci ju -- bi -- lo __
      Let us our hom -- age show; __
      Our heart's joy re -- cli -- neth
      In prae -- se -- pi -- o __
      And like a bright star shi -- neth,
      Ma -- tris in gre -- mi -- o. __
      Al -- pha es et O, __
      Al -- pha es et O.
    }
    \new Lyrics \lyricsto "sopOne" {
      \set stanza = "2. "
      O Je -- su par -- vu -- le! __
      My heart is sore for thee! __
      Hear me, I be -- seech __ thee,
      O Puer op -- ti -- me! __
      My pray -- er let it reach thee,
      O Prin -- ceps glor -- ri -- ae, __
      Tra -- he me post te, __
      Tra -- he me post te! 
    }
  >>

}

altOneLyrics = \sopOneLyrics

tenOneLyrics = \sopOneLyrics

basOneLyrics = \sopOneLyrics