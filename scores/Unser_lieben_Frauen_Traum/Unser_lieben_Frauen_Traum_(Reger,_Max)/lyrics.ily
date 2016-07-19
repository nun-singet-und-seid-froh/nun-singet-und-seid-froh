%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSATBB/SSATBB/lyrics.ily

sopILyrics = \lyricmode {
  <<
    {
      \set stanza = "1. "
      Und un -- ser lie -- ben Frau -- en der trau -- met, trau -- met ihr ein Traum:
      wie un -- ter ih -- rem Her -- zen ge -- wach -- sen wär, ge -- wach -- sen ein Baum.
    }
    \new Lyrics \lyricsto "sopI" {
      \set stanza = "2. "
      Und wie __ der Baum ein Schat -- ten gäb wohl ü -- ber al -- le, al -- le Land:
      Herr Je -- sus Christ der Hei -- land al -- so ist er, ist er ge --  \skip 2 nannt.
    }
  >>
  \skip 2.
  \set stanza = "3. "
  Herr Je -- sus Christ der Hei -- land ist un -- ser Heil und Trost, mit sei -- ner
  bit -- tern Mar -- ter hat er uns all er -- lost, hat er uns all er -- lost.
}

sopIILyrics = \lyricmode {
  \set stanza = "3. "
  Herr Je -- sus Christ der Hei -- land ist un -- ser Heil und Trost, mit sei -- ner
  bit -- tern Mar -- ter hat er uns all er -- lost, hat er uns all er -- lost.
}

altLyrics = \lyricmode {
  <<
    {

      \set stanza = "1. "
      Und un -- ser lie -- ben Frau -- en der trau -- met, trau -- met ihr ein Traum:
      wie un -- ter ih -- rem Her -- zen ge -- wach -- sen wär, ge -- wach -- sen ein Baum.
    }
    \new Lyrics \lyricsto "alt" {
      \set stanza = "2. "
      Und wie __ der Baum ein Schat -- ten gäb wohl ü -- ber al -- le, al -- le Land:
      Herr Je -- sus Christ der Hei -- land al -- so ist er, ist er ge --  \skip 2 nannt.
    }
  >>
  
  
  
    \set stanza = "3. "
  Herr Je -- sus Christ der Hei -- land ist un -- ser Heil und Trost, mit sei -- ner
  bit -- tern Mar -- ter hat er uns all er -- lost, hat er uns all er -- lost.
  
}

tenLyrics = \lyricmode {
  <<
    {

      \set stanza = "1. "
      Und un -- ser lie -- ben Frau -- en der trau -- met, trau -- met ihr ein Traum:
      wie un -- ter ih -- rem Her -- zen ge -- wach -- sen wär, ge -- wach -- sen ein Baum.
    }
    \new Lyrics \lyricsto "alt" {
      \set stanza = "2. "
      Und wie __ der Baum ein Schat -- ten gäb wohl ü -- ber al -- le, al -- le Land:
      Herr Je -- sus Christ der Hei -- land al -- so ist er, ist er ge --  \skip 2 nannt.
    }
  >>
  \skip 2.
  \set stanza = "3. "
  Herr Je -- sus Christ der Hei -- land ist un -- ser Heil und Trost, mit sei -- ner
  bit -- tern Mar -- ter hat er uns all er -- lost, hat er uns all er -- lost.
}

basILyrics = \lyricmode {
  \set stanza = "3. "
  Herr Je -- sus Christ der Hei -- land ist un -- ser Heil und Trost, mit sei -- ner
  bit -- tern Mar -- ter hat er uns all er -- lost, hat er uns all er -- lost.
}
basIILyrics = \lyricmode {
  <<
    {

      \set stanza = "1. "
      Und4 un2 -- ser4 lie2 -- ben4 Frau2. -- en2 der4 trau2 -- met,4 trau2 -- met4 ihr2 ein4 Traum:2
      wie4 un2 -- ter4 ih2 -- rem4 Her2. -- zen2 ge4 -- wach2 -- sen4 wär,2 ge4 -- wach4. -- sen8 ein4 Baum.2
    }
    \new Lyrics {
      \set stanza = "2. "
      Und4 wie2 der4 Baum2 ein4 Schat2 -- ten4 gäb2 wohl4 ü2 -- ber4 al2 -- le,4 al2 -- le4 Land:2
      Herr4 Je2 -- sus4 Christ2 der4 Hei2. -- land2 al4 -- so2 ist4 er,2 ist4 er2 ge4 --  \skip 2 nannt.
    }
  >>
  \lyricsto "basII" 
  { \set stanza = "3. "
  Herr Je -- sus Christ der Hei -- land ist un -- ser Heil und Trost, mit sei -- ner
  bit -- tern Mar -- ter hat er uns all er -- lost, hat er uns all er -- lost.
  }
}

stanzas = { }
