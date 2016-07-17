SHELL=/bin/bash

DIRNAME=$(shell basename "$(PWD)")
META=meta.ily
LYS=score.ly voices.ily $(META) lyrics.ily output.ily ../../../include/header.ily ../../../include/paper.ily ../../../include/sound.ily ../../../include/version.ily

all: standalone midi zip mediawiki

standalone: $(DIRNAME).pdf

midi: $(DIRNAME).midi

zip: $(DIRNAME).zip

mediawiki: mediawiki.txt

mediawiki.txt: $(META) ../../../tools/meta.ily2MediaWiki.py
	../../../tools/meta.ily2MediaWiki.py

$(DIRNAME).zip: $(DIRNAME).pdf $(DIRNAME).midi
	zip "$(DIRNAME)" *.pdf *.midi

$(DIRNAME).pdf $(DIRNAME).midi: $(LYS)
	lilypond -dno-point-and-click -o "$(DIRNAME)" $<

clean:
	rm -f *.pdf
	rm -f *.midi
	rm -f *.zip
	rm -f mediawiki.txt

.PHONY: all clean midi standalone zip
