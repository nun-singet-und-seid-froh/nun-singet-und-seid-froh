SHELL=/bin/bash

DIRNAME=$(shell basename "$(PWD)")
LYS=score.ly voices.ily meta.ily lyrix.ily output.ily ../../../include/header.ily ../../../include/paper.ily ../../../include/sound.ily ../../../include/version.ily

all: standalone midi

standalone: $(DIRNAME).pdf

midi: $(DIRNAME).midi

$(DIRNAME).pdf $(DIRNAME).midi: $(LYS)
	lilypond -dno-point-and-click -o "$(DIRNAME)" $<

clean:
	rm -f *.pdf
	rm -f *.midi

.PHONY: all clean midi standalone
