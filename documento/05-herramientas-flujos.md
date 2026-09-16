# Herramientas, skills, repos y MCP evaluados — y los flujos que arman

Recopilación de todo lo que se evaluó en la fase de preparación de
herramientas (independiente de la decisión de tema en `decisiones-tema.md`
— esto aplica igual sea cual sea el resultado). Formato: qué es, veredicto,
por qué.

## Resumen rápido — qué vale la pena de entrada

| Herramienta | Para qué | Vale la pena |
|---|---|---|
| Semantic Scholar / CrossRef / OpenAlex / arXiv (APIs) | buscar y verificar citas | **Sí** — cero fricción, lo uso yo directo |
| Zotero + Better BibTeX | dejar de editar `perfil.bib` a mano | **Sí** — mayor impacto por menor esfuerzo |
| PaperQA2 | preguntas con cita exacta sobre tus propios PDFs | **Sí** — lo puedo correr yo mismo |
| GROBID | extraer metadata bibliográfica de PDFs → `.bib` | **Sí**, junto con PaperQA2 |
| LanguageTool | gramática/estilo en español | **Sí** — lo corro yo, sin cuenta |
| chktex / lacheck | linter de LaTeX | **Sí** — gratis, instantáneo |
| latexdiff | diff visual entre revisiones para el tutor/jurado | **Sí** — ya hay precedente de rondas de revisión |
| `diagram-design` (skill local) | C4, ER, secuencia para Cap. III/IV | **Sí**, como complemento al TikZ que ya se usa |
| `anthropic-skills:pdf` (skill local) | fusionar/dividir/OCR los PDFs que ya tenés | **Sí**, utilidad directa |
| Elicit.org | estado del arte con tablas comparativas | **Sí**, para el Cap. II §2.6 |
| GPT-Researcher (como Claude Skill) | reportes de investigación puntuales | **Sí**, bajo costo de entrada |
| STORM (`VectorRM`) | outline+borrador citado por subtema | **Sí, más adelante** — cuando haya corpus propio de papers |
| `graphify` (skill local) | mapear el ERP o un corpus de papers como grafo | **Probar primero** — valor no confirmado aún |
| Context7 (MCP) | docs actualizadas de DuckDB/Polars/FastAPI/NestJS/Angular | **Sí, para la fase de construcción** (Cap. IV), no ahora |
| Zotero MCP | Claude lee/escribe directo en tu Zotero | Opcional, solo si adoptás Zotero |
| ARS — `Imbad0202/academic-research-skills` (pipeline completo) | research→write→review→revise→finalize | **No completo** — pensado para journals en inglés, ~$4-6/paper, trae simulación de peer review que no aplica a un Proyecto de Grado |
| ARS — solo el módulo Deep Research / citation-conversion | verificación Semantic Scholar + cita a BibTeX | **Sí, en piezas sueltas**, no el paquete entero |
| Consensus.app | respuestas rápidas con cita | Opcional, redundante con Elicit |
| Google NotebookLM | Q&A ancladas a tus PDFs | Opcional, redundante con PaperQA2 (mejor UX, sin instalar nada) |
| dzhng/deep-research, LangChain `open_deep_research` | alternativas a GPT-Researcher | **No** — no aportan nada que GPT-Researcher no cubra ya |
| Jenni AI / Writefull / asistentes de redacción SaaS | "escribime esto" | **No** — de pago, en inglés, no aportan sobre lo que yo ya hago en la conversación |
| `anthropic-skills:pptx` | slides de la defensa | Sí, pero **más adelante**, no ahora |
| `anthropic-skills:docx` | documento en Word | Solo si algún trámite institucional lo pide |

## 1. APIs académicas (las uso yo, sin instalar nada)

- **Semantic Scholar API** — buscar papers, abstracts, citas, BibTeX. Gratis sin key para uso básico.
- **CrossRef API** — DOI/título → metadata limpia (autor, año, revista) lista para convertir a APA/BibTeX.
- **OpenAlex API** — índice académico abierto, buena cobertura en ingeniería/ML.
- **arXiv API** — preprints de ML (Gradient Boosting, XGBoost, feature engineering).

Estas cuatro son el piso: verificación de fuentes reales antes de meter cualquier cita en `perfil.bib`, sin fricción de instalación.

## 2. Repos / frameworks open source de investigación

- **STORM** (`stanford-oval/storm`) — pre-writing en dos etapas (investigación multi-perspectiva → outline → artículo con citas). Explícitamente no da texto listo para publicar, sirve para pre-escritura. `VectorRM` permite anclarlo a documentos propios en vez de solo la web.
- **GPT-Researcher** (`assafelovic/gpt-researcher`) — reportes de investigación puntuales (planner + agentes ejecutores + agregador), soporta investigación local y MCP, exporta a PDF/Word, instalable como Claude Skill (`npx skills add assafelovic/gpt-researcher`).
- **PaperQA2** (`Future-House/paper-qa`) — preguntas científicas sobre tu propia colección de PDFs con cita exacta a paper/página. Hecho específicamente para minimizar alucinación de citas. Lo puedo correr yo (`pip install paper-qa`).
- **GROBID** — extrae metadata bibliográfica estructurada de PDFs de papers (Java, corre local o Docker). Automatiza construir entradas de `perfil.bib` a partir de una carpeta de PDFs.
- **dzhng/deep-research** y **LangChain `open_deep_research`** — clones del patrón "deep research". No aportan nada sobre GPT-Researcher para este caso — mencionados solo por completitud.

## 3. Herramientas SaaS (las usás vos, no las opero yo)

- **Elicit.org** — la más indicada para el Estado del Arte (§2.6 del índice): extrae datos estructurados de varios papers y arma tablas comparativas (método, dataset, resultado).
- **Consensus.app** — respuestas rápidas tipo "¿qué dice la evidencia sobre X?" con cita. Redundante con Elicit, útil solo para pasadas muy rápidas.
- **Google NotebookLM** — subís tus PDFs y te responde ancladas a esos documentos exactos. Se superpone con PaperQA2; ventaja de NotebookLM es que no instalás nada, desventaja es que no lo opero yo directamente.

## 4. Gestión de referencias

- **Zotero + Better BibTeX** — reemplaza la edición manual de `perfil.bib`: cada fuente que agregás en Zotero se sincroniza automáticamente al `.bib`. Es la mejora de mayor impacto con menor esfuerzo de todo lo evaluado.
- **Zotero MCP** (opcional) — si adoptás Zotero, me deja leer/agregar citas directo a tu biblioteca desde la sesión.

## 5. Calidad de escritura y de LaTeX

- **LanguageTool** — gramática/estilo en español, open source, tiene API en Python (`language-tool-python`) que corro yo directo sobre el texto de cada capítulo.
- **chktex / lacheck** — linters de LaTeX: detectan espacios no separables faltantes antes de citas, comillas rectas en vez de tipográficas, etc.
- **latexdiff** — genera un PDF con el diff visual entre dos versiones de un capítulo. Útil para las rondas de revisión con el tutor/jurado (ya hay precedente: commit `1ea19e4` "cambios jurado ana").
- **Jenni AI / Writefull** y similares — **no valen la pena**: de pago, en inglés, y no aportan nada sobre lo que ya hago en la conversación con contexto real de tu proyecto.

## 6. Claude Code Skills ya disponibles en esta sesión

- **`diagram-design`** — para C4 (contexto/contenedores), ER de datos, diagramas de secuencia y flujo del Cap. III/IV. El perfil ya usa TikZ nativo para Ishikawa/árbol del problema/arquitectura — para diagramas más complejos (C4, ER) puede ser más rápido armarlos acá y embeberlos como imagen.
- **`anthropic-skills:pdf`** — fusionar/dividir/OCR/extraer páginas de los PDFs que ya tenés dando vueltas (`documento/referencias/`, papers nuevos).
- **`graphify`** — mapear `erp-isi-mustang/docs/documentation/` (o un corpus de papers) como grafo navegable. Valor no confirmado todavía — vale la pena probarlo una vez antes de decidir si se integra al flujo.
- **`anthropic-skills:pptx`** — para la presentación de defensa, más adelante, no ahora.
- **`anthropic-skills:docx`** — solo si algún trámite institucional pide el documento en Word.

## 7. Skills externos encontrados en internet

- **`Imbad0202/academic-research-skills` (ARS)** — suite completa research→write→review→revise→finalize, 48k+ estrellas, activamente mantenido, con verificación Semantic Scholar y protocolo anti-alucinación de citas.
  - **El paquete completo no vale la pena para este proyecto**: está armado para papers de journal en inglés (formato APA 7.0, simulación de peer review, "Journal-Fit Reviewer", rondas de R&R) que no aplican a un Proyecto de Grado con la norma DAAP-UNIVALLE. Además, estiman ~$4-6 de costo de API por paper de 15k palabras solo en el pipeline completo.
  - **Sí vale la pena en piezas sueltas**: el módulo de Deep Research con verificación Semantic Scholar + conversión de citas a BibTeX, instalado aparte del resto del pipeline (el repo permite instalar skills individuales, no solo el paquete entero).

## 8. MCP servers

- **Context7** — documentación actualizada de librerías (DuckDB, Polars, FastAPI, NestJS, Angular). Útil para cuando arranque la construcción real del módulo predictivo (Cap. IV), para que el texto técnico no tenga detalles desactualizados o inventados. No es necesario ahora.
- **Zotero MCP** — ver punto 4.

---

## Flujos de trabajo propuestos

### Flujo 1 — Investigación y citas para el Cap. II (marco teórico / estado del arte)
1. Buscar candidatos por subtema con Semantic Scholar/CrossRef/OpenAlex (los consulto yo) o con Elicit (lo hacés vos para estado del arte comparativo).
2. Juntar los PDFs relevantes en una carpeta del repo.
3. GROBID extrae la metadata → entradas nuevas para `perfil.bib`.
4. PaperQA2 responde preguntas puntuales ancladas a esos PDFs, con cita exacta a paper y página.
5. Yo redacto la prosa del capítulo con esas respuestas + tu criterio, en el formato de la norma (`documento/referencias/norma-analisis.md`).
6. LanguageTool + chktex antes de compilar, para no mandar errores de forma al tutor.

### Flujo 2 — Gestión de referencias continua
1. Zotero como fuente única de verdad de la bibliografía (conector de navegador o import por DOI).
2. Better BibTeX sincroniza automáticamente `perfil.bib` — se termina la edición manual del `.bib`.

### Flujo 3 — Diagramas técnicos (Cap. III/IV)
1. TikZ nativo para lo que sigue el estilo ya establecido en el perfil (Ishikawa, árbol del problema, arquitectura por capas).
2. `diagram-design` para C4 (contexto/contenedores) y ER de datos, exportado como imagen e incluido con `\includegraphics`.
3. `graphify` sobre `erp-isi-mustang/docs/documentation/` para entender relaciones entre módulos antes de escribir 3.1 (Análisis de Datos Históricos).

### Flujo 4 — Ciclo de revisión con el tutor
1. Redactar o editar un capítulo.
2. `latexdiff` entre la versión anterior y la nueva → PDF de cambios.
3. Mandar ese diff al tutor en vez del documento entero.
4. Incorporar observaciones y repetir — mismo patrón que ya se usó para el perfil (commit `1ea19e4`).

### Flujo 5 — Preparación de la defensa (futuro, no ahora)
1. Una vez aprobado el documento final, `anthropic-skills:pptx` arma las slides a partir del contenido ya redactado.

## Nota sobre alcance

Todo esto es preparación de herramientas, independiente de qué opción se
elija en `decisiones-tema.md` — los flujos de investigación/citas/redacción
aplican igual si el tema queda como está, se amplía o cambia. Nada de esto
se instaló todavía; queda para cuando se retome la fase de redacción.
