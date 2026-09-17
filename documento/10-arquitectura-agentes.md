# Arquitectura de agentes para investigación/redacción/revisión

Tres agentes de proyecto (`.claude/agents/`), un pipeline lineal por
subsección. No hay orquestador automático ni cola de tareas — Franco (o
Claude en la sesión principal) dispara cada paso a mano, porque el volumen
real es "una subsección a la vez", no un batch de capítulos enteros.

## Los tres agentes

| Agente | Rol | Nunca hace |
|---|---|---|
| `investigador` | Busca y verifica fuentes (Semantic Scholar/CrossRef/OpenAlex/arXiv), entrega brief en `documento/investigacion/<subtema>.md` | Redactar prosa, tocar `.bib` |
| `redactor` | Escribe/edita `content/chapter-N/content.tex` a partir del brief o de evidencia real ya construida | Inventar citas o resultados, tocar `perfil/` |
| `revisor` | Chequea estructura, coherencia de alcance, citas, forma LaTeX (chktex/lacheck) | Corregir por su cuenta |

Cada uno tiene su propio archivo de definición con el detalle completo —
esto es solo el mapa de cómo se combinan.

Los tres corren con `model: fable` y leen primero
[[11-brief-proyecto]] (fuente de verdad del proyecto).

## Qué falta para que el pipeline corra completo

- `investigador` ya puede usarse (solo escribe en `documento/investigacion/`).
- `redactor` necesita el scaffold (`main.tex` + `content/`) — si no existe,
  frena y avisa.
- Citas: el documento final usa `documento.bib` (raíz). Hasta que Zotero
  exporte ahí, las entradas nuevas del `investigador` quedan como
  candidatas en su brief.

## Pipeline por subsección

```
1. investigador(subtema)        → documento/investigacion/<subtema>.md
2. redactor(subtema, brief)     → content/chapter-N/content.tex
3. revisor(archivo redactado)   → lista de hallazgos
4. Franco decide qué se corrige → si hace falta, vuelve a redactor
5. latexdiff + envío al tutor   → Flujo 4 de 05-herramientas-flujos.md
```

Para Cap. III/IV, el paso 1 se salta cuando no hay literatura que buscar
(es evidencia propia: datos, código, métricas) — ahí `redactor` trabaja
directo sobre lo ya construido, y `revisor` chequea que no haya afirmación
sin evidencia real detrás.

## Cómo invocarlos

Con el `Agent` tool, `subagent_type` es el nombre del archivo
(`investigador`, `redactor`, `revisor`). Cada llamada arranca sin memoria
de las anteriores — el prompt tiene que decir qué subtema/sección tocar y
dónde están los insumos (brief, código, capítulo anterior).

## Por qué no algo más grande

`documento/05-herramientas-flujos.md` ya evaluó frameworks multi-agente más
pesados (ARS, STORM, GPT-Researcher) y el veredicto fue "no completo" o
"más adelante" — están pensados para journals en inglés o para corpus de
papers propio, no para una tesis de grado en español con norma fija. Tres
agentes de proyecto + pipeline manual cubre lo mismo con cero dependencias
nuevas y control total de cuándo se dispara cada paso.
