make: 
	make syllabus

clean:
	git clean -f -X

pristine: 
	git clean -f -x -d

syllabus:
	latexmk -pdf -g -jobname=syllabus-ch352s16 -outdir=build -pdflatex="pdflatex %O '\input{%S}'" syllabus.tex
	latexmk -pdf -c -jobname=syllabus-ch352s16 -outdir=build -pdflatex="pdflatex %O '\input{%S}'" syllabus.tex

