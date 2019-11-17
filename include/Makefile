SHELL=/bin/bash

DIRNAME=$(shell basename "$(PWD)")
META=meta.ily
DEPLOY=../../../tools/deploy.sh
LYS=score.ly voices.ily $(META) lyrics.ily output.ily ../../../include/header.ily ../../../include/paper.ily ../../../include/sound.ily ../../../include/version.ily

all: $(DIRNAME).pdf $(DIRNAME).midi $(DIRNAME).zip

standalone: $(DIRNAME).pdf

midi: $(DIRNAME).midi

zip: $(DIRNAME).zip

deploy: $(DIRNAME).pdf $(DIRNAME).midi $(DIRNAME).zip
	$(DEPLOY)

$(DIRNAME).zip: $(DIRNAME).pdf $(DIRNAME).midi
	zip "$(DIRNAME)" *.pdf *.midi

$(DIRNAME).pdf $(DIRNAME).midi: $(LYS)
	lilypond -dno-point-and-click -o "$(DIRNAME)" $<

clean:
	rm -f *.pdf
	rm -f *.midi
	rm -f *.zip
	rm -f mediawiki.txt

.PHONY: all clean deploy midi standalone zip
