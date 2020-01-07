Classe Zentera
===================================
A classe zentera é um conjunto de estilos para criação de documentos em latex que contêm suporte para criação de relatórios acadêmicos.

## Instalação

A classe pode ser usada tanto no site overleaf quanto em um computador pessoal que possua o conjunto de pacotes exigidos.

### Overleaf

Para utilizar a classe no overleaf é necessário apenas que se faça uma cópia do projeto disponível em https://www.overleaf.com/read/zxxcyxykncyv em sua pasta pessoal do Overleaf.

### Linux

Clone este repositório em sua máquina. Para a utilização da classe zentera, é necessário que o diretório zentera e o arquivo `latexmkrc` estejam na pasta raiz do seu projeto. Na pasta raiz também é contido o arquivo `main.tex`, que pode ser utilizado como exemplo para a criação do relatório.


A seguir é feito algumas explicações dos comandos utilizados no arquivo de exemplo  `main.tex` :
```tex 
\documentclass[report]{zentera} % Esta linha informa ao latex que será utilizado o estilo report da classe zentera. É ela que garante que a classe será utilizada

\department{Departamento} % Adiciona o nome do departamento ao lado direito no rodapé de todas páginas do relatório
\institution{UNICAMP} % Adiciona o nome da instituição ao lado esquerdo no rodapé de todas páginas do relatório
\title{Relatório 1} % Adiciona o título do relatório/experimento
\supervisor{} % Adiciona o nome do professor na capa do relatório
\subject{AA000 A} % Adiciona a sigla da disciplina e a turma na capa do relatório
\author{Nome1 \RA{XXXXXX} \and Nome2 \RA{XXXXXX} \and Nome3 \RA{XXXXXX}} % Adiciona o nome e RA dos integrantes do grupo na capa do relatório
\setjulia


\begin{document} % Início do documento

\makeheader % Gera a capa do relatório (a partir desta linha é adicionado o conteúdo do relatório)

\end{document} % Final do documento*
``` 
### Pacotes que estão contidos na classe zentera
Assim como em todo arquivo `.tex` é necessário a adição de pacotes no arquivo `main.tex` utilizando o comando `usepackage{}`, para assim ser feita a utilização de ferramentas mais específicas, um exemplo seria o pacote `graphicx` que contêm comandos em latex para inserir imagens ao pdf. No entanto, com a utilização do estilo report, alguns pacotes já estão adicionados, não sendo necessário adicioná-los. Segue uma lista desses pacotes (tais pacotes podem ser encontrados no arquivo `/zentera/zentera/report/report.sty`):
```tex
\usepackage{ifthen}     % Package to create conditional variables
\usepackage{fancybox}   % Package to create customizable boxs
\usepackage{multirow}   % Package to create multiple rows
\usepackage{tcolorbox}  % Package to create colored box
\usepackage{xcolor}     % Package to use different colors
\usepackage{amsfonts}   % Package to use math fonts
\usepackage{siunitx}    % Package to use SI
\usepackage{listings}   % Package to display program code
\usepackage{verbatim}   % Package to use verbatim environment
\usepackage{pdfpages}   % Package to add pdf
\usepackage{fancyhdr}   % Package provides extensive facilities, both for constructing headers and footers
\usepackage{float}      % Package to place images
\usepackage{empheq}
\usepackage[left=3.00cm, right=2.00cm, top=3.00cm, bottom=2.00cm]{geometry}
\usepackage{indentfirst}        % Package to indent all paragraph
\usepackage[brazilian]{babel}
\usepackage{float}      % Package to insert [H] parameters in images
\usepackage{graphicx}   % Package to insert images
\usepackage{amsmath}    % Package to use math expressions
\usepackage{url}        % Package to use links in text 
\usepackage[section]{placeins} % Package to create float barriers. Used by question and subquestion commands
```
### Comandos criados para o template de relatórios (report) com a classe Zentera 
Segue uma lista abaixo dos comandos e explicação de seu uso:

* ``` \institution{}```
* ``` \department{}```
* ``` \supervisor{}```
* ``` \subject{}```
* ``` \RA{}```
* ``` \question{}```
* ``` \subquestion{}```
* ``` \hboxedeq{}{}```
