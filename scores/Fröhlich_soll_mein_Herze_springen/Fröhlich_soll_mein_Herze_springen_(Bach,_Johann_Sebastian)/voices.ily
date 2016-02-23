%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/voices.ily

% common settings of all voices
global = {
  \key g \major
  \time 4/4 
  \autoBeamOff
}

% the tunes
sopVoice = \relative c'' {
%{01%} g4 g a g%{\noBreak%}
%{02%} a8[ b] c4 c( b)%{\noBreak%}
%{03%} c2\fermata\bar""\break d4 e%{\noBreak%}
%{04%} c2\fermata b8[ c] d4%{\noBreak%}
%{05%} a2\fermata d4 d %{\noBreak%}
%{06%} c b8[ a] a2%{\noBreak%}
%{07%} g2\fermata\bar""\break g4 g
%{08%} a g a8[ b] c4
%{09%} c( b) c2\fermata
%{10%} d4 e c2\fermata
%{11%} b8[ c] d4
%{12%} a2\fermata d4 d b b8[ a]
%{13%} a2 g\fermata
\bar "|."
} 

altVoice = \relative c'{
%{01%} d4 e d d
%{02%} e f g2
%{03%} g2\bar""\break b8[ a] b4
%{04%} a2 g4 g
%{05%} fis2 fis4 g
%{06%} g g g( fis)
%{07%} d2\bar"" e4 b8[ cis]
%{08%} d[ c] b4 c8[ d] c[ d]
%{09%} e4( d) c2
%{10%} fis4 gis e2
%{11%} g?4 fis8[ g] a2
%{12%} g4 g8[ fis] g[ a] d,[ e]
%{13%} fis8( g4 fis8) d2
}

tenVoice = \relative c'{
%{01%} b4 c f, g
%{02%} c c8[ d] e4( d)
%{03%} e2\fermata\bar""\break g8[ f] e4
%{04%} e2\fermata d4 d
%{05%} d2\fermata a4 b
%{06%} c d e( d8[ c])
%{07%} b2\fermata \bar"" c4 g
%{08%} fis g g8[ f] g[ a]
%{09%} g4( e') e2\fermata
%{10%} d8[ c] b4 a2\fermata
%{11%} g8[ a] b[ g] d'2\fermata
%{12%} b8[ c] d4 e8[ fis] g4
%{13%} d8([ c16 b] c4) b2\fermata
}

basVoice =\relative c' {
%{01%} g4 c, c' b
%{02%} a as g2
%{03%} c,\bar""\break g'4 gis
%{04%} a2 e4 b8[ c]
%{05%} d2 d4 g8[ fis]
%{06%} e4 d c( d)
%{07%} g,2\bar"" c8[ d] e4
%{08%} d8[ e] f4 e8[ d] e[ fis]
%{09%} g4( gis) a2
%{10%} b4 e, a2
%{11%} e4 d8[ e] fis2
%{12%} g8[ a] b4 b8[ a] b[ c]
%{13%} d4( d,) g2
}