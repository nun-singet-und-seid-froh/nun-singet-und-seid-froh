#conventions for of writing an interlinear translation
## the concept of an interlinear translation
The problem with typesetting interlinear translations is the fact that different lines (which represent different languages) do not have the same amount of words. For example a declined word in latin can only be translated into english by using a preposition, e.g. "filius dei" may be translated as "son of god". In this example one would want the words to be aligned something like this:

```
filius  dei
 son   of god
```

## the ilf-standard
For that purpose we defined a file format that makes it to and align them correctly using LaTex, we called it *.ilf* (which stands for "**i**nter**l**inear **f**ile")

### boxes
The ilf-standard uses a concept of *boxes* to achieve the desired alignment-behaviour of the interlinear translation: A box can contain multiple words, and the boxes of the different languages are aligned to each other, so that the first box of each language will be aligned with the first box of the original language, the second box of each language will be aligned with the second box of the original language, and so on.

### rows
An ilf consists of a user-defined number of *rows*. Each row itself consists of boxes and represents a language. 

### syntactic rules
Ab .ilf is a .txt-file that fulfills the following syntactic rules:

1. It has n *rows* and consists of k\*(n+1) lines, (take notice that *lines* are the lines in the text-file while *rows* are the different languages of the translation) where k is the number of 
languages and can be arbitrarily chosen.
2. If l is the line number of the input file, every line l with l= x*(n+1)+1 
contains the original language, every line l with l = x*(n+1)+2 contains the 
first translation language, and so on up to every line l with 
l = (x+1)*(n+1), which has to be an empty line (be aware that this implies 
that the last line of the *.ilf must be empty.) We will call a number of lines 
from l ..l+(n+1) a "block" - a block represents a part of the original text with
all its translations, and the *.ilf consists of k blocks.
4. The first block will not be typeset and contains header-information for 
formatting each row in the LaTex-output
5. A box-break in a row is defined by either a TAB or by starting a new block. 
The fact that TAB can be used as box-delimiter makes input easily 
readable when using a text-editor that works with so-called *elastic tabs*
6. If the original text has linebreaks, every linebreak is marked by a 
 "#"-sign in the first row.

### formatting the output
The output of every line can be styled, by writing the style-information in the row that corresponds to the certain language in the header (i.e., as you might remember, the first block). The following commands are possible and can be written in any order:

+ bold
+ italic
+ caps
+ uppercase
+ sans (for using a sans serif font)
+ tiny
+ small
+ large

For formatting the output within the rows LaTex-markup commands can be used, for quotations the command \enquote{} shall be used.

### an illustration of the syntactic schema
The following minimal example illustrates the syntactic rules described above:

1. The first three lines define the markup for the different languages. (The grammar information of the latin original is treated as a separate language and printed small between the latin original and the german translation.) 
2. A line break is forced by the "#"-sign after "triumphantes".
3. The first two blocks consist each of one box, while the last block consists of multiple boxes which are separated with a TAB (in each row). In a text editor the last two blocks are shown correctly aligned if the editor is using *elastic tabs* - the separator between "laeti" and "triumphantes" is a tab as well as between "m. Pl. \emph{laetus} \enquote{freudig}" and "Pl. PPA \emph{triumphare} \enquote{triumphieren}" and "freudig" and "triumphierend"
4. The last line of the input is empty (because it is part of the last block).
```
bold 
small sans
italic sans

Adeste 
Imp. Pl. \emph{adesse} \enquote{dasein}
Seid hier

Fideles,
Nom. Pl. \emph{fidelis} \enquote{treu}
die Treuen

laeti  triumphantes#
m. Pl. \emph{laetus} \enquote{freudig}  Pl. PPA \emph{triumphare} \enquote{triumphieren}
freudig triumphierend

venite, venite  in  bethlehem!#
Imp.Pl. \emph{venire} \enquote{kommen}  Imp.Pl. \emph{venire} \enquote{kommen}  nach  Akk. Sgl. \emph{Bethlehem}
kommt,  kommt nach  Bethlehem!

```
