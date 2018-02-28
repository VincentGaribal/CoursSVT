\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Programmation}[2018/02/28 v1.1]
\LoadClass[fontsize=8pt,DIV=21]{scrartcl}

\KOMAoptions{paper=A4,paper=portrait}
\RequirePackage[french]{babel}
\RequirePackage{fontspec}
\setmainfont[BoldFont = {Source Sans Pro Semi Bold}]{Source Sans Pro}
\setsansfont[BoldFont = {Source Sans Pro Bold}]{Source Sans Pro}
\RequirePackage{microtype}
\RequirePackage{xcolor}
\RequirePackage{multirow}
\RequirePackage{colortbl}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{hyperref}
\hypersetup{%
  unicode=true%
}

\definecolor{terre}{HTML}{C55A11}
\definecolor{nutveg}{HTML}{548235}
\definecolor{activites}{HTML}{FFC000}
\definecolor{SVTG}{HTML}{F4B183}
\definecolor{nutani}{HTML}{385724}
\definecolor{digestion}{HTML}{FFD966}
\definecolor{eres}{HTML}{FBE5D6}
\definecolor{repro}{HTML}{00B050}
\definecolor{micro}{HTML}{F8CBAD}
\definecolor{mc}{HTML}{203864}
\definecolor{genet}{HTML}{92D050}
\definecolor{immuno}{HTML}{FF0000}
\definecolor{risque}{HTML}{9DC3E6}
\definecolor{evo}{HTML}{FFFF00}
\definecolor{reprohum}{HTML}{FF99CC}
\definecolor{ressources}{HTML}{DEEBF7}

\newcommand{\Terre}{\cellcolor{terre}{\fontspec{Source Sans Pro Semi Bold}\textcolor{white}{Terre}}}
\newcommand{\SVTG}{\cellcolor{SVTG}{\fontspec{Source Sans Pro Semi Bold}S.V.Tg}}
\newcommand{\Eres}{\cellcolor{eres}{\fontspec{Source Sans Pro Semi Bold}Ères géol.}}
\newcommand{\MC}{\cellcolor{mc}{\fontspec{Source Sans Pro Semi Bold}\textcolor{white}{Mét. Clim.}}}
\newcommand{\Risque}{\cellcolor{risque}{\fontspec{Source Sans Pro Semi Bold}Risques nat.}}
\newcommand{\Ress}{\cellcolor{ressources}{\fontspec{Source Sans Pro Semi Bold}Ressources}}
\newcommand{\NutVeg}{\cellcolor{nutveg}{\fontspec{Source Sans Pro Semi Bold}\textcolor{white}{Nut. Vég.}}}
\newcommand{\NutAni}{\cellcolor{nutani}{\fontspec{Source Sans Pro Semi Bold}\textcolor{white}{Nut. Anim.}}}
\newcommand{\Repro}{\cellcolor{repro}{\fontspec{Source Sans Pro Semi Bold}Reproduct.}}
\newcommand{\Genet}{\cellcolor{genet}{\fontspec{Source Sans Pro Semi Bold}Génétique}}
\newcommand{\Evo}{\cellcolor{evo}{\fontspec{Source Sans Pro Semi Bold}Évolution}}
\newcommand{\Act}{\cellcolor{activites}{\fontspec{Source Sans Pro Semi Bold}Activités...}}
\newcommand{\Dig}{\cellcolor{digestion}{\fontspec{Source Sans Pro Semi Bold}Digestion}}
\newcommand{\Micro}{\cellcolor{micro}{\fontspec{Source Sans Pro Semi Bold}Micro-org.}}
\newcommand{\Immuno}{\cellcolor{immuno}{\fontspec{Source Sans Pro Semi Bold}\textcolor{white}{Immuno.}}}
\newcommand{\RepHum}{\cellcolor{reprohum}{\fontspec{Source Sans Pro Semi Bold}Repro. Hum.}}

\newcounter{themeuntotal}
\newcounter{themedeuxtotal}
\newcounter{themetroistotal}

\newcounter{cinquiemetotal}
\newcounter{quatriemetotal}
\newcounter{troisiemetotal}

% Compteurs de thèmes
\newcounter{themeuncinquieme}
\newcounter{themedeuxcinquieme}
\newcounter{themetroiscinquieme}

\newcounter{themeunquatrieme}
\newcounter{themedeuxquatrieme}
\newcounter{themetroisquatrieme}

\newcounter{themeuntroisieme}
\newcounter{themedeuxtroisieme}
\newcounter{themetroistroisieme}

\newcommand{\themeuncinq}[1]{%
  \addtocounter{themeuncinquieme}{#1}%
  \addtocounter{cinquiemetotal}{#1}%
  \addtocounter{themeuntotal}{#1}%
  #1%
}
\newcommand{\themedeuxcinq}[1]{%
  \addtocounter{themedeuxcinquieme}{#1}%
  \addtocounter{cinquiemetotal}{#1}%
  \addtocounter{themedeuxtotal}{#1}%
  #1%
}
\newcommand{\themetroiscinq}[1]{%
  \addtocounter{themetroiscinquieme}{#1}%
  \addtocounter{cinquiemetotal}{#1}%
  \addtocounter{themetroistotal}{#1}%
  #1%
}

\newcommand{\themeunquatre}[1]{%
  \addtocounter{themeunquatrieme}{#1}%
  \addtocounter{quatriemetotal}{#1}%
  \addtocounter{themeuntotal}{#1}%
  #1%
}
\newcommand{\themedeuxquatre}[1]{%
  \addtocounter{themedeuxquatrieme}{#1}%
  \addtocounter{quatriemetotal}{#1}%
  \addtocounter{themedeuxtotal}{#1}%
  #1%
}
\newcommand{\themetroisquatre}[1]{%
  \addtocounter{themetroisquatrieme}{#1}%
  \addtocounter{quatriemetotal}{#1}%
  \addtocounter{themetroistotal}{#1}%
  #1%
}

\newcommand{\themeuntrois}[1]{%
  \addtocounter{themeuntroisieme}{#1}%
  \addtocounter{troisiemetotal}{#1}%
  \addtocounter{themeuntotal}{#1}%
  #1%
}
\newcommand{\themedeuxtrois}[1]{%
  \addtocounter{themedeuxtroisieme}{#1}%
  \addtocounter{troisiemetotal}{#1}%
  \addtocounter{themedeuxtotal}{#1}%
  #1%
}
\newcommand{\themetroistrois}[1]{%
  \addtocounter{themetroistroisieme}{#1}%
  \addtocounter{troisiemetotal}{#1}%
  \addtocounter{themetroistotal}{#1}%
  #1%
}