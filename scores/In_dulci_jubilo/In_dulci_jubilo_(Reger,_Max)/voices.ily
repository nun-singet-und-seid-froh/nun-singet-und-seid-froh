%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSATTB/SSATTB/modern/voices.ily

% common settings of all voices
global = {
  \key a \major
  \time 3/2
  \partial 2
  \dynamicUp
}

% articulation, dynamics, fermata and breathing marks
sopIArt = { }

sopIIArt = { }

altArt = { }

tenArt = { }

basIArt = { }

basIIArt = { }


% the tunes
sopIVoice = <<
  \sopIArt
  \relative c''
    {  
      %00
      a2\f\<
      a1 a2\!
      cis1 d2
      e1( fis2
      e1) e2^\markup{ \italic più \dynamic f }
      a,1\< a2\!
      cis1 d2
      e1\>( fis2
      e1.\!) 
      e1^\markup{ \italic meno \dynamic f } fis2\<
      %10
      e1 d2\!
      cis1.\>
      a1 a2\<
      b1 b2\!
      cis1 b2
      a1\>( b2
      cis1\p) cis2\f\<
      e1 fis2
      e1 d2\!
      cis1.\>
      %20
      a1 a2\p\<
      b1 b2
      cis1 b2
      a1( b2\!
      cis1.\f\>)
      fis,1\p\< fis2
      gis1 gis2
      a1.(
      e'1.\ff)
      cis1\pp cis2
      %{30%}
      b1\> b2
      a1.\!\fermata\bar"|."
    }
>>

sopIIVoice = <<
  \sopIIArt
  \relative c''
    {  
      %{00%}
      a2
      fis( a) a
      g( fis) b
      b( cis a~
      a1) gis?2
      a4( fis e2) fis
      e( a) a
      a( gis a~
      a1 gis2)
      a( gis) fis
      b( a2.) gis4
      gis1.
      fis1 a2
      a1 gis?2
      gis( a) gis
      gis( fis gis
      e1) a2
      a( gis) a
      gis( a) a
      a1( gis2)
      fis1 a2
      a1 gis2
      e( fis) gis
      gis( fis gis
      a1 e2)
      fis( e) d
      e( gis) cis,
      a'( e fis
      a b cis)
      cis( gis) a
      b( fis) gis
      a1.\fermata
    }
>>

altVoice = <<
  \altArt
  \relative c'
    {
      %{00%}
      e2
      fis( e) fis
      g( cis,) fis
      e( a fis4 d
      e1) e2
      cis( e2.) d4
      cis2( a'4 gis) fis2
      e( gis fis
      b,1.)
      cis2( e2) e4( d)
      e2( a4 gis) fis2
      fis1( eis2)
      fis1 fis2
      b1 b2
      b( a) b
      cis,( fis d
      a'1) fis2
      e( gis) fis g( e) fis
      e1.
      d1 e2
      d2( fis) gis
      gis( fis) b
      cis,( a' gis
      e1 a2)
      fis1 b,2
      gis'2( fis) e
      cis1( d2
      e1.)
      e2( gis) fis
      fis( d) e
      e1.\fermata
    }
>>

tenVoice = <<
  \tenArt
  \relative c'
    {  
      cis2
      d( e) cis
      e( fis) d
      b( e a,~
      a1) b2
      a1 a2
      a1 d2
      e1( a,2
      e'1.)
      cis2( b) a
      b( cis) d
      gis,1( cis2)
      cis1 d2
      d1 e2
      e1 d2
      cis( d~ d
      cis1) cis2
      cis( b) fis'
      b,( a) d
      e2( cis1)
      fis e2
      d( fis) gis
      gis( fis) b
      cis,( d1
      a1.)
      a2( cis) d
      b( d) gis
      gis1( fis2
      e d cis)
      cis1 cis2
      d1 b2
      cis1.\fermata
    }
>>    

basIVoice = <<
  \basIArt
  \relative c'
    {  
      a2
      a1 a4( fis)
      cis'1 b2
      b( a4 cis2 b4
      cis1) b2
      fis4( a cis2) a
      a1 a4( b)
      cis2( b d
      b1.)
      R1.
      R1.
      R1.
      r1 a2
      g( a) b
      a2.( cis4) gis2
      a1( gis2
      e1) fis2
      a( b) d
      b( cis) a
      a1.
      a1 a2
      d1 b2
      b( a) gis
      a1( d2
      cis1.)
      a1 b2
      b1 cis2
      cis1( d2
      a gis a)
      gis1 fis2
      fis1 e2
      e1.\fermata
    }
>>

basIIVoice = <<
  \basIIArt
  \relative c
    { 
      a2
      d( cis) e
      d( ais) b
      gis( a d
      a1) e'2
      fis( cis) d
      a( fis') d
      cis( e d
      e1.)
      a2( cis,) d
      gis,( a) b
      cis1.
      fis1 d2
      g2( f) e
      a2( cis,) e
      fis( d b
      a1) fis'2
      cis( e) d
      e( cis) d
      a1( cis2)
      d1 cis2
      b( d) e
      cis( d) e
      fis( d b
      a1.)
      d2( cis) b
      e( d) cis
      fis( e d
      cis b a)
      cis( eis) fis
      d( b) cis
      a1.\fermata
      
    
    }
>>
 
