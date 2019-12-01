%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This file is part of the edition www.nun-singet-und-seid-froh.info            %
% This file as well as the music or data represented in it is within the public domain. %
%      If you think that this file violates your copyright or other rights of you,      %
%               please contact us at mail@nun-singet-und-seid-froh.info                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% based on templates/SSATTB/SSATTB/mensural/lyrics.ily

% the lyrics within the staves

sopILyrics = \lyricmode {
  In dul -- ci ju -- bi -- lo, __
  nun sin -- get und seid froh! __
  Un -- sers Her -- zens Won -- ne
  liegt in prae -- se -- pi -- o __
  und leuch -- tet als die Son -- ne;
  ma -- tris in gre -- mi -- o __
  Al -- pha es et O, __ 
  Al -- pha es et O! 
}

sopIILyrics = { } 

altLyrics = \sopILyrics

tenLyrics = { } 

basILyrics = \lyricmode {
  In dul -- ci ju -- bi -- lo, __
  nun sin -- get und seid froh! __
  
  liegt in prae -- se -- pi -- o __
  und leucht -- tet als die Son -- ne;
  ma -- tris in gre -- mi -- o __
  Al -- pha es et O, __ 
  Al -- pha es et O! 
}

basIILyrics = \sopILyrics

stanzas = \markup {
  \vspace #6
  \abs-fontsize #12
  \fill-line {
    \center-column {
      \line {
        % left column of stanzas
        \column {
          \line {
            \column { "2." }
            \column {
              "O Jesu parvule!"
              "Nach dir ist mir so weh!"
              "Tröst’ mir mein Gemüte,"
              "o puer optime,"
              "durch alle deine Güte,"
              "o princeps gloriæ."
              "Trahe me post te,"
              "trahe me post te!"
            }
          }
        }

        %space between the two columns of stanzas
        \column {
          \line {
            \column {
              \hspace #5
            }
          }
        }

        %right column of stanzas
        \column {
          \line {
            \column { "3." }
            \column {
              "O Patris charitas!"
              "O nati lenitas!"
              "Wir wär’n all verloren"
              "per notra crimina,"
              "so hast du uns erworben"
              "cœlorum gaudia,"
              "o qualis gloria,"
              "o qualis gloria!"
            }
          }
        }

        %space between the two columns of stanzas
        \column {
          \line {
            \column {
              \hspace #5
            }
          }
        }

        %right column of stanzas
        \column {
          \line {
            \column { "4." }
            \column {
              "Ubi sunt gaudia,"
              "nirgend mehr denn da,"
              "da die Englein singen"
              "nova cantica,"
              "und da die Schellen klingen"
              "in Regis curia"
              "Eia, wär’n wir da!"
              "Eia, wär’n wir da!"
            }
          }
        }
      }
    }
  }
}
