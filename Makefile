TEX=lualatex -interaction=nonstopmode -interaction=batchmode
REPSOURCE=$(HOME)/CoursSVT
REPPROGRESSION=$(REPSOURCE)/Progression
REPPROGRAMMATION=$(REPSOURCE)/Programmation
REPDROPBOX=$(HOME)/Dropbox/Enseignement/Année_courante

all: Progression.pdf Programmation.pdf

Cours:

Progression.pdf: $(REPPROGRESSION)/Progression.tex
	$(TEX) $?
	$(TEX) $?
	cp -f $(REPSOURCE)/$@ $(REPDROPBOX)/Progression/$@

Programmation.pdf: $(REPPROGRAMMATION)/Programmation.tex
	$(TEX) $?
	$(TEX) $?
	cp -f $(REPSOURCE)/$@ $(REPDROPBOX)/Programmation/$@

clean:
	find . -type f -name '*.aux' -delete
	find . -type f -name '*.log' -delete
	find . -type f -name '*.out' -delete

mrproper: clean
	find . -type f -name '*.pdf' -delete
