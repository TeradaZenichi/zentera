%Author:        Lucas Zenichi Terada
%Institution:   University of Campinas
%Description:   File that loads the necessary packages for a monograph in the format ABNT
%               Some packages are commented out to make the class file lighter. 
%               Uncomment it if you want to use specific functions

%-------------------------------------------------------------------------------
%                identification
%-------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zentera}
\LoadClass{article}
%-------------------------------------------------------------------------------
%                required packages
%-------------------------------------------------------------------------------
\RequirePackage{ifthen}
\usepackage[utf8]{inputenc}
%-------------------------------------------------------------------------------
%                Define booleans
%-------------------------------------------------------------------------------
\newboolean{fapesp}
\newboolean{report}
\setboolean{fapesp}{false}
\setboolean{report}{false}
%-------------------------------------------------------------------------------
%                package options
%-------------------------------------------------------------------------------
\DeclareOption{fapesp}{\setboolean{fapesp}{true}}
\DeclareOption{report}{\setboolean{report}{true}}
\ProcessOptions\relax% Process package options
%-------------------------------------------------------------------------------
%                style definition
%-------------------------------------------------------------------------------

\ifthenelse{\boolean{fapesp}}{
    \input{fapesp/fapesp.sty}
}{}
\ifthenelse{\boolean{report}}{
    \input{report/report.sty}
}{}


\endinput