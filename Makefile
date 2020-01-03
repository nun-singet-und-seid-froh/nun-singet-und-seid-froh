SHELL=/bin/bash

GLOBAL_ILYS=include/header.ily include/paper.ily include/sound.ily include/version.ily
SCORE_DIRS=$(wildcard scores/*/*/)

NSUSF := $(shell git rev-parse --show-toplevel)
LILYHOST := $(shell command -v lilypond)
VOLUMESUFFIX := $(if $(and $(shell command -v getenforce),$(findstring Enforcing,$(shell getenforce))),:Z,)
LILYDOCKER := docker run -e LANG=C.UTF-8 -e LC_ALL=C.UTF-8 -v "$(NSUSF):$(NSUSF)$(VOLUMESUFFIX)" -w "$(PWD)" -i -t --rm docker.io/nunsingetundseidfroh/lilypond lilypond
LILY := $(or $(LILYHOST),$(LILYDOCKER))


define make-score-target
  
  $1_score: $1_pdf

  $1_pdf: $1/voices.ily $1/lyrics.ily $1/output.ily $1/meta.ily
	DIRNAME=$(shell echo ${$1/(/\(} | cut -f3 -d/)
	$(LILY) -dno-point-and-click -o "$(DIRNAME)"

  .PHONY: all clean midi standalone zip
endef

$(foreach score_dir, $(SCORE_DIRS), $(eval $(call make-score-target, $(score_dir))))
