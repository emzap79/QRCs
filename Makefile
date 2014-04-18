tex:
	pdftex qrcTeX.tex
	xdg-open qrcTeX.pdf &

bash:
	pdftex qrcBash.tex
	xdg-open qrcBash.pdf &

latex:
	pdftex qrcLaTeX.tex
	xdg-open qrcLaTeX.pdf &

r:
	pdflatex qrcR.tex
	xdg-open qrcR.pdf &

git: 
	pdftex qrcGit.tex
	xdg-open qrcGit.pdf &

tig: 
	pdftex qrcTig.tex
	xdg-open qrcTig.pdf &

vim: 
	pdftex qrcVim.tex
	xdg-open qrcVim.pdf &

viml: 
	pdftex qrcVimLatex.tex
	xdg-open qrcVimLatex.pdf &

images:
	for datei in $$(ls *pnm | cut -d \. -f 1) ; do make $$datei.ps ; done

cleanall:
	rm -f *.aux *.toc *.bbl *.idx *.ilg *.ind *.log *.toc *.blg *.out *.glg *.glo *.gls *.ist *.maf *.mtc* *.gz *.backup *.lot *.lof *.pdf *.fls

clean:
	rm -f qrc*.aux qrc*.toc qrc*.bbl qrc*.idx qrc*.ilg qrc*.ind qrc*.log qrc*.toc qrc*.blg qrc*.out qrc*.glg qrc*.glo qrc*.gls qrc*.ist qrc*.maf qrc*.mtc qrc*.gz qrc*.backup qrc*.lot qrc*.lof qrc*.fls
