
%%
%%  This is file `LU-Thesis.cls',
%%  It is a modification  of Tabriz_thesis of Vahid Damanafshan,
%%	by: Amin Roshani, amin.roshani@aol.com
%%	Ver 0.1, Jan 2017

%% Original Copyright

%%  The original file was xepersian-thesis.cls by Vafa Khalighi
%%   __________________________________
%%   Copyright © 2011-2012 Vahid Damanafshan
%%  
%%   http://damanafshan.tk      
%%   http://forum.parsilatex.com
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{VThesis}
              [10/21/2011 v0.4
 Persian thesis document class in XeLaTeX for University of Tabriz projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}
\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\preface#1{\gdef\@preface{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
{
\if@mscthesis
{\projectLabel{پایان‌نامه}}
\else
 \if@bscthesis
 {\projectLabel{پروژه }}
 \else
{\projectLabel{رساله}}
\fi\fi
}\fi

\ifx\@degree\undefined%
{
\if@mscthesis
\degree{کارشناسی ارشد}
\else
\if@bscthesis
\degree{کارشناسی}
\else
\degree{دکتری}
\fi\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\firstPage}{\begin{titlepage}
%\topmargin=-30pt
\vspace{-10mm}
\centerline{{\includegraphics[width=3cm]{logo}}}
\par
\vspace{-5mm}
{\large\bfseries\@university}\\[0.3cm]
{\large\bfseries\@faculty}
\vskip 1cm
\if@bscthesis 
{\large\bfseries{پروژه کارشناسی }\\[0.3cm]
	\ifx\@field\undefined%
	\relax
	\else
رشته	\@subject\space
	\gerayesh \space \@field
	\fi
}
\else
{\large\bfseries \@projectLabel\ \ \@degree{} 
}
%{\large\bfseries{رشته \@subject}}
\vskip .2cm
\centerline{\large \bfseries%
	{رشته \@subject}
	گرایش \@field}
\fi	
\vskip 5mm
{\large\bfseries{ }}
\vskip .2cm
{\LARGE\titlefont \@title}\par
\vskip 1cm
\par
{\large\bfseries{نگارش}}
\vskip .2cm
{\Large\bfseries   \@name\ \ \@surname}
\par
\vskip 10mm
\large
{
\ifx\@firstsupervisor\undefined%
	\ifx\@secondsupervisor\undefined%
	\else
	\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
اساتید راهنما
\par
{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\par\large
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
استاد مشاور
{\Large\bfseries\par
\@firstadvisor}
\else

\large
استادان مشاور
\par
{\Large\bfseries\@firstadvisor{} و \@secondadvisor}
\fi\fi}

\par
\vskip 6mm
%\vfill
{\large \@thesisdate}
%\vfill
\end{titlepage}%
} % end of firstPage

\newcommand{\besmPage}{
%% صفحه سفید
\newpage
%\pagestyle{empty}\noindent\\ 
%% بسم الله الرحمن الرحیم
\newpage
\thispagestyle{empty}
%\hfill
\begin{center}
\includegraphics[width=10cm]{besm}
\end{center}
}


\newcommand{\Esalat}{
	\pagestyle{empty}
	\centerline{به نام خدا}
	\vspace*{0.3cm}
	\centerline{\includegraphics[height=2cm]{logo}}
	\vspace*{0.3cm}
	\centerline{\LARGE\bfseries{ تعهدنامه اصالت اثر}}
	%--------------------------
	\vskip 1cm
	\baselineskip=.7cm
	اینجانب 
	\@name \ \@surname \ 
	به شماره دانشجویی 
	\@studentID {}
	دانشجوی رشته 
	\@subject {}
	مقطع تحصیلی 
	\@degree {}\space
	متعهد مي‌شوم كه مطالب مندرج در اين 
	\@projectLabel \space
	 حاصل كار پژوهشی اینجانب تحت نظارت و راهنمايي اساتيد دانشگاه لرستان بوده و به دستاوردهای ديگران كه در اين پژوهش از آنها استفاده شده است مطابق مقررات و روال متعارف ارجاع و در فهرست منابع و مآخذ ذكر گرديده است. اين 
\@projectLabel \space
	قبلاً براي احراز هيچ مدرك هم ‌سطح يا بالاتر ارائه نگرديده است.
	
	
	در صورت اثبات تخلف در هر زمان، مدرك تحصيلی صادر شده توسط دانشگاه از درجه اعتبار ساقط بوده و دانشگاه حق پيگيري قانوني خواهد داشت.
	
	كليه نتايج و حقوق حاصل از اين
\@projectLabel \space
	متعلق به 
	\@university\space
	 می‌باشد. هرگونه استفاده از نتايج علمی و عملی، واگذاری اطلاعات به ديگران يا چاپ و تكثير، نسخه ‌برداری، ترجمه و اقتباس از اين
\@projectLabel \space
	بدون موافقت كتبی 
	\@university\space
	 ممنوع است. نقل مطالب با ذكر مآخذ بلامانع است.
	\\[1cm]
	\noindent
	امضا و تاریخ
}



%% تاییدیه هیات داوران
\newcommand{\davaranPage}{
\newpage
\thispagestyle{empty}
\centerline{به نام خدا}
\vspace*{0.1cm}
\centerline{\includegraphics[height=1.5cm]{logo}}
\centerline{{\bfseries \@university}}
\vspace{.1cm}
\noindent
{\centering\titlefont
		صورتجلسه‌ی ارزشیابی  
	\@projectLabel \space \@degree \\}
\vspace*{0.3cm}
 جلسه‌ی دفاع از 
\@projectLabel \space \@degree\space
خانم / آقای :
\@name\ \@surname \space
 رشته:
\@subject \space
 گرایش:
\@field\space
 به شماره دانشجویی:
 \@studentID \space
 با عنوان: 
 \@title \space
 درتاریخ 
 ~~~~/~~~~/~~~~13
 در
 \@faculty \space 
 دانشگاه لرستان برگزار گرديد و هيأت داوران براساس كيفيت 
 \@projectLabel \space
 ، استماع دفاعیه و نحوه‌ی پاسخ به  سوال‌ها ،
 \@projectLabel \space
 ایشان را معادل با 
 ~~~~~~~~
 واحد، بانمره‌ی (به عدد)~~~~~~~~~~~~~~~~~
 \linebreak
 (به حروف )~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  
 و با درجه‌~~~~~~~~~~~ برای دریافت درجه‌ی 
 \@degree\space مورد تایید قرارداند.
 \newline
}


\newcommand\abstractPage{\newpage
\thispagestyle{plain}
\vskip 15mm
{\noindent\Large\bfseries چکیده}
\vspace{10mm}
\par
\noindent
\@fa-abstract
\vspace{8mm}
\par
\noindent
\textbf{واژگان کلیدی:} 
\@keywords
\newpage
}

\newcommand\prefacePage{\newpage
	\thispagestyle{plain}
	\vskip 15mm
	{\noindent\Large\bfseries پیش‌گفتار}
	\vspace{10mm}
	\par
	\noindent
	\@preface
\newpage
}

% \def\latinabstract{\newpage
% \thispagestyle{empty}
% \vskip 15mm
% \begin{center}%{\Large\bfseries \@latintitle \\[5mm]}
% {\bfseries Abstract}
% \end{center}
% \vspace{5mm}}

% \def\endlatinabstract{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}
\noindent
{\Large \bfseries تقدیر و تشکر}
\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{%\nastaliq \scriptsize 
\@name\ \@surname \\
\@thesisdate}
\end{flushleft}}

% \def\abstract{
% \newpage
% \subsection*{چکیده}\small
% \@normalsize
% \@fa-abstract
% }
% \def\endabstract{\par}

%\pagenumbering{harfi}
%\let\ol@chapter\@chapter
%\def\@chapter{%
%  \ifnum\c@chapter=0 \pagenumbering{arabic}\setcounter{page}{1}\fi
%  \ol@chapter}

%\font\latintitlefont=cmssbx10 scaled 2300 %cmssbx10 scaled 2300
\font\supervisorfont=cmbxti10

\newcommand{\latinfirstPage}{%
\newpage\clearpage
\thispagestyle{empty}
\vskip 15mm
{\noindent\bfseries Abstract:}
\vspace{5mm}
\par
\noindent
\@en-abstract
\vspace{8mm}
\par
\noindent
\textbf{Keywords:} 
\@latinkeywords
\newpage\clearpage
\thispagestyle{empty}
\vskip 15mm

\begin{latin}
	\begin{Large}
		Copyright © Lorestan University, 2017\\[0.3cm]                                                         
		All right reserved. No part of this publication may be reproduced, Stored in in a retrieval system,          or transmitted, in any form or by any means, Electronic, mechanical, photocopying, recording, or otherwise, without the prior written permission of Lorestan University. 
	\end{Large}
\end{latin}
\begin{titlepage}
\vspace{-10mm}
{\includegraphics[height=3cm]{logo}}
\centerline{\bf \@latinuniversity} 
\large\bfseries
\@latinfaculty\space 
\vskip 1cm
{
\large
\if@bscthesis 
    B.Sc Thesis
	in  \@latinsubject 
\else 
	 \if@mscthesis
	M.Sc Thesis 
	\else
	Ph.D Thesis
	\fi
	in  \@latinsubject 
	%\baselineskip=.750cm
	%\addtolength{\baselineskip}{-5mm}
\fi
}
\vskip 15mm
{%\latintitlefont 
	\Huge
	\@latintitle}
%\baselineskip=.750cm \par
\vskip 15mm
{\bfseries\latinby}\par
{\large %\supervisorfont
\rm\@latinname \; \@latinsurname}\par

\vskip 15mm

\large
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor:
{\Large\bfseries\par
\@firstlatinsupervisor}
\else
\large
Supervisors:
\par
{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}
\par
\large
{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
Advisor:
{\Large\bfseries\par
\@firstlatinadvisor}
\else

\large
Advisors:
\par
{\Large\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}
\vskip 5mm

\par
\vskip 1cm

{\@latinthesisdate}
\par
\vskip 1cm

\par

\vfill
%
\end{titlepage}
\fi}

\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجه }
\def\by{پژوهشگر}
\def\latinby{By:}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%% Amin Roshani
%% 
%% Copyright © 2011-2012      by Vahid Damanafshan     
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by Vahid Damanafshan.
%% 
%% 
%% 
%% 
%% Special thanks to Vafa Khalighi for his invaluable hints.
%%
%% End of file `LU-Thesis.cls'.
