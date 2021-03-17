% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{graphicx}
\usepackage{eso-pic}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
% \definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

%
\newcommand\photo[1]{\AtPageUpperLeft{%
 \put(\LenToUnit{17.5cm},\LenToUnit{-4.2cm}){#1}%
 }}%

\AddToShipoutPictureBG*{%
\photo{\fboxsep1.5pt\fcolorbox{white}{white}%
{\includegraphics[width=30mm,keepaspectratio]{images/gr.eps}}}
}


% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/Serif/,BoldItalicFont=SourceHanSerif-Bold,BoldFont=SourceHanSerif-Medium,ItalicFont=SourceHanSerif-Regular]{SourceHanSerif-ExtraLight}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/Serif/]{SourceHanSerif-ExtraLight}

% % Date command
% \usepackage[absolute]{textpos}
% \usepackage[UKenglish]{isodate}
% \setlength{\TPHorizModule}{1mm}
% \setlength{\TPVertModule}{1mm}
% \newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
% \color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
% Last Updated on \today
% \end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\centering{
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/Serif/]{SourceHanSerif-Bold}\selectfont #1 
\fontspec[Path = fonts/Serif/]{SourceHanSerif-Bold}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/Serif/]{SourceHanSerif-Medium}\fontsize{11pt}{14pt}\selectfont #3}
\\[10pt]
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{2pt}
\titlespacing{\runsubsection}{0pt}{0pt}{2pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/Serif/]{SourceHanSerif-Heavy}\fontsize{18pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/Serif/]{SourceHanSerif-Bold}\fontsize{13pt}{13pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/Serif/]{SourceHanSerif-Bold}\fontsize{13pt}{13pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/Serif/]{SourceHanSerif-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/Serif/]{SourceHanSerif-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep3pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
