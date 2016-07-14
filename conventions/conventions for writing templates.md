# conventions concerning templates
This document describes the conventions existing templates are built upon and new templates shall be consistent with. Since we cannot pre-imagine all kinds of music sheets that will be part of the edition of *nun singet und seid froh* there might be cases of musical pieces for which these conventions turn out to be incomplete or even inappropriate. When you have the feeling that these conventions do not match your needs (or just your taste) in a particular case, open a new issue here on GitHub and toghether we can adapt the conventions.

When setting up a new template it is not very smart to write it from scratch. It's rahter wise to orientate yourself at existing templates similar to the template you want to create and work with copy-and-paste.

## common ground for all templates
### file structure
Every template consists of four files:
	+ *score.ly* - the "skeleton" in the very center of the publication; it is responsive for the generation of the score. It produces the PDF-file (it calls the staves, places the voices in them and positions the lyrics alongside) and the MIDI-file.
	+ *voices.ily* and *lyrics.ily* - these files deliver the "flesh" for the publication: the musical information and the text of the piece
	+ *meta.ily* - the meta-data of the piece are delivered with this file
	+ *output.ily* - this file is used to give the information concerning layout (staff-size, numer of systems etc.) and the midi information (in most cases just the tempo the midi shall be played)

You might wonder about the different file extensions. While *.ly* is the normal file-extension of lilypond files, we use *.ily* to mar lilypond files that will not be compiled, but included in the *score.ly* (the i in ".ily" stands for "include")

*meta.ily* and *output.ily* are identical in every template. So when you create a new template you are supposed to just copy these files from an existing template.

### variables
Every template uses the variable `global` which contains at least the `\key` and `\time` for the piece.

Variables consist of two parts: 1. the *voicename* 2. the function

The *voicename* consists of two parts: 1. the three-character *abbreviation* of the voice and - if necessary - the *number* of the voice in uppercase roman numerals.

The *abbreviations* for voices are:
+ dis - for discant
+ sop - for soprano
+ alt - for alto
+ ten - for tenor
+ bas - for bass

the names of the *functions* are:
+ Tune - for the tune
+ Art - for the articulation and dynamic marks, breathing signs, 
+ Voice - for the musical information (tune and art toghether)
+ Lyrics - the lyrics

So, for example the voice of Alto 2 would be called **altIIVoice**

### naming the output
####midi-output

### commenting

## basic types of templates: mensural / modern
(Up to today) there are two very basic types of templates: on the one hand the templates used for *mensural notation* and on the other hand the templates used for *modern notation*.

## mensural

### incipit


## modern

