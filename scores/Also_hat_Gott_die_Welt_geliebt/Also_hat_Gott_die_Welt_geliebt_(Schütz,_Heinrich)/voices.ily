global = {
  \key g \major
  \time 4/2 
  \hide Staff.BarLine
}  

sopIncipit = {
  \clef "mensural-g"
  \key c \major
  \time 4/4
  d''1 e''1
}

sopVoice= {
  \relative c''
    { 
      \repeat volta 2
        {
          a1 b
          r2 a b cis4 d2	
             b4 c b a2 a4 a
          a a b2\bar"" \break g4 a2 g4
          fis2 d'4 d e2 c4 d2
             b4 c2 a4 b2 g4
          fis1 e\break
          \undo \hide Staff.BarLine
        }
      \repeat volta 2
        { 
          
          g4 a b2 b \autoBeamOff e,8 fis g a \hide Staff.BarLine
          b2 b a4\rest d c b2
              a8[\melisma g] a2\melismaEnd b d
          b4 c2 b4 a2 g   
           fis4 g a2 a fis8 a fis gis
          a2 a4 b c b a2
          gis e' cis4 d2 c4 
          b1 a\bar "||"
          \undo \hide Staff.BarLine

          \tempo \markup {
            \concat {
              (
                \smaller \general-align #Y #DOWN \note {2} #1
                " ~ "
                \smaller \general-align #Y #DOWN \note {4} #1
                " "
              )
            }
          }
          \time 6/2 \set Score.tempoHideNote = ##t \tempo 2 = 120

          e2 fis g a2. g4 fis2 \hide Staff.BarLine
          e e a b2. a4 g2
          fis fis b d2. c4 b2
          a a d e2. d4 c2 %\undo \hide Staff.BarLine
          b g fis e1.         
          \undo \hide Staff.BarLine
          \unset Score.tempoHideNode
          \tempo "Tempo I"
          \set Score.tempoHideNode = ##t
          \time 4/2 \tempo 4 = 120
        }
    
       {
         r2 d' e d4 c  \hide Staff.BarLine
         b2 g fis1
         gis\breve\fermata \undo \hide Staff.BarLine \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t  
       }
    } 
}

altIncipit = {
  \clef "mensural-c2"
  \time 4/4
  \key c \major
  a'1 a'1
}

altVoice = {
  \relative c'
    { 
      \repeat volta 2
      {
        e1 e 
        r2 e2 gis2 a4 fis2
           g4 g g fis2 fis4 fis
        e fis g2 e4 e2 e4
        dis2 a'4\rest g2 g4 a fis
        g2 e fis4 d e2.\melisma
           dis8 cis dis2\melismaEnd e1      
           \undo \hide Staff.BarLine
      }
      \repeat volta 2
      { 
        e4 e e2 e \autoBeamOff e8 dis e fis \hide Staff.BarLine
        g2 g4 d c b e b
        e1 dis4 fis2 g4
        g2 fis4 g2\melisma fis4\melismaEnd g2
        d4 b d2 d d8 a d d
        cis2 cis4 e e e e4.\melisma d8\melismaEnd
        e2 r4 e2 a,4 b e
        e1 cis
        \undo \hide Staff.BarLine
        
        \time 6/2
        { 
          cis2 d b d a d \hide Staff.BarLine
          cis cis d g2. fis4 e2
          d d g a2. a4 g2
          fis fis g g2. g4 c,2
          e e dis e1.
         \undo \hide Staff.BarLine
        }
      }
      \time 4/2{
        r2 g g g4 c, \hide Staff.BarLine
        e b e2.\melisma dis8[ cis] dis2\melismaEnd
        e\breve\fermata
        \undo \hide Staff.BarLine
      } 
    }
}


tenIIncipit = {
  \clef "mensural-c3"
  \key c \major
  d'1 cis'1
}

tenIVoice = {
  \relative c'
    {
      \repeat volta 2
      {
        a1 gis
        r2 e2. e'2 d4
        a g g g a2 d4 d
        e d d2 c4 c2 b4
        b2 g4 g c2 a4 b2
        e,4 a4\rest a2 g4 b4. e,8
        b'1 b
        \undo \hide Staff.BarLine
      }
      \repeat volta 2
      { 
        c4 c b2 b \autoBeamOff g8 fis e  a  \hide Staff.BarLine
        g2 g4 b c d b4\rest d, 
        g2 e4 a fis2 b4\rest b2 
        e4 a, g a2 b
        a4 g fis2 fis fis8 e d d
        a'2 a4 gis a b c a
        r e'2 b4 a a d, e2
        e4 e2 e1
        \undo \hide Staff.BarLine
      
      \time 6/2{
        r1. d2 fis2. g4 \hide Staff.BarLine
        a2. g4 fis2 e e r
        r1. d2 fis g
        d'2. c4 b2 c2. b4 a2
        b e, fis gis1.
        \undo \hide Staff.BarLine
      }
    }
      \time 4/2{
        r2 b c b4 a \hide Staff.BarLine
        g2 e fis1
        e\breve\fermata
        \undo \hide Staff.BarLine
      }
  }
}

tenIIIncipit = {
  \clef "mensural-c3"
  \key c \major
  f'1 e'1
}

tenIIVoice = {
  \relative c'
    {
      \repeat volta 2
      {  
        c1 b
        r2 c b a
        d4 d e d d2 r
        a4 a g d e2 e
        fis4 b4 b2 r4 e2 d
        e c4 d2 g,4 b2\melisma
        a8 g fis2\melismaEnd gis1
        \undo \hide Staff.BarLine
      }
      \repeat volta 2
      {  
        e4 a gis2 gis \autoBeamOff b8 b b d \hide Staff.BarLine
        d2 d4 g, a b e, g
        e1 b'4 d b g2
        g4 d'1 d2
        
        r1 r2 a4 b
        e,2 e r4 e a a
        b b gis2 a4 fis gis a2\melisma 
        gis8[ fis] gis2\melismaEnd a1
        \undo \hide Staff.BarLine
      
      \time 6/2 {
        R\breve.\hide Staff.BarLine
        r1. e2 g a
        b2. a4 g2 fis d r
        r1 g2 g2. g4 e2
        g b b b1.
        \undo \hide Staff.BarLine
      }
    }
    \time 4/2 {
      r2 g g g4 e \hide Staff.BarLine
      e2 b' b1
      b\breve\fermata
      \undo \hide Staff.BarLine
    }
  }  
}

basIncipit = {
  \clef "mensural-f"
  \time 4/4
  \key c \major
  d1 a1
}

basVoice = {
  \relative c
    {
      \repeat volta 2
      {
        a1 e'
        r2 a, e' a,4 d2 
        g,4 c g d'2 d4 d
        cis d g,2 c4 a2 e'4
        b2 r2 r1
        g'4 g a2 fis4 g2 e4
        b1 e
        \undo \hide Staff.BarLine
      }
     \repeat volta 2
      {
        c4 a e'2 e \autoBeamOff e8 b e d \hide Staff.BarLine
        g,2 g d'4\rest g,4 a b 
        c1 b
        e4 c d g, d'2 g,2
        d'4 e d2 d d8 c b b
        a2 a4 e' a g f2
        e1 a,4 d b a
        e'1 a,
        \undo \hide Staff.BarLine
        \time 6/2{
          a2 d e fis2. e4 d2 \hide Staff.BarLine
          a2 a r2
          r1.
          R\breve.
          r1 g2 c2. g4 a2
          e' e b e,1.
          \undo \hide Staff.BarLine
        }
      } 
      \time 4/2{
        r2 g c g4 a  \hide Staff.BarLine
        e'2 e b1
        e,\breve\fermata \undo \hide Staff.BarLine
      }
    }
}
