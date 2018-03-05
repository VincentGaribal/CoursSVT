TEX=lualatex -interaction=nonstopmode -interaction=batchmode

all:	CoursSixieme \
	CoursCinquieme \
	Progression \
	Programmation

.PHONY:	CoursSixieme \
	CoursCinquieme \
	Progression \
	Programmation \
	clean

# Sixième
CoursSixieme:
	$(MAKE) -C Cours/Sixieme

# Cinqième
CoursCinquieme:
	$(MAKE) -C Cours/Cinquieme


# Quatrième


# Troisième


Progression:
	$(MAKE) -C Progression

Programmation:
	$(MAKE) -C Programmation

clean:
	find . -type f -name '*.aux' -delete
	find . -type f -name '*.log' -delete
	find . -type f -name '*.out' -delete
	find . -type f -name '*.toc' -delete

mrproper: clean
	find . -type f -name '*.pdf' -delete
	find . -type f -name '*.*~' -delete
	find . -type f -name '*~' -delete
