# This was borrowed from http://bradthemad.org/tech/notes/fortune_makefile.php
# However, his solution of using ls -l brought an error and had to be changed.

# TODO: check the man pages for egrep and sed, to really understand what's going on
POSSIBLE += $(shell ls | egrep -v '\.dat|README|makefile' | sed -e 's/$$/.dat/g')

all: ${POSSIBLE}

# TODO: Investigate this syntax for makefiles, it seems very powerful.
%.dat: %
	@strfile $< $@
