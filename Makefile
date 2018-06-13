PREFIX=$(HOME)

BIN = $(PREFIX)/bin
MAN = $(PREFIX)/man

install: bin man

bin: atest ucmp udiff uscale
	mkdir -p "$(BIN)"
	cp atest ucmp udiff uscale "$(BIN)"

man: atest.1
	mkdir -p   "$(MAN)/man1"
	cp atest.1 "$(MAN)/man1"

atest.1: atest.adoc
	a2x --doctype manpage --format manpage --no-xmllint $<

.PHONY: install
