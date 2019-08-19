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
\setboolean{fapesp}{false}
%-------------------------------------------------------------------------------
%                package options
%-------------------------------------------------------------------------------
\DeclareOption{fapesp}{\setboolean{fapesp}{true}}
\ProcessOptions\relax% Process package options
%-------------------------------------------------------------------------------
%                style definition
%-------------------------------------------------------------------------------

\ifthenelse{\boolean{fapesp}}{
    \input{fapesp.sty}
}{}


\endinput