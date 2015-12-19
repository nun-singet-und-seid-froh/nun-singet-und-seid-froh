SHELL=/bin/bash

DIRNAME=$(shell basename "$(PWD)")
LYS=score.ly voices.ily meta.ily lyrix.ily output.ily ../../../include/header.ily ../../../include/paper.ily ../../../include/sound.ily ../../../include/version.ily

all: standalone midi commented

commented: $(DIRNAME)-commented.pdf
	
standalone: $(DIRNAME).pdf

midi: $(DIRNAME).midi

lilypond-book common.itex: final.lytex ../common.itex particular.itex $(LYS)
	lilypond-book final.lytex --output lilypond-book

$(DIRNAME)-commented.pdf: lilypond-book common.itex
	cd lilypond-book; \
	xelatex final.tex; \
	cp final.pdf "../$(DIRNAME)-commented.pdf"; \
	cd ..

$(DIRNAME).pdf $(DIRNAME).midi: $(LYS)
	lilypond -dno-point-and-click -o "$(DIRNAME)" $<

clean:
	rm -f *.pdf
	rm -rf lilypond-book/
	rm -f *.midi

.PHONY: all clean commented midi standalone
