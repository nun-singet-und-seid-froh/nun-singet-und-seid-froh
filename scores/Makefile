SHELL=/bin/bash

SUBDIRS=$(wildcard */.)

all: $(SUBDIRS)

$(SUBDIRS):
	cd "$@" && $(MAKE)

clean:
	$(foreach dir,$(SUBDIRS),$(MAKE) -C "$(dir)" clean;)

deploy:
	$(foreach dir,$(SUBDIRS),$(MAKE) -C "$(dir)" deploy;)

.PHONY: all clean deploy $(SUBDIRS)
