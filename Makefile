source = cv.tex

all:
	pdflatex $(source)
	pandoc $(source) -f latex -t gfm -s -o cv.md
clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.lot *.out *.bbl *.blg *.xmpi
	rm -f cv.pdf
	rm -f cv.md
