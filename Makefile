all:
	latex lc
	bibtex lc
	latex lc
	latex lc
	dvips -t letter lc.dvi -o
	ps2pdf14 -dPDFSETTINGS=/prepress -dEmbedAllFonts=true lc.ps

clean:
	rm -f *.ps lc.pdf *.dvi *.bbl *.blg *.log *.aux

