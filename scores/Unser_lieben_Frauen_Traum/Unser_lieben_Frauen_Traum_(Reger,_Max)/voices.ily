%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSATBB/SSATBB/modern/voices.ily

#(define-markup-command (arrow-at-angle layout props angle-deg length fill)
   (number? number? boolean?)
   (let* (
           (PI-OVER-180 (/ (atan 1 1) 34))
           (degrees->radians (lambda (degrees) (* degrees PI-OVER-180)))
           (angle-rad (degrees->radians angle-deg))
           (target-x (* length (cos angle-rad)))
           (target-y (* length (sin angle-rad))))
     (interpret-markup layout props
       (markup
        #:translate (cons (/ target-x 2) (/ target-y 2))
        #:rotate angle-deg
        #:translate (cons (/ length -2) 0)
        #:concat (#:draw-line (cons length 0)
                   #:arrow-head X RIGHT fill)))))


splitStaffBarLineMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \combine
  \arrow-at-angle #45 #(sqrt 8) ##t
  \arrow-at-angle #-45 #(sqrt 8) ##t
}

splitStaffBarLine = {
  \once \override Staff.BarLine.stencil =
  #(lambda (grob)
     (ly:stencil-combine-at-edge
      (ly:bar-line::print grob)
      X RIGHT
      (grob-interpret-markup grob splitStaffBarLineMarkup)
      0))
  \break
}

convDownStaffBarLine = {
  \once \override Staff.BarLine.stencil =
  #(lambda (grob)
     (ly:stencil-combine-at-edge
      (ly:bar-line::print grob)
      X RIGHT
      (grob-interpret-markup grob #{
        \markup\with-dimensions #'(0 . 0) #'(0 . 0) {
          \translate #'(0 . -.13)\arrow-at-angle #-45 #(sqrt 8) ##t
        }#})
      0))
  \break
}

convUpStaffBarLine = {
  \once \override Staff.BarLine.stencil =
  #(lambda (grob)
     (ly:stencil-combine-at-edge
      (ly:bar-line::print grob)
      X RIGHT
      (grob-interpret-markup grob #{
        \markup\with-dimensions #'(0 . 0) #'(0 . 0) {
          \translate #'(0 . .14)\arrow-at-angle #45 #(sqrt 8) ##t
        }#})
      0))
  \break
}


global = {
  \key f \major
  \time 3/4
  \partial 4
  \autoBeamOff
  \dynamicUp
  \phrasingSlurDashed
  \override Staff.Hairpin #'minimum-length = #6
}

commonMarks =  {
  \repeat volta 2 {
    s4\p\< |
    s4. s8\! s4 |
    s2. |
    s2.\> |
    s2\! s4\pp |
    s2. |
    s2. |
    s4. s8 s4\> |
    s8. s16\pp s4 s4\mp\< |
    s2.|
    s2. |
    s4\!\mf s8 s8\> s4 |
    s2\! s4\< |
    s2\! s4\> |
    s4 s4\!\p s4 |
    s4. s16 s16\> s4 |
  }
  \alternative {
    { s2\! }
    { s2.\bar"||" }
  }
  \time 4/4
  s2\f s2 |
  s2 s4 s\< |
  s2 s\! |
  s1 |
  s2 s4 s\> |
  s4\! s s s\f\< |

  s2 s4 s4\! |
  s1 |
  s2\> s8\! s8\< s4 |
  s2 s4 s4\! |
  s2\ff s2\> |
  s2\! s2\mp |
  s2 s2\> |
  s1 |
  s1\!\pp
}

sopIMarks = {
}

sopIIMarks = {
}

altIMarks = {
}

altIIMarks = {
}

tenIMarks = {
}

tenIIMarks = {
}

basIMarks = {
}

basIIMarks = {
}


sopIVoice = \relative c'' {
  <<
    { \commonMarks }
    { \sopIMarks }
    \relative c' {
      \tempo "Zart bewegt" 4 = 104

      \repeat volta 2 {
        f4 |
        a4.( g8) a4 |
        c( d) a |
        g2~ g4 |
        f2 c'4 |
        d4.( c8) b4 |
        c4( a) b |
        a4.( g8) fis4 |
        g2 g4 |
        f!4( a) b|
        c( d) b |
        << e2( {s4 s8 s8} >> d4) |
        c2 c4 |
        b2 a4 |
        << g2 {s4 s4} >> a4 |
        d4. << b!8 {s16 s16} >> g4 |
      }
      \alternative {
        { f2 }
        { f2. }
      }\break
      \splitStaffBarLine


      g2 a4 f |
      e!2 r4 a |
      d2 d |
      e!2 cis4 cis |
      d2 d |
      g,2 r4 g |
      b2 c |
      f,2 g |
      a2
      b4 c |
      d2 d |
      es2 es |
      d2^\fermata e!
      c2 d |
      b4( a) g2 |
      f1^\fermata\bar "|."
    }

  >>
}

sopIIVoice = \relative c' {
  <<
    { \sopIIMarks }
    {
      s4 |
      s2.*16
      s2

      es2 es4 d4
      e!2 r4 a |
      a2 b |
      b2 f4 a |
      a2 b4( a) |
      g2 r4 g4 |
      g2 es |

      es2^> d4( e) |
      fis2 g4 g |
      a2 b |
      b2 a |
      d,2^\fermata c'2 |
      a2 a |
      b4( f d) e |
      f1^\fermata
    }
  >>
}

altVoice = \relative c' {
  <<
    { \commonMarks }
    { \altIMarks }
    {
      \repeat volta 2 {
        c4 |
        f4.( e8) f4 |
        f2 f4 |
        f2( e4) |
        d2 g4 |

        d2 g4 |
        g4( f) f |
        es2 d4 |
        d2 e!4 |
        d4( e) g |
        g4( a) g |

        g4.( a8 b!4) |
        a2 a4 |
        g4( f) f |
        d2 f4 |
        f4. f8 e4 |
      }
      \alternative {
        { c2 }
        { c2. }
      }
      bes2 c4 f |
      cis2 r4 e |
      d2 f |
      e!2 a4 g |
      f2 g4( f) |
      e2 r4 d |
      b'2 a |

      f2 b,4( g') |
      fis2 d4 c |
      f!2 f |
      es2 c' |
      b2^\fermata g2 |
      g2 f |
      f2. e4 |
      c1^\fermata
    }
  >>
}


tenVoice = \relative c' {
  <<
    { \commonMarks }
    { \tenIMarks }
    {
      \repeat volta 2{
        a4 |
        a4.(  b8) a4 |
        f'4( d) d |
        g,4.( a8  b4) |
        a2 c4 |

        a2 d4 |
        c2 b4 |
        c2 a4 |
        b2 c4 |
        a4( c) d |
        c4( f) d |

        e2( g4) |
        e2 d4 |
        d2 c4 |
        b2 d4 |
        d4. d8 b!4 |
      }
      \alternative {
        { a2 }
        { a2. }
      }

      g2 c8[ a] d4 |
      cis2 r4 cis |
      a2 d |
      g2 f4 e |
      d2 d |
      c2 r4 d |
      es2 es |

      es4^>( a,) d2 |
      c2 d4 g, |
      d'2 d |
      g2 es |
      b2 c |
      c2 f4( d) |
      d2. c4 |
      c1
    }
  >>
}

basIVoice = \relative c' {
  <<
    { \basIMarks }
    {
      s4 |
      s2.*16
      s2

      bes2 a4 a |
      a2 r4 a |
      f2 f |
      b2 a4 a |
      d2 g, |
      g2 r4 b4 |
      g2 a |


      a2^> b |
      c2 g4 c |
      c2 b |
      d2 c |
      g2 g |
      a2 a |
      g4( a) b2 |
      a1
    }
  >>
}


basIIVoice = \relative c {
  <<
    { \commonMarks }
    { \basIIMarks }
    {
      \repeat volta 2 {
        f4 |
        d2 d4|
        a4( bes) b |
        c2( cis4) |
        d2 e4 |

        fis2 g4 |
        es4( f!) d |
        c4( a) d |
        g,2 c4 |
        d4( c) g' |
        e( f) g |

        c2( g4) |
        a2 f4 |
        g( d) f |
        g2 d4 | 
        
        b'!4.\( g8\) c,4 |
      }
      \alternative {
        { f2 }
        { f2. }
      }
      \splitStaffBarLine

      es2 c4 d |
      a2 r4 a'4 |
      f2 b, |
      g2 a4 a |
      b2 g |
      c2 r4 g' |
      es2 c |

      d^> b |
      a2 g4 es' |
      d2 g |
      c,2 fis |
      g2 e! |
      f2 d |
      g,2 c |
      << f,1 f' >>
    }
  >>
}
