SHELL=/bin/bash

SUBDIRS=$(wildcard */.)

all: $(SUBDIRS)

$(SUBDIRS):
	cd "$@" && $(MAKE)

clean:
	$(foreach dir,$(SUBDIRS),$(MAKE) -C "$(dir)" clean;)

.PHONY: all clean $(SUBDIRS)
