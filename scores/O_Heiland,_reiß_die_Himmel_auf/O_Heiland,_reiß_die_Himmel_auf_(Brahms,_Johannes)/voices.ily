% common settings of all voices
global = {
  \override Staff.BarLine.allow-span-bar = ##f
  \key es \major
  \time 3/2 
  \partial 2 
  \dynamicUp
  
  \autoBeamOff
}

% articulation, dynamics, fermata and breathing marks
sopArt = \relative s {  
       \tempo "Tempo giusto"
%{00%} s2
%{01%} s1.
%{02%} s2 s s\f
%{03%} s1 s2
%{04%} s1 s2
%{05%} s1 s2
%{06%} s1 s2
%{07%} s s s   
%{08%} s1 s2   
%{09%} s s1   
%{10%} s1 s2     
%{11%} s s s   
%{12%} s1 s2 
%{13%} s1 s2
%{14%} s1 s2
%{15%} s s s   
%{16%} s1 s2   
%{17%} s s1   
%{18%} s1\fermata 
\once \override Staff.BarLine.allow-span-bar = ##t \bar"||"\break\pageBreak
\set Timing.measurePosition = #(ly:make-moment 5/4)

% second stanza
       s4
%{19%} s1.
%{20%} s2 s2 s\f  
%{21%} s1 s2
%{22%} s1 s2
%{23%} s1 s2    
%{24%} s1 s2   
%{25%} s2 s s    
%{26%} s1 s2   
%{27%} s2 s1   
%{28%} s1 s2   
%{29%} s2 s s
%{30%} s1 s2
%{31%} s1 s2
%{32%} s1 s2
%{33%} s s s
%{34%} s1 s2
%{35%} s s1
%{36%} s2. \fermata
\once \override Staff.BarLine.allow-span-bar = ##t \bar"||" \break 
\set Timing.measurePosition = #(ly:make-moment 4/4)

% third stanza
       s2
%{37%} s4 s\f s s s s
%{38%} s s s s s s
%{39%} s2 s2 s4 s
%{40%} s2( \times 2/3 { s4 s ) s} \times 2/3 { s( s) s}
%{41%} s2 s4 s s s 
%{42%} s2 s s4 s
%{43%} s( s) s( s) s2
%{44%} s2 s4 s s2(
%{45%} \times 2/3{ s4 s) s } s2. s4
%{46%} s2 s4 s s s
%{47%} s2 s4 s s s
%{48%} s s s s s2
%{49%} s4 s s2. s4
%{50%} s s \times 2/3 { s4( s s} \times 2/3 { s s) s } 
%{51%} s2 s4 s s s
%{52%} s s s2 s 
%{53%} s s2. s4 
%{54%} s2.( s2 s4
%{55%} s) s4 \times 2/3 { s4( s) s } s2(
%{56%} \times 2/3 {as2 s4)} \times 2/3 { s4( s s) } s4\fermata 
\bar"|." \once \override Staff.BarLine.allow-span-bar = ##t \bar"||" \break 

% fourth stanza
\time 2/1
\set Timing.measurePosition = #(ly:make-moment 7/4)

       s4
%{57%} s1 s2 s4 s\mp
%{58%} s( s) s( s) s2. s4
%{59%} s2. s4 s( s) s( s)
%{60%} s2. s4 s2 s4 s\f
%{61%} s( s) s( s) s( s) s( s)
%{62%} s^\markup{\italic sim.}( s) s( s) s( s) s2
%{63%} s\p s4 s s( s) s( s)
%{64%} s2 s s s
%{65%} s^\markup{\italic sim.} s4( s) s2 s
%{66%} s\mf s4\cresc s s( s) s( s)
%{67%} s2\f s s4( s) s( s)
%{68%} s( s8[ s] s2 s s8[ s]) s4
%{69%} s2 s2\f^\markup{\italic sim.} s s
%{70%} s s s4\mp( s) s( s)
%{71%} s2. s4 s( s) s s
%{72%} s\<( s) s( s\!) s\>( s2) s4\!
%{73%} s2^\markup{\italic sim.} s s\fermata
\bar"|." \once \override Staff.BarLine.allow-span-bar = ##t \bar"||" \break

% fifth stanza
\time 4/4
\set Timing.measurePosition = #(ly:make-moment 2/4)
       s2
%{74%} s1
%{75%} s1
%{76%} 
%{77%} s2 s4\f( s)
%{78%} s2 s4( s)
%{79%} s2 s4( s)
%{80%} s2 s 
%{81%} s s
%{82%} s1
%{83%} s2 s4 s
%{84%} s2 s4( s)
%{85%} s2( s4) s
%{86%} s( s) s2
%{87%} s2 s4 s
%{88%} s2 s 
%{89%} s s 
%{90%} s s
%{91%} s4 s s2
%{92%} s4 s s( s)
%{93%} s( s) s( s)
%{94%} s( s) s2
%{95%} s1
%{96%} s1*2
%{97%} 
%{98%}  s2 s2(
%{99%}  s8[ s] s[ s] s[ s] s[ s]
%{100%} s[ s] s[ s] s[ s]) s4 
%{101%} s4 s( s8[ s] s[ s]
%{102%} s[ s s s] s[ s] s4
%{103%} s8[ s s s] s[ s] s4
%{104%} s8[ s s s] s[ s]) s4
%{105%} s4 s8\f s s4.( s8
%{106%} s[ s s s] s[ s]) s4
%{107%} s8 s[ s] s s( s4 s8

\time 3/2

%{108%} s[ s] s[ s] s1)
%{109%} s1
\bar"|." \once \override Staff.BarLine.allow-span-bar = ##t
}
    
altArt = \relative s {
%{00%} s2
%{01%} s1.
%{02%} s1.
%{03%} s2\f s s
%{04%} s( s) s
%{05%} s( s) s
%{06%} s s s
%{07%} s( s) s
%{08%} s( s) s2
%{09%} s s s  
%{10%} s s s
%{11%} s s s
%{12%} s s s
%{13%} s1.
%{14%} s2 s s
%{15%} s( s) s 
%{16%} s( s) s
%{17%} s s( s)
%{18%} s1\fermata
\once \override Staff.BarLine.allow-span-bar = ##t
\set Timing.measurePosition = #(ly:make-moment 5/4)

% second stanza
       s4
%{19%} s1.
%{20%} s4 s\f s s s s 
%{21%} s s s2. s4
%{22%} s( s) s( s) s s
%{23%} s( s) s8[( s] s4) s2
%{24%} s s s4 s
%{25%} s s s2 s
%{26%} s4( s s s s2
%{27%} s4) s s( s) s2
%{28%} s2( s4 s) s( s)
%{29%} s4 s s s s s
%{30%} s( s s s) s2
%{31%} s2 s4 s s s
%{32%} s s s s s2
%{33%} s4 s s( s) s2
%{34%} s4 s s( s2) s4
%{35%} s s s2 s
%{36%} s2.\fermata
\once \override Staff.BarLine.allow-span-bar = ##t 
\set Timing.measurePosition = #(ly:make-moment 4/4)

% third stanza
       s2
%{37%} s4 s\f s s s s4
%{38%} s4 s s s s s4
%{39%} s4 s s2( \times 2/3 { s4 s) s }
%{40%} s2( \times 2/3 { s2) s4 } \times 2/3 { s( s) s} 
%{41%} s2 s2 s4 s 
%{42%} s s s2 s4( s)
%{43%} s( s) s( s) s2
%{44%} s4 s s2( \times 2/3 { s4 s) s}
%{45%} \times 2/3 { s( s s) } s( s) s2
%{46%} s s s
%{47%} s4 s s s s s
%{48%} s( s s2) s
%{49%} s s4 s4 s2
%{50%} s4 s s s s2
%{51%} s4 s s s s s
%{52%} s2( \times 2/3 { s4 s s) } s4( s)
%{53%} s( s) s( s) s( s)
%{54%} \times 2/3 { s4( s s} s2) \times 2/3 { s4( s s) }
%{55%} s2 \times 2/3 { s2( s4) } \times 2/3 { s( s) s }
%{56%} \times 2/3 {c( s) s} \times 2/3{ s( s) s} s4\fermata 
\once \override Staff.BarLine.allow-span-bar = ##t

% fourth stanza
\time 2/1
\set Timing.measurePosition = #(ly:make-moment 7/4)

       s4
%{57%} s1 s2 s4 s\mp
%{58%} s( s) s( s) s2 s2
%{59%} s4( s) s( s) s2 s
%{60%} s s4 s\< s( s) s( s\!)
%{61%} s\f( s) s( s) s( s) s( s)
%{62%} s2^\markup{\italic sim.} s s s
%{63%} s s\p s s
%{64%} s4( s) s( s) s2 s
%{65%} s1^\markup{\italic sim.} s2 s4 s
%{66%} s( s2) s4 s( s2) s4
%{67%} s\f( s) s( s) s( s) s( s) 
%{68%} s1( s4 s) s2
%{69%} s s4\f( s^\markup{\italic sim.}) s2 s4( s)
%{70%} s2 s4( s) s2\mp( s4 s
%{71%} s s) s( s) s2 s4 s
%{72%} s2\< s\! s\> s\!
%{73%} s^\markup{\italic sim.} s s\fermata
\once \override Staff.BarLine.allow-span-bar = ##t

% fifth stanza
\time 4/4
\set Timing.measurePosition = #(ly:make-moment 2/4)
%{74%} s4\f( s)
%{75%} s2 s
%{76%} s4( s) s( s)
%{77%} s( s) s2
%{78%} s4( s) s( s)
%{79%} s2 s4( s)
%{80%} s4 s2 s4
%{81%} s2 s
%{82%} s s4 s
%{83%} s( s s s)

%{84%} s s2 s4 s s2 s4
%{85%} s( s) s s
%{86%} s( s s) s
%{87%} s s2 s4
%{88%} s( s) s( s)
%{89%} s2 s4 s
%{90%} s2.( s4)
%{91%} s2 s4( s)
%{92%} s( s) s( s)
%{93%} s( s) s2
%{94%} s4 s s s4(
%{95%} s s2 s4
%{96%} s2) s
%{97%} s2. s4

% Amen

%{98%}  s2( s8[ s] s[ s]
%{99%}  s[ s] s[ s] s[ s] s[ s]
%{100%} s[ s]) s4 s s(
%{101%} s8[ s s s] s[ s] s4
%{102%} s8[ s s s] s[ s s s]
%{103%} s[ s s s] s[ s]) s4
%{104%} s4 s8 s\f( s[ s s s]
%{105%} s[ s s s] s[ s s s])
%{106%} s4 s8 s s[( s s s]
%{107%} s[ s s s] s2 s2)
%{108%} s1 
\once \override Staff.BarLine.allow-span-bar = ##t
}

tenArt = \relative s {  
%{00%} s2\f
%{01%} s1 s2
%{02%} s1 s2
%{03%} s2( s) s
%{04%} s( s) s
%{05%} s1.
%{06%} s2 s s 
%{07%} s( s) s
%{08%} s( s) s
%{09%} s1 s2
%{10%} s s s
%{11%} s1 s2   
%{12%} s s1   
%{13%} s2 s1
%{14%} s2 s s   
%{15%} s s s   
%{16%} s1 s2 
%{17%} s s1 
%{18%} s1 \fermata
\once \override Staff.BarLine.allow-span-bar = ##t
\set Timing.measurePosition = #(ly:make-moment 5/4)

% second stanza
       s4
%{19%} s1.*3
%{20%}      
%{21%}    
%{22%} s4 s\f s s s s   
%{23%} s8([ s]) s4 s2 s4 s4
%{24%} s s s s s s 
%{25%} s( s s2) s4 s
%{26%} s s s s s s
%{27%} s2 s s4 s
%{28%} s s s s s s
%{29%} s2 s s4 s
%{30%} s s s s s2
%{31%} s4 s s2 s4 s
%{32%} s s s s s s
%{33%} s2 s4 s s s
%{34%} s1 s2
%{35%} s2. s2( s4) 
%{36%} s2.\fermata
\once \override Staff.BarLine.allow-span-bar = ##t \bar"||" 
\set Timing.measurePosition = #(ly:make-moment 4/4)
       s2\f

% third stanza

%{37%} s1 s2  
%{38%} s1 s2 
%{39%} s2( \times 2/3 { s4 s) s } s2(
%{10%} \times 2/3 { s4 s) s } s1
%{41%} s2 s s
%{42%} s s s 
%{43%} s1 s2
%{44%} s2( \times 2/3 { s4 s) s } s2(
%{45%} \times 2/3 { s4 s) s } s4( s) s( s)
%{46%} s1 s2
%{47%} s2 s s
%{48%} s1 s2
%{49%} s2( \times 2/3 { s4 s s } \times 2/3 { s s s}
%{50%} \times 2/3 { s s) s} s1
%{51%} s2 s s
%{52%} s s s
%{53%} s1 s2
%{54%} s2( \times 2/3 { s4 s s } \times 2/3 { s s s }
%{55%} \times 2/3 { s s s) } s1
%{56%} s1 s4\fermata 
\once \override Staff.BarLine.allow-span-bar = ##t \bar"||"

% fourth stanza
\time 2/1
\set Timing.measurePosition = #(ly:make-moment 7/4)

       s4\mp
%{57%} s( s) s( s) s2. s4
%{58%} s2. s4 s( s) s( s)
%{59%} s2. s4 s4 s s s
%{60%} s\<( s) s( s) s( s) s( s)
%{61%} s\f( s) s( s) s( s) s( s)
%{62%} s^\markup{\italic sim.}( s) s( s) s( s) s( s)
%{63%} s\p( s s s s2) s
%{64%} s s4 s s( s) s( s) 
%{65%} s^\markup{\italic sim.}( s s s s2\!) s2
%{66%} s1 s2\f s4 s
%{67%} s( s2) s4 s( s) s( s)
%{68%} s( s8[ s] s4. s8 s4. s8 s4) s4
%{69%} s2 s4\f( s) s2 s4( s)
%{70%} s2 s4( s) s\mp( s) s( s)
%{71%} s2 s4( s) s( s) s s
%{72%} s\<( s2) s4\! s s2\> s4\!
%{73%} s2^\markup{\italic sim.} s4( s) s2\fermata
\once \override Staff.BarLine.allow-span-bar = ##t \bar"||"

% fifth stanza
\time  4/4
\set Timing.measurePosition = #(ly:make-moment 2/4)

%{74%} s2
%{75%} s4 s\f s s 
%{76%} s2 s
%{77%} s s
%{78%} s4( s) s( s)
%{79%} s( s) s( s)
%{80%} s2 s
%{81%} s s4 s
%{82%} s( s s s
%{83%} s2.) s4
%{84%} s( s) s2
%{85%} s2( s)
%{86%} s4 s s s
%{87%} s( s) s( s)
%{88%} s( s) s( s)
%{89%} s( s) s( s)
%{90%} s( s) s( s)
%{91%} s2 s
%{92%} s4( s) s( s)
%{93%} s( s) s s
%{94%} s( s) s2
%{95%} s4( s) s s
%{96%} s2( s2
%{97%} s4 s2) s4
%{98%} s2. s4

% Amen

%{99%} s1
%{100%} s2( s8[ s] s[f]
%{101%} s[ s] s[ s] s[ s] s[ s]
%{102%} s[ s]) s4 s s(
%{103%} s8[ s s s] s[ s] s4
%{104%} s8[ s s s] s[ s s s]
%{105%} s[ s s s] s[ s]) s4
%{106%} s4 s8 s8( s[ s s s]
%{107%} s[ s s s] s[ s s s])


%{108%} s4 s8 s s2( s4 s)
%{109%} s1
\once \override Staff.BarLine.allow-span-bar = ##t
}
basArt = \relative s {   
%{00%} s2
%{01%} s1.
%{02%} s2\f s s
%{03%} s( s) s
%{04%} s( s) s
%{05%} s( s s)
%{06%} s s s
%{07%} s s s
%{08%} s s s
%{09%} s( s1)
%{10%} s2 s s
%{11%} s1 s2
%{12%} s2 s1
%{13%} s2 s1
%{14%} s1 s2
%{15%} s s s 
%{16%} s( s) s
%{17%} s s1
%{18%} << s1 s1\fermata >>
\once \override Staff.BarLine.allow-span-bar = ##t 
\set Timing.measurePosition = #(ly:make-moment 5/4)

       s4\f

% second stanza

%{19%} s s s s s s
%{20%} s2. s4 s s
%{21%} s2. s4 s4 s
%{22%} s2. s4 s s
%{23%} s2( s) s
%{24%} s4( s s2.) s4
%{25%} s2 s4 s s s
%{26%} s s s2 s
%{27%} s4 s s2. s4
%{28%} s s s2 s
%{29%} s s4( s s2)
%{30%} s2. s4 s s
%{31%} s1 s2
%{32%} s2. s4 s s
%{33%} s1 s2
%{34%} s1 s2
%{35%} s4( s s2) s2
%{36%} <<\voiceOne{f2. \fermata} \new Voice{ \voiceTwo s2.} >>  \oneVoice
\once \override Staff.BarLine.allow-span-bar = ##t 
\set Timing.measurePosition = #(ly:make-moment 4/4)
       
% third stanza
       s2
%{37%} s4 s s s s s
%{38%} s s s s s s
%{39%} s2 s s2(
%{40%} \times 2/3 { s4 s) s } \times 2/3 { s( s) s } s2
%{41%} s4 s s s s2
%{42%} s s4( s) s2
%{43%} s s4( s) s2
%{44%} s s s4 s
%{45%} s s s2. s4
%{46%} s s s s s( s
%{47%} s2) s s4 s
%{48%} s s s s s s
%{49%} s2 s4 s s s
%{50%} s2( s) s
%{51%} s s4 s4 s( s)
%{52%} s s s( s) s2
%{53%} s4( s s s) s2
%{54%} s( s) s
%{55%} s2( s \times 2/3 { s4 s) s}
%{56%} \times 2/3 { s2( s4 } \times 2/3 { s s) s } 
          << s s\fermata >>
       
       \once \override Staff.BarLine.allow-span-bar = ##t 

% fourth stanza
\time 2/1
\set Timing.measurePosition = #(ly:make-moment 7/4)
       s4
%{57%} s1 s2 s\mp
%{58%} s1 s 
%{59%} s s2.( s4)
%{60%} s1( s2) s
%{61%} s1.\f s2
%{62%} s s\p s s
%{63%} s1 s2( s)
%{64%} s2.( s4 s2) s2
%{65%} s1.^\markup{\italic sim.} s2
%{66%} s1\mf\cresc s2 s
%{67%} s2.\f s4 s( s) s( s)
%{68%} s2( s1) s2
%{69%} s1. s2
%{70%} s s s s
%{71%} s1 s
%{72%} s2( s) s1
%{73%} s1.^\markup{\italic sim.}\fermata
       \once \override Staff.BarLine.allow-span-bar = ##t

% fifth stanza
\time 4/4
\set Timing.measurePosition = #(ly:make-moment 2/4)
       s2
%{74%} s1*3
%{75%}
%{76%}
%{77%} s2 s4\f( s)
%{78%} s2 s4( s)
%{79%} s2 s4( s)
%{80%} s2 s
%{81%} s s
%{82%} s s
%{83%} s4 s s2
%{84%} s4( s) s2(
%{85%} s4) s s( s)
%{86%} s1*2
%{87%}
%{88%} s2 s4 s
%{89%} s2 s
%{90%} s s 
%{91%} s s4 s
%{92%} s2.( s4)
%{93%} s( s) s( s)
%{94%} s( s) s( s)
%{95%} s1
%{96%} s1
%{97%} s2. s4

% Amen

%{98%}  s2 s( 
%{99%}  s8[ s] s[ s] s[ s] s[ s]
%{100%} s[ s] s[ s] s[ s]) s4
%{101%} s4 s4( s8[ s s s]
%{102%} s[ s s s] s[ s] s4
%{103%} s8[ s s s] s[ s] s4
%{104%} s8[ s s s] s[ s]) s4
%{105%} s4 s8 s s4.( s8
%{106%} s[ s s s] s[ s]) s4

%{107%} s8 s8[ s] s s2( s)
%{108%} << s1 s1 >>
        \once \override Staff.BarLine.allow-span-bar = ##t
}
% the tunes
sopTune = \relative c' {  
       \tempo "Tempo giusto"
%{00%} r2
%{01%} R1.
%{02%} r2 r f\f
%{03%} as1 bes2
%{04%} c1 f,2
%{05%} as1 g2
%{06%} f1 r2
%{07%} c' c d   
%{08%} es1 as,2   
%{09%} c bes1   
%{10%} as1 r2     
%{11%} es' es es   
%{12%} es1 c2 
%{13%} f1 f2
%{14%} es1 r2
%{15%} c c bes   
%{16%} c1 as2   
%{17%} bes g1   
%{18%} f1\fermata 
\once \override Staff.BarLine.allow-span-bar = ##t \bar"||"\break\pageBreak
\set Timing.measurePosition = #(ly:make-moment 5/4)

% second stanza
       r4
%{19%} R1.
%{20%} r2 r2 f\f  
%{21%} as1 bes2
%{22%} c1 f,2
%{23%} as1 g2    
%{24%} f1 r2   
%{25%} c'2 c d    
%{26%} es1 as,2   
%{27%} c2 bes1   
%{28%} as1 r2   
%{29%} es'2 es es
%{30%} es1 c2
%{31%} f1 f2
%{32%} es1 r2
%{33%} c c bes
%{34%} c1 as2
%{35%} bes g1
%{36%} f2. \fermata
\once \override Staff.BarLine.allow-span-bar = ##t \bar"||" \break
\set Timing.measurePosition = #(ly:make-moment 4/4)
     
% third stanza
       r2
%{37%} r4 c'\staccato\f es\staccato c\staccato bes\staccato r
%{38%} r es\staccato g\staccato es\staccato c\staccato r
%{39%} r2 r2 r4 bes
%{40%} e2~( \times 2/3 { e4 d ) e} \times 2/3 { f( es) des}
%{41%} c2 r4 as c f 
%{42%} as2 as g4 f
%{43%} g( f) es( d) c2
%{44%} r2 r4 as d2~(
%{45%} \times 2/3{ d4 c) d } es2. d4
%{46%} c2 r4 c es c
%{47%} bes2 r4 es g es
%{48%} c c es c as2
%{49%} r4 c as'2. es4
%{50%} d bes \times 2/3 { g'4( f es} \times 2/3 { d es) d } 
%{51%} c2 r4 es, as c
%{52%} es c f2 f 
%{53%} c g'2. f4 
%{54%} f2.( es2 d4~
%{55%} d) g,4 \times 2/3 { f4( e) f } g2(
%{56%} \times 2/3 {as2 bes4)} \times 2/3 { c4( d e) } f4\fermata 
\bar"|." \once \override Staff.BarLine.allow-span-bar = ##t \bar"||" \break 

% fourth stanza

\time 2/1
\set Timing.measurePosition = #(ly:make-moment 7/4)
       r4\tempo "Adagio"
%{57%} r1 r2 r4 c^\markup{\dynamic mp \italic espress.} 
%{58%} bes( as) as( g) f2. f'4
%{59%} b,2. b4 c( c,) es( f)
%{60%} g2. r4 r2 r4 g'\f
%{61%} f( es) es( d) d( c) c( bes)
%{62%} des^\markup{\italic dim.}( c) c( bes) bes( as) ges2
%{63%} f\p r4 bes b( c) cis( d)
%{64%} es2 bes a as
%{65%} g^\markup{\italic dim.} ges4( as) bes2 r
%{66%} f f4 f f( e) g( c)
%{67%} c2\f d es4( d) c( bes)
%{68%} es( f8[ g] es2~ es~ es8[ d]) c4
%{69%} d2 d2^\markup{\dynamic f \italic dim.} des c
%{70%} ces bes c4\mp( des) des( c)
%{71%} b2. b4 c( bes) as g
%{72%} g\<( f) f( es\!) d\>( e2) f4
%{73%} e2\!^\markup{\italic dim.} f g\fermata
\bar"|." \once \override Staff.BarLine.allow-span-bar = ##t \bar"||" \break

% fifth stanza
\time 4/4 \partial 2 r2

%{74%} R1
%{75%} R1
%{76%} 
%{77%} r2 f4\f( g)
%{78%} as2 as4( bes)
%{79%} c2 f,4( g)
%{80%} as2 g 
%{81%} f r
%{82%} R1
%{83%} c'2 d4 d
%{84%} es2 as,4( bes)
%{85%} c2( des4) as
%{86%} bes( as) r2
%{87%} es'2 es4 es
%{88%} des2 c 
%{89%} f f 
%{90%} es r
%{91%} r4 c c2~
%{92%} c4 bes bes( c)
%{93%} c( des) c( bes)
%{94%} bes( as) g2
%{95%} f1
%{96%} R1*2
%{97%} 
%{98%}  r2 c'2\f\melisma
%{99%}  bes8[ as] g[ bes] as[ g] f[ as]
%{100%} g[ f] e[ g] f[ e]\melismaEnd f4 
%{101%} r4 es'~\melisma es8[ des] es[ ges]
%{102%} f[ es f es] des[ c] des4~
%{103%} des8[ c des c] bes[ as] bes4~
%{104%} bes8[ as bes as] g[ f]\melismaEnd g4
%{105%} r4 des'8\f c f4.\melisma es8 |
%{106%} des[ c bes as] g[ f]\melismaEnd f4
%{107%} r8 c'[ des] c g'\melisma f4 es8

\time 3/2

%{108%} des[ c] bes[ as] g1\melismaEnd
%{109%} f1
\bar"|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
altTune = \relative c' {
%{00%} r2
%{01%} R1.
%{02%} R1.
%{03%} c2\f es f
%{04%} g( as) c,
%{05%} es( d) e
%{06%} f r as
%{07%} g( es) f
%{08%} bes( g) as2~
%{09%} as as g  
%{10%} es as as~
%{11%} as g bes
%{12%} g as es
%{13%} as1.
%{14%} g2 g f
%{15%} es( as) f 
%{16%} g( e) c
%{17%} d f( e)
%{18%} f1\fermata
\once \override Staff.BarLine.allow-span-bar = ##t
\set Timing.measurePosition = #(ly:make-moment 5/4)

% second stanza
       r4
%{19%} R1.
%{20%} r4 c\f d es f c 
%{21%} es d es2. es4
%{22%} c( es) f( g) as f
%{23%} es( c) f8[( es] f4) c2
%{24%} r r r4 as'
%{25%} g f es2 f
%{26%} g4( as bes g as2~
%{27%} as4) as as( f) g2
%{28%} es2( f4 as) g( f)
%{29%} es4 es g as bes es,
%{30%} g( f es g) as2
%{31%} as2 r4 des bes as
%{32%} g as bes g es2
%{33%} r4 as f( es) d2
%{34%} r4 c e( g2) f4
%{35%} f es? d2 c
%{36%} c2.\fermata
\once \override Staff.BarLine.allow-span-bar = ##t 
\set Timing.measurePosition = #(ly:make-moment 4/4)
% third stanza
       r2
%{37%} r4 es\staccato\f c\staccato es\staccato g\staccato r4
%{38%} r4 g\staccato es\staccato g\staccato as\staccato r4
%{39%} r4 c, f2( \times 2/3 { f4 e) d }
%{40%} g2( \times 2/3 { c2) bes4 } \times 2/3 { as( c) bes} 
%{41%} as2 r2 r4 c, 
%{42%} f as c2 bes4( as)
%{43%} g( as) bes( g) c2
%{44%} r4 es, as2( \times 2/3 { as4 g) as}
%{45%} \times 2/3 { as( bes as) } g( f) g2
%{46%} as r r
%{47%} r4 g bes g es es
%{48%} g( es c2) es
%{49%} as r4 c,4 as'2~
%{50%} as4 f bes g bes2
%{51%} r4 c, es as c as
%{52%} as2( \times 2/3 { as4 g as) } bes4( as)
%{53%} g( f) e( g) c,( c')
%{54%} \times 2/3 { f,4( g as} g2) \times 2/3 { f4( g as) }
%{55%} d,2 \times 2/3 { c2( d4) } \times 2/3 { e( f) g }
%{56%} \times 2/3 {c,( f) f} \times 2/3{ f( bes) g} as4\fermata 
\once \override Staff.BarLine.allow-span-bar = ##t

% fourth stanza

\time 2/1
\set Timing.measurePosition = #(ly:make-moment 7/4)
       r4
%{57%} r1 r2 r4 as^\markup{\dynamic mp \italic espress.}
%{58%} g( f) f( es) c2 as'2
%{59%} g4( fis) g( f) es2 r
%{60%} r r4 g\< f( es) es( d)
%{61%} as'\f( g) g( as) as( g) g( f)
%{62%} e2^\markup{\italic dim.} e f r
%{63%} r bes a as
%{64%} as4( g) f( es) es2 f
%{65%} bes,1^\markup{\italic dim.} es2 es4 es
%{66%} es( d2) des4 c( c'2) e,4
%{67%} e\f( f) bes,( bes') bes( as) g( bes) 
%{68%} bes1~( bes4 g) a2
%{69%} a bes4^\markup{\dynamic f \italic dim.}( as) g2 as4( ges)
%{70%} f2 g?4( f) e2\mp( f4 es
%{71%} d as') g( f) g2 r4 c,
%{72%} c2\< c c\> b
%{73%} c\!^\markup{\italic dim.} d e\fermata
\once \override Staff.BarLine.allow-span-bar = ##t

% fifth stanza
\time 4/4 \partial 2

%{74%} c4\f( d)
%{75%} es2 f
%{76%} g4( f) e( c)
%{77%} f( es?) des2
%{78%} c4( d?) es( g)
%{79%} as2 c,4( e)
%{80%} f4 f2 e4
%{81%} f2 r
%{82%} c' bes4 bes
%{83%} as( c bes as)

%{84%} g g2 f4 es as2 f4
%{85%} g( as) r as
%{86%} g( as bes) c~
%{87%} c bes2 as4
%{88%} f( g) as( bes)
%{89%} g2 r4 as
%{90%} as2.( g4)
%{91%} f2 g4( as)
%{92%} as( f) f( d)
%{93%} e( f) des2
%{94%} c4 r r f4~(
%{95%} f bes2 as4
%{96%} g2) f
%{97%} g2. r4

% Amen

%{98%}  des'2\f\melisma c8[ bes] as[ c]
%{99%}  bes[ as] g[ bes] as[ g] f[ as]
%{100%} g[ f]\melismaEnd g4 r c\melisma
%{101%} des8[ c des c] bes[ a] bes4~
%{102%} bes8[ as bes as] g[ f g e]
%{103%} des[ c des c] e[ d]\melismaEnd e4
%{104%} r4 r8 f\f\melisma g[ a bes c] |
%{105%} bes[ as g f] e[ d e d]\melismaEnd
%{106%} c4 e8 f g[\melisma a bes c]
%{107%} bes[ as g f] f2 e2\melismaEnd
%{108%} c1 
\once \override Staff.BarLine.allow-span-bar = ##t
}

tenTune = \relative c {  
%{00%} f2\f
%{01%} as1 bes2
%{02%} c1 d2
%{03%} es2( c) bes
%{04%} g( f) r
%{05%} R1.
%{06%} c'2 c d 
%{07%} es( c) bes
%{08%} bes( es) c
%{09%} es1 r2
%{10%} c c c
%{11%} bes1 es2   
%{12%} es c1   
%{13%} c2 des1
%{14%} bes2 es des   
%{15%} c c f   
%{16%} c1 c2 
%{17%} f c1 
%{18%} c1 \fermata
\once \override Staff.BarLine.allow-span-bar = ##t
\set Timing.measurePosition = #(ly:make-moment 5/4)

% second stanza
       r4
%{19%} R1.*3
%{20%}      
%{21%}    
%{22%} r4 c\f d es f c   
%{23%} es8([ d]) es4 bes2 r4 bes4
%{24%} as g f f' c d 
%{25%} es( d c2) r4 bes
%{26%} g f es es' c d
%{27%} es2 r r4 es
%{28%} c bes as f' c d
%{29%} bes2 r r4 g'
%{30%} es d c c es2~
%{31%} es4 c des2 r4 des
%{32%} bes as g es' as, bes
%{33%} c2 r4 as' f d?
%{34%} g1 c,2
%{35%} f2. f2( e4) 
%{36%} f2.\fermata
\once \override Staff.BarLine.allow-span-bar = ##t \bar"||" 
\set Timing.measurePosition = #(ly:make-moment 4/4)
       
% third stanza
       f,2\f
%{37%} as1 bes2  
%{38%} c1 f,2 
%{39%} as2( \times 2/3 { as4 bes) as } g2(
%{10%} \times 2/3 { g4 as) g } f1~
%{41%} f2 r r
%{42%} c' c d 
%{43%} es1 as,2
%{44%} c2( \times 2/3 { c4 d) c } f2(
%{45%} \times 2/3 { f4 g) f } es4( d) c( bes)
%{46%} as1 r2
%{47%} es'2 es es
%{48%} es1 c2
%{49%} f2( \times 2/3 { f4 g f } \times 2/3 { es d c}
%{50%} \times 2/3 { bes c) d} es1~
%{51%} es2 r r
%{52%} c c bes
%{53%} c1 as2
%{54%} bes2( \times 2/3 { bes4 as g } \times 2/3 { as g f }
%{55%} \times 2/3 { g as bes) } g1
%{56%} f1~ f4\fermata 
\once \override Staff.BarLine.allow-span-bar = ##t \bar"||"

% fourth stanza

\time 2/1
\set Timing.measurePosition = #(ly:make-moment 7/4)
       as4^\markup{\dynamic mp \italic espress.}
%{57%} bes( c) c( d) es2. es,4
%{58%} bes'2. bes4 as( as') f( es)
%{59%} d2. r4 r4 c bes as
%{60%} g\<( as) bes( g) as( a) bes( b)
%{61%} b\f( c) c( f) f( es) es( des)
%{62%} bes^\markup{\italic dim.}( as) g( des') des( c) c( es)
%{63%} es\p( d f as ges2) f
%{64%} bes, r4 bes b( c) cis( d) 
%{65%} f^\markup{\italic dim.}( d es bes ges2\!) r2
%{66%} r1 g'2\f g4 g
%{67%} g( f2) f4 es( f) g( f)
%{68%} g( f8[ es] g4. f8 es4. d8 c4) f4
%{69%} fis2 g4^\markup{\dynamic f \italic dim.} ( f) e2 f4( es)
%{70%} d2 e4( des) c\mp( bes) as( f')
%{71%} f2 es4( d?) c( des) c bes
%{72%} bes\<( as2) f4\! r g2\> g4 
%{73%} g2\!^\markup{\italic dim.} as4( f) c'2\fermata
\once \override Staff.BarLine.allow-span-bar = ##t \bar"||"

% fifth stanza
\time  4/4 \partial 2

%{74%} r2
%{75%} r4 c\f bes as 
%{76%} g2 c
%{77%} as bes
%{78%} c4( f,) c'( des)
%{79%} es( e) f( bes,)
%{80%} c2 r
%{81%} c d4 d
%{82%} e( c d e
%{83%} f2.) f4
%{84%} bes,( c) des2
%{85%} es2( des)
%{86%} r4 c es c
%{87%} es( f) g( es)
%{88%} f( g) es( f)
%{89%} as,( bes) c( des)
%{90%} bes( es) des( c)
%{91%} es2 es
%{92%} es4( des) des( c)
%{93%} c( as) as bes
%{94%} c( des) bes2
%{95%} as4( bes) bes c
%{96%} d?2( f2~
%{97%} f4 e2) d4
%{98%} e2. r4

% Amen

%{99%} R1
%{100%} e,2\f\melisma f8[ g] as[f]
%{101%} g[ as] bes[ g] a[ bes] c[ a]
%{102%} bes[ c]\melismaEnd bes4 r f\melisma
%{103%} e8[ f e f] g[ as] g4~
%{104%} g8[ as g as] bes[ c bes des]
%{105%} e[ f e f] des[ es]\melismaEnd des4 |
%{106%} r4 r8 c8\melisma bes[ as g f]
%{107%} g[ as bes c] des[ es des es]\melismaEnd


%{108%} f4 des8 c des2( c4 bes)
%{109%} a1
\once \override Staff.BarLine.allow-span-bar = ##t
}
basTune = \relative c {   
%{00%} r2
%{01%} R1.
%{02%} f2\f as bes
%{03%} c( c,) d
%{04%} e( f) as
%{05%} c( bes c)
%{06%} f, as f
%{07%} c r r
%{08%} g' es f
%{09%} c( es1)
%{10%} as2 f as
%{11%} es1 g2
%{12%} c2 as1
%{13%} f2 des1
%{14%} es1 r2
%{15%} as f d? 
%{16%} e( c) f
%{17%} bes, c1
%{18%} << f1 f,1\fermata >>
\once \override Staff.BarLine.allow-span-bar = ##t 
\set Timing.measurePosition = #(ly:make-moment 5/4)

       f'4\f

% second stanza

%{19%} as bes c f, as g
%{20%} as2. g4 f as
%{21%} c2. c4 g4 g
%{22%} as2. g4 f as
%{23%} c,2( d) e
%{24%} f4( g as2.) f4
%{25%} c2 r4 c' bes bes,
%{26%} bes' as g2 f
%{27%} c4 c es2. es4
%{28%} as g f2 as
%{29%} g es4( f g2)
%{30%} c,2. c'4 as g
%{31%} f1 des2
%{32%} es2. es4 f g
%{33%} as1 bes2
%{34%} e,1 f2
%{35%} d4( c bes2) c2
%{36%} <<\voiceOne{f2. \fermata} \new Voice{ \voiceTwo f,2.} >>  \oneVoice
\once \override Staff.BarLine.allow-span-bar = ##t 
\set Timing.measurePosition = #(ly:make-moment 4/4)
       
% third stanza
       r2
%{37%} r4 as'\staccato as,\staccato c\staccato es\staccato r
%{38%} r c'\staccato c,\staccato es\staccato f\staccato r
%{39%} r2 f bes2(
%{40%} \times 2/3 { bes4 c) bes } \times 2/3 { bes( c) as } f2
%{41%} r4 as, c f as2
%{42%} as g4( f) bes2
%{43%} es, as4( f) as2
%{44%} r r r4 f
%{45%} bes bes es,2. es4
%{46%} es' c as as c( as
%{47%} g2) g c,4 c'
%{48%} es c as as c as
%{49%} f2 r4 f c' as
%{50%} bes2( es,) as
%{51%} bes r4 c4 as( es)
%{52%} c as' f( es) d2
%{53%} e4( d c e) f2
%{54%} d( es?) f
%{55%} bes,2( c \times 2/3 { c4 d) e}
%{56%} \times 2/3 { f2( g4 } \times 2/3 { as g) c } 
          << c f,\fermata >>
       
       \once \override Staff.BarLine.allow-span-bar = ##t 

% fourth stanza

\time 2/1
\set Timing.measurePosition = #(ly:make-moment 7/4)
       r4
%{57%} r1 r2 c^\markup{\dynamic mp \italic espress.} 
%{58%} es1 f 
%{59%} g c,2.( d4)
%{60%} es1\<( d2) g,
%{61%} c1.\f r2
%{62%} r g'\p as a
%{63%} bes1 es,2( f)
%{64%} g2.( ges4 f2) bes,2
%{65%} es1.^\markup{\italic dim.} r2
%{66%} bes'1 bes2 bes
%{67%} as2.\f as4 g( f) es( d)
%{68%} c2( c'1) f,2
%{69%} bes1. r2
%{70%} r g\mp g f
%{71%} g1 e
%{72%} f2\<( d\!) g1\>
%{73%} c,1.\!^\markup{\italic dim.}\fermata
       \once \override Staff.BarLine.allow-span-bar = ##t

% fifth stanza
\time 4/4 \partial 2 r2

%{74%} R1*3
%{75%}
%{76%}
%{77%} r2 c'4\f( bes)
%{78%} as2 as4( g)
%{79%} f2 c'4( bes)
%{80%} as2 bes
%{81%} c r
%{82%} r f,
%{83%} es4 es des2
%{84%} as'4( g) f2(
%{85%} es4) as g( as)
%{86%} R1*2
%{87%}
%{88%} des,2 des4 des
%{89%} es2 f
%{90%} c c 
%{91%} des r4 f
%{92%} f2.( g4)
%{93%} g( f) f( es)
%{94%} f( g) g( as)
%{95%} bes1
%{96%} c1
%{97%} c2. r4

% Amen

%{98%}  r2 f,\f\melisma 
%{99%}  g8[ as] bes[ g] as[ bes] c[ as]
%{100%} bes[ c] des[ bes] c[ des]\melismaEnd c4
%{101%} r4 des,4~\melisma des8[ es des bes]
%{102%} c[ d? c d] e[ f] e4~
%{103%} e8[ f e f] g[ as] g4~
%{104%} g8[ as g as] bes[ c]\melismaEnd bes4 |
%{105%} r4 e,8 f c4.\melisma d8
%{106%} e[ f g as] bes[ c]\melismaEnd bes4

%{107%} r8 f8[ e] f bes,2( c)
%{108%} << f1 f,1 >>
        \once \override Staff.BarLine.allow-span-bar = ##t
}
sopVoice = <<
   %\sopArt 
   \sopTune 
>>

altVoice = <<
  %\altArt
  \altTune
>>

tenVoice = <<
  %\tenArt
  \tenTune
>>

basVoice = <<
  %\basArt
  \basTune
>>
