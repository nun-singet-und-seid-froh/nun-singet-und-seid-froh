%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/SATB/mensural/lyrics.ily

% this is standard version 1.0: SATB/polyphonic

% the lyrics within the staves

sopLyrics = \lyricmode { 
  <<
   { \set stanza = "1." 
    Es ist ein Ros ent -- sprung -- en
    aus ei -- ner Wur -- zel zart, }
 \new Lyrics {
   \set associatedVoice = "sop"
      als uns  die Al -- ten sung -- en
      aus Jes -- se kam die Art
 }
 >>
  Und hat ein Blüm -- lein bracht
  Mit -- ten im kal -- ten Win -- ter
  wohl zu der hal -- ben Nacht.
}

altLyrics = \sopLyrics

tenLyrics = \lyricmode { 
  <<
   { \set stanza = "1." 
    Es ist ein Ros ent -- sprung -- en
    aus ei -- ner Wur -- zel zart, }
 \new Lyrics {
   \set associatedVoice = "tenor"
      als  uns  die Al -- ten sung -- en
      aus Jes -- se kam die Art
 }
 >>
  Und hat ein Blüm -- lein bracht
  Mit -- ten im kal -- ten Win -- ter
  wohl zu der hal -- ben Nacht.
}

basLyrics = \sopLyrics

stanzas= 
\markup {
  \magnify #1.2 {
  \fill-line {
    \center-column {
     
      %last stanza, below the others and centered
      \line{
        \column { "2. " }
        \column {
          "Das Röslein, das ich meine"
          "Davon Esaias sagt"
          "Hat uns gebracht alleine"
          "Marie, die reine Magd"
          "Aus Gottes ewgem Rat"
          "Hat sie ein Kind geboren"
          "Wohl zu der halben Nacht"
          \null
        }
      }
      
    }
  }
}
}

