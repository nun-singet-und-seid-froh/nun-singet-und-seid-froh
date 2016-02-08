% this is standard version 1.0: SATB/polyphonic

% common settings of all voices
global = {
  \override Staff.BarLine.allow-span-bar = ##f
  \dynamicUp
  \autoBeamOff
  \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #50
  \key as \major
  \time 4/4 
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
%{01%} R1 \noBreak
%{02%} des2\pp c4 bes \noBreak
%{03%} as as g as \noBreak
%{04%} f2 f4 f^\markup{\italic {poco cresc.}} \noBreak
%{05%} es4. es8 as4. as8 \break\noPageBreak
%{06%} bes2.\> bes4\! \noBreak
%{07%} bes2.\fermata es,4^\markup{\italic cresc.} \noBreak
%{08%} c'4.\! c8 c8[( bes)] bes[( c)] \noBreak
%{09%} des4. des8 des4\< c4~ \noBreak
%{10%} c c\f f4. des8 \noBreak
%{11%} des4 as bes4. bes8 \break
%{12%} as2 des2^>~ \noBreak
%{13%} des4 des,\> ges f \noBreak
%{14%} es2.\p es4 \noBreak
%{15%} f2. f4 \noBreak
%{16%} f4. f8^\markup{\italic cresc.} bes4. bes8\noBreak
%{17%} es4. es8 \voiceOne f2 \oneVoice \break
%{18%} \voiceOne es2\f \voiceTwo es4^> \oneVoice  es^>
%{19%} es4.^> as,8 as4 g4
%{20%} as2 es'2\ff~
%{21%} es2 f4 des8.[( f16)]
%{22%} as4. es8 es4 es
%{23%} as,1\fermata\bar"|."
       \once \override Staff.BarLine.allow-span-bar = ##t
    }
>>

soptwoVoice = 
\relative c''{  
       %make notes smaller
       \override NoteHead.font-size = #-2       
       \override Voice.Stem.length = #5
       \override Flag.font-size = #-3
       
       %make voice effectively invisible
       \override Slur.transparent = ##t
       \override Stem.transparent = ##t
       \override Dots.transparent = ##t
       \override Beam.transparent = ##t
       \override NoteHead.transparent = ##t
       
       \voiceTwo
%{01%} s1  |
%{02%} des2 c4 bes  |
%{03%} as as g as  |
%{04%} f2 f4 f |
%{05%} es4. es8 as4( as8) as8 |
%{06%} bes2. bes4 |
%{07%} bes2. es,4 |
%{08%} c'4. c8 g8[( g)] g[( g)] |
%{09%} des'4. des8 des4 c4( |
%{10%} c) c f4. des8  |
%{11%} des4 as bes4. bes8 |
%{12%} as2 des2( |
%{13%} des4) des, ges f |
%{14%} es2( es4) es4 |
%{15%} f2( f4) f4 |
%{16%} f4( f8) f8 bes4. bes8 |
%{17%} es4( es8) es8 
        \override Slur.transparent = ##f
        \override Stem.transparent = ##f
        \override Dots.transparent = ##f
        \override Beam.transparent = ##f
        \override NoteHead.transparent = ##f
         
       f4. f8 |
%{18%} es2.
        %\oneVoice
        \override Slur.transparent = ##t
        \override Stem.transparent = ##t
        \override Dots.transparent = ##t
        \override Beam.transparent = ##t
        \override NoteHead.transparent = ##t
      
       es4 |
       
%{19%} bes4. as8 as4 g4 |
        
        \override Slur.transparent = ##f
        \override Stem.transparent = ##f
        \override Dots.transparent = ##f
        \override Beam.transparent = ##f
        \override NoteHead.transparent = ##f
        \voiceTwo 
        
%{20%} as4. as8
        %\oneVoice
        \override Slur.transparent = ##t
        \override Stem.transparent = ##t
        \override Dots.transparent = ##t
        \override Beam.transparent = ##t
        \override NoteHead.transparent = ##t
        
       es2( |
%{21%} des2 des4) des4 |
%{22%} as'4( as8) es8 es4 es |
%{23%} f1 |
}

altVoice = <<
  \altArt
  \relative c'
    {
%{01%} c2\pp des4 es
%{02%} \slurDashed f( as2) \slurSolid g8[( f)] 
%{03%} es4 c es4. es8
%{04%} es2 des4 des8^\markup{\italic {poco cresc.}}[( c)]
%{05%} bes4. bes8 as4 es'
%{06%} es\>( d4 d8[( c)]) d4\!
%{07%} es2.\fermata es4^\markup{\italic cresc.}
%{08%} as4. as8 as[( g)] g[( a)]
%{09%} bes4. bes8 bes4\< as?~
%{10%} as ges4\f f4. as8
%{11%} as4 f f ges8[( f)]
%{12%} es2 des4.^> es8
%{13%} f2\> des
%{14%} des2\p( c4) bes
%{15%} bes( a2) es'4
%{16%} des4. des8^\markup{\italic cresc.} f4 es
%{17%} es4. as8 as2
%{18%} bes2\f bes8[( as)] as[( g)]
%{19%} f[( g as)] des c4 bes
%{20%} as2 g8\ff[( es f g)]
%{21%} as2. as4
%{22%} as8[( bes)] c[( des)] c4 bes
%{23%} as1\fermata
 \once \override Staff.BarLine.allow-span-bar = ##t
    }
>>

alttwoVoice = \relative c' {
  
       \override NoteHead.font-size = #-2       
       \override Voice.Stem.length = #5
       \override Flag.font-size = #-3
       
       
       \override Slur.transparent = ##t
       \override Stem.transparent = ##t
       \override Dots.transparent = ##t
       \override Beam.transparent = ##t
       \override NoteHead.transparent = ##t
       \voiceTwo
       
%{01%} c2 des4 es |
%{02%} f as2 g8[( f)] |
%{03%} es4 c es4( es8) es8 |
%{04%} es2 des4 des8[( c)] |
%{05%} des4( des8) des8 as4 es' |
%{06%} es( d4 d8[( c)]) d4 |
%{07%} es2( es4) es4 |
%{08%} f4. as8 as[( g)] g[( a)] |
%{09%} g4. bes8 bes4 as?( |
%{10%} as) ges4 f4( f8) as8 |
%{11%} as4 f f ges8[( f)] |
%{12%} es2 des4( des8) es8 |
%{13%} f2 des |
%{14%} des2( c4) bes |
%{15%} bes( a2) es'4 |
%{16%} des4. des8 f4 es |
%{17%} es4( es8) as8
       \override Slur.transparent = ##f
       \override Stem.transparent = ##f
       \override Dots.transparent = ##f
       \override Beam.transparent = ##f
       \override NoteHead.transparent = ##f
       as4. as8 |
        \override Stem.transparent = ##t
       \override Dots.transparent = ##t
       \override Beam.transparent = ##t
       \override NoteHead.transparent = ##t
      
       \slurDashed

%{18%} bes2 (

       \override Slur.transparent = ##t 
       \voiceOne
       bes8[ as]) \voiceTwo\slurSolid as[( g)] |
%{19%} f[( g as)] des c4 bes |

       \override Slur.transparent = ##f
       \override Stem.transparent = ##f
       \override Dots.transparent = ##f
       \override Beam.transparent = ##f
       \override NoteHead.transparent = ##f
%{20%} as4. as8 
       \override Stem.transparent = ##t
       \override Dots.transparent = ##t
       \override Beam.transparent = ##t
       \override NoteHead.transparent = ##t
       \override Slur.transparent = ##t 

g8[( es f g] |
%{21%} as2 as4) as4 |
%{22%} as8[( bes)] c[( des)] c4 bes |
%{23%} f1 |
    }
    
tenVoice = <<
  \tenArt
  \relative c'
    {  
%{01%} as2\pp bes4 c
%{02%} \slurDashed des( f) \slurSolid es( des)
%{03%} c as bes es,8[( as)]
%{04%} as2 as4 bes8^\markup{\italic {poco cresc.}}[( as)]
%{05%} g4. g8 es4. es8
%{06%} as2.\> f8\![( bes)]
%{07%} as4( g2)\fermata r4
%{08%} r4 es^\markup{\italic cresc.} es'4. es8
%{09%} des[( es)] f[( g)] f4.\<( f,8)
%{10%} f4 as\f as4. f'8
%{11%} f4 des des es8[( des)]
%{12%} des4( c) as4.^> ges8
%{13%} f4( as\>) ges( as)
%{14%} bes2\p c
%{15%} c2. f,4
%{16%} bes4.^\markup{\italic cresc.} bes8 as4 g?8[( bes)]
%{17%} bes4 as8[( es')] \slurDashed es4( d) \slurSolid
%{18%} g4.\f( f8) es4 des?
%{19%} c8[( des es)] f es4 des
%{20%} c2 r4 es\ff(
%{21%} es8[( as g ges)]) f4( \times 2/3 { f8[( es)]) des }
%{22%} c8[( des)] es[( f)] es4 <<\voiceTwo des \new Voice {\voiceOne es }>> \oneVoice
%<<{\voiceThree es} {\voiceFour des}>> \oneVoice
%{23%} <es\fermata c>1
 \once \override Staff.BarLine.allow-span-bar = ##t
    }
>>    

tentwoVoice = \relative c'{  
       \override NoteHead.font-size = #-2       
       \override Voice.Stem.length = #5
       \override Flag.font-size = #-3
       
       \override Rest.transparent = ##t
       \override Slur.transparent = ##t
       \override Stem.transparent = ##t
       \override Dots.transparent = ##t
       \override Beam.transparent = ##t
       \override NoteHead.transparent = ##t
       
       \voiceTwo
       
%{01%} as2 bes4 c |
%{02%} des f es( des) |
%{03%} c as bes es,8[( as)] |
%{04%} as2 as4 bes8[( as)] |
%{05%} g4( g8) g8 es4( es8) es8 |
%{06%} as2( as4) f8[( bes)] |
%{07%} as4( g2) r4 |
%{08%} r es bes'4. es8  |
%{09%} des[( es)] f[( g)] f4( f8 f,8) |
%{10%} f4 as as4( as8) f'8 |
%{11%} f4 des des es8[( des)] |
%{12%} des4( c) as4( as8) ges8 |
%{13%} f4( as) ges( as) |
%{14%} bes2 c |
%{15%} c2( c4) f,4 |
%{16%} g4. bes8 as4 g?8[( bes)] |
%{17%} bes4 as8[( es')] es4 d |
%{18%} g4( g8 f8) 
       \slurDashed \override Slur.transparent = ##f
       es4( des?)  |
       \slurSolid \override Slur.transparent = ##t
%{19%} c8[( des es)] f es4 des |
%{20%} c2 r4 es( |
%{21%} es8[( as g ges)]) f4( \times 2/3 { f8[( es)]) des } |
%{22%} c8[( des)] es[( f)] es4  bes |
%{23%} es1 |
    }
    
basVoice = <<
  \basArt
  \relative c
    {	 
%{01%} as1\pp
%{02%} as2. bes4
%{03%} c f es8[( bes)] as4
%{04%} des2 des4. des8^\markup{\italic {poco cresc.}}
%{05%} des4. des8 c4. c8
%{06%} f2\> <<{bes,} {s4 s4\!} >>
%{07%} es2.\fermata es4^\markup{\italic cresc.} 
%{08%} as,8[( bes)] c[( as)] es'4 des8[( c)]
%{09%} bes[( c)] des[( e)] f2\<
%{10%} f4 es?\f des4. des8
%{11%} des'4. c8 bes[( as)] ges4
%{12%} ges2 f4.^> es8
%{13%} des4.( c8\>) bes4( as)
%{14%} ges2.\p ges'4
%{15%} f2. r4
%{16%} r4 bes,^\markup{\italic cresc.} des4. des8
%{17%} c4. c8 bes2
%{18%} \slurDashed es4\f( des') \slurSolid c4 bes
%{19%} as8[( bes c)] des es4 es,
%{20%} f8[( as g f)] es\ff[( f es des)]
%{21%} c[( as)] bes[( c)] des[( es)] f4
%{22%} es2. es4
%{23%} as1\fermata
    }
>>

bastwoVoice = \relative c
    {
       \override NoteHead.font-size = #-2       
       \override Voice.Stem.length = #6
       \override Flag.font-size = #-2
      
       \override Rest.transparent = ##t
       \override Slur.transparent = ##t
       \override Stem.transparent = ##t
       \override Dots.transparent = ##t
       \override Beam.transparent = ##t
       \override NoteHead.transparent = ##t
      
       \voiceOne       
%{01%} c1 |
       \voiceTwo
%{02%} as2( as4) bes4 |
%{03%} c f es8[( bes)] as4 |
%{04%} des2 des4( des8) des8 |
%{05%} des4( des8) des8 c4. c8 |
%{06%} f2 bes, |
%{07%} bes2. es4 |
%{08%} as,8[( bes)] c[( as)] es'4 des8[( c)] |
%{09%} bes[( c)] des[( e)] f2 |
%{10%} f4 es? bes4. des8 |
%{11%} bes'4. c8 bes[( as)] ges4 |
%{12%} ges2 as4. es8 |
%{13%} bes4.( c8) bes4( as) |
%{14%} des2. ges4 |
%{15%} des2.) r4 |
%{16%} r4 bes bes4. des8 |
%{17%} as4. c8
      
       \override Stem.transparent = ##f
       \override Dots.transparent = ##f
       \override NoteHead.transparent = ##f
       
       bes4. bes8 |
       
       \override Stem.transparent = ##t
       \override Dots.transparent = ##t
       \override NoteHead.transparent = ##t
       
%{18%} es4 des' c4 bes |
%{19%} as8[( bes c)] des es4 es, |
%{20%} f8[( as g f)] es[( f es des)] |
%{21%} c[( as)] bes[( c)] des[( es)] f4 |
%{22%} c2. es4 |
%{23%} as1 |
    }
 