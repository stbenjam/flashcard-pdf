# Makefile for building flashcards.pdf

TEX=pdflatex
FILE=flashcards

all: $(FILE).pdf

$(FILE).pdf: $(FILE).tex
	$(TEX) $(FILE).tex
	$(TEX) $(FILE).tex  # Run twice for proper references

clean:
	rm -f $(FILE).aux $(FILE).log $(FILE).pdf $(FILE).out $(FILE).toc $(FILE).lof $(FILE).lot

.PHONY: all clean
