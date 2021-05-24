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
% \LoadClass{article}
%-------------------------------------------------------------------------------
%                required packages
%-------------------------------------------------------------------------------
\RequirePackage{ifthen}

%-------------------------------------------------------------------------------
%                Define booleans
%-------------------------------------------------------------------------------
\newboolean{fapesp}
\newboolean{report}
\newboolean{guide}
\setboolean{fapesp}{false}
\setboolean{report}{false}
\setboolean{guide}{false}

%-------------------------------------------------------------------------------
%                package options
%-------------------------------------------------------------------------------
\DeclareOption{fapesp}{\setboolean{fapesp}{true}}
\DeclareOption{report}{\setboolean{report}{true}}
\DeclareOption{guide}{\setboolean{guide}{true}}
\ProcessOptions\relax% Process package options
%-------------------------------------------------------------------------------
%                style definition
%-------------------------------------------------------------------------------

\ifthenelse{\boolean{fapesp}}{
    \usepackage[utf8]{inputenc}
    \LoadClass{article}
    \input{fapesp/fapesp.sty}

}{}
\ifthenelse{\boolean{report}}{
    \usepackage[utf8]{inputenc}
    \LoadClass{article}
    \input{report/report.sty}

}{}
\ifthenelse{\boolean{guide}}{
    \LoadClass[10pt,letterpaper]{article}
    \input{guide/guide.sty}
}{}



\endinput