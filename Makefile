# File: Makefile
SHELL           = /bin/bash
PROJECT         = thesis
DIRECTORY			  = -output-directory build

.PHONY          = all clean

.PRECIOUS: $(PROJECT).ps

all: pdf

pdf: $(PROJECT).pdf

view: $(PROJECT).pdf
	acroread $(<)

%.pdf: %.tex Makefile *.tex *.sty
	pdflatex $(DIRECTORY) $(<)
	-bibtex $(PROJECT)
	pdflatex $(DIRECTORY) $(<)
	pdflatex $(DIRECTORY) $(<)

force:
	$(MAKE) -W $(PROJECT).tex
