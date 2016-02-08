\version "2.19.22"

global = {  
  \key c \major
  \time 4/4
  \partial 4
}

Lobt = \lyricmode {
  Lobt Gott, ihr Chris -- ten al -- le gleich,
  in sei -- nem höchs -- ten Thron,
  der heut schließt auf sein Him -- mel -- reich
  und schenkt uns sei -- nen Sohn,
  und schenkt uns sei -- nen Sohn.
  }

PuerLyrix = \lyricmode { 
  Pu -- er na -- tus est no -- bis
  fi -- li -- us da bis
  e -- jus, ma -- gni con -- si- An -- ge -- lus
  }
  
Bach = \relative c'' {
%{00%} s4
%{01%} s1
%{02%} s2. a4
%{03%} b8[( cis)] s4 s s
%{04%} s2. s4 	
%{05%} s s s s
%{06%} s1
%{07%} c4 b s2
%{08%} g8([ a b c] d4) d4  
%{09%} c b8[(a)] b4 s
%{10%} s2.\bar "|."
}

Herman = \relative c''{
%{00%} g4
%{01%} d' d d d 
%{02%} e d8[( c)] b4  b
%{03%} c d e e
%{04%} d2 a4\rest d
%{05%} d d d b
%{06%} d c8[( b)] a4 d
%{07%} b a8[( g)] a4 a
%{08%} g2 b
%{09%} d4 c8[( b)] a4 a
%{10%} g2.
}


Puer = \relative c'' {
%{00%} g4(
%{01%} d') d a4\rest d( 
%{02%} e d8)[ c] a4\rest a4\rest
%{03%} c d( c e8[d ])
%{04%} d2 b2\rest 
%{05%} b1\rest
%{06%} d4 c8[( b)] a4 c8[( d)]
%{07%} b4.\rest g8( a2
%{08%} g2) c8[( b)] c8[( b)]
%{09%} d4 c8[( b)] a4 a
%{10%} g2.
}



\score{
\new StaffGroup <<
  \new Staff = "LobtGott" 
                        <<
    \set Staff.instrumentName = 
    \markup { 
      \center-column { 
        Herman \line {  \with-color #red Bach } 
      }
    } 
    
    \new Voice = "Herman" { \voiceOne
      \global \Herman
    }
    \new Voice = "Bach" {
      \override NoteHead.color = #red
      \override Stem.color = #red
      \override Beam.color = #red
      \override Accidental.color = #red
      \voiceTwo
      \global \Bach
    }
  >>
\new Lyrics \lyricsto "Herman" { \Lobt }
  
  \new Staff = "Puer" <<
   \set Staff.instrumentName =  "Antiphon" 
   \new Voice = "Puer" { \voiceOne
      \global \Puer
    } 
  >> 
  \new Lyrics \lyricsto "Puer" { \PuerLyrix }

>>

}







