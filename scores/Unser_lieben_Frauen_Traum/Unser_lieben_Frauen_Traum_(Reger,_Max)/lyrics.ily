%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSATBB/SSATBB/lyrics.ily

stanzaILyrics = \lyricmode {
      \set stanza = "1. "
      Und4 un2 -- ser4 lie2-- ben4 Frau2. -- en2 der4 trau2 -- met,4 trau2 -- met4 ihr2 ein4 Traum:2
      wie4 un2 -- ter4 ih2 -- rem4 Her2. -- zen2 ge4 -- wach2 -- sen4 wär,2 ge4 -- wach4. -- sen8 ein4 Baum.2
   }

stanzaIILyrics = \lyricmode {
     \set stanza = "2. "
     Und4 wie2 der4 Baum2 ein4 Schat2 -- ten4 gäb2 wohl4 ü2 -- ber4 al2 -- le,4 al2 -- le4 Land:2
      Herr4 Je2 -- sus4 Christ2 der4 Hei2. -- land2 al4 -- so2 ist4 er,2 ist4 er2 ge4 --  \skip 2 \once \override LyricText.X-offset = #0.2  nannt. \skip 2
 }

stanzaIIILyrics = \lyricmode {
    \set stanza = "3. "
    Herr2 Je4 -- sus4 Christ2 \skip 4 der4 Hei2 -- land2 ist2 un4 -- ser4 Heil2 und2 Trost,2 \skip 4 mit4 sei2 -- ner2
    bit2 -- tern2 Mar2 -- ter4 hat4 er2 uns2 all2 er2 -- lost,2 hat2 er2 uns2 all2 er2 -- lost.1
 }

sopILyrics = \lyricmode {
  <<
    \stanzaILyrics
    \new Lyrics { \stanzaIILyrics }
  >>

  \stanzaIIILyrics
}

sopIILyrics = \lyricmode {
    \skip 2.*17
    \set stanza = "3. "
    Herr2 Je4 -- sus4 Christ2 \skip 4 der4 Hei2 -- land2 ist2 un4 -- ser4 Heil2 und2 Trost,2 \skip 4 mit4 sei2 -- ner2
    bit2 -- tern2 Mar2 -- ter4 hat4 er2 uns2 all2 er2 -- lost,2 hat2 er2 uns2 all2. er4 -- lost.1
 }


altLyrics = \sopILyrics

tenLyrics = \sopILyrics

basILyrics = \sopILyrics

basIILyrics = { \skip 2.*17 \stanzaIIILyrics }


stanzas = { }
