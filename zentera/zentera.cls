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
\newboolean{ABNT}
\newboolean{FAPESP}
\setboolean{ABNT}{false}
\setboolean{FAPESP}{false}
%-------------------------------------------------------------------------------
%                package options
%-------------------------------------------------------------------------------
\DeclareOption{ABNT}{\setboolean{ABNT}{true}}
\DeclareOption{FAPESP}{\setboolean{FAPESP}{true}}
\ProcessOptions\relax% Process package options
%-------------------------------------------------------------------------------
%                style definition
%-------------------------------------------------------------------------------

\ifthenelse{\boolean{ABNT}}{
    \input{abnt.sty}
}{%Else do nothing
}
\ifthenelse{\boolean{FAPESP}}{
    \input{fapesp.sty}
}{}


\endinput