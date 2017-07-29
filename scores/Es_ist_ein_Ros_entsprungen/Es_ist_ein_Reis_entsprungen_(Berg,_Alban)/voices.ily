%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATTB/modern/voices.ily

% common settings of all voices
global = {
  \key es \major
  \time 4/4  
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
%{01%} r4 c b c
%{02%} es2. d4
%{03%} c2 b4 c
%{04%} f es d d
%{05%} es1~
%{06%} es4 d g8 f e d
%{07%} d4  cis8 e a([ g]) d([ a])
%{08%} c4 bes? a r
%{09%} r2 r4 g'
%{10%} fis2( ges4) f
%{11%} g?( es2) c4
%{12%} bes r r2
%{13%} r4 g fis2~
%{14%} ges4 f? g f?
%{15%} f?2( e)
%{16%} R1
%{17%} r4 c' b c
%{18%} g'( es c) g
%{19%} as2( g)
%{20%} g4 g c f
%{21%} f8([ es f d] c4) b
%{22%} c c es as 
%{23%} as8([ g as f] es4) d
%{24%} e1\bar "|."
    }
>>

altVoice = <<
  \altArt
  \relative c''
    {
%{01%} r4 as g as
%{02%} g2. f4
%{03%} es( f) g g 
%{04%} as2( as8) as g f
%{05%} es2. r4
%{06%} r4 a g bes
%{07%} bes a a2~(
%{08%} a4 g) fis r
%{09%} r fis g2
%{10%} as?1
%{11%} g4( c2) as4
%{12%} g r r2
%{13%} r2 r4 es
%{14%} d? d es? des
%{15%} bes?2( c)
%{16%} R1 
%{17%} r4 as' g as
%{18%} g2( es~
%{19%} es4) g f( es)
%{20%} d g g as?
%{21%} as8([ g] as4~ as) g
%{22%} g f es d
%{23%} es8([ g c as] g[ a]) b4 
%{24%} c1
    }
>>

tenVoice = <<
  \tenArt
  \relative c'
    {  
%{01%} R1
%{02%} r4 c b c
%{03%} es2( d4) c
%{04%} c2( f4 g)
%{05%} g g as g
%{06%} fis4. e8 d4 g8 f
%{07%} e2( e8) d e f
%{08%} d2. r4 
%{09%} R1
%{10%} r4 es? d d 
%{11%} es2 f
%{12%} g4 r r fis,
%{13%} g2 as?
%{14%} as bes4( as)
%{15%} g1
%{16%} r4 c b c
%{17%} es2.( d4)
%{18%} c g fis g
%{19%} c1
%{20%} b4 d c2~
%{21%} c4. f8 es4 d
%{22%} c2. f4
%{23%} es4( d8) c c4( d8) g16([ f])
%{24%} e1
    }
>>    

basVoice = <<
  \basArt
  \relative c'
    {     
%{01%} R1
%{02%} r4 as g as
%{03%} g2( f4) es
%{04%} d( c b b')
%{05%} c c b c
%{06%} d4. c8 bes4( g)
%{07%} a4. g8 f4 f
%{08%} g g, d'\breathe d'
%{09%} es2. d4
%{10%} c( ces) bes2
%{11%} es,2( es'
%{12%} es,4)\breathe d es?2~
%{13%} es4 d c ces
%{14%} bes2( <<es, es'~>>
%{15%} es4 des c bes)
%{16%} as( as') g as
%{17%} g2.( f4)
%{18%} es es d es
%{19%} f1
%{20%} g4 f es d
%{21%} es( as8[ f] g4.) f8
%{22%} es4 d c b
%{23%} c( f, g) g'
%{24%} <<g1 c,1>>
    }
>>
 