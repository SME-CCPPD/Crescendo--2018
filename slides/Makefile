#
# $Id: Makefile 7 2014-02-04 18:16:40Z nicb $
#
# You should set the INCLUDED_MAKE_PATH variable to wherever you have
# downloaded the templates module.
# You may find the template module cvs repository at the following CVSROOT:
# 
# :<mode>:<name>@cvs.miu-ft.org:/cvsroot/ec-stuff
#
# and the module name is 'templates'
#
INCLUDED_MAKE_PATH=../materiali
#
# there should be nothing to be changed below here
#

#
# $Id: Makefile 7 2014-02-04 18:16:40Z nicb $
#
TARGET=slides.pdf 

MODE=presentation
DVI=$(TARGET:.pdf=.dvi)
SRC=$(TARGET:.pdf=.tex)
AUX=$(TARGET:.pdf=.aux)
IMAGEDIR=../../../materials
BEAMERDIR=../../templates/beamer/sme-ccppd
TEXINPUTS=".:$(BEAMERDIR):$(IMAGEDIR):"
PDFLATEX=TEXINPUTS=$(TEXINPUTS) pdflatex

BIBTEX=bibtex
all: $(TARGET)

$(TARGET): $(SRC)

%.pdf:	%.tex
	$(PDFLATEX) '\newcommand{\mode}{$(MODE)}\input{$<}'
	$(RM) $@
#	$(BIBTEX) $* 
	$(PDFLATEX) '\newcommand{\mode}{$(MODE)}\input{$<}'
	$(RM) $@
	$(PDFLATEX) '\newcommand{\mode}{$(MODE)}\input{$<}'

distclean:
	$(RM) *~ *.aux *.dvi *.out *.log *.bbl *.blg *.toc *.nav *.snm

clean: distclean
	$(RM) $(TARGET)


.PHONY:	clean images

.SUFFIXES:	.pdf .ps .dvi .aux .tex
