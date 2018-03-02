\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Controle}[2018/02/27 v1.]
\LoadClass{article}

\RequirePackage[a4paper,margin=1cm,right=1.5cm]{geometry}
\RequirePackage[euenc]{fontspec}
\setmainfont[Mapping=tex-text,ItalicFont={Source Sans Pro Italic},BoldFont={Source Sans Pro Semibold}]{Source Sans Pro Regular}
\setsansfont[Mapping=tex-text]{Source Sans Pro Regular}
\RequirePackage[frenchb]{babel}
\RequirePackage[detect-all]{siunitx}
\RequirePackage{graphicx}
\RequirePackage[table]{xcolor}
\RequirePackage{xifthen}
\RequirePackage{tabularx}
\RequirePackage{nopageno}
\RequirePackage{setspace}
\RequirePackage{totcount}
\RequirePackage{float}
\RequirePackage{multirow}
\RequirePackage{hhline}
\RequirePackage{tikz}
\RequirePackage{wrapfig}
\RequirePackage{caption}
\sisetup{locale = FR,per-mode = symbol}

\ExplSyntaxOn
\cs_new_eq:NN \Repeat \prg_replicate:nn
\ExplSyntaxOff

\newcolumntype{Y}{>{\centering\arraybackslash}X}

\newcommand{\ligne}[1]{\Repeat{#1}{\par\noindent\rule{\linewidth}{.4pt}}}

\newcommand{\titre}[1]{\begin{center}\textbf{\Large{#1}}\bigskip\end{center}}

\newcommand{\nom}{%
\noindent\begin{tikzpicture}
\draw (0,0) rectangle (\linewidth,1.8cm);
\draw (\linewidth,0) ++(-1.8cm,0) -- ++(0,1.8cm) ++(0,-1.8cm) -- ++(1.8cm,1.8cm);
\draw (\linewidth,0) node[anchor=south east] {\huge\total{points}};
\node[anchor = south west] at (0,1.2) {Nom :};
\draw (0,1.2) -- (.4\linewidth,1.2);
\node[anchor = south west] at (0,0.6) {Prénom :};
\draw (0,.6) -- (.4\linewidth,.6);
\node[anchor = south west] at (0,0) {Classe :};
\draw (.4\linewidth,0) -- (.4\linewidth,1.8cm);
\node[anchor = south west] at (.4\linewidth,1.2) {Observations :};
\end{tikzpicture}}

\newcommand{\groupe}{%
\noindent\begin{tikzpicture}
\draw (0,0) rectangle (\linewidth,1.8cm);
\draw (\linewidth,0) ++(-1.8cm,0) -- ++(0,1.8cm) ++(0,-1.8cm) -- ++(1.8cm,1.8cm);
\draw (\linewidth,0) node[anchor=south east] {\huge\total{points}};
\node[anchor = south west] at (0,1.2) {Classe :};
\draw (2,0) -- (2,1.8cm);
\node[anchor = south west] at (2.1,1.2) {Noms et prénoms des personnes du groupe :};
\end{tikzpicture}}

\newcounter{exercice}
\newcommand{\exercice}[1]{%
\stepcounter{exercice}%
\ifthenelse{\isempty{#1}}%
{\section*{Exercice \theexercice}}%
{\section*{Exercice \theexercice~: #1}}}


\newcommand{\rouge}[1]{\textcolor{red}{#1}}
\newcommand{\correction}{}


% 1 décalage
% 2 question
% 3 points
% 4 réponse
% 5 lignes
\newcounter{question}
\newtotcounter{points}

\newcommand{\question}[5][\quad \hrulefill]{%
  \stepcounter{question}%
  \medskip%
  \noindent%
  \marginpar{\quad/#3}%
  \addtocounter{points}{#3}%
  \textbf{Question \thequestion}\ --- #2#1%
  \ifthenelse{\equal{\correction}{oui}}%
  {\\\rouge{#4}}%
  {\\#5}%
}


\newcommand{\bonus}[5][\quad \hrulefill]{%
  \medskip%
  \noindent%
  \marginpar{\quad/#3}%
  \textbf{Question Bonus}\ --- #2#1%
  \ifthenelse{\equal{\correction}{oui}}%
  {\\\rouge{#4}}%
  {\\#5}%
}

\newcommand{\indicateurs}[1]{\noindent\begin{tikzpicture}\node [minimum width=\linewidth,draw] {«~#1~»};\end{tikzpicture}}

\newcommand{\qcm}{\begin{tikzpicture}\draw (0,0) rectangle (2ex,2ex);\end{tikzpicture}}

\newenvironment{evaluation}[1]
{%\vfill
\footnotesize\noindent
\textbf{#1}\\
\noindent
\begin{tabu}{|p{4cm}|X[1.5]|l|l|}
\everyrow{\tabucline{-}}
\tabucline{-}
\rowfont{\itshape}\rowcolor{black!10}
Ce qu'il fallait faire pour cela % critères d'évaluation
& Indices qui vous permettront de voir si vous avez réussi % indicateurs d'évaluation ou de réussite
& Autoévaluation 
& Évaluation\\
}
{\end{tabu}}


\directlua{jesais = {}}
\directlua{jesaisfaire = {}}
\newcommand{\jesais}[1]{\directlua{table.insert(jesais, "#1")}}
\newcommand{\jesaisfaire}[1]{\directlua{table.insert(jesaisfaire, "#1")}}

\newcommand{\indic}{%
\newpage
\section*{Indicateurs de révision}
\noindent
\textbf{Je sais :}
\begin{itemize}
\directlua{for k,v in pairs(jesais) do tex.sprint([[\noexpand\item]] .. v) end}
\end{itemize}

\noindent
\textbf{Je sais faire :}
\begin{itemize}
\directlua{for k,v in pairs(jesaisfaire) do tex.sprint([[\noexpand\item]] .. v) end}
\end{itemize}
}

\newcommand{\Simley}[1]{%
\begin{tikzpicture}[scale=0.2]
    \newcommand*{\SmileyRadius}{1.0}%
    \draw (0,0) circle (\SmileyRadius);  

    \pgfmathsetmacro{\eyeX}{0.5*\SmileyRadius*cos(30)}
    \pgfmathsetmacro{\eyeY}{0.5*\SmileyRadius*sin(30)}
    \draw [fill=black, draw=none] (\eyeX,\eyeY) circle (0.15cm);
    \draw [fill=black, draw=none] (-\eyeX,\eyeY) circle (0.15cm);

    \pgfmathsetmacro{\xScale}{2*\eyeX/180}
    \pgfmathsetmacro{\yScale}{1.0*\eyeY}
    \draw[domain=-\eyeX:\eyeX]   
        plot ({\x},{
            -0.1+#1*0.15 % shift the smiley as smile decreases
            -#1*1.75*\yScale*(sin((\x+\eyeX)/\xScale))-\eyeY});
\end{tikzpicture}%
}%

\newcommand{\smiley}{\Simley{-1}\quad\Simley{-.5}\quad\Simley{.5}\quad\Simley{1}}

\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}

\floatstyle{boxed}
\newfloat{doc}{htbp}{doc}
\floatname{doc}{Document}