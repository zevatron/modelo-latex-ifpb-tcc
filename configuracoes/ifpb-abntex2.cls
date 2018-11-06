%%-----------------------------------------------------------------------------
%% The LaTeX Project Public License
%%-----------------------------------------------------------------------------
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% Further information about abnTeX2 are available on http://www.abntex.net.br/
%%------------------------------------------------------------------------------

% ---------------------------------------------------------------------------------------------------------------
% Instituto Federal de Educação, Ciência e Tecnologia da Paraíba - IFPB
% Projeto hospedado em : http://www.github.com/zevatron/
% Autor: José Ricardo
%
% TEMPLATE PARA TRABALHO DE CONCLUSÃO DE CURSO
% Esse template foi adaptado para as normas de TCC/Relatório de estágio dos cursos da Unidade Acadêmica de Informação
% e Comunicação do IFPB a partir do modelo fornecido pela:
% -----------------------------------------------------------------------------
% Universidade Tecnológica Federal do Paraná - UTFPR
%
% Customização da classe abnTeX2 (http://www.abntex.net.br/) para as normas da UTFPR
%
% Projeto hospedado em: <link git>
%
% Autores: Diego Marczal  <>
% 	   Michael Vornes <https://github.com/mvornes>
%
%------------------------------------------------------------------------------
% Codificação: UTF-8
% LaTeX:  abnTeX2
% -----------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{configuracoes/ifpb-abntex2}[2018/10/25 v1.0]

% Repassa os parâmetros ao abntex2
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}

\PassOptionsToClass{%
% Opções da classe memoir
    12pt,                     % Tamanho da fonte
    a4paper,                  % Tamanho do papel.
    sumario=tradicional,      % Seleciona o sumário tradicional
% Opções do pacote babel
    brazil,                   % Idioma do documento
}{abntex2}

\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage[brazilian, hyperpageref]{backref}       % Produzir índice nas referências
\RequirePackage{makeidx}                                % Produzir índice remissivo de palavras
\RequirePackage{chngcntr}

% -----------------------------------------------------------------------------
% Configurações gerais
% -----------------------------------------------------------------------------

% Retira o espaço extra desnecessário nas frases
\frenchspacing

% Configurações do pacote backref usado sem a opção hyperpageref de backref
\renewcommand{\backrefpagesname}{Citado na(s) p\'agina(s):~}

% Texto padrão antes do número das páginas
\renewcommand{\backref}{}

% Define as listas de item compactas (sem espaçamento entre os itens)
\setlist{noitemsep, topsep=0pt, parsep=0pt, partopsep=0pt}

% Define os textos da citação
\renewcommand*{\backrefalt}[4]
{%
    \ifcase #1
        Nenhuma cita\c{c}\~ao no texto.
    \or
        Citado na p\'agina #2.
    \else
        Citado #1 vezes nas p\'aginas #2.
    \fi
}

% Define a numeração das equações de forma sequencial
\counterwithout{equation}{chapter}

% -----------------------------------------------------------------------------
% Comandos de dados
% -----------------------------------------------------------------------------

% Comandos de dados - Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - Programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% Comandos de dados - Subtítulo do trabalho
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

% Comandos de dados - Instituição do orientador
\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}

% Comandos de dados - Instituição do coorientador
\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}

% Comandos de dados -  Tipo de trabalho acadêmico (trabalho de conclusão de curso, tese, dissertação ou projeto de qualificação)
\providecommand{\imprimirprojeto}{}
\newcommand{\projeto}[1]{\renewcommand{\imprimirprojeto}{#1}}

% Comandos de dados - Título Acadêmico a ser alcançado (Bacharel, Tecnólogo)
\providecommand{\imprimirtituloAcademico}{}
\newcommand{\tituloAcademico}[1]{\renewcommand{\imprimirtituloAcademico}{#1}}

% Comandos de dados - Título em Inglês
\providecommand{\imprimirautorcitacao}{}
\newcommand{\autorcitacao}[1]{\renewcommand{\imprimirautorcitacao}{#1}}

% Comandos de dados - Nome autor para citação
\providecommand{\imprimirtitleabstract}{}
\newcommand{\titleabstract}[1]{\renewcommand{\imprimirtitleabstract}{#1}}

% Comandos de dados - Área de concentração com Rótulo
\newcommand{\imprimirareaconcentracaoRotulo}{\'Area de concentra\c{c}\~ao: }
\providecommand{\imprimirareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\imprimirareaconcentracao}{#1}}

% Comandos de dados - linha de pesquisa
\newcommand{\imprimirlinhapesquisaRotulo}{Linha de pesquisa: }
\providecommand{\imprimirlinhapesquisa}{}
\newcommand{\linhapesquisa}[1]{\renewcommand{\imprimirlinhapesquisa}{#1}}

% Comandos de dados - Texto da folha de aprovação
\providecommand{\imprimirtextopadraofolhadeaprovacao}{}
\newcommand{\textopadraofolhadeaprovacao}[1]{\renewcommand{\imprimirtextopadraofolhadeaprovacao}{#1}}

% Comandos de dados - Logomarca da instituição
\providecommand{\imprimirlogoinstituicao}{}
\newcommand{\logoinstituicao}[2]{\renewcommand{\imprimirlogoinstituicao}{\includegraphics[width={#1}\textwidth]{#2}}}

% ------------------------------------------
% Comandos de dados - Dados específicos para o relatório de estágio do IFPB
% ------------------------------------------

\providecommand{\imprimirsupervisorRotulo}{Supervisor:}
\providecommand{\imprimirSupervisor}{}
\newcommand{\supervisor}[1]{\renewcommand{\imprimirSupervisor}{#1}}

\providecommand{\imprimircoordenadorRotulo}{Coordenador do Curso:}
\providecommand{\imprimirCoordenador}{}
\newcommand{\coordenador}[1]{\renewcommand{\imprimirCoordenador}{#1}}

\providecommand{\imprimirempresaRotulo}{Empresa:}
\providecommand{\imprimirEmpresa}{}
\newcommand{\empresa}[1]{\renewcommand{\imprimirEmpresa}{#1}}

\providecommand{\imprimirpreiodoRotulo}{Per\'{\i}odo:}

\providecommand{\imprimirdataInicio}{}
\newcommand{\dataInicio}[1]{\renewcommand{\imprimirdataInicio}{#1}}

\providecommand{\imprimirdataFim}{}
\newcommand{\dataFim}[1]{\renewcommand{\imprimirdataFim}{#1}}

\providecommand{\imprimirPeriodo}{\imprimirdataInicio \ \`a \imprimirdataFim}
% -----------------------------------------

% -----------------------------------------------------------------------------
% Estilo de elementos
% -----------------------------------------------------------------------------

% Elementos pré-textuais
\renewcommand{\pretextual}
{%
    \pagenumbering{gobble}
    \aliaspagestyle{chapter}{empty}
    \pagestyle{empty}
    \aliaspagestyle{cleared}{empty}
    \aliaspagestyle{part}{empty}
}

% Configura layout para elementos textuais
\renewcommand{\textual}
{%
    \pagenumbering{arabic} % A numeração das páginas é em algarismos arábicos, inciando em 1
    \pagestyle{abntheadings}
    \aliaspagestyle{chapter}{abntchapfirst}
    \nouppercaseheads
    \bookmarksetup{startatroot}
}

% Configura layout para elementos pós-textuais
\renewcommand{\postextual}
{%
    \chapterstyle{abnt}
    \phantompart
}

% -----------------------------------------------------------------------------
% Objetos flutuantes
% -----------------------------------------------------------------------------

% Comando que trata a fonte nos objetos flutuantes
\renewcommand{\fonte}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \centering\small{Fonte: #1}
}

% Comando que trata as notas nos objetos flutuantes
\renewcommand{\nota}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \begin{tabular}{l p{.85\textwidth}}%
        Nota: & #1
    \end{tabular}
}

% -----------------------------------------------------------------------------
% Parágrafos
% -----------------------------------------------------------------------------

% Tamanho da indentação do parágrafo
\setlength{\parindent}{1.25cm}

% Espaçamento entre um parágrafo e outro
\setlength{\parskip}{0.0cm}

% -----------------------------------------------------------------------------
% Fontes
% -----------------------------------------------------------------------------

% Redefinição de fontes
\renewcommand{\ABNTEXchapterfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

\renewcommand{\ABNTEXpartfont}{\normalfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\normalfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

% -----------------------------------------------------------------------------
% Sumário
% -----------------------------------------------------------------------------

% Travessão no sumário para apêndices e anexos
\renewcommand{\cftchapteraftersnum}{\hfill\textendash\hfill}

% Insere espaço entre os itens do sumário de diferentes capítulos
\setlength{\cftbeforechapterskip}{1.0em \@plus\p@}

% -----------------------------------------------------------------------------
% Listas
% -----------------------------------------------------------------------------

% Define os títulos das listas
\addto\captionsbrazil{%
% Ajusta nomes padrões do babel
    \renewcommand{\listadesiglasname}{LISTA DE ABREVIATURAS E SIGLAS}
    \renewcommand{\listadesimbolosname}{LISTA DE S\'{I}MBOLOS}
    \renewcommand{\listfigurename}{LISTA DE FIGURAS}
    \renewcommand{\listtablename}{LISTA DE TABELAS}
    \renewcommand{\indexname}{\'{I}NDICE REMISSIVO}
% Ajusta nomes usados com a macro \autoref
    \renewcommand{\pageautorefname}{p\'agina}
    \renewcommand{\sectionautorefname}{Se\c{c}\~ao}
    \renewcommand{\subsectionautorefname}{Subse\c{c}\~ao}
    \renewcommand{\subsubsectionautorefname}{Subsubse\c{c}\~ao}
    \renewcommand{\paragraphautorefname}{Subse\c{c}\~ao}
}

% Cria a lista de quadros
\newcommand{\listofquadrosname}{Lista de Quadros}
\newcommand{\quadroname}{Quadro}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}

% -----------------------------------------------------------------------------
% Capa
% -----------------------------------------------------------------------------
\makeatletter
\renewcommand{\imprimircapa}{
    \begin{capa}
        \begin{center}
    		\begin{SingleSpacing}
        		\begin{center}
        			{\imprimirlogoinstituicao}
        		\end{center}
        % 		Foi usado a fonte \small no cabeçalho para poder caber o nome da instituição em apenas uma linha
                \MakeUppercase{\ABNTEXchapterfont\small\imprimirinstituicao} \\
    	    	\abntex@ifnotempty{\imprimirdepartamento}
                    {
                     \MakeUppercase{\ABNTEXchapterfont\small\imprimirdepartamento} \\
                		}
               	\small\MakeUppercase\imprimirprograma \\
    		\end{SingleSpacing}
        \end{center}
	\vspace{180pt}
	\begin{center}
		\huge\MakeUppercase{\imprimirprojeto}
	\end{center}
        \begin{center}
            \Large\imprimirtitulo
            \abntex@ifnotempty{\imprimirsubtitulo}
	    {%
                {: }{\imprimirsubtitulo}
            }
        \end{center}
	\vspace{90pt}
	\begin{center}
		\huge\imprimirautor\\
	\end{center}
	\vfill
        \begin{center}
		\begin{SingleSpacing}
            		\imprimirlocal\\
            		\imprimirdata
		\end{SingleSpacing}
    	\end{center}

    \end{capa}

}
\makeatother

% -----------------------------------------------------------------------------
% Folha de rosto
% -----------------------------------------------------------------------------
\makeatletter
\renewcommand{\folhaderostocontent}
{%
    \setcounter{page}{2}
    \begin{flushleft}
        \ABNTEXchapterfont\imprimirinstituicao \\
        \ABNTEXchapterfont\imprimirdepartamento \\
        \ABNTEXchapterfont\imprimirprograma
    \end{flushleft}

    \vspace*{96pt}

    \begin{center}
        \ABNTEXchapterfont\large\imprimirtitulo
        \abntex@ifnotempty{\imprimirsubtitulo}
	{%
        	{\ABNTEXchapterfont: }{\large{\imprimirsubtitulo}}
        }
    \end{center}

    \vspace*{60pt}

    \abntex@ifnotempty{\imprimirpreambulo}
    {%
        \SingleSpacing
        \begin{tabular}{p{.25\textwidth}p{.13\textwidth}p{.44\textwidth}}
            & \multicolumn{2}{p{.6\textwidth}}{\ABNTEXchapterfont\large\imprimirautor} \\ \\
            & \multicolumn{2}{p{.6\textwidth}}{\hyphenpenalty=10000{\imprimirpreambulo}} \\
            & & \\
            \abntex@ifnotempty{\imprimirareaconcentracao}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirareaconcentracaoRotulo\imprimirareaconcentracao}} \\
                & & \\
            }
            \abntex@ifnotempty{\imprimirlinhapesquisa}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirlinhapesquisaRotulo\imprimirlinhapesquisa}} \\
                & & \\
            }

        \end{tabular}
    }

    \vspace*{\fill}

    \begin{tabular}{l l}
         \abntex@ifnotempty{\imprimirorientador}
            {%
               \ABNTEXchapterfont\imprimirorientadorRotulo & \imprimirorientador \\
            }
        % \abntex@ifnotempty{\imprimircoorientador}
        %     {%
        %         \ABNTEXchapterfont\imprimircoorientadorRotulo & \imprimircoorientador \\
        %     }
        \ABNTEXchapterfont\imprimirsupervisorRotulo & \imprimirSupervisor \\
        \ABNTEXchapterfont\imprimircoordenadorRotulo & \imprimirCoordenador \\
        \ABNTEXchapterfont\imprimirempresaRotulo & \imprimirEmpresa\\
        \ABNTEXchapterfont\imprimirpreiodoRotulo & \imprimirPeriodo\\
    \end{tabular}

    \vspace*{\fill}

    \begin{center}
	\begin{SingleSpacing}
            \imprimirlocal\\
            % \large\MakeUppercase{\imprimirdata}
	\end{SingleSpacing}
    \end{center}
}
\makeatother

% -----------------------------------------------------------------------------
% Folha de aprovação
% -----------------------------------------------------------------------------
\makeatletter
\newcommand{\imprimirfolhadeaprovacao}
{%
    \begin{folhadeaprovacao}
        \centering\ABNTEXchapterfont{APROVA\c{C}\~{A}O}
        \begin{tabular}{p{.45\textwidth}p{.45\textwidth}}
            & \imprimirtextopadraofolhadeaprovacao \\
        \end{tabular}


        \vspace*{\fill}

        \centering\rule{10cm}{0.1mm} \\
        \ABNTEXchapterfont\imprimirSupervisor \\
        \normalfont{Supervisor da Empresa}
        \vspace*{\fill}

        \centering\rule{10cm}{0.1mm} \\
        \ABNTEXchapterfont\imprimirCoordenador \\
        \normalfont{Coordenador do CST de Sistemas para Internet}
        \vspace*{\fill}

        \centering\rule{10cm}{0.1mm} \\
        \ABNTEXchapterfont{Prof. Dr. \imprimirorientador} \\
        \normalfont{Professor Orientador}
        \vspace*{\fill}

        \centering\rule{10cm}{0.1mm} \\
        \ABNTEXchapterfont\imprimirautor \\
        \normalfont{Estagi\'ario}

        \vspace*{\fill}
    \end{folhadeaprovacao}
}
\makeatother

% -----------------------------------------------------------------------------
% Dedicatória
% -----------------------------------------------------------------------------
\renewenvironment{dedicatoria}[1][]
{%
    \ifthenelse{\equal{#1}{}}{%
        \PRIVATEbookmarkthis{\dedicatorianame}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}

% -----------------------------------------------------------------------------
% Epígrafe
% -----------------------------------------------------------------------------
\renewenvironment{epigrafe}[1][]
{%
    \ifthenelse{\equal{#1}{}}
    {%
        \PRIVATEbookmarkthis{\epigraphname}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}
