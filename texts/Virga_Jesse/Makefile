SHELL=/bin/bash

DIRNAME=$(shell basename "$(PWD)")

all: interlinear prose commentary pronunciation text

interlinear:
	python3 ../../tools/ilf2iltex.py interlinear-translation.iltex
	 
prose:
	sed -i 's/"\([^"].*\)"/\\enquote{\1}/g' prose-translation.md
	pandoc prose-translation.md -o prose-translation.tex --smart
	mv prose-translation.tex prose-translation.itex

commentary:
	sed -i 's/"\([^"].*\)"/\\enquote{\1}/g' commentary.md
	pandoc commentary.md -o commentary.tex --smart
	mv commentary.tex commentary.itex

pronunciation:
	pandoc pronunciation.md -o pronunciation.tex --smart
	mv pronunciation.tex pronunciation.itex

text:
	pdflatex text.tex

clean:
	rm -f *.itex
	rm -f *.aux
	rm -f *.log
	rm -f *.gz

refresh:
	rm -f *.pdf
	rm -f *.itex
	rm -f *.aux
	rm -f *.log
	rm -f *.gz

.PHONY: all clean
