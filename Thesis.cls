%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% This template has been downloaded from:
% http://www.latextemplates.com
%
% This class file defines the structure and design of the template. 
%
% Variables are now defined in a separate file: thesis_variables.tex
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2024/09/25 v1.0
 LaTeX document class]

\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

\newcommand\bhrule{\typeout{-------------------------------------------------------------------------------}}

% Load necessary packages
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}

\usepackage{setspace}
\onehalfspacing % one and a half line spacing
%\doublespacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}

\RequirePackage[utf8]{inputenc} % Allows the use of international characters

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
\setmarginsrb{1.5in}   % left margin
            {1in}     % top margin
            {1in}     % right margin
            {1in}     % bottom margin
            {20pt}    % head height
            {0.25in}  % head sep
            {9pt}     % foot height
            {0.3in}   % foot sep
%----------------------------------------------------------------------------------------

\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.

\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}

\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}

\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}

\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{
    captionpos=b,
    frame=tb,
    basicstyle=\scriptsize\ttfamily,
    showstringspaces=false,
    keepspaces=true
}
\lstdefinestyle{matlab}{
    language=Matlab,
    keywordstyle=\color{blue},
    commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
    stringstyle=\color[rgb]{0.7,0,0}
}

\pdfstringdefDisableCommands{
   \let\\\space
}
%------------------------------------------------------
% thesis.cls

% Command to print co-supervisors
\newcommand{\printcosupervisors}{
    \ifnum\numcosupervisors>0
        \textbf{Co-Supervisors:}\\
    \fi

    % Co-Supervisor 1
    \ifnum\numcosupervisors>0
        \cosupervisornameA\\
        \cosupervisordeptA\\
        \cosupervisorunivA\\
        \vspace{1em}
    \fi

    % Co-Supervisor 2
    \ifnum\numcosupervisors>1
        \cosupervisornameB\\
        \cosupervisordeptB\\
        \cosupervisorunivB\\
        \vspace{1em}
    \fi

    % Add more co-supervisors logic if needed for further supervisors
    % \ifnum\numcosupervisors>2
    %     \cosupervisornameC\\
    %     \cosupervisordeptC\\
    %     \cosupervisorunivC\\
    %     \vspace{1em}
    % \fi
}

%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES COMMANDS
%----------------------------------------------------------------------------------------
\newcommand*{\supervisorA}[1]{\def\supnameA{#1}}
\newcommand*{\supervisorB}[1]{\def\supnameB{#1}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degreeprogram}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\newcommand*{\submissiondate}[1]{\def\subdate{#1}}
\newcommand*{\facnum}[1]{\def\facnum{#1}}
\newcommand*{\enrnum}[1]{\def\enrnum{#1}}
\newcommand\Declaration[1]{
\btypeout{Certificate}
%\addtotoc{Certificate}
\thispagestyle{plain}
%\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Certificate\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}
\newcommand\StudentDeclaration[1]{
\btypeout{Declaration}
%\addtotoc{Declaration}
\thispagestyle{plain}
%\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}
%----------------------------------------------------------------------------------------
%	INCLUDE DOCUMENT VARIABLES FROM EXTERNAL FILE
%----------------------------------------------------------------------------------------
\input{thesis_variables.tex} % Make sure thesis_variables.tex is in the same directory as Thesis.cls

%----------------------------------------------------------------------------------------
%	TITLE PAGE
%----------------------------------------------------------------------------------------
% The default title page, this is not used in this www.latextemplates.com version            
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\ttitle}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\UNIVNAME}\par}
      \vfill
      {\huge \bf \ttitle \par}
      \vfill
      {\LARGE by \par}
      \smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large A thesis submitted in partial fulfillment for the \par}
      {\large degree of \degreename \par}
      \bigskip
      \bigskip
      {\large in the \par}
      {\large \facname \par}
      {\large \deptname \par} 
      \bigskip
      \bigskip
      \bigskip
      {\Large \submissiondate \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}

%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \begin{flushleft}
    \setlength{\parskip}{0pt}
    {\centering{\huge{\textit{Abstract}}} \par} 
    \bigskip
    \HRule \\[0.4cm] % Horizontal line
    Name of the student: \textbf{\authornames} \hfill Enrollment No: \textbf{\enrnum} \\ % Replace with actual enrollment number if needed
    Degree for which submitted: \textbf{\degreename} \hfill \\ 
    Department: \textbf{\deptname} \\
    Thesis title: \textbf{\ttitle}\\
    Thesis supervisors: \textbf{\supnameA} 
    % and \textbf{\supnameB} % Uncomment if supervisorB is defined
    \\
    Month and year of thesis submission: \textbf{\submissiondate} \\[0.4cm]
    \HRule \\[1.5cm] % Horizontal line	
  
  \end{flushleft}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
%--------------------------------------------------------------------------

% Import your variables
%\input{thesis_variables.tex}


%----------------------------------------------------------------------------------------
%	TABLE OF CONTENTS, LIST OF FIGURES, LIST OF TABLES
%----------------------------------------------------------------------------------------
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}

\renewcommand\tableofcontents{
\btypeout{Table of Contents}
%\addtotoc{Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}

\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}

\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\thispagestyle{plain}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}

%----------------------------------------------------------------------------------------
%	LIST OF SYMBOLS, NOMENCLATURE, CONSTANTS
%----------------------------------------------------------------------------------------
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
%begin{longtable}[c]{#1}#2\end{longtable}\par
   %\cleardoublepage
}

\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
 \begin{longtable}[l]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
    \begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

%----------------------------------------------------------------------------------------
%	ACKNOWLEDGEMENTS
%----------------------------------------------------------------------------------------
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}

%----------------------------------------------------------------------------------------
%	LIST OF PUBLICATIONS
%----------------------------------------------------------------------------------------
\newcommand\ListofPublications[1]{
\btypeout{List of Publications}
\addtotoc{List of Publications}
\thispagestyle{plain}
%\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf List of Publications\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

%----------------------------------------------------------------------------------------
%	DEDICATORY
%----------------------------------------------------------------------------------------
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}

%----------------------------------------------------------------------------------------
%	BACKMATTER
%----------------------------------------------------------------------------------------
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse
}

%----------------------------------------------------------------------------------------
%	FUNCTION DEFINITIONS
%----------------------------------------------------------------------------------------
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}

%----------------------------------------------------------------------------------------
%	END OF CLASS FILE
%----------------------------------------------------------------------------------------
\endinput
