% this is standard version 1.0: SATB/homophonic

global = {
\override Staff.BarLine.allow-span-bar = ##f  
  \key g \major
  \time 4/4
  \partial 4
}

sopVoice = \relative c'' {
%{00%} g4
%{01%} d' d d d 
%{02%} e d8[( c)] b4\fermata a
%{03%} b8[( cis)] d4 e e
%{04%} d2.\fermata \bar "" \break d4 	
%{05%} d d d b8[( c)] 
%{06%} d4 c8[( b)] a4\fermata d
%{07%} c b a a
%{08%} g8([ a b c] d4\fermata) d4  
%{09%} c b8[(a)] b4 a
%{10%} g2.\fermata\bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
}

altVoice = \relative c' {\autoBeamOff
%{00%} d4
%{01%} d8[( e)] fis4 g g
%{02%} g fis g a
%{03%} g fis a8[( fis)] g4
%{04%} fis2. a4
%{05%} g fis g g 
%{06%} g a8[( g)] fis4
%{07%} fis g8[( a)] a[( g)] g[( e)] fis4
%{08%} g2( fis4) g 
%{09%} g g g fis
%{10%} d2.
}

tenVoice = \relative c' {\autoBeamOff
%{00%} b4
%{01%} a d8[( c)] b[( c)] d4 
%{02%} c8[( b)] a[( d)] d4 \fermata d
%{03%} g, a b cis
%{04%} a2.\fermata d8[( c?)] 
%{05%} b4 c d e 	 
%{06%} d e a,\fermata b	
%{07%} b8[( a)] b[( c)] d4 c 
%{08%} b( e d) \fermata b 
%{09%} c8[( d)] e4 d4 c8[( b)]
%{10%} d2.\fermata
}

basVoice = \relative c' {\autoBeamOff
%{00%} g4
%{01%} fis d g8[( a)] b4
%{02%} c d g, fis
%{03%} e d g a
%{04%} d,2.fis4
%{05%} g a b e,
%{06%} b c d b	 
%{07%} e8[( fis8)] g4 d dis 
%{08%} e8([ fis g a] b4)
%{09%} g e d8[( c)] d4 d
%{10%} g,2.\bar"|." \once \override Staff.BarLine.allow-span-bar = ##t	  
}

