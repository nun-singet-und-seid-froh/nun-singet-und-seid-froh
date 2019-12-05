%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SATB/(SA)(TB)/modern/voices.ily

piuF = #(make-dynamic-script
            (markup #:normal-text #:italic "più"
                    #:dynamic "f"))

#(define (myDynamics dynamic)
    (if (equal? dynamic "piuF")
      0.9
      (default-dynamic-absolute-volume dynamic)))

% common settings of all voices
global = {
  \key c \major
  \time 4/4
  \partial 4
  \autoBeamOff
  \override DynamicLineSpanner.padding = 5
}

sopVoice = \relative c'' {
        \tempo "Bewegt."
        
%{00%}  g4\f\<
%{01%}  c c\! b8[ a] g4
%{02%}  a\> b c\< g \break
%{03%}  c d8\![ c] b4 a4\>
%{04%}  g2. g4\mf\<
%{05%}  c c8[ b] a4 c \break
%{06%}  f\f\> e d\piuF \< g,
%{07%}  a d c\! b
%{08%}  << c2. { s8\> s8 s4 s4\!\fermata } >> \bar "|." \once \override Staff.BarLine.allow-span-bar = ##t
}

altVoice = \relative c' {
        \autoBeamOff

%{00%}	d4
%{01%}	e g f e8[ d]
%{02%}  c4 f e d
%{03%}  c8[ e] e[ fis] g4 fis
%{04%}  d2. d4
%{05%}  e8[ f] g4 f g 
%{06%}  a a8[ g] fis4 g
%{07%}  f? a g g8[ f] 
%{08%}  e2.
}

tenVoice = \relative c' {
        \autoBeamOff

%{00%}  g4
%{01%}  g c d8[ c] b4
%{02%}  a g g g
%{03%}  e8[ a] b[ a] d4 d8[ c]
%{04%}  b2. g4
%{05%}  g c c8[ b] c4
%{06%}  c cis a c
%{07%}  c f e d
%{08%}  e2.
}

basVoice = \relative c {
%{00%}  b4
%{01%}  c e d e
%{02%}  f8[ e] d4 c b
%{03%}  a gis8[ a] b[ c] d4
%{04%}  g,2. b4
%{05%}  c8[ d] e4 f e
%{06%}  f8[ g] a4 d, e
%{07%}  f8[ e] d4 e8[ f] g4
%{08%}  <g c,>2.\fermata
}

