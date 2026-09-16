# Módulo de Inteligencia Predictiva del ERP ISI Mustang

Proyecto de Grado — Universidad Privada del Valle (UNIVALLE)
Facultad de Informática y Electrónica — Carrera de Licenciatura en Ingeniería de Sistemas

**Postulante:** Franco Javier Torrez Alvarado
**Tutor:** Rolando Lara Sanchez
**Ciudad:** Santa Cruz, Bolivia — 2026

Módulo de inteligencia predictiva integrado al ERP interno de ISI Mustang
(empresa de ingeniería EPC — gas, petróleo, minería, energía), que aplica
aprendizaje automático sobre los datos históricos operativos del ERP para
anticipar desviaciones y riesgos en la gestión de proyectos.

---

## Estructura del repositorio

```
PDG-Latex/
├── perfil/                  # Perfil de Proyecto de Grado, YA APROBADO por el tutor
│   ├── perfil.tex               # No editar salvo pedido explícito del tutor
│   ├── perfil.bib
│   ├── perfil.pdf
│   ├── univalle-perfil.cls -> ../univalle-perfil.cls
│   └── imagenes/
├── univalle-perfil.cls      # Clase LaTeX con el formato de la norma DAAP-UNIVALLE
├── imagenes/                # Assets institucionales compartidos (logo, etc.)
└── documento/                # Preparación del documento final (capítulos I-IV)
    ├── README.md                 # Índice de lectura
    ├── 00-estado-actual.md
    ├── 01-estructura-capitulos.md
    ├── 02-mapeo-fuentes.md
    ├── 03-contexto-tecnico-erp.md
    ├── 04-pendientes-preparacion.md
    └── referencias/               # Normas, guías y ejemplos usados como modelo de forma
```

**`perfil/`** es el perfil ya aprobado por el tutor — el contrato de alcance
frente al tribunal. **`documento/`** es la fase de preparación para escribir
el documento final, dividido en capítulos según la norma DAAP-UNIVALLE (que
todavía no existe como scaffold LaTeX — ver `documento/04-pendientes-preparacion.md`).

## Compilar el perfil

### Requisitos

- **Motor LaTeX:** XeLaTeX (obligatorio, usa `fontspec`)
- **Fuente:** Liberation Sans instalada en el sistema
- **Paquetes TeX:** `latexmk`, `biblatex`, `biblatex-apa`, `biber`, `titlesec`, `geometry`, `setspace`, `fancyhdr`

```bash
sudo dnf install texlive-xetex texlive-latexmk texlive-biblatex \
                 texlive-biblatex-apa liberation-fonts   # Fedora/RHEL
# o
sudo apt install texlive-xetex latexmk texlive-bibtex-extra \
                 biber fonts-liberation                  # Ubuntu/Debian
```

### Comandos

```bash
cd perfil/
latexmk -xelatex perfil.tex   # compila (XeLaTeX → Biber → XeLaTeX)
latexmk -c                    # limpia archivos auxiliares
latexmk -C                    # limpia todo, incluido el PDF
```

El PDF se genera como `perfil/perfil.pdf`.

## Formato aplicado

`univalle-perfil.cls` aplica automáticamente las reglas de la *Norma de
Organización y Presentación de Trabajos de Grado* (DAAP, UNIVALLE 2019) —
ver el análisis completo en `documento/referencias/norma-analisis.md`.

| Parámetro | Valor |
|---|---|
| Papel | Carta (21,6 × 27,9 cm), una cara |
| Fuente | Liberation Sans 11 pt (equivalente a Arial) |
| Márgenes | Superior/Inferior 2,5 cm — Izquierdo 3 cm — Derecho 2 cm |
| Interlineado | 1,5 general — simple en bibliografía, índice y citas extensas |
| Bibliografía | Norma APA 7 (biblatex + biber) |
| Títulos | Negrilla mayúsculas (2 dígitos), cursiva mayúsculas (3 dígitos), cursiva minúsculas (4 dígitos) |
| Carátulas | Páginas separadoras sin número para capítulos, conclusiones y referencias |

### Comandos personalizados de la clase

```latex
\makecaratula                   % Carátula
\capitulo{N}{Romano}{Título}    % Página separadora de capítulo + reinicio de contadores
\seccioncuerpo{TÍTULO}          % Página separadora para Conclusiones, Recomendaciones, etc.
\referencias                    % Página separadora + lista bibliográfica APA
\fuente{Texto.}                 % Pie de figura/cuadro con la fuente
```

### Citar una referencia

```latex
\textcite{clave}          % Autor (año) — dentro de la oración
\parencite{clave}         % (Autor, año) — al final de la oración
\parencite[p.~25]{clave}  % (Autor, año, p. 25) — con número de página
```
