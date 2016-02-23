

global = {
  \key f \major
  \time 4/4 

}


sopVoice = {
  \relative c''
    {
      \hide Staff.BarLine
      a2 c4. bes8
      a4 g bes( a bes) g a2 
      R1
      r2 \bar"" \break g2\rest
      R1
      r4 a a a
      bes2. a4
      g f e2
      r4 c' c c
      d2. c4
      bes a g2
      a4.( bes8) c2( c8 a d2 c8 bes)
      
      \time 3/4 
        a2 r4 \break
        c2 c4 c2 c4
        d2 c4 
        bes a2
      
      \time 4/4
      g2\bar ""\break r
      R1
      r2 r4 a
      a4. c8 bes4 a
      bes g a\breve r2
      r4 a2 g4
      g1
      r4 bes2 g4
      g a a g( g8 f f4. e16 d) e4
      f4 a bes bes
      
      \time 3/4
        a2 r4\break
        c2 c4
        c2 c4
        a2 r4
        a c d
        c c4. c8
        a4 d2
        c2.
      
      \time 4/4
      a2 a2. g4 f f8( g a bes c4) c bes( bes8 a a2) g4
      a2 r4 bes4
      bes2 g4 a2 g4 f4.(g8 a4) g f a
      c2 bes4 d2 c4 bes bes
      
      \time 3/4
        a2 r4 \break
        g2 g4
        a2 c4
        bes2 bes4
        bes a2
        g r4\break
        g a a 
        bes2 bes4
        g4.( a8) bes4
        a( g4. f8 f2 e4)
       
        f2.\fermata \bar "|."  \undo \hide Staff.BarLine
    } 
}

altVoice = {
  \relative c'
    {
      \hide Staff.BarLine
      f2 a4. g8
      f4 e d( c d) e f2
      r4 f f4. e8
      d4 c f,( c' f) e8( d) c2
      r4 f f f
      g2. f4
      e
      c c2
      r4 a' a a
      f bes bes( a8 g f4) f e2
      r4 f4.( g8) a4( a8 g f2.) 
      
      %\time 3/4
        f2 r4  
        a2 g4
        a2 g4
        bes2 a4
        f f2
      
      %\time 4/4
      e2 r
      R1
      r2 r4 f
      f4. e8 g4 c,
      f e f2
      f e4 e
      f4 f2
      d4
      f f2 d4
      e e8 e d4 d
      e f2 e4
      e c2 c4
      d d c2( 
      c4) f f f
      
      %\time 3/4
        f2 r4
        a2 g4
        a2 g4
        f2 r4
        f g bes
        a g4. a8
        f4 bes2
        a2.
      
      %\time 4/  
      f2 f2.
         e4 d f(
      f8 g a2) g4
      f c d2
      e4. e8 f4 d
      g2 e4 f2
       e4 d d
      c g a f'
      e4.( f8 g4) f
      f2. f4
      
      %\time 3/4
        f2 r4
        e2 e4
        f2 f4
        g2 g4
        f f2
        e2 r4
        e f f 
        f2 f4
        es2 d8( es)
        f4( e! d4
        d4 c2)
        c2.\fermata \undo \hide Staff.BarLine
    }
}

tenVoice = {
  \relative c'
    {
      \hide Staff.BarLine
      R1*3
      r4 a c4. bes8
      a4 g bes( a bes) g a2
      r4 c d c
      es2( d4.) c8
      bes4 a g2
      f f4 f
      bes4.( a8 g4) a
      bes
      f c' c8( bes)
      a( g f g a bes c4
      f4. e8 d2)

      %\time 3/4
        c r4 
        f2 e4
        f2 c4
        bes8( c d e f4)
        bes, f f
        
      %\time 4/4
        c'2 r4 a
        a4. c8 bes4 a
        bes g a c
        c4. e8 d4 f
        d c c c(
        c8 a) d2 c4
        d d2 bes4
        c c2 bes4
        c4 c8 c c4
        bes
        c d2 c4
        c a f g(
        a bes g) g
        f c' d d

      %\time 3/4
        c2 r4
        f2 e4
        f2 c4
        d2 r4
        d c bes 
        f' c4. c8
        d4 bes2
        f'2.
        
      %\time 4/4
      c2 c2.
       c4 a d
      c f4.( e8 d4
      d8 c f4. e8 d4
      d) c d2
      r4 bes c2.
      c4 a a(
      a8 bes) c4( d) d
      c a g bes
      bes c d d

      %\time 3/4
      c2 r4
      c2 c4
      c2 c4
      d2 es4
      d c2
      c r4
      c c d d2 d4
      bes2 bes4
      c4.( bes8 a4
      bes g2)
      f2.\fermata      \undo \hide Staff.BarLine

    }
}

basVoice = {
  \relative c
    {
      \hide Staff.BarLine
      R1*3 
      r4 f4 a4. g8
      f4 e d( c d) e f2
      r4 f d f
      es4.( f8 g4) d
      e! f c2
      R1*3
      r2 r4 f4
      f8( e d c bes c d e
      
      %\time 3/4
        f4) f, r
        R2.*4
        
      %\time 4/4  
      r2 r4 f'4
      f4. c8 g'4 f
      d e f f
      f4. c8 g'4 f
      bes, c f f
      f( e8 d a'4) a
      d,4 d2 g4
      f4 f2 g4
      c,4 c8 c g'4 g
      c, bes2 c4
      c f2 e4
      d( bes) c2
      f,4 f' bes, bes 
      
      %\time 3/4
        f'2 r4
        R2.*7
        
      %\time 4/4
      f2 f2.
       c4 d4.( e8)
      f2. g4
      a2( bes)
      a d,4 g
      g2 c,4 f2 
       c4 d4.( e8
      f4) e d2
      r2 r4 bes2
      f'4 bes, bes
      
      %\time 3/4
        f'2 r4
        c2 c4 f2 a4
        g2 es4
        bes f'2
        c r4
        c f d
        bes2 bes4
        es4.( f8) g4
        f( c d
        bes c2)
        
        f2.\fermata
      \undo \hide Staff.BarLine
    }
}
 