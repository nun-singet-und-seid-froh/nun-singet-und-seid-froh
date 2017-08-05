%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/voices.ily

% common settings of all voices
global = {
  \key c \major
  \time 4/4 
  \partial 4
}

sopVoice = {
  \relative c'
    {
      \repeat volta 2
        {
          e4 
          a g f e
          d2 e4\fermata b'
          c c b8(c16 d16) b4\noBreak
          a2.\once \override Staff.BarLine.allow-span-bar = ##t  \break
        }
      c4 
      b8(a) g4 a b  
      c2 c4 \fermata g
      a g
      f8(e) f4 e2. \fermata c'4
      b8(c) d4 c b
      a2 b4 \fermata e,
      f e d g8(f)
      e2( e4) \fermata \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
} 

altVoice = {
  \relative c'
    {
      \repeat volta 2
      {
        e8( d) 
        c([ d]) d( e) e[( d)] d( c)
        c4( b8[ a]) b4 e
        e a a gis
        e2.
      }
      a8 g 
      f4 e8 d c4 f
      f e8 d e4 e
      f bes,8(a) a( g) a(d) cis2. d4
      d g g8 fis g4
      g(fis) g g
      c,8 d c4 f, d'
      d(c b) \fermata
    }
}


tenVoice = {
  \relative c'
    {
      \repeat volta 2
      {
        gis4 
        a b c8(d) g,4
        a8(gis) a4 gis \fermata gis
        a8 b c4 f e8 d
        e2. 
      }
      e4
      d8[ c] b4 a8([g]) f([g ])
      a4(g8 f) g4 \fermata c
      c8([ d]) e4 d8([ cis]) d([gis,]) 
      a2. \fermata a4
      g8 a b4 c8 d e4
      e(d) d c\fermata
      c8(b) b(a) a4 g8a
      b4(a gis) \fermata
    }
}

basVoice = {
  \relative c
    {
      \repeat volta 2
      {
        e4
        f g a8 b c4
        f,2 e4 e
        a8[ g] f e d b e4
        a,2.
      }
      a'4 
      d, e f8e d4
      a8(b c4) c c
      f8([ e]) d([ cis]) d4 d
      a2. fis'4
      g4. fis8 e4. d8
      c(a d4) g, c8 b
      a b c4 c8[ b] b a
      gis4( a e')
    }
}