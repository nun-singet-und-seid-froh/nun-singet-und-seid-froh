SHELL=/bin/bash

DIRNAME=$(shell basename "$(PWD)")
META=meta.ily
LYS=score.ly voices.ily $(META) lyrics.ily output.ily ../../../include/header.ily ../../../include/paper.ily ../../../include/sound.ily ../../../include/version.ily
NSUSF := $(shell git rev-parse --show-toplevel)
LILYHOST := $(shell command -v lilypond)
VOLUMESUFFIX := $(if $(and $(shell command -v getenforce),$(findstring Enforcing,$(shell getenforce))),:Z,)
LILYDOCKER := docker run -e LANG=C.UTF-8 -e LC_ALL=C.UTF-8 -v "$(NSUSF):$(NSUSF)$(VOLUMESUFFIX)" -w "$(PWD)" --rm docker.io/nunsingetundseidfroh/lilypond lilypond
LILY := $(or $(LILYHOST),$(LILYDOCKER))

all: standalone midi zip

standalone: $(DIRNAME).pdf

midi: $(DIRNAME).midi

zip: $(DIRNAME).zip

$(DIRNAME).zip: $(DIRNAME).pdf $(DIRNAME).midi
	zip "$(DIRNAME)" *.pdf *.midi

$(DIRNAME)_(midis).zip: $(DIRNAME).pdf $(DIRNAME).midi
	zip "$(DIRNAME)" *.midi

$(DIRNAME).pdf $(DIRNAME).midi: $(LYS)
	$(LILY) -dno-point-and-click -o "$(DIRNAME)" $<

clean:
	rm -f *.pdf
	rm -f *.midi
	rm -f *.zip
	rm -f mediawiki.txt

.PHONY: all clean midi standalone zip
