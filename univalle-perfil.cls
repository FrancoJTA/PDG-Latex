% =============================================================================
% univalle-perfil.cls
% Clase LaTeX para el Perfil de Trabajo de Grado
% Universidad Privada del Valle (UNIVALLE)
%
% Basada en:
%   Guía de Elaboración de Perfil Trabajos de Grado
%   DAAP — Universidad Privada del Valle, 1ra Ed. 2019
%   ISBN: 978-99974-349-4-4
%
% Modalidades cubiertas: Proyecto de Grado | Trabajo Dirigido | Tesis
%
% Requisitos del sistema:
%   - Motor: XeLaTeX (obligatorio, usa fontspec)
%   - Fuente: Liberation Sans instalada en el sistema
%             (sustituto libre de Arial; instalar con: sudo dnf install liberation-fonts)
%   - Paquetes TeX: geometry, setspace, fancyhdr, titlesec, csquotes,
%                   biblatex, biblatex-apa, biber
%             (Fedora: sudo dnf install texlive-biblatex texlive-biblatex-apa)
%
% Uso mínimo en main.tex:
%   \documentclass{univalle-perfil}
%   \addbibresource{referencias.bib}   % archivo BibTeX con fuentes
%   \universidad{Universidad Privada del Valle}
%   \facultad{Facultad de Informática y Electrónica}
%   \carrera{Carrera de Licenciatura en Ingeniería de Sistemas}
%   \tituloTrabajo{Título del trabajo}
%   \modalidad{PROYECTO DE GRADO}
%   \tituloOptar{Licenciatura en Ingeniería de Sistemas}
%   \postulante{Nombre Completo del Postulante}
%   \tutor{Nombre Completo del Tutor}
%   \ciudad{Santa Cruz}\pais{Bolivia}\anio{2025}
%   \begin{document}
%     \makecaratula
%     \tableofcontents \newpage
%     \pagenumbering{arabic}
%     ... contenido ...
%     \referencias
%   \end{document}
% =============================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{univalle-perfil}[2025/05/06 Perfil de Trabajo de Grado UNIVALLE]

% -----------------------------------------------------------------------------
% CLASE BASE
% 11 pt según Sección 2.2 | oneside: impresión en una sola cara (Sección 2.1)
% -----------------------------------------------------------------------------
\LoadClass[11pt, oneside]{article}

% -----------------------------------------------------------------------------
% PAQUETES REQUERIDOS
% -----------------------------------------------------------------------------
\RequirePackage[spanish, es-noindentfirst]{babel}   % Español; evita sangría tras títulos
\RequirePackage{fontspec}                           % Fuentes del sistema (XeLaTeX)
\RequirePackage{etoolbox}                           % Parcheo de comandos internos
\RequirePackage{geometry}                           % Márgenes (Sección 2.3)
\RequirePackage{setspace}                           % Control de interlineado (Sección 2.5)
\RequirePackage{fancyhdr}                           % Encabezados y paginación (Sección 2.4)
\RequirePackage{titlesec}                           % Formato de secciones
\RequirePackage{titletoc}                           % Formato del índice de contenido
\RequirePackage{graphicx}                           % Imágenes (\includegraphics)
\RequirePackage{csquotes}                           % Comillas tipográficas (requerido por biblatex)
\RequirePackage{ragged2e}                           % Justificación mejorada
\RequirePackage{xcolor}                             % Colores (uso opcional)
\RequirePackage{booktabs}                           % Tablas con mejor tipografía
\RequirePackage{array}                              % Columnas de tabla mejoradas
\RequirePackage{float}                              % Control de posición de figuras y tablas
\RequirePackage{caption}                            % Formato de leyendas de figuras/tablas
\RequirePackage{hyperref}                           % Enlaces y metadatos PDF

% -----------------------------------------------------------------------------
% TIPOGRAFÍA: Arial (Sección 2.2)
% La guía indica Arial 11 pt. Liberation Sans es el sustituto libre de Arial
% disponible en sistemas Linux. Si Arial está instalado en el sistema,
% reemplazar "Liberation Sans" por "Arial" en las tres líneas siguientes.
% -----------------------------------------------------------------------------
\setmainfont{Liberation Sans}[
  BoldFont      = Liberation Sans Bold,
  ItalicFont    = Liberation Sans Italic,
  BoldItalicFont = Liberation Sans Bold Italic
]

% -----------------------------------------------------------------------------
% HOJAS: Tamaño carta, una sola cara (Sección 2.1)
% 21,6 × 27,9 cm = letterpaper
% -----------------------------------------------------------------------------

% -----------------------------------------------------------------------------
% MÁRGENES (Sección 2.3)
% Superior: 2,5 cm | Inferior: 2,5 cm | Izquierdo: 3 cm | Derecho: 2 cm
% La paginación se ubica en el margen superior derecho a 1,5 cm del borde.
% -----------------------------------------------------------------------------
\geometry{
  letterpaper,
  top    = 2.5cm,
  bottom = 2.5cm,
  left   = 3cm,
  right  = 2cm,
  headheight = 15pt,    % altura del encabezado donde va el número de página
  headsep    = 10pt     % separación entre encabezado y texto
}

% -----------------------------------------------------------------------------
% INTERLINEADO (Sección 2.5)
%
% Regla general:
%   - Espacio interlineal (entre líneas): 1,5
%   - Espacio entre párrafo y párrafo; título y párrafo: doble espacio (2,0)
%   - Texto justificado a izquierda y derecha
%
% Excepciones — interlineado simple (1,0):
%   - Citas textuales de más de 40 palabras  → usar ambiente \begin{citaextensa}
%   - Lista de referencias bibliográficas    → comando \referencias lo aplica
%   - Índice de contenido                    → \tableofcontents lo aplica
%   - Índice tentativo                       → usar ambiente \begin{indicetentativo}
% -----------------------------------------------------------------------------
\setstretch{1.5}                           % interlineado 1,5 en todo el documento
\setlength{\parskip}{\baselineskip}        % doble espacio entre párrafos (≈ 1 línea extra)
\setlength{\parindent}{0pt}               % sin sangría de primera línea (estilo APA)
\raggedbottom                              % evita estiramiento vertical excesivo

% Justificación del texto
\justifying

% -----------------------------------------------------------------------------
% NUMERACIÓN DE PÁGINAS (Sección 2.4)
% - Comienza en la primera hoja del contenido (Introducción)
% - Ubicación: margen superior derecho, altura 1,5 cm × 2,5 cm
% - Números arábigos: 1, 2, 3 ...
% - La carátula e índice no llevan número visible
% -----------------------------------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}                    % número en esquina superior derecha
\renewcommand{\headrulewidth}{0pt}         % sin línea horizontal bajo el encabezado

% Estilo sin número: carátula e índice de contenido
\fancypagestyle{sinpagina}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
}

% -----------------------------------------------------------------------------
% FORMATO DE SECCIONES
%
% Estructura del documento UNIVALLE (clase article):
%   \section        → Capítulo (simulado, ej. CAPÍTULO I)
%   \subsection     → Sección principal (ej. 1.1 ANTECEDENTES)
%   \subsubsection  → Subsección (ej. 1.1.1 Subtema)
%   \paragraph      → Nivel 4 (ej. 1.1.1.1 Detalle)
%
% Espacio antes de cada nivel: doble espacio (2 × \baselineskip)
% Espacio después: 1 × \baselineskip (simple)
% El sistema decimal llega hasta 4 dígitos: 1.1.2.1 (Sección 1.11)
% -----------------------------------------------------------------------------
\setcounter{secnumdepth}{4}               % numerar hasta \paragraph
\setcounter{tocdepth}{4}                  % mostrar hasta \paragraph en el índice

% Formato visual de cada nivel
\titleformat{\section}[block]
  {\normalfont\large\bfseries\centering\MakeUppercase}
  {\thesection}{1em}{}

\titleformat{\subsection}[block]
  {\normalfont\normalsize\bfseries\MakeUppercase}
  {\thesubsection}{1em}{}

\titleformat{\subsubsection}[block]
  {\normalfont\normalsize\bfseries}
  {\thesubsubsection}{1em}{}

\titleformat{\paragraph}[block]
  {\normalfont\normalsize\bfseries}
  {\theparagraph}{1em}{}

% Espacios antes y después de cada nivel.
%
% El "before" de titlesec se SUMA al \parskip global (= \baselineskip).
% Con texto antes de una cabecera: total = \parskip + before = doble espacio.
% Entre cabeceras vacías consecutivas: solo se aplica after + before (sin
% \parskip porque no hay párrafo de texto). Usar before = \baselineskip evita
% que se acumulen 3 líneas de espacio en capítulos esqueleto sin contenido.
\titlespacing*{\section}
  {0pt}{\baselineskip}{0.5\baselineskip}

\titlespacing*{\subsection}
  {0pt}{\baselineskip}{0.5\baselineskip}

\titlespacing*{\subsubsection}
  {0pt}{0.5\baselineskip}{0.25\baselineskip}

\titlespacing*{\paragraph}
  {0pt}{0.5\baselineskip}{0.25\baselineskip}

% Romper la cadena que bloquea saltos de página entre títulos consecutivos sin
% texto entre ellos. Sin esto, todos los títulos de un capítulo esqueleto
% quedan pegados en un bloque indivisible que desborda la página.
% \@afterheading se encarga de proteger huérfanas; desactivarlo no afecta el
% contenido real y resuelve el Overfull \vbox en capítulos sin contenido aún.
\AtBeginDocument{%
  \let\@afterheading\relax
}

% -----------------------------------------------------------------------------
% ÍNDICE DE CONTENIDO (Sección 1.2)
% - Interlineado simple (excepción de la regla general)
% - Muestra jerarquía de títulos con número de página correspondiente
% -----------------------------------------------------------------------------
\let\oldtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{%
  \newpage%                              % siempre inicia en página nueva
  \thispagestyle{sinpagina}%
  \begin{spacing}{1.0}%
    \setlength{\parskip}{2pt}%
    \oldtableofcontents%
  \end{spacing}%
  \newpage%                              % deja página nueva para el contenido
}

% -----------------------------------------------------------------------------
% AMBIENTE: CITA EXTENSA (Sección 1.13 + norma APA)
% Usar para citas textuales de MÁS DE 40 PALABRAS.
% Características: interlineado simple, sangría en ambos lados, sin comillas.
%
% Uso:
%   \begin{citaextensa}
%     Texto de la cita de más de cuarenta palabras... (Autor, año, p. X)
%   \end{citaextensa}
% -----------------------------------------------------------------------------
\newenvironment{citaextensa}{%
  \begin{spacing}{1.0}%
  \begin{quote}%
  \setlength{\parskip}{0pt}%
  \small%
}{%
  \end{quote}%
  \end{spacing}%
}

% -----------------------------------------------------------------------------
% AMBIENTE: ÍNDICE TENTATIVO (Sección 1.11)
% Posible estructura del documento final. Interlineado simple.
% Sistema decimal hasta 4 dígitos (ej. 1.1.2.1).
%
% Uso:
%   \begin{indicetentativo}
%     INTRODUCCIÓN \\
%     CAPÍTULO I. MARCO TEÓRICO \\
%     \quad 1.1 Primer tema \\
%     \quad\quad 1.1.1 Subtema \\
%   \end{indicetentativo}
% -----------------------------------------------------------------------------
\newenvironment{indicetentativo}{%
  \begin{spacing}{1.0}%
  \setlength{\parskip}{0pt}%
  \setlength{\leftskip}{0pt}%
}{%
  \end{spacing}%
}

% -----------------------------------------------------------------------------
% REFERENCIAS BIBLIOGRÁFICAS (Sección 1.13)
%
% Normativa recomendada por UNIVALLE: APA (de preferencia)
% También se aceptan: Harvard, Vancouver, ISO 690:2010 (E)
%
% Reglas APA aplicadas:
%   - Orden alfabético por apellido del primer autor
%   - Sin elemento en la lista que no haya sido citado en el texto
%   - Interlineado simple en la lista
%   - Sangría francesa (hanging indent) en cada entrada
%   - Sistema de cita en texto: (Apellido, año) o (Apellido, año, p. X)
%
% Configuración de biblatex: APA con backend biber
% -----------------------------------------------------------------------------
\RequirePackage[
  style     = apa,        % norma APA
  sortcites = true,       % ordenar citas múltiples
  sorting   = nyt,        % orden: nombre, año, título
  backend   = biber       % motor de procesamiento (más completo que bibtex)
]{biblatex}

% Separación entre entradas de la bibliografía
\setlength{\bibitemsep}{6pt}
\setlength{\bibhang}{1.5em}    % sangría francesa

% Comando principal para imprimir la bibliografía con formato correcto:
% interlineado simple, título en mayúsculas, ajustado a la guía.
\newcommand{\referencias}{%
  \newpage%
  \begin{spacing}{1.0}%
    \setlength{\parskip}{0pt}%
    \printbibliography[title={REFERENCIAS BIBLIOGRÁFICAS}]%
  \end{spacing}%
}

% -----------------------------------------------------------------------------
% METADATOS DE LA CARÁTULA
% Definir estos comandos en el preámbulo de main.tex antes de \begin{document}
% -----------------------------------------------------------------------------
\newcommand{\@universidad}{Universidad Privada del Valle}
\newcommand{\@facultad}{}
\newcommand{\@carrera}{}
\newcommand{\@tituloTrabajo}{}
\newcommand{\@modalidad}{PROYECTO DE GRADO}
\newcommand{\@tituloOptar}{}
\newcommand{\@postulante}{}
\newcommand{\@tutor}{}
\newcommand{\@ciudad}{Santa Cruz}
\newcommand{\@pais}{Bolivia}
\newcommand{\@anio}{2025}

\newcommand{\universidad}[1]{\renewcommand{\@universidad}{#1}}
\newcommand{\facultad}[1]{\renewcommand{\@facultad}{#1}}
\newcommand{\carrera}[1]{\renewcommand{\@carrera}{#1}}
\newcommand{\tituloTrabajo}[1]{\renewcommand{\@tituloTrabajo}{#1}}
\newcommand{\modalidad}[1]{\renewcommand{\@modalidad}{#1}}
\newcommand{\tituloOptar}[1]{\renewcommand{\@tituloOptar}{#1}}
\newcommand{\postulante}[1]{\renewcommand{\@postulante}{#1}}
\newcommand{\tutor}[1]{\renewcommand{\@tutor}{#1}}
\newcommand{\ciudad}[1]{\renewcommand{\@ciudad}{#1}}
\newcommand{\pais}[1]{\renewcommand{\@pais}{#1}}
\newcommand{\anio}[1]{\renewcommand{\@anio}{#1}}

% -----------------------------------------------------------------------------
% CARÁTULA: \makecaratula (Sección 1.1 + Figura 2)
%
% Especificaciones tipográficas según Figura 2, DAAP 2019:
%
%   ZONA                    FUENTE          ESTILO          INTERLINEADO
%   Datos institucionales   Arial 13        Negrita         Simple
%   Título del trabajo      Arial 15        Mayúsc+Negrita  Simple, centrado
%   Datos del trabajo       Arial 11        Mayúsc+Negrita  1,5 — 3 líneas, derecha
%   Datos postulante/tutor  Arial 13        Mayúsc+Negrita  1,5
%   Ciudad, País, Año       Arial 11        Minúsculas      1,5 — centrado
%
% Márgenes de la carátula: Superior 2,5 | Inferior 2,5 | Izq. 3 | Der. 2 cm
% (coinciden con los márgenes generales, ya configurados en \geometry)
% -----------------------------------------------------------------------------
\newcommand{\makecaratula}{%
  \begin{titlepage}%
    \thispagestyle{sinpagina}%

    % ── Encabezado: Logo + Datos institucionales ──────────────────────────
    \noindent
    \begin{minipage}[t]{0.20\textwidth}
      \vspace{0pt}%
      \includegraphics[width=2.8cm]{imagenes/logo.png}%
    \end{minipage}%
    \hfill
    \begin{minipage}[t]{0.76\textwidth}
      \vspace{0pt}%
      \begin{spacing}{1.0}%
        \fontsize{13}{15.6}\selectfont
        \textbf{\@universidad}\\
        \textbf{\@facultad}\\
        \textbf{\@carrera}
      \end{spacing}%
    \end{minipage}

    \vfill

    % ── Título del trabajo: Arial 15, mayúsculas, negrita, centrado ────────
    \begin{center}
      \begin{spacing}{1.0}%
        \fontsize{15}{18}\selectfont
        \textbf{\MakeUppercase{\@tituloTrabajo}}
      \end{spacing}%
    \end{center}

    \vfill

    % ── Datos del trabajo de grado: Arial 11, mayúsculas, negrita, 1,5 ────
    % 3 líneas, alineadas a la derecha
    \begin{flushright}
      \begin{spacing}{1.5}%
        \fontsize{11}{13.2}\selectfont
        \textbf{%
          \MakeUppercase{\@modalidad} PARA OPTAR\\
          AL TÍTULO DE\\
          \MakeUppercase{\@tituloOptar}%
        }%
      \end{spacing}%
    \end{flushright}

    \vfill

    % ── Postulante y Tutor: Arial 13, mayúsculas, negrita, 1,5 ───────────
    \begin{center}
      \begin{spacing}{1.5}%
        \fontsize{13}{15.6}\selectfont
        \textbf{POSTULANTE: \MakeUppercase{\@postulante}}\\
        \textbf{TUTOR: \MakeUppercase{\@tutor}}
      \end{spacing}%
    \end{center}

    \vfill

    % ── Ciudad, País, Año: Arial 11, minúsculas, 1,5, centrado ───────────
    \begin{center}
      \begin{spacing}{1.5}%
        \fontsize{11}{13.2}\selectfont
        \@ciudad{} -- \@pais\\
        \@anio
      \end{spacing}%
    \end{center}

  \end{titlepage}%
}

% -----------------------------------------------------------------------------
% PÁGINA PRELIMINAR (\paginaprevia)
% Para: DEDICATORIA, AGRADECIMIENTOS, RESUMEN, ABSTRACT
% No aparecen en el índice de contenido ni llevan número de página.
%
% Uso:
%   \paginaprevia{DEDICATORIA}
%   Texto de la dedicatoria...
% -----------------------------------------------------------------------------
\newcommand{\paginaprevia}[1]{%
  \newpage%
  \thispagestyle{sinpagina}%
  \begin{center}%
    \textbf{\Large #1}%
  \end{center}%
  \vspace{1cm}%
}

% -----------------------------------------------------------------------------
% CAPÍTULO (\capitulo)
% Reemplaza el bloque manual de \begin{center}...\end{center} +
% \addcontentsline + \setcounter que se repetía en cada archivo de capítulo.
%
% Argumentos:
%   #1 = número arábigo del capítulo (para el contador interno)  → ej. 1
%   #2 = número romano para mostrar                              → ej. I
%   #3 = título del capítulo                                     → ej. Marco General
%
% Qué hace:
%   - Inicia nueva página
%   - Registra el capítulo en el índice de contenido
%   - Configura el contador de sección al número del capítulo
%   - Reinicia explícitamente subsección, subsubsección y párrafo
%   - Muestra el encabezado "CAPÍTULO X / Título" centrado
%
% Uso:
%   \capitulo{1}{I}{Marco General}
%   \capitulo{2}{II}{Marco Teórico y Tecnológico}
% -----------------------------------------------------------------------------
\newcommand{\capitulo}[3]{%
  \newpage%
  % Registrar en TOC antes de cambiar el contador (evita número automático)
  \addcontentsline{toc}{section}{CAPÍTULO #2: \MakeUppercase{#3}}%
  % Configurar contadores
  \setcounter{section}{#1}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  \setcounter{paragraph}{0}%
  % Mostrar encabezado
  \thispagestyle{fancy}%
  \begin{center}%
    {\large\textbf{CAPÍTULO #2}}\\[0.5cm]%
    {\normalsize\textbf{\MakeUppercase{#3}}}%
  \end{center}%
  \nopagebreak[4]%
}

% -----------------------------------------------------------------------------
% LEYENDAS DE FIGURAS Y TABLAS (convención interna)
% Formato: "Figura N. Descripción" / "Cuadro N. Descripción"
% Fuente se indica manualmente con \fuente{} debajo de la figura/tabla.
% -----------------------------------------------------------------------------
\captionsetup{
  labelsep   = period,      % "Figura 1. Descripción"
  font       = small,
  labelfont  = bf,
  justification = raggedright,
  singlelinecheck = false
}

% Usar "Cuadro" en lugar de "Tabla" (convención UNIVALLE)
\addto\captionsspanish{\renewcommand{\tablename}{Cuadro}}

% Comando para la fuente de una figura o cuadro
% Uso: \fuente{DAAP, 2019.}
\newcommand{\fuente}[1]{%
  \par\vspace{2pt}%
  {\small\textit{Fuente: #1}}%
}

% -----------------------------------------------------------------------------
% CITAS EN EL TEXTO (norma APA)
%
% Usar los comandos de biblatex:
%   \textcite{clave}          → Autor (año)
%   \parencite{clave}         → (Autor, año)
%   \parencite[p.~X]{clave}   → (Autor, año, p. X)
%
% Para citas textuales breves (≤ 40 palabras): entre comillas en el texto.
%   Ejemplo: "texto" \parencite[p.~26]{limusa2008}
%
% Para citas textuales largas (> 40 palabras): usar ambiente \begin{citaextensa}
% -----------------------------------------------------------------------------

% -----------------------------------------------------------------------------
% CONFIGURACIÓN DE HYPERREF
% Metadatos del PDF y estilo de enlaces
% -----------------------------------------------------------------------------
\hypersetup{
  colorlinks = true,
  linkcolor  = black,
  citecolor  = black,
  urlcolor   = black,
  pdfborder  = {0 0 0}
}

% =============================================================================
% FIN DE univalle-perfil.cls
% =============================================================================
