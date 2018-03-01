TEX=lualatex
OPTIONS=-interaction=nonstopmode
EXEC=CoursSVT
REPPROGRESSION=$HOME/CoursSVT/Progression/

all: $(EXEC)

CoursSVT:

Progression: Progression.tex
	$(TEX) $(OPTIONS) $(REPPROGRESSION)$^

Programmation:

clean:

mrproper:
