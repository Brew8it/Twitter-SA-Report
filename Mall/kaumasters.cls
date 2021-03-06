%%
%% This is file `kaumasters.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% kauthesis.dtx  (with options: `masters')
%% 
%% This is a generated file.
%% 
%% Copyright (c) 2011-2014 Stefan Berthold <stefan.berthold@kau.se>
%% 
%% This file is part of the kauthesis bundle.
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `author-maintained'.
%% 
%% The Current Maintainer and author of this work is Stefan Berthold.
%% 
%% This work consists of all files listed in manifest.txt.
%% 
%% kauthesis.dtx
%% Copyright (c) 2011-2015 Stefan Berthold <stefan.berthold@kau.se>
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{kaumasters}
    [2014/12/04 v1.16 Karlstad University thesis layout]
\LoadClass{report}
\RequirePackage{kauclear}
\RequirePackage{kaumeta}
\RequirePackage{kaulist}
\RequirePackage{kaulanguage}
\newif\if@kaufont\@kaufontfalse
\DeclareOption{garamond}{\@kaufonttrue}
\ProcessOptions\relax
\if@kaufont
\RequirePackage{garamondx}
\RequirePackage[garamondx,cmbraces]{newtxmath}
\fi
\RequirePackage[paper=a4,pagesize,twoside=semi]{typearea}
\AtBeginDocument{%
  \setname{acknowledgementname}{Acknowledgements}{Tacks\"agelser}%
}
\AtBeginDocument{%
  \setname{keywordname}{Keywords}{Nyckelord}%
}
\AtBeginDocument{%
  \setname{approvalname}{Approved}{Godk\"and}%
}
\AtBeginDocument{%
  \setname{examinationname}{h\"ogskoleingenj\"orsexamen}{h\"ogskoleingenj\"orsexamen}%
}
\AtBeginDocument{%
  \setname{approvaltext}%
    {This thesis is submitted in partial fulfillment of the %
      requirements for the \examinationname{} in Computer Science. %
      All material in this thesis which is not my own work has been %
      identified and no material is included for which a degree has %
      previously been conferred.}%
    {Denna uppsats \"ar skriven som en del av det arbete som kr\"avs %
      f\"or att erh\aa lla en \examinationname{} i datavetenskap. Allt %
      material i denna rapport, vilket inte \"ar mitt eget, har blivit %
      tydligt identifierat och inget material \"ar inkluderat som %
      tidigare anv\"ants f\"or erh\aa llande av annan examen.}%
}
\AtBeginDocument{%
  \setname{opponent}{Opponent}{Opponent}%
}
\AtBeginDocument{%
  \setname{supervisorname}{Supervisor}{Handledare}%
}
\AtBeginDocument{%
  \setname{examinername}{Examiner}{Examinerande l\"arare}%
}
\let\kauths@maketitle\maketitle
\renewcommand\maketitle{%
  \PackageWarning{maketitle does not serve any purpose in this class.
    The abstract environment reproduces the title instead.}%
}

\let\kauths@abstract\abstract%
\let\kauths@endabstract\endabstract%
\newcommand*\frontmatter{%
  \clearpage%
  \setcounter{page}{3}%
  \renewcommand\thepage{\roman{page}}%
  \renewenvironment{abstract}{%
    \newcommand\keywords{\paragraph{\keywordname:}}%
    \newenvironment{english}{%
      \renewcommand\keywords{\paragraph{Keywords:}}%
      \section*{Abstract}%
    }{%
    }
    \cleardoublepage%
    %\section*{\@title}%
    %\textsc{\prettylist{\@author}}\par%
    %\noindent\textit{\@institute}%
    \section*{\abstractname}%
  }{%
    \cleardoublepage%
  }%
}
\newcommand\approvalpage{%

  \cleardoublepage%
  \newcommand\sig{\begin{center}\makebox[7cm]{\hrulefill}\\\end{center}}%
  
  \newcommand\signer[1]{\begin{quote}\sig \centerline{##1} \end{quote}\mbox{}}%
  \begin{center}
  	\noindent\approvaltext\\\mbox{}\bigskip%
  \end{center}
  \foreach \x in \@author {\signer{\x}}%
  \\\mbox{}\bigskip\\\mbox{}\bigskip%
  \approvalname,\\\mbox{}\bigskip%
  \begin{quote}%  
    \sig\centerline{\opponent: \@opponent \mbox{}\bigskip}% 
  \end{quote}%
  \begin{quote}% 
	\sig\centerline{\supervisorname: \@supervisor \mbox{}\bigskip}%
  \end{quote}%
  \begin{quote}% 
    \sig\centerline{\examinername: \@examiner}
  \end{quote}%
}




\newenvironment{acknowledgements}{%
  \cleardoublepage%
  \section*{\acknowledgementname}%
}{%
  \par\bigskip\bigskip\bigskip\noindent\@place, \@date\hfill \prettylist{\@author}%
  \cleardoublepage%
}
\let\kauths@tableofcontents\tableofcontents
\renewcommand\tableofcontents{%
  \cleardoublepage%
  \kauths@tableofcontents%
}
\newcommand\mainmatter[1][]{%
  \cleardoublepage%
  \renewenvironment{abstract}{\kauths@abstract}{\kauths@endabstract}%
  \setcounter{page}{1}%
  \pagenumbering{arabic}%
}
\endinput
%%
%% End of file `kaumasters.cls'.
