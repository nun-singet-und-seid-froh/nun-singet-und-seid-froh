%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/voices.ily

% common settings of all voices
global = {
  \override Staff.BarLine.allow-span-bar = ##f
  \override Hairpin.to-barline = ##f
  \override DynamicLineSpanner.staff-padding = #6
  \autoBeamOff
  \key c \major
  \time 3/4 
  \partial 4 
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
       \tempo "Con moto."
%{00%} c4\f
%{01%} c2 d4
%{02%} c2 c4
%{03%} a2 b?4
%{04%} c( d) e\>
%{05%} d2 g,8\f g
%{06%} a4. a8 b8 b
%{07%} c4 e2
%{08%} d d4\ff
%{09%} g e d8 d
%{10%} f4( d) c
%{11%} e f g,
%{12%} gis a b8[ c]
%{13%} c2( b4)
%{14%} c2 a4\rest
%{15%} g2\p\< a4
%{16%} b2\! d?4
%{17%} b2\> c4\p
%{18%} a8\rest c\f c4 c
%{19%} a( c) b8[ a]
%{20%} b4 e e
%{21%} f d e
%{22%} c d\ff dis
%{23%} e2 d?4
%{24%} b2 a4\rest
%{25%} g2\p\< a4 
%{26%} b2\! d4\>
%{27%} b2 c4\p
        \once \override Staff.BarLine.allow-span-bar = ##t
        \bar "||" \break
%{28%} r4 c4.\f c8
%{29%} a4( c) b8[ a]
%{30%} b4( e) e
%{31%} f( d) e
%{32%} e2 a,4
%{33%} a\<( b) b
%{34%} b\ff c a
%{35%} b2 a4\rest
%{36%} g2\p a4\<
%{37%} b2 d4\!
%{38%} b2\>^\markup{\italic rit.} c4\p 
        \once \override Staff.BarLine.allow-span-bar = ##t
        \bar "|."
    }
>>

altVoice = <<
  \altArt
  \relative c''
    {
%{00%} c4
%{01%} a2 bes8[ a]
%{02%} g2 g4
%{03%} f2 g4
%{04%} g( f) e8[ fis]
%{05%} g2 d8 g
%{06%} g4. f?8 f f
%{07%} e4 g( a)
%{08%} d,2 g4
%{09%} g a a8 g
%{10%} f4( g) g
%{11%} f f8[ e] d[ f]
%{12%} e[ d] c4 d8[ c]
%{13%} d2( e8[ f])
%{14%} e2 s4
%{15%} e2 fis4
%{16%} fis( g) a
%{17%} g2 g4
%{18%} s8 c8 c4 c
%{19%} a( c) b8[ a]
%{20%} b4 gis4 a
%{21%} a g? g
%{22%} f fis fis
%{23%} g( a) b8[ a]
%{24%} g2 s4
%{25%} g2 fis4 
%{26%} fis( g) a       
%{27%} g2 g4
       \once \override Staff.BarLine.allow-span-bar = ##t
%{28%} s4 c4. c8
%{29%} a4( c) b8[ a]
%{30%} b4( gis) a
%{31%} a( g?) g
%{32%} g2 f4
%{33%} fis( g) gis
%{34%} gis a fis
%{35%} g?2 s4
%{36%} g2 fis4
%{37%} fis( g) a
%{38%} g2 g4
      \once \override Staff.BarLine.allow-span-bar = ##t
}
>>

tenVoice = <<
  \tenArt
  \relative c'
    {  
%{00%} c4 | 
%{01%} f2 f4 |
%{02%} f2 e4 |
%{03%} c2 d4 |
%{04%} c4( a8[b]) c[ a] |
%{05%} d2 d8 d |
%{06%} c4. c8 d d |
%{07%} c4 c2 |
%{08%} b2 b4 |
%{09%} c cis d8 d |
%{10%} d([ c?] b4) c8[ b] |
%{11%} a4 a b |
%{12%} bes a as8[ g] |
%{13%} a?4.( as8 g4) |
%{14%} g2 s4 |
%{15%} c2 b4 |
%{16%} b( e) d |
%{17%} d2 e4 |
%{18%} s8 c8 c4 c |
%{19%} a( c) b8[ a] |
%{20%} b4 b8[ d] c[cis] |
%{21%} d[ c?] b4 c8[ b] |
%{22%} a4 a b |
%{23%} b2 d4 |
%{24%} d2 s4 |
%{25%} g,( b) c |
%{26%} b( e) d? |
%{27%} d2 e4
       \once \override Staff.BarLine.allow-span-bar = ##t
       
%{28%} s4 c4. c8 |
%{29%} a4( c) b8[ a] |
%{30%} b4.( d8) cis4 |
%{31%} d( b) bes |
%{32%} bes2 a4 |
%{33%} d2 e4 |
%{34%} e e d |
%{35%} d2 s4 |
%{36%} g,4( b) c |
%{37%} b( e) d? |
%{38%} d( e8[ f]) e4
       \once \override Staff.BarLine.allow-span-bar = ##t
 }
>>    

basVoice = <<
  \basArt
  \relative c
    {     
%{00%} c'4
%{01%} f,2 bes4
%{02%} c2 c4 
%{03%} f,2 f4
%{04%} e( d) c
%{05%} g'2 g8 g
%{06%} f?4. e8 d d
%{07%} a'4 g( fis)
%{08%} g2 g8[ f?]
%{09%} e4 a8[ g] f e
%{10%} d4( g8[ f]) e4
%{11%} f8[ e] d[ c] b4
%{12%} c f f8[ e]
%{13%} f2( g4)
%{14%} a,2 c4\rest
%{15%} e2 d4
%{16%} dis( e) f?
%{17%} g2 a,4
%{18%} c8\rest c'8 c4 c
%{19%} a( c) b8[ a]
%{20%} b4 e, a
%{21%} d, g8[ f] e4
%{22%} f d b
%{23%} e( fis) fis
%{24%} g2 c,4\rest
%{25%} g'( e) d
%{26%} dis( e) f?
%{27%} g2 c,4
       \once \override Staff.BarLine.allow-span-bar = ##f
%{28%} c4\rest c'4. c8
%{29%} a4( c) b8[ a]
%{30%} b4( e,) a
%{31%} d,( g) c,
%{32%} cis2 d4
%{33%} d( g) e
%{34%} a a d,
%{35%} g2 c4\rest
%{36%} g4( e) d
%{37%} dis( e) f?
%{38%} g2 c,4
 }
>>
 