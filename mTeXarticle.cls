\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mTeXarticle}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% Required Packages
    \RequirePackage{amsmath,amssymb,amsfonts,amsthm}
    \RequirePackage{authblk}
    \RequirePackage{bm}
    \RequirePackage{bbold}
    \RequirePackage{braket}
    \RequirePackage{color}
    \RequirePackage{cancel}
    \RequirePackage{chapterbib}
    \RequirePackage{enumerate}
    % \RequirePackage{fancyhdr}
    \RequirePackage{feynmp}
    \RequirePackage{float}
    \RequirePackage[        
        letter,% other options: a3paper, a5paper, etc
        left=1in,
        right=1in,
        top=1in,
        bottom=1in
        % use vmargin=2cm to make vertical margins equal to 2cm.
        % us  hmargin=3cm to make horizontal margins equal to 3cm.
        % use margin=3cm to make all margins  equal to 3cm.
        ]{geometry}
    \RequirePackage{graphicx}
    \RequirePackage{ifpdf}
    \RequirePackage{lscape}
    \RequirePackage{listings}
    \RequirePackage{latexsym}
    \RequirePackage{listings}
    \RequirePackage{mathrsfs}
    \RequirePackage{mathtools}
    \RequirePackage[version=4]{mhchem}
    \RequirePackage{mTeXdefs}
    \RequirePackage[numbers]{natbib}
    \RequirePackage{listings}
    \RequirePackage{pdfsync}
    \RequirePackage{sectsty}
    \RequirePackage{setspace}
    \RequirePackage{silence}
        \WarningFilter{latex}{Command \@arrayparboxrestore has changed.}
    \RequirePackage{slashed}
    \RequirePackage{tabularx}
    \RequirePackage{tocvsec2}
    \RequirePackage{verbatim}
    \RequirePackage{xcolor}
    \RequirePackage{xfrac}
    \RequirePackage{xspace}
    \RequirePackage{simpler-wick}
    \RequirePackage{caption}
    \RequirePackage{subcaption}
    \RequirePackage[document]{ragged2e}
        \setlength{\RaggedRightParindent}{\parindent}
    % \RequirePackage{parskip}
        % \setlength{\parskip}{0.1}
    \RequirePackage{lipsum}
%   \RequirePackage[mtpscr]{mtpro2}
%       \pdfmapfile{+mtpro2.map}
	% HyperRef and CleveRef must be called at the end
	\AtBeginDocument{
		\usepackage[colorlinks=true,citecolor=red,hyperfootnotes=true]{hyperref}
        \usepackage{doi}
		\usepackage[nameinlink]{cleveref}
			\crefname{equation}{Eq.~}{Eqs.~}
			\crefname{table}{Table}{Tables}
			\crefname{figure}{Figure}{Figures}
			\crefname{chapter}{Chapter}{Chapters}
			\crefname{appendix}{Appendix}{Appendices}
			\crefname{section}{Section}{Sections}
			\renewcommand{\creflastconjunction}{, and } % Gives Eqs. (1.1), (1.2), and (1.3) as opposed to (1.1), (1.2), (1.3).
		% Graphics rule for proper MetaPost file inclusion
		\ifpdf
		  \DeclareGraphicsRule{*}{mps}{*}{}
		\fi
	}

\renewcommand{\bibname}{References}

% Headers & Index
\AtBeginDocument{
    \setlength{\parindent}{15pt}
    \justifying
    % \fancyhf{}
    % \fancyhead{\slshape \nouppercase \leftmark} % Headers italic and lowercase w/caps when specified.
    % \pagestyle{fancy}

    % \let\oldthebibliography=\thebibliography
% 	\let\endoldthebibliography=\endthebibliography
% 	\renewenvironment{thebibliography}[1]{
% 	\oldthebibliography{#1}
% 	\addcontentsline{toc}{section}{\bibname}}{\endoldthebibliography}

    % \let\oldtheindex=\theindex
    % \let\endoldtheindex=\endtheindex
    % \renewenvironment{theindex}{\oldtheindex \addcontentsline{toc}{section}{\indexname}}{\endoldtheindex}
    
    \captionsetup{labelfont=bf,
	                  width=0.90\textwidth,
	                  justification=justified}

}