\ProvidesClass{settings}
 % This document requires XeLatex
 
\LoadClass[12pt,a4paper]{report}

\usepackage{lipsum} % for printing dummy text
% Loading required packages
\usepackage[english]{babel}
\usepackage{amsmath,amssymb}
\usepackage{graphics}
\usepackage{lscape}
\usepackage{graphicx}
\usepackage{caption}
\usepackage[version=4]{mhchem}
\usepackage{chemfig}
\usepackage{titletoc}

 \titlecontents{chapter}
    [5.5em] %5.3
    {\bigskip}
    {\contentslabel[\bfseries\textsc{\chaptername}~\thecontentslabel]{5.5em}\textbf}
    {\hspace*{-5.5em}\textbf}
    {\hfill\contentspage}[\smallskip]
    
\usepackage[nottoc]{tocbibind} 
\usepackage{hyperref}
\usepackage{orcidlink}
\usepackage{pdflscape}
\usepackage{fontspec}
\setmainfont{Times New Roman}
\setlength{\headheight}{15pt}
\usepackage[titletoc]{appendix}
\usepackage{titlesec}
\titlespacing*{\chapter}{0pt}{0pt}{0pt}
\titleformat{\chapter}[display]{\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  margins 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Options: Sonny, Lenny, Glenn, Conny, Rejne, Bjarne, Bjornstrup
\usepackage[Lenny]{fncychap}
\setlength{\oddsidemargin}{0.25in}
\setlength{\evensidemargin}{0.15in}
%\setlength{\topmargin}{0.3in} % default
\setlength{\topmargin}{0in}
\setlength{\textwidth}{6.0in}
\setlength{\textheight}{8.5in}
\setlength{\parindent}{0pt} % Remove paragraph indentation
\setlength{\parskip}{\baselineskip} % Add vertical space between paragraphs


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  macro for margin change
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{changemargin}[2]{%
\begin{list}{}{%
%\setlength{\topsep}{0pt}%
\setlength{\leftmargin}{#1}%
\setlength{\rightmargin}{#2}%
%\setlength{\listparindent}{\parindent}%
%\setlength{\itemindent}{\parindent}%
%\setlength{\parsep}{\parskip}%
}%
\item[]}{\end{list}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  settings for Cardiff-Harvard style 
%%%  references
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage[style=authoryear,natbib=true,firstinits=true,maxcitenames=2,maxbibnames=20,uniquename=false,uniquelist=false,dashed=false,url=false,isbn=false,doi=true]{biblatex}
\bibliography{sections/ref.bib}
\AtEveryBibitem{\clearfield{month}}
\AtEveryBibitem{\clearfield{day}}

\DeclareFieldFormat{journaltitle}{#1} % Journal title format
\DeclareFieldFormat[article]{title}{#1} % Article title format (removes quotes)
\renewbibmacro{in:}{} % Remove "In:" before journal title

% Customizing how author names and years are displayed
\DeclareNameAlias{sortname}{last-first} % Last name, first name format
\DeclareNameAlias{default}{last-first} % Last name, first name format

% Format bibliography entries
\AtEveryBibitem{
  \clearfield{issn} % Remove ISSNs
  \clearfield{note} % Remove notes
}

\usepackage{xpatch,filecontents}

\xpatchbibmacro{date+extradate}{%
  \printtext[parens]%
}{%
  \setunit*{\addcomma\space}%
  \printtext%
}{}{} 


