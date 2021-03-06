% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "zc-thesis.cls",
%     version         = "2017Jan12",
%     date            = "Feb 2017",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, zc-thesis",
%     contact       = "send email to zcelysium@gmail.com",
%     docstring       = "A thesis class for a zc's dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zc-thesis}
\LoadClass[12pt, twoside, a4paper,openright]{book}
%\RequirePackage{xeCJK} %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Japanese pakage - zc
%\setCJKmainfont{AozoraMinchoRegular.ttf} %%%%%%%%%%%%%%%%%%%% Japanese font -zc

% Required packages
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\hypersetup{
	linktocpage,
    colorlinks,
    citecolor=Red,
    filecolor=black,
    linkcolor=black,
    urlcolor=Red,
}


\RequirePackage[centertags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage[numbers, comma, sort&compress]{natbib}
\RequirePackage[small, md, sc]{titlesec}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
\usepackage{xspace}
\RequirePackage{mhchem} %for chemistry zcccccccccccccccccccccccccccccccccccccccccccccccccccccccc
\RequirePackage{hyperxmp}  % for xmp copyright


% colors
\RequirePackage{color}
\definecolor{Red}{rgb}{0.6, 0.1, 0.1}

\RequirePackage{url}
\RequirePackage[titles]{tocloft}
\setcounter{tocdepth}{1}
\renewcommand{\cftchapfont}{\normalsize \scshape}

\renewcommand\bibname{References}
\renewcommand\listfigurename{List of figures}
\raggedright

\RequirePackage{pdfsync} %do pdf synchronization [andy]

%\usepackage[closeFloats, noSeparatorLine]{fltpage} %use the custom modified fltpage package
\RequirePackage{afterpage} 

%\synctex=1 % turn synctex on automatically to sync between pdf viewer [andy]

%   list an entire bibliography entry inline. Useful for acknowledging when my paper was previously published
\RequirePackage{bibentry} 
\nobibliography*        

\RequirePackage{lettrine} % big letter at start of chapter
% tsukuba university margins, it passed the office check, but I am not sure if you also pass the check! Sometimes they just want you find you some job, and make you run over and over... -zc
\RequirePackage[headheight=10mm, top=40mm, bottom=28mm, inner=30mm,outer=20mm, a4paper]{geometry}

\RequirePackage{fancyhdr} 
\pagestyle{plain} % options: empty , plain , fancy
\RequirePackage[palatino]{quotchap}
\definecolor{chaptergrey}{rgb}{0.6,0,0}
\RequirePackage{titling}
\RequirePackage{setspace} 
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage[labelfont={sf,bf,small},textfont={sf,small},justification=RaggedRight,margin=0pt, figurewithin=chapter, tablewithin=chapter]{caption} %chapter based figure numbering by zc
\onehalfspacing
%\raggedright

\parindent 12pt
\RequirePackage{mathspec}

% use Arno Pro instead of standard LaTeX fonts
\setmathsfont(Digits,Latin,Greek)[
Path = fonts/,Extension = .otf,
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic,
Numbers={OldStyle,Proportional}]{ArnoPro}
\setmathrm
[Path = fonts/,Extension = .otf,
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic
]{ArnoPro}

\RequirePackage{xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text, Numbers=OldStyle}
\aliasfontfeatureoption{Ligatures}{Historic}{Historical}
\setromanfont
[Path = fonts/,
Extension = .otf,
Mapping=tex-text, 
Numbers=OldStyle, 
Ligatures={Common}, 
SizeFeatures={%
	{Size={-10}, Font=*-RegularCaption},
	{Size={10-13.0}, Font=*},
	{Size={13.01-19.9}, Font=*-RegularSubhead, Ligatures=Rare, Contextuals={Swash,Alternate}},
	{Size={19.91-},Font=*-RegularDisplay, Ligatures=Rare, Contextuals={Swash,Alternate}}},
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic
]{ArnoPro} %

%this part is not tested - zc			
%Set fonts for Mac Specific (Comment out on Windows XP)
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue} 
%\setmonofont[Scale=MatchLowercase]{Consolas}

% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}

% cover and inside cover for University of Tsukuba - zc
%cover
\renewcommand{\maketitle}{ 
	\clearpage
	\singlespacing
	\pagestyle{empty}
    \vspace*{\fill}
    \centering
    \LARGE \textcolor{black}{\thetitle} \Large \\ %\sc 
    \vspace{80pt}
	%a dissertation presented \\ by\\
	\theauthor\\ %to\\ The \@department\\ 
	\vspace{300pt}
	%in partial fulfillment of the requirements\\ 
	%for the degree of\\ \@degree\\ 
	%in the subject of\\ \@field\\
	%\vspace{12pt}
	%\@university\\ \@universitycity, \@universitystate\\ 
	\@degreemonth\ \@degreeyear
 \afterpage{\null\newpage} % to correct cover on the right.
 %inside cover
    \clearpage 
    \vspace*{\fill}
	\LARGE \textcolor{black}{\thetitle} \Large \\ %\sc 
	\vspace{80pt}
	\theauthor\\ %to\\ The \@department\\ 
	%\vspace{12pt}
	Doctoral Program in \@field\\
	\vspace{200pt}
	Submitted to the Graduate School of\\
	\@department\\
	in Partial Fulfillment of the Requirements\\
	for the Degree of \@degree{ }in\\
	Engineering\\    % change here if you are not in engineering, sorry for inconvience, just lazy.. -zc
	\vspace{30pt}
	at the\\
	\@university\\
 \vspace*{\fill}\normalsize
}

\newcommand{\copyrightpage}{
    \onehalfspacing 
	\newpage \thispagestyle{empty} \vspace*{\fill}
	%\sc 
	\raggedright
	\noindent \copyright~\textit{\@degreeyear \hspace{3pt} \textcolor{Red}{\theauthor}} \\
	\noindent Some rights reserved.\\[40ex]                % you may change to all rights if you don't want CC4.0 -zc
	\input{frontmatter/copyrightpage}
	\vspace*{\fill} \newpage \rm


}

\newcommand{\abstractpage}{
	\chapter*{Abstract}

	\pagestyle{fancy}
	\lhead{\footnotesize \it Thesis advisor: Prof. \@advisor} \rhead{\footnotesize \it \@author}
    %\setlength{\headheight}{20pt}     %fixed problem Sept14 for headlight % delete this line to fix margin problem Jan12 -zc
	\renewcommand{\headrulewidth}{0pt} 
	\begin{center}
	\vspace*{1pt}
	\Large \textcolor{Red}{\textit{\@title}} \normalsize\\
	\vspace{15pt}
	%\sc Abstract \\ \rm
	\end{center}
	\doublespace %Might change to double spaced
	\input{frontmatter/abstract}
	\doublespace %Might change to double spaced
	\newpage \lhead{} \rhead{}
	\cfoot{\thepage}
	\onehalfspacing
}

\newcommand{\dedicationpage}{
	\pagestyle{empty}
	\doublespace 
	\newpage  \vspace*{\fill}
	\sc \noindent \centering 
	\begin{minipage}{25em}
	\input{frontmatter/dedication}
	\end{minipage}
	\vspace*{\fill} \rm
	\afterpage{\null\newpage} % to correct cover on the right. -zc
	}

% the list of authors
\newcommand{\authorlist}{
	\pagestyle{fancy}
	\newpage
	\thispagestyle{fancy} 
	\chapter*{Author List}
	\noindent \input{frontmatter/authorlist}
	\newpage \rm
	}

% the acknowledgments page
\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}
	\noindent
	\doublespace 
	\input{frontmatter/thanks}
	\vspace*{\fill} 
	\newpage
    }
	
% An environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.8ex minus 0.5ex}%
   \noindent\textsc{#1}}
