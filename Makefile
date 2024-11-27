compile: slides paper
	cd slides && typst compile main.typ
	cd paper && xelatex main.tex && rm -rf *.aux *.log
