# File: Makefile
SHELL           = /bin/sh
PROJECT         = thesis
PS2PDF          = ps2pdf14
DVIPS_FLAGS     = -Pcmz -Pamz -tA4

.PHONY          = all clean

.PRECIOUS: $(PROJECT).ps

all: pdf

pdf: $(PROJECT).pdf

view: $(PROJECT).pdf
	acroread $(<)

%.pdf: %.ps
	$(PS2PDF) $(<) $(@)

%.ps: %.dvi
	dvips $(DVIPS_FLAGS) -o $(@) $(<)

%.dvi: %.tex Makefile *.tex *.sty
	latex $(<)
	-bibtex $(PROJECT)
	latex $(<)
	latex $(<)

force:
	$(MAKE) -W $(PROJECT).tex

clean:
	rm -f *.{out,brf,toc,lof,bbl,blg,bak,aux,dvi,ps,log} *~

dist: pdf clean
	( cd .. ; \
	rm -rf thesis-style_`date +%Y%m%d`.zip ; \
	zip -r thesis-style_`date +%Y%m%d`.zip thesis-style -x \*/.svn/\* \*/auto/\*   )
	cp thesis.pdf ../thesis-style_`date +%Y%m%d`.pdf