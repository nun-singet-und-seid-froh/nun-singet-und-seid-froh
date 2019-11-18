# conventions for writing an interlinear translation
## the concept of an interlinear translation
The problem with typesetting interlinear translations is the fact that different lines (which represent the different languages) do not necessarily consist of the same amount of words. For example, a declined word in latin can only be translated into english by using a preposition, e.g. "filius dei" may be translated as "son of god". In this example one would want the words to be aligned something like this:

```
filius  dei
 son   of god
```

## the ilf-standard
This is not easy with common text editors or writing programmes such as MS Word or others. There is a way to achieve this alignment in LaTex and also in html, but writing the tex-file or the html-file is quite cumbersome. That's why we defined a file format that can (comparetively) easy be entered, read and edited in a simple text editor. Files in this format can then automatically be preprocessed to a .tex or a .html file by a python script we have written. We call this format *.ilf* (which stands for "**i**nter**l**inear **f**ile").

### boxes
The ilf-standard uses a concept of *boxes* to achieve the desired alignment-behaviour of the interlinear translation: A box can contain multiple words, and the boxes of the different languages are aligned to each other:

```
 1st box | 2nd box 
-------------------
| filius |  dei   |
|  son   | of god |
-------------------
```

### syntax rules
An .ilf is a text file that fulfills the following syntactic rules:

0. Every .ilf starts with a yaml-header enclosed in lines that consist of dashes only. The yaml header contains at least the key `languages` that defines the languages together with their formatting. (For a definition of the yaml-format, have a look at wikipedia[https://en.wikipedia.org/wiki/YAML#Syntax])

1. Every .ilf has n *languages*.
2. Empty lines are ignored, so you can use them freely to structure the input to improve its readability.
3. Every ilf consists of *blocks*. A block represents a part of the original text with all its translations.
4. In every language, a box-break is defined by either a TAB, multiple (more than 1) spaces or by starting a new block. (The fact that TAB can be used as box-delimiter makes input easily readable when using a text-editor that works with so-called *elastic tabs*)
5. If the original text has linebreaks, every linebreak is marked by a trailing "#"-sign in the first row.

### formatting the output
The layout of every language can be defined in the yaml header. The following commands are possible and can be written in any order:

+ bold
+ italic
+ caps
+ uppercase
+ sans (for using a sans serif font)
+ tiny
+ small
+ large

### an example of the syntax
The following minimal example illustrates the syntactic rules described above. (Take note that `#` mark line breaks after `triumphantes` and `bethlehem. To the contrary, there is no such mark after `Fideles`, hence the block break after `Fidelis` in the interlinear file will not appear in the output.)

```
---
lannguages:
    Latin: uppercase 
    Grammar: small sans
    German: normal
---

Adeste           Fideles,
Imp. Pl. ADESSE  Nom. Pl. FIDELIS
Seid hier        die Treuen

laeti          triumphantes#
m. Pl. LAETUS  Pl. Part. Präs. Akt. TRIUMPHARE
freudig        triumphierend

venite,          venite           in    bethlehem!#
Imp. Pl. VENIRE  Imp. Pl. VENIRE  IN    Akk. Sgl. BETHLEHEM
kommt,           kommt            nach  Bethlehem!
```
