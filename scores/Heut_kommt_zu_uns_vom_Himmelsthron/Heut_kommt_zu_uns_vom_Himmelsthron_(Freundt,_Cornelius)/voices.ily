%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/SATB/mensural/voices.ily

% common settings of all voices
global = {
%\override Staff.BarLine.allow-span-bar = ##f
  \key f \major
  \time 4/4 
  %\autoBeamOff
  \hide Staff.BarLine
}

%incipites

sopIncipit = {
  %\clef "mensural-c1"
  %\key f \major
  %\time 3/2
  %g'\breve g'1
}

altIncipit = {
  %\clef "mensural-c2"
  %\key f \major
  %\time 3/2
  %d'\breve d'1
}

tenIncipit = {
  %\clef "mensural-c4"
  %\key f \major
  %\time 3/2
  %bes\breve bes1
}

basIncipit = {
  %\clef "mensural-f"
  %\key f \major
  %\time 3/2
  %g\breve g1
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
%{01%} c2 a4 bes
%{02%} c4.\melisma bes8 a4\melismaEnd  c4
%%{03%} bes8\melisma[ a8] a8[ g16 f] g4\melismaEnd g 
bes8\melisma a8 a8 g16 f g4\melismaEnd g 
%{04%} f2 r
%{05%} R1*2
%{06%} 
%{07%} r4 g a4. g8\break
%{08%} a4 g a1
%{09%}   a2
%{10%} f4 a g4. g8 
%{11%} g4 a f g 
%{12%} e c' a4. a8 
%{13%} a g f4.\melisma e16[ d e8]\melismaEnd e 
%{14%} f4 a a g
%{15%} g g c a
%{16%} bes bes a8[ g] c2
%{17%}   b4 c g
%{18%} g f e\melisma a
%{19%} g8[ f] f2\melismaEnd e4
%{20%} f c' bes a
%{21%} f4.\melisma g8 a4\melismaEnd a
%%{22%} g8\melisma[ f] f2\melismaEnd e4
%{22%} g8\melisma f f2\melismaEnd e4
%{23%} f\breve
%{24%} \undo \hide Staff.BarLine \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
    }
>>

altVoice = <<
  \altArt
  \relative c'
    {
%{01%} r4 f2 d4
%%{02%} e f4.\melisma e8 e[ d16 c]
%{02%} e f4.\melisma e8 e d16 c
%{03%} d4\melismaEnd f f e
%{04%} f c f e8[ d]
%{05%} c4 f f\melisma e
%{06%} f\melismaEnd d c2
%{07%} r4 e f4. e8
%%{08%} f4 e c\melisma d8[ e]
%{08%} f4 e c\melisma d8 e
%{09%} f2\melismaEnd e
%{10%} d4 e e4. d8
%{11%} d4 f d d 
%{12%} c e f4. e8
%{13%} f4 c c4. c8
%{14%} a4 f' f d
%{15%} e e e f
%{16%} g2 e
%{17%} a4 g e e
%{18%} e c c f
%{19%} d2 c
%{20%} c4 a' g e
%%{21%} d4.\melisma c16[ d] e4\melismaEnd f
%{21%} d4.\melisma c16 d e4\melismaEnd f
%{22%} d2 c
%{23%} c4 c d d
%{24%} c1 \undo \hide Staff.BarLine
    }
>>

tenVoice = <<
  \tenArt
  \relative c'
    { 
%{01%} R1*2
%{02%} 
%{03%} r2 r4 c2
%{04%}  a4 bes c4\melisma
%{05%} c8[ bes a g] a4\melismaEnd c
%%{06%} bes8\melisma[ a] a g16[ f] g4\melismaEnd g
%{06%} bes8\melisma a a g16 f g4\melismaEnd g
%{07%} a c c4. c8 
%%{08%} c4 c a8\melisma[ f] f'4
%{08%} c4 c a8\melisma f f'4
%{09%} f8[ e] d2\melismaEnd cis4 
%{10%} d a c4. g8 
%{11%} c4 f, bes g
%{12%} a c d4. c8
%{13%} a4 a g g
%{14%} f c' d bes
%{15%} c c a d
%{16%} g,2 c
%{17%} d4 d c c
%{18%} b a g c
%{19%} bes4.\melisma a8 g4\melismaEnd g
%{20%} f a d c
%{21%} bes4.\melisma a16[ bes] c4\melismaEnd c 
%{22%} bes4.\melisma a8 g4\melismaEnd g
%{23%} f4 a a bes
%{24%} a1 \undo \hide Staff.BarLine   
    }
>>    

basVoice = <<
  \basArt
  \relative c
    {  
%{01%} R1*3
%{02%} 
%{03%} 
%{04%} f2 d4 c
%{05%} f4.\melisma e8 d4\melismaEnd c 
%%{06%} d8\melisma[ c] f4. e16[ d]\melismaEnd e4 
%{06%} d8\melisma c f4. e16 d\melismaEnd e4 
%{07%} f c f4. c8
%{08%} f4 c f4.\melisma e8
%{09%} d e f g a4\melismaEnd a
%{10%} d,2 r
%{11%} R1
%{12%} r4 a d4. a8  
%{13%} d4 f c c
%{14%} f, f' d g
%{15%} c,2 r
%{16%} r r4 c
%{17%} f g c, c
%{18%} e f c a
%{19%} bes2 c
%{20%} f,4 f' g a
%{21%} d,2 r4 a
%{22%} bes2 c
%{23%} f,4 f' d bes
%{24%} f1 \undo \hide Staff.BarLine
    }
>>