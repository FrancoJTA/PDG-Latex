# Plataforma Web de Aprendizaje Adaptativo Basada en Grafos de Conocimiento para la Personalización del Proceso de Estudio

Perfil de Trabajo de Grado — Universidad Privada del Valle (UNIVALLE)
Facultad de Informática y Electrónica — Carrera de Licenciatura en Ingeniería de Sistemas

**Postulante:** Franco Javier Torrez Alvarado
**Tutor:** Rolando Lara Sanchez
**Ciudad:** Santa Cruz, Bolivia — 2025

---

## Requisitos

- **Motor LaTeX:** XeLaTeX (obligatorio, el documento usa `fontspec`)
- **Fuente:** Liberation Sans instalada en el sistema
- **Paquetes TeX:** `latexmk`, `biblatex`, `biblatex-apa`, `biber`, `titlesec`, `geometry`, `setspace`, `fancyhdr`

### Instalación en Fedora/RHEL

```bash
sudo dnf install texlive-xetex texlive-latexmk texlive-biblatex \
                 texlive-biblatex-apa liberation-fonts
```

### Instalación en Ubuntu/Debian

```bash
sudo apt install texlive-xetex latexmk texlive-bibtex-extra \
                 biber fonts-liberation
```

---

## Compilar

El documento requiere múltiples pasadas (XeLaTeX → Biber → XeLaTeX) para resolver referencias y bibliografía. El comando recomendado es:

```bash
latexmk -xelatex main.tex
```

`latexmk` detecta automáticamente cuándo correr Biber y cuántas pasadas son necesarias.

### Otros comandos útiles

```bash
# Compilación única (sin bibliografía actualizada)
xelatex main.tex

# Limpiar archivos auxiliares
latexmk -c

# Limpiar todo incluyendo el PDF
latexmk -C
```

El PDF compilado se genera como `main.pdf`.

---

## Estructura del proyecto

```
ProyectoGrado/
├── main.tex                        # Documento raíz
├── univalle-perfil.cls             # Clase LaTeX con el formato UNIVALLE
├── referencias.bib                 # Bibliografía en formato BibTeX (APA 7)
├── content/
│   ├── intro.tex                   # Dedicatoria, agradecimientos, resumen, abstract
│   ├── chapter-1/content.tex       # Cap. I: Marco General
│   ├── chapter-2/content.tex       # Cap. II: Marco Teórico y Tecnológico
│   ├── chapter-3/content.tex       # Cap. III: Análisis y Diseño del Sistema
│   └── chapter-4/content.tex       # Cap. IV: Construcción e Implementación
└── imagenes/                       # Figuras e imágenes del documento
```

---

## Agregar contenido

### Escribir en un capítulo

Abrir el archivo correspondiente en `content/` y agregar texto debajo del título de sección:

```latex
\subsection{NOMBRE DE LA SECCIÓN}

Texto del contenido...
```

### Citar una referencia

```latex
\textcite{clave}          % Autor (año) — dentro de la oración
\parencite{clave}         % (Autor, año) — al final de la oración
\parencite[p.~25]{clave}  % (Autor, año, p. 25) — con número de página
```

### Agregar una referencia al .bib

Abrir `referencias.bib` y agregar una entrada según el tipo de fuente:

```bibtex
# Artículo de revista
@article{clave,
  author  = {Apellido, Nombre},
  year    = {2020},
  title   = {Título del artículo},
  journal = {Nombre de la Revista},
  volume  = {10},
  number  = {1},
  pages   = {1--10},
  doi     = {10.xxxx/xxxxx},
}

# Libro
@book{clave,
  author    = {Apellido, Nombre},
  year      = {2020},
  title     = {Título del libro},
  publisher = {Editorial},
}
```

### Insertar una figura

```latex
\begin{figure}[H]
  \centering
  \includegraphics[width=0.7\textwidth]{imagenes/nombre.png}
  \caption{Descripción de la figura.}
  \fuente{Elaboración propia, 2025.}
\end{figure}
```

---

## Formato aplicado

La clase `univalle-perfil.cls` aplica automáticamente todas las reglas de la *Guía de Elaboración de Perfil Trabajos de Grado* (DAAP, UNIVALLE 2019):

| Parámetro | Valor |
|---|---|
| Papel | Carta (21,6 × 27,9 cm), una cara |
| Fuente | Liberation Sans 11 pt (equivalente a Arial) |
| Márgenes | Superior/Inferior 2,5 cm — Izquierdo 3 cm — Derecho 2 cm |
| Interlineado | 1,5 general — simple en bibliografía, índice y citas extensas |
| Paginación | Arábiga, margen superior derecho, desde el Cap. I |
| Bibliografía | Norma APA 7 (biblatex + biber) |
