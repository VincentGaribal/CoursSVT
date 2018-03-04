TEX=lualatex -interaction=nonstopmode -interaction=batchmode

all: Progression Programmation

.PHONY: Progression Programmation clean

# Sixième


# Cinqième


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
