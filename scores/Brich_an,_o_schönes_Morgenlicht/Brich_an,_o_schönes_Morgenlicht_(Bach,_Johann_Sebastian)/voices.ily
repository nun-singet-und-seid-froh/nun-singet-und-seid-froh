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
  \partial 4 
  
  \autoBeamOff
}


% articulation, dynamics, fermata and breathing marks
sopArt = { }

altArt = { }

tenArt = { }

basArt = { }


% the tunes
sopVoice = <<
  \sopArt
  \relative c''
    {   
      \repeat volta 2 {
%{00%}    g4 
%{01/05%} g a b8[ cis] d4
%{02/06%} d cis d\fermata b
%{03/07%} c b a b
%{04/08%} a2 g4
          \break
      }
       a4
%{09%} a b c c
%{10%} b8[ a] b4 a\fermata b
%{11%} b b c8[ d] e4
%{12%} e dis e\fermata\bar "" \break fis
%{13%} g b, c b
%{14%} a2 a4\fermata d
%{15%} e d c b8[ c]
%{16%} a2 g4\fermata\bar"|."
    }
>>

altVoice = <<
  \altArt
  \relative c'
    {
      \repeat volta 2 {
%{00%}	  d4
%{01/05%} e fis d8[ e] fis4
%{02/06%} e8[ fis] g4 fis4%{\fermata%} fis
%{03/07%} e d8[ e] fis4 g 
%{04/08%} g\melisma fis\melismaEnd d
      }
       fis8[ g]
%{09%} a4. gis8 a[ gis] a4
%{10%} a gis4 e%{\fermata%} e8[ dis]
%{11%} e4 e e8[ fis] g[ fis]
%{12%} fis[ g] a4 g4%{\fermata%} a
%{13%} g8[ a] b4 b8[ a] a[ g]
%{14%} g2 fis4%{\fermata%} g8[ fis]
%{15%} e4 fis g8[ a] d,4
%{16%} e\melisma d\melismaEnd d%{\fermata%}
    }
>>

tenVoice = <<
  \tenArt
  \relative c'
    {  
      \repeat volta 2 {
%{00%}	  b4
%{01/05%} b8[ c~] c d b[ a] a4
%{02/06%} a a a\fermata b8[ a]
%{03/07%} g[ a] b[ c] d4 d
%{04/08%} d4.\melisma c8\melismaEnd b4
      }
       d8[ e]
%{09%} fis[ e] d4 e fis
%{10%} b, e8[ d] c4\fermata
%{11%} g8[ a] b[ c] d[ e] c4 cis
%{12%} b b b\fermata d
%{13%} d g g,8[ a] b4
%{14%} e8[ d e cis] d4\fermata d
%{15%} d8[ c?] c[ b] b[ a] g4
%{16%} g8[\melisma fis16 e] fis4\melismaEnd b4\fermata
    }
>>    

basVoice = <<
  \basArt
  \relative c'
    { 
       \repeat volta 2 {
%{00%}	  g8[ fis]
%{01/05%} e4 d g fis8[ g]
%{02/06%} a4 a, d%{\fermata%} dis
%{03/07%} e8[ fis] g[ c,] c'[ b] a[ g] 
%{04/08%} d'4\melisma d,\melismaEnd g
      }
       d4 
%{09%} d'8[ c] b4 a dis,
%{10%} e e a,%{\fermata%} e'8[ fis]
%{11%} g4 gis a ais
%{12%} b b, e%{\fermata%} d'8[ c]
%{13%} b[ a] g[ fis] e[ fis] g[ e]
%{14%} cis[ b cis a] d4%{\fermata%} b 
%{15%} c? d e8[ fis] g4
%{16%} c,\melisma d\melismaEnd g,%{\fermata%}
    }
>>
 