# Estado actual — punto de partida para el documento final

Fecha de este corte: 2026-09-16. Este archivo (y los demás en `documento/`) son
**material de preparación**, no el documento final. Objetivo: dejar todo
estructurado antes de escribir texto real en LaTeX.

## Qué pasó con el repo

Se eliminaron ideas de proyecto antiguas (planilla de asistencia, sistema de
biblioteca, plataforma de aprendizaje adaptativo con grafos de conocimiento,
etc.) que vivían en `content/`, `formato/`, `main.tex`, `idea2/PDG-V1.md`,
`idea2/emi*.md`, `idea2/erp-context.md`, `idea2/observaciones.md`,
`idea2/tutor-revision.md` y los archivos de `otros/`. Están en `git status`
como `D` (borrados en el working tree, no en el historial — recuperables con
`git checkout` si hiciera falta).

Lo único que **queda vigente y aprobado** es `perfil/perfil.tex` (+ su PDF
`perfil/perfil.pdf`, su bibliografía `perfil/perfil.bib`). Ese es el perfil de
proyecto de grado ya revisado y aprobado por el tutor (Rolando Lara Sanchez) —
ver commits `a9b98bb`, `d1c1125`, `1ea19e4` ("cambios jurado ana").

**Todo lo que se escriba en el documento final tiene que ser consistente con
ese perfil aprobado.** No es un borrador descartable: es el contrato de
alcance frente al tribunal. Ver [[01-estructura-capitulos]] para el índice
tentativo exacto que ya fue aprobado ahí.

## El tema aprobado (resumen)

- **Título:** Módulo de inteligencia predictiva del ERP ISI Mustang basado en
  el aprovechamiento de datos históricos operativos para anticipar
  desviaciones y riesgos en la gestión de proyectos de ingeniería EPC.
- **Postulante:** Franco Javier Torrez Alvarado. **Tutor:** Rolando Lara
  Sanchez. Santa Cruz, Bolivia, 2026.
- **Objetivo general:** desarrollar un módulo de IA predictiva integrado al
  ERP ISI Mustang (ML sobre datos históricos operativos) para anticipar
  desviaciones y riesgos en proyectos EPC.
- **Delimitación temática** (`perfil/perfil.tex:234`): ML supervisado,
  ingeniería de datos y analítica predictiva sobre datos del ERP. Quedan
  **fuera de alcance** fuentes externas al ERP (IoT, mercado, clima) y
  módulos sin datos históricos suficientes.
- **Delimitación temporal:** desarrollo abril–agosto 2026.

## Ese perfil es distinto del documento que hay que escribir ahora

El perfil (`perfil/perfil.tex`) es un documento corto, de una sola sección
corrida, que ya cumplió su función (fue aprobado). El **documento de Proyecto
de Grado final** es otra cosa: se divide en capítulos completos según la
norma DAAP-UNIVALLE, con preliminares, cuerpo en capítulos, conclusiones y
recomendaciones separadas, y material complementario. Ver
[[01-estructura-capitulos]].

El repo ya tenía un scaffold para esto (`main.tex` + `content/chapter-1..4/`),
pero era el de un tema anterior (grafos de conocimiento) y fue borrado junto
con esa idea. La *forma* del scaffold (clase `univalle-perfil.cls`, comandos
`\capitulo`, `\seccioncuerpo`, `\referencias`, un `.tex` por capítulo) sigue
siendo válida como patrón técnico a reutilizar — solo hay que recrearla con
el contenido del tema actual. Ver [[04-pendientes-preparacion]].

## Reorganización del repo (2026-09-16)

Se limpió la estructura para que el perfil aprobado quede como lo principal
del repo y no como una carpeta más entre varias ideas. Resumen del cambio
(hecho con `git mv`, historial preservado):

- `idea2/` desaparece. Su contenido vigente pasa a **`perfil/`** en la raíz:
  `perfil/perfil.tex`, `perfil/perfil.bib`, `perfil/perfil.pdf`,
  `perfil/imagenes/ishikawa.png`.
- Se **recuperó `univalle-perfil.cls`** (la clase LaTeX real, 599 líneas) que
  estaba borrada en el working tree — vive en la raíz del repo. Dentro de
  `perfil/` queda un symlink de un solo salto: `perfil/univalle-perfil.cls ->
  ../univalle-perfil.cls` (antes era un symlink encadenado de dos saltos vía
  `formato/`, y estaba roto). **Se verificó que compila**
  (`latexmk -xelatex perfil.tex` desde `perfil/`, 37 páginas, sin errores).
- Se corrigió el path hardcodeado de la figura del Ishikawa en `perfil.tex`
  (`idea2/imagenes/ishikawa.png` → `perfil/imagenes/ishikawa.png`) — único
  cambio de contenido hecho al perfil aprobado, puramente mecánico por el
  movimiento de carpeta.
- Las normas, guías y ejemplos de referencia se agruparon en
  **`documento/referencias/`**: `norma-analisis.md`, `guia-perfil-univalle.md`,
  la plantilla oficial en blanco (`plantilla-perfil-univalle.docx`), y los
  tres documentos de ejemplo para el documento final
  (`indice-proyecto-grado.docx`, `ejemplo-capitulos-1-2.docx`,
  `ejemplo-plantilla-capitulos.pdf`).
- Se borró ruido: artefactos de compilación sueltos de `idea2/` (aux, log,
  bcf, xdv, etc. — regenerables, ya cubiertos por `.gitignore`), dos de esos
  artefactos que habían quedado trackeados por error
  (`perfil.bbl-SAVE-ERROR`, `perfil.bcf-SAVE-ERROR`), un PDF duplicado byte a
  byte del perfil (`TAF-Perfil de proyecto de grado.pdf`), una imagen
  `ishikawa.png` huérfana del tema viejo en `imagenes/` raíz, y `.codex`
  (archivo vacío, trackeado y a la vez listado en `.gitignore`).
- Se finalizaron en el índice las eliminaciones ya presentes en el working
  tree desde antes (`content/`, `formato/` viejo, `main.tex`/`main.pdf`,
  `otros/*.docx`, `referencias.bib` de la raíz — bibliografía de psicología
  del aprendizaje, del tema viejo).

Todo esto está en el índice de git (`git add`), listo para revisar, **sin
commitear todavía**.

## Cosas a tener en cuenta

- `README.md` de la raíz sigue describiendo el tema viejo (grafos de
  conocimiento) — pendiente de reescribir.
- El scaffold del documento final (`main.tex` + `content/chapter-N/`) sigue
  sin existir; se recrea cuando se empiece a redactar, no antes.

## Fase actual

**Preparación de estructura**, ya con el repo limpio y reorganizado. Falta:
fijar el índice de capítulos definitivo (ya está, ver
[[01-estructura-capitulos]]), mapear de dónde sale la información de cada
sección (ya está, ver [[02-mapeo-fuentes]]), y tener claro el estado real del
ERP (ya está, ver [[03-contexto-tecnico-erp]]) antes de escribir una sola
línea del documento final. El checklist actualizado está en
[[04-pendientes-preparacion]].
