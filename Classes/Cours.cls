\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Cours}[2018/03/04 v0.2]
\LoadClass{scrbook}

\RequirePackage[margin=1cm]{geometry}
\RequirePackage{fontspec}
\setmainfont{Source Serif Pro}
\setsansfont{Source Sans Pro}
\RequirePackage[frenchb]{babel}
\RequirePackage[detect-all]{siunitx}
\sisetup{locale = FR,per-mode = symbol}
\RequirePackage{graphicx}
\RequirePackage[table]{xcolor}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{tikz}
\RequirePackage{pdfpages}
\RequirePackage{hyperref}
\hypersetup{%
  unicode=true%
}

% Commandes pour la fiche de préparation
\newcommand{\themeprep}[1]{%
  \node[anchor=base west] at (14,19.3) {\textbf{Thème : }#1};
}
\newcommand{\sequenceprep}[1]{%
  \node[anchor=base west] at (0,19.3) {\textbf{Séquence : }#1};
}
\newcommand{\seanceprep}[2]{%
  \node[anchor=base west] at (0,18.3) {\textbf{Séance n°#1 : }#2};
}
\newcommand{\niveauprep}[1]{%
  \node[anchor=base west] at (14,18.3) {\textbf{Niveau : }#1};
}
\newcommand{\domainesocle}[1]{%
  \node[anchor=base west] at (18,18.3) {\textbf{Domaine du socle : } #1};
}
\newcommand{\connaissanceeleve}[1]{%
  \node[anchor=base west,text width=9.4cm] at (0,17.3) {\textbf{Connaissance(s) visée(s) pour les élèves : }#1};
}
\newcommand{\competenceeleve}[1]{%
  \node[anchor=base west,text width=9.4cm] at (9.5,17.3) {\textbf{Compétence(s) visée(s) pour les élèves : }#1};
}
\newcommand{\competencesocleeleve}[1]{%
  \node[anchor=base west,text width=9.4cm] at (19,17.3) {\textbf{Compétence(s) du socle : }#1};
}
\newcommand{\connaissanceprof}[1]{%
  \node[anchor=base west,text width=28.6cm] at (0,14.3) {\textbf{Connaissances utiles pour le professeur : }#1};
}
\newcommand{\activitephase}[1]{%
  \node[anchor=base west,text width=5cm] at (0,11.3) {#1};
}
\newcommand{\duree}[1]{%
  \node[anchor=base west,text width=3.7cm] at (5,11.3) {#1};
}
\newcommand{\consigne}[1]{%
  \node[anchor=base west,text width=5cm] at (8.7,11.3) {#1};
}
\newcommand{\materiel}[1]{%
  \node[anchor=base west,text width=5cm] at (13.7,11.3) {#1};
}
\newcommand{\organisation}[1]{%
  \node[anchor=base west,text width=5cm] at (18.7,11.3) {#1};
}
\newcommand{\trace}[1]{%
  \node[anchor=base west,text width=5cm] at (23.7,11.3) {#1};
}
\newcommand{\evaluation}[1]{%
  \node[anchor=base west,text width=28.7cm] at (0,4.3) {\textbf{Modalités d'évaluation : }#1};
}
\newcommand{\bilan}[1]{%
  \node[anchor=base west,text width=28.7cm] at (0,1.3) {\textbf{Bilan pédagogique et didactique : }#1};
}
\newenvironment{fichepreparation}
{%
  \KOMAoptions{paper=landscape}%
  \recalctypearea%
  \newgeometry{margin=0.5cm}%
  \sffamily
  \noindent
  \begin{tikzpicture}
    \draw (0,0) rectangle (28.7,20);
    \draw (0,19) -- (28.7,19);
    \draw (14,19) -- (14,20);
    \draw (0,18) -- (28.7,18);
    \draw (14,18) -- (14,19);
    \draw (18,18) -- (18,19);
    \draw (9.5,18) -- (9.5,15);
    \draw (19,18) -- (19,15);
    \draw (0,15) -- (28.7,15);
    \draw (0,13) -- (28.7,13);
    \draw (0,12) -- (28.7,12);
    \node[anchor=base,text width=5cm,align=center] at (2.5,12.6) {\textbf{Activités prévues aux différentes phases}};
    \node[anchor=base,text width=5cm,align=center] at (6.85,12.6) {\textbf{Durée}};
    \node[anchor=base,text width=5cm,align=center] at (11.2,12.6) {\textbf{Consignes}};
    \node[anchor=base,text width=5cm,align=center] at (16.2,12.6) {\textbf{Matériel et support utilisés}};
    \node[anchor=base,text width=5cm,align=center] at (21.2,12.6) {\textbf{Organisation pédagogique}};
    \node[anchor=base,text width=5cm,align=center] at (26.2,12.6) {\textbf{Trace écrite}};
    \draw (0,5) -- (28.7,5);
    \draw (0,2) -- (28.7,2);
    \draw (5,5) -- (5,13);
    \draw (8.7,5) -- (8.7,13);
    \draw (13.7,5) -- (13.7,13);
    \draw (18.7,5) -- (18.7,13);
    \draw (23.7,5) -- (23.7,13);
}
{%
  \end{tikzpicture}
  \KOMAoptions{paper=portrait}%
  \recalctypearea%
  \newgeometry{margin=1cm}
  \normalfont
}
