This document describes how you can contribute to the project by creating a new piece.

0. Assure that your system fullfills the basic needs as described in *basic needs to create a piece.md*

1. At git create a new branch for the particular piece you want to add. The branch shall be named according to the following schema:

2. Create a new directory for your piece. The directory shall be named according to the following schema:

*scores/[root]/[title]/[title]_([composerSurName],_[composerPrename])* (where *root is the root of the piece as described , *title* ist the title of the piece)
Directoriy names shall not contain whitespaces, but _

So for example *Es ist ein Reis entpsrungen* by Alban Berg would be found in *scores/Es_ist_ein_Ros_entsprungen/Es_ist_ein_Reis_entsprungen_(Berg,_Alban)* 

2. Decide which template you have to use to produce the sheet. T you have to look. Voices that will be printed in one system are written in round brackets. So for example the template in *templates/SATB/(SA)(TB)* is a template for four voices (soprano, alto, tenor, bass) which are grouped in two systems - soprano and alto toghether in the first system and tenor and bass in the second system. Systems that are written together in one bracket are put in square brackets. So for example the templates in *templates/SSAATTBB/[SATB][SATB]* a double-choired piece for eight voices, where each choire is written in on bracket.

If the template you need does not exist yet, create it according to *conventions/conventions concerning templates.md*. If you are unable to create the template, we'll help you. Just start a new issue at github.

3. Copy the files of the template into the directory you created at step 2.

4. Enter the to 
