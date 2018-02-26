TARGETS=abstract.pdf
SOURCES=$(TARGETS:.pdf=.tex)
LATEX=pdflatex


all: $(TARGETS)

clean:
	$(RM) *.aux *.out *.log *.nav *.bbl *.blg *.dvi $(TARGETS)

.PHONY: clean

.SUFFIXES: .pdf .tex

%.pdf: %.tex
	$(LATEX) $<
	$(RM) $@
	$(LATEX) $<
	$(RM) $@
	$(LATEX) $<
