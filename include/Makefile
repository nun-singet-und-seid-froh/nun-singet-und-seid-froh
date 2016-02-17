SHELL=/bin/bash

DIRNAME=$(shell basename "$(PWD)")
LYS=score.ly voices.ily meta.ily lyrics.ily output.ily ../../../include/header.ily ../../../include/paper.ily ../../../include/sound.ily ../../../include/version.ily

all: standalone midi zip

standalone: $(DIRNAME).pdf

midi: $(DIRNAME).midi

zip: $(DIRNAME).zip

$(DIRNAME).zip: $(DIRNAME).pdf $(DIRNAME).midi
	zip "$(DIRNAME)" *.pdf *.midi

$(DIRNAME).pdf $(DIRNAME).midi: $(LYS)
	lilypond -dno-point-and-click -o "$(DIRNAME)" $<

clean:
	rm -f *.pdf
	rm -f *.midi
	rm -f *.zip

.PHONY: all clean midi standalone zip
