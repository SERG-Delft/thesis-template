# File: Makefile
SHELL           = /bin/bash
PROJECT         = thesis
DIRECTORY			  = -outdir=build

.PHONY          = all clean

.PRECIOUS: $(PROJECT).ps

all: pdf

pdf: $(PROJECT).pdf

view: $(PROJECT).pdf
	acroread $(<)

%.pdf: %.tex Makefile *.tex *.sty
	latexmk -bibtex -pdf $(DIRECTORY) $(<)

force:
	$(MAKE) -W $(PROJECT).tex
