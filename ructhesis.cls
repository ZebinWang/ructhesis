%%
%% This is file `ructhesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ructhesis.dtx  (with options: `cls')
%%  Copyright (C) 2014--2015 Zebin Wang <me@zebinwang.com>
%%  --------------------------------------------------------------------------
%% 
%%  This work may be distributed and/or modified under the
%%  conditions of the LaTeX Project Public License, either
%%  version 1.3c of this license or (at your option) any later
%%  version. This version of this license is in
%%     http://www.latex-project.org/lppl/lppl-1-3c.txt
%%  and the latest version of this license is in
%%     http://www.latex-project.org/lppl.txt
%%  and version 1.3 or later is part of all distributions of
%%  LaTeX version 2005/12/01 or later.
%% 
%%  This work has the LPPL maintenance status `maintained'.
%% 
%%  The Current Maintainers of this work is Zebin Wang.
%% 
%%  This work consists of the files RUCThesis.dtx and RUCThesis.ins
%%  and the derived file RUCThesis.cls.
%% 
%%  --------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ructhesis}[2015/12/01 v1.0.0]
\newif\ifruc@bachelor
\newif\ifruc@master
\newif\ifruc@doctor
\newif\ifruc@promaster
\newif\ifruc@shuji
\DeclareOption{bachelor}{\ruc@bachelortrue}
\DeclareOption{master}{\ruc@mastertrue}
\DeclareOption{promaster}{\ruc@promastertrue}
\DeclareOption{doctor}{\ruc@doctortrue}
\DeclareOption{shuji}{\ruc@shujitrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\ifruc@doctor\LoadClass[UTF8,zihao=-4,twoside,openright,fancyhdr]{ctexbook}
\else\LoadClass[UTF8,zihao=-4,oneside,openany,fancyhdr]{ctexbook}\fi
\def\thesiscode#1{\gdef\@thesiscode{#1}}
\def\sign#1{\gdef\@sign{#1}}
\def\esign#1{\gdef\@esign{#1}}
\def\title#1{\gdef\@title{#1}}
\def\subtitle#1{\gdef\@subtitle{#1}}
\def\author#1{\gdef\@author{#1}}
\def\school#1{\gdef\@school{#1}}
\def\field#1{\gdef\@field{#1}}
\def\grade#1{\gdef\@grade{#1}}
\def\studentid#1{\gdef\@studentid{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\score#1{\gdef\@score{#1}}
\def\date#1{\gdef\@date{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\etitle#1{\gdef\@etitle{#1}}
\def\covertitle#1{\gdef\@covertitle{#1}}
\def\keywordzh#1{\gdef\@keywordzh{#1}}
\def\keyworden#1{\gdef\@keyworden{#1}}
\def\doctorsign{博士学位论文}
\def\doctoresign{DOCTORAL DISSERTATION}
\def\mastersign{硕士学位论文}
\def\masteresign{THESIS OF MASTER DEGREE}
\def\promastersign{专业硕士学位论文}
\def\promasteresign{THESIS OF PROFESSION MASTER DEGREE}
\def\bachelorsign{本科毕业论文}
\def\bacheloresign{THESIS OF BACHELOR DEGREE}
\def\cabstractpagesign{摘要}
\def\eabstractpagesign{Abstract}
\def\acknowledgesign{致谢}
\newcommand{\RUCThesis}{{\tt R\kern-.107em\lower.5ex\hbox{U}\kern-.1em CThesis}}
\ifruc@bachelor
\RequirePackage[top=25mm,left=25mm,bottom=25mm,right=20mm,footskip=10mm]{geometry}
\setlength{\topskip}{10mm}
\else
\RequirePackage[top=45mm,left=35mm,bottom=40mm,right=30mm,headsep=20mm]{geometry}
\fi
\RequirePackage{hyperref}
\AtBeginDocument{
\hypersetup{
pdftitle={\@title},
pdfauthor={\@author},
pdfsubject={中国人民大学学位论文}}
}
\setmainfont{TimesNewRomanPSMT}
\setsansfont{ArialMT}
\setmonofont{CourierNewPSMT}
\xeCJKsetup{AutoFakeSlant={true}}
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{FangSong}
\newcommand{\rowspace}{%
\setlength{\lineskiplimit}{2.625bp}
\setlength{\lineskip}{2.625bp}
\ifruc@bachelor
\linespread{1.25}\selectfont
\else
\linespread{1.35}\selectfont
\fi
}
\let\ruc@cleardoublepage\cleardoublepage
\newcommand{\ruc@clearemptydoublepage}{%
\clearpage{\pagestyle{empty}\ruc@cleardoublepage}}
\let\cleardoublepage\ruc@clearemptydoublepage
\pagestyle{fancy}
\fancyhf{}
\lhead{}
\rhead{}
\ifruc@bachelor
\chead{\includegraphics[width=4.13cm,height=0.8452cm]{figures/logo.pdf}}
\fancyfoot[CO,CE]{ 第 \thepage 页}
\else
\chead{\zihao{5}\@title}
\if@twoside
\fancyfoot[RO,LE]{\thepage}
\else
\fancyfoot[RO,RE]{\thepage}
\fi
\fi
\fancypagestyle{headings}{
\fancyhf{}
\lhead{}
\rhead{}
\ifruc@bachelor
\chead{\includegraphics[width=4.13cm,height=0.8452cm]{figures/logo.pdf}}
\fancyfoot[CO,CE]{\thepage}
\else
\chead{}\renewcommand*{\headrulewidth}{0bp}
\if@twoside
\fancyfoot[RO,LE]{\thepage}
\else
\fancyfoot[RO,RE]{\thepage}
\fi
\fi}
\fancypagestyle{myheadings}{
\fancyhf{}
\lhead{}
\rhead{}
\chead{\includegraphics[width=4.13cm,height=0.8452cm]{figures/logo.pdf}}
\fancyfoot[LO,LE]{}
\fancyfoot[RO,RE]{}
\fancyfoot[CO,CE]{}}
\fancypagestyle{plain}{
\fancyhf{}
\lhead{}
\rhead{}
\ifruc@bachelor
\chead{}\renewcommand*{\headrulewidth}{0pt}
\fancyfoot[CO,CE]{ 第 \thepage 页}
\else
\chead{}
\renewcommand*{\headrulewidth}{0pt}
\if@twoside
\fancyfoot[RO,LE]{\thepage}
\else
\fancyfoot[RO,RE]{\thepage}
\fi
\fi}
\RequirePackage{graphicx}
\newif\if@subtitle
\ifruc@bachelor
\renewcommand{\maketitle}{
\newgeometry{top=25mm,left=25mm,bottom=40mm,right=20mm,footskip=0mm,a4paper}
\setlength{\topskip}{5mm}
\thispagestyle{myheadings}
\linespread{1.5}\selectfont
{\hfill\zihao{-4}\sf\@thesiscode
\begin{center}\zihao{1}\rule[0mm]{0mm}{25mm}\@sign\par\vspace{15mm}
\@title\par
\zihao{2}\@subtitletrue\par\vskip\stretch{1}\zihao{3}
作\qquad 者：\underline{\makebox[90mm]\@author}\hfill\par
学\qquad 院：\underline{\makebox[90mm]\@school}\hfill\par
专\qquad 业：\underline{\makebox[90mm]\@field}\hfill\par
年\qquad 级：\underline{\makebox[90mm]\@grade}\hfill\par
学\qquad 号：\underline{\makebox[90mm]\@studentid}\hfill\par
指导教师：\underline{\makebox[90mm]\@advisor}\hfill\par
论文成绩：\underline{\makebox[90mm]\@score}\hfill\par
日\qquad 期：\underline{\makebox[90mm]\@date}\hfill
\end{center}}
\restoregeometry
\rowspace%本科全文行距
}
\else
\renewcommand{\maketitle}{
\pagestyle{empty}
\begin{center}
\includegraphics[width=7.6cm,height=1.474cm]{figures/clogo.pdf}\\
\sf\zihao{1}\ziju{0.4}\@sign\par
\tt\zihao{3}
\vspace{25mm}\ziju{0}\linespread{1.5}\selectfont
（中文题目）\underline{\parbox[b]{110mm}\@title}\hfill\par\vspace{3mm}
（英文题目）\underline{\parbox[b]{110mm}\@etitle}\hfill\par
\vfill\ziju{0.65}
作者学号：\underline{\makebox[80mm]\@studentid}\hfill\par
作者姓名：\underline{\makebox[80mm]\@author}\hfill\par
所在学院：\underline{\makebox[80mm]{\ziju{0.2}\@school}}\hfill\par
专业名称：\underline{\parbox[b]{80mm}{\centering\ziju{0}\@field}}\hfill\par\ziju{0.65}
导师姓名：\underline{\makebox[80mm]\@advisor}\hfill\par\ %
\ziju{0.25}
论文主题词：\underline{\parbox[b]{80mm}{\vspace*{1pt}\centering\ziju{0}\@keywords}}
\hfill\par\ziju{0}
论文提交日期：\underline{\makebox[80mm]\@date}\hfill
\end{center}
\rowspace%研究生全文行距
\clearpage
\if@twoside
\thispagestyle{empty}
\vspace*{\stretch{1}}
{\zihao{5}
\definecolor{light-gray}{gray}{0.86}
\noindent
\textcolor{light-gray}{
Typeset by \LaTeXe{}\\
With package \tt{\RUCThesis}\\
}}
\cleardoublepage
\fi
}
\fi
\newenvironment{abstractzh}
{\clearpage\chapter*{\cabstractpagesign}\vspace*{-5mm}
\pagenumbering{Roman}\zihao{-4}\rm}
{\par\vspace*{7mm}\noindent\sf\zihao{-4}关键词：
\rm\zihao{-4}\@keywordzh
\thispagestyle{headings}}
\newenvironment{abstracten}
{\clearpage
\ifruc@bachelor\linespread{2}\selectfont
\chapter*{\bf{\eabstractpagesign}}\vspace*{-5mm}
\else\chapter*{\sf{\eabstractpagesign}}\vspace*{-5mm}\fi
\zihao{-4}\rm}
{\par\vspace*{7mm}\noindent
\zihao{-4}\textbf{Key Words : }
\rm\zihao{-4}\@keyworden
\thispagestyle{headings}\rowspace}
\newenvironment{acknowledge}
{\chapter*{\acknowledgesign}\vspace*{-5mm}
\addcontentsline{toc}{chapter}{\acknowledgesign}\zihao{-4}\rm}
{\thispagestyle{plain}}
\newcommand{\authorization}[1]
{\ifruc@doctor\cleardoublepage\else\clearpage\fi
\newgeometry{top=0mm,left=0mm,bottom=0mm,right=0mm,
text={\paperwidth,\paperheight},marginparwidth=0mm}\hspace{-9mm}
\thispagestyle{empty}
\includegraphics[width=\paperwidth-1mm ,totalheight=\paperheight-1mm]{#1}
\restoregeometry}
\newcommand{\originality}{
\chapter*{\zihao{-2}\heiti 独创性声明}
{\tt\zihao{-4}本人郑重声明：所呈交的论文是我个人在导师的指导下进行的研究工作及取得的研究成果。尽我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写的研究成果，也不包含为获得中国人民大学或其他教育机构的学位或证书所使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。\par}
\vskip 10mm\hfill
论文作者：\rule[-1ex]{30mm}{0.25pt}\qquad
日\qquad 期：\rule[-1ex]{30mm}{0.25pt}\par
\vfil\centerline{\heiti\zihao{-2}关于论文使用授权的说明}
\vskip 13mm
{\tt 本人完全了解中国人民大学有关保留、使用学位论文的规定，即：学校有保留送交论文的复印件，允许论文被查阅和借阅；学校可以公布论文的全部或部分内容，可以采用影印、缩印或其他复制手段保存论文。\par
\vskip 10mm\hfill
论文作者：\rule[-1ex]{30mm}{0.25pt}\qquad
日\qquad 期：\rule[-1ex]{30mm}{0.25pt}\par
\hfill \rule[0mm]{0mm}{8mm}
指导老师：\rule[-1ex]{30mm}{0.25pt}\qquad
日\qquad 期：\rule[-1ex]{30mm}{0.25pt}\par}
\thispagestyle{empty}
}
\setcounter{secnumdepth}{4}
\ifruc@bachelor
\ctexset{
chapter = {
name = {,},
number = \arabic{chapter}
},
section = {
number = \thechapter.\arabic{section}
},
subsection = {
number = \thesection.\arabic{subsection}
},
subsubsection = {
number = \thesubsection.\arabic{subsubsection}
},
chapter/format =\vspace{-15mm}\centering,
chapter/numberformat = \bf\zihao{3},
chapter/titleformat = \sf\zihao{3},
chapter/nameformat = \sf\zihao{3},
section/format = ,
section/numberformat = \bf\zihao{4},
section/titleformat = \sf\zihao{4},
subsection/format = ,
subsection/numberformat = \bf\zihao{-4},
subsection/titleformat = \sf\zihao{-4},
subsubsection/format = ,
subsubsection/numberformat = \bf\zihao{5},
subsubsection/titleformat =\sf \zihao{5}
}
\else
\ctexset{
chapter = {
name = {第,章},
number = \arabic{chapter}
},
chapter/format =\centering,
chapter/numberformat = \bf\zihao{-2},
chapter/nameformat = \sf\zihao{-2},
chapter/titleformat = \sf\zihao{-2},
section/format = ,
section/titleformat =\sf\zihao{-3},
section/numberformat = \bf\zihao{-3},
subsection/format = ,
subsection/numberformat = \bf\zihao{-4},
subsection/titleformat = \sf\zihao{-4},
subsubsection/format = ,
subsubsection/titleformat = \sf\zihao{5},
subsubsection/numberformat = \bf\zihao{5}
}
\fi
\RequirePackage{titletoc}
\titlecontents{chapter}[0pt]{\sf\zihao{4}\addvspace{2pt}\filright}
{\contentspush{\thecontentslabel\ }}
{}{\titlerule*[10pt]{.}{\bf\contentspage}}
\titlecontents{section}[2em]{\rm\zihao{-4}\addvspace{2pt}\filright}
{\contentspush{\thecontentslabel\ }}
{}{\titlerule*[10pt]{.}\contentspage}
\titlecontents{subsection}[4em]{\rm\zihao{-4}\addvspace{2pt}\filright}
{\contentspush{\thecontentslabel\ }}
{}{\titlerule*[10pt]{.}\contentspage}
\titlecontents{figure}[10pt]{\rm\zihao{-4}\addvspace{2pt}}
{图~\thecontentslabel\, }
{}{\titlerule*[10pt]{.}\contentspage}
\titlecontents{table}[10pt]{ \rm\zihao{-4}\addvspace{2pt}}
{表~\thecontentslabel\, }
{}{\titlerule*[10pt]{.}\contentspage}
\RequirePackage{ifxetex}
\RequirePackage{ifthen,calc}
\def\ruc@textcircled#1{%
\ifnum \value{#1} <10 \textcircled{\zihao{-6}\arabic{#1}}
\else\ifnum \value{#1} <100 \textcircled{\zihao{7}\arabic{#1}}\fi
\fi}
\ifruc@bachelor
\renewcommand{\thefootnote}{\ruc@textcircled{footnote}}
\renewcommand{\thempfootnote}{\ruc@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\ruc@footnotesize\footnotesize
\renewcommand\footnotesize{\ruc@footnotesize\zihao{-5}}
\def\@makefnmark{\textsuperscript{\hbox{\normalfont\@thefnmark}}}
\long\def\@makefntext#1{
\bgroup
\newbox\ruc@tempboxa
\setbox\ruc@tempboxa\hbox{%
\hb@xt@ 1.5em{\@thefnmark\hss}}
\leftmargin\wd\ruc@tempboxa
\rightmargin\z@
\linewidth \columnwidth
\advance \linewidth -\leftmargin
\parshape \@ne \leftmargin \linewidth
\footnotesize
\@setpar{{\@@par}}%
\leavevmode
\llap{\box\ruc@tempboxa}%
#1
\par\egroup}\else\fi
\ifruc@bachelor
\newcommand{\autograph}{\\{\noindent\zihao{4}\sf\rule[0mm]{0mm}{15mm}作者签名：
\rule[-1ex]{30mm}{0.25pt}}}
\else\fi
\RequirePackage{lscape}
\RequirePackage{multicol}
\RequirePackage{color}
\RequirePackage[dvipsnames,prologue,table]{pstricks}
\definecolor{rucblue}{rgb}{0.129,0.482,0.663}
\definecolor{rucorange}{rgb}{0.976,0.769,0.325}
\definecolor{rucred}{rgb}{0.569,0.129,0.2}
\definecolor{rucgreen}{rgb}{0.333,0.608,0.627}
\definecolor{rucwhite}{rgb}{0.999,0.999,0.999}
\definecolor{rucbalck}{rgb}{0,0,0}
\setCJKfamilyfont{X}{FZXBSJW--GB1-0}
\newcommand{\X}{\CJKfamily{X}}
\newcommand{\cover}{
\newgeometry{top=0mm,left=20mm,bottom=0mm,right=0mm,voffset=10mm,columnsep=5.5cm}
\ifruc@doctor
\pagecolor{rucorange}
\else
\ifruc@master
\pagecolor{rucblue}
\else
\ifruc@promaster
\pagecolor{rucgreen}
\else
\pagecolor{rucred}
\fi
\fi
\fi
\begin{landscape}
\begin{multicols}{2}
\rule[0mm]{22mm}{0mm}
\ifruc@doctor
\includegraphics[width=5.7cm,height=1.14cm]{figures/logo.pdf}\\
\else
\ifruc@promaster
\includegraphics[width=6.3cm,height=1.26cm]{figures/logoW.pdf}\\
\else
\includegraphics[width=5.7cm,height=1.14cm]{figures/logoW.pdf}\\
\fi\fi
{\X
\ifruc@doctor
\color{rucred}
\else\color{rucwhite}
\fi\zihao{2}\rule[10mm]{30mm}{0mm}
\ifruc@doctor
\makebox[5.7cm][s]{\doctorsign}\\
\zihao{-4}\rule[6mm]{32mm}{0mm}\makebox[5.7cm][s]{\doctoresign}
\else
\ifruc@master
\makebox[5.7cm][s]{\mastersign}\\
\zihao{-4}\rule[6mm]{32mm}{0mm}\makebox[5.7cm][s]{\masteresign}
\else
\ifruc@promaster
\makebox[6.3cm][s]{\promastersign}\\
\zihao{-5}\rule[6mm]{32mm}{0mm}\makebox[6.3cm][s]{\promasteresign}
\else
\makebox[5.7cm][s]{\bachelorsign}\\
\zihao{5}\rule[0mm]{32mm}{0mm}\makebox[5.7cm][s]{\bacheloresign}
\fi\fi\fi}
\vfill
\begin{center}
\rule[0mm]{0mm}{30mm}\\
\ifruc@doctor
\includegraphics[width=2cm,height=2cm]{figures/logo2.pdf}\vspace{2mm}\\
\includegraphics[width=5.7cm,height=1.5048cm]{figures/logo3.pdf}\\
\else
\includegraphics[width=2cm,height=2cm]{figures/logoW2.pdf}\vspace{2mm}\\
\includegraphics[width=5.7cm,height=1.5048cm]{figures/logoW3.pdf}\\
\fi
{\X
\ifruc@doctor
\color{rucred}
\else
\color{rucwhite}
\fi
\zihao{0}\ziju{0.3}
\ifruc@doctor\doctorsign
\else
\ifruc@master\mastersign
\else
 \ifruc@promaster\ziju{0.1}\promastersign
\else\bachelorsign
\fi\fi\fi\par\zihao{-4}\rule[0mm]{0mm}{10mm}
\ifruc@doctor\doctoresign
\else
\ifruc@master\masteresign
\else
\ifruc@promaster\promasteresign
\else\bacheloresign
\fi\fi\fi\par}\sf\zihao{-3}
\vspace{40mm}\ziju{0}\linespread{1.5}\rule[0mm]{0mm}{30mm}
\ifruc@doctor\color{rucbalck}\else\color{rucwhite}\fi
论文题目：\underline{\parbox[b]{100mm}\@title}\hfill\par \rule[0mm]{0mm}{10mm}
英\qquad 文：\underline{\parbox[b]{100mm}\@etitle}\hfill\par
\vspace{20mm}\
作\qquad 者：\underline{\makebox[100mm]\@author}\hfill\par\rule[0mm]{0mm}{10mm}
指导教师：\underline{\makebox[100mm]\@advisor}\hfill\par
\vspace{18mm}\@date
\end{center}
\end{multicols}
\thispagestyle{empty}
\ifruc@shuji
\ifruc@doctor\color{rucbalck}\else\color{rucwhite}\fi
\uput[l]{0}(0.5\paperheight,20){{\sf\zihao{3}\shortstack[c]{\@covertitle}}}
\uput[l]{0}(0.5\paperheight,5){{\sf\zihao{3}\shortstack[c]{中\\国\\人\\民\\大\\学}}}
\else\fi
\end{landscape}
\restoregeometry
}
\RequirePackage{caption2}
\captionstyle{normal}
\renewcommand{\captionfont}{\zihao{5}\rm}
\renewcommand{\captionlabelfont}{\zihao{5}\bf}
\renewcommand{\captionlabeldelim}{\,\,}
\RequirePackage{booktabs}%三线表
\RequirePackage{colortbl}%表格颜色
\RequirePackage{diagbox}%表头制作
\RequirePackage{longtable}%长表格
\RequirePackage{multirow}%跨行宏包
\setlength{\abovecaptionskip}{6pt}
\setlength{\belowcaptionskip}{6pt}
\RequirePackage{wrapfig}%图文混排，段落首字下沉
\RequirePackage{subfigure}%子图
\RequirePackage{tikz}%绘图
\RequirePackage{amsmath,amsfonts}%
\RequirePackage{latexsym,bm}%
\RequirePackage{extarrows}%
\RequirePackage{pifont}%
 \endinput
\endinput
%%
%% End of file `ructhesis.cls'.
