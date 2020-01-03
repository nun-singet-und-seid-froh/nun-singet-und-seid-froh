SHELL=/bin/bash

DIRNAME=$(shell basename "$(PWD)")
META=meta.ily
LYS=score.ly voices.ily $(META) lyrics.ily output.ily ../../../include/header.ily ../../../include/paper.ily ../../../include/sound.ily ../../../include/version.ily
NSUSF := $(shell git rev-parse --show-toplevel)
LILYHOST := $(shell command -v lilypond)
VOLUMESUFFIX := $(if $(and $(shell command -v getenforce),$(findstring Enforcing,$(shell getenforce))),:Z,)
LILYDOCKER := docker run -e LANG=C.UTF-8 -e LC_ALL=C.UTF-8 -v "$(NSUSF):$(NSUSF)$(VOLUMESUFFIX)" -w "$(PWD)" -i -t --rm docker.io/nunsingetundseidfroh/lilypond lilypond
LILY := $(or $(LILYHOST),$(LILYDOCKER))

all: combined midi zip 

combined: commentary sheet

sheet: $(DIRNAME)-sheet.pdf

commentary: $(DIRNAME)-commentary.pdf

midi: $(DIRNAME).midi

zip: $(DIRNAME).zip

combined: sheet commentary
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="$(DIRNAME).pdf" "$(DIRNAME)-sheet.pdf" "$(DIRNAME)-commentary.pdf"
	rm "$(DIRNAME)-sheet.pdf"
	rm "$(DIRNAME)-commentary.pdf"

$(DIRNAME)-sheet.pdf $(DIRNAME).midi: $(LYS)
	$(LILY) -dno-point-and-click -o "$(DIRNAME)" $<
	mv "$(DIRNAME)".pdf "$(DIRNAME)-sheet.pdf"

$(DIRNAME)-commentary.pdf:
	xelatex commentary.tex
	mv commentary.pdf "$(DIRNAME)-commentary.pdf"

$(DIRNAME).zip: $(DIRNAME).pdf $(DIRNAME).midi
	zip "$(DIRNAME)" *.pdf *.midi

$(DIRNAME)_(midis).zip: $(DIRNAME).pdf $(DIRNAME).midi
	zip "$(DIRNAME)" *.midi

clean:
	rm -f *.pdf
	rm -f *.midi
	rm -f *.zip
	rm -f *.aux


.PHONY: all clean commentary combined midi sheet  zip
