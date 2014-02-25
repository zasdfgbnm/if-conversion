OUT = main

all: $(OUT) clean

$(OUT):  $(wildcard *.tex *.bib *.cls *.eps)
	xelatex $@
	bibtex $@
	xelatex $@
	xelatex $@

clean:
	rm -f *~ *.aux *.dvi *.bbl *.blg *.log *.out 
