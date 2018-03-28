# File: Makefile
SHELL           = /bin/bash
PROJECT         = thesis

.PHONY          = all clean

.PRECIOUS: $(PROJECT).ps

all: pdf

pdf: $(PROJECT).pdf

%.pdf: %.tex Makefile *.tex *.sty
	latexmk -bibtex -pdf -interaction=nonstopmode -halt-on-error -outdir=build $(<)

force:
	$(MAKE) -W $(PROJECT).tex
