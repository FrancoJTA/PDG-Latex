# Decisión sobre el tema — RESUELTO (2026-09-16, consultado con el tutor)

**Decisión: opción B.** Se mantiene el módulo predictivo como objeto de
estudio y objetivo general del Proyecto de Grado. Se amplía el alcance para
incluir formalmente el trabajo sobre el ERP. El tutor aprobó la ampliación;
no hace falta que el jurado (commit `1ea19e4`) vuelva a revisar, y el plazo
abril–agosto 2026 se mantiene.

**Alcance ERP agregado formalmente:**
- Autenticación con Keycloak/OAuth
- MCP
- Power BI
- Reimplementación en el ERP de procesos que antes vivían en otro portal
  anterior (Portal ISIMustang Bolivia, PHP/MySQL — distinto de `portal-erp`,
  que es el frontend del ERP nuevo) y que habían quedado obsoletos/ignorados

**Formalidad del cambio:** se reescriben objetivo general, objetivos
específicos y delimitación en `perfil/perfil.tex` para reflejar el alcance
ampliado (no es solo una mención en Cap. I).

Este archivo queda como registro histórico de las opciones evaluadas antes
de esta decisión.

## El problema

`perfil/perfil.tex` (aprobado, con comentarios de jurado ya incorporados —
ver commit `1ea19e4` "cambios jurado ana") tiene como objeto de estudio y
objetivo general **un módulo de inteligencia predictiva integrado al ERP
ISI Mustang**, delimitado explícitamente a "aprendizaje automático
supervisado, ingeniería de datos y analítica predictiva... sobre los datos
operativos del ERP" (`perfil/perfil.tex:234`), excluyendo fuentes externas.

En paralelo, Franco está (o va a estar) trabajando en **rehacer y mejorar el
ERP de ISI Mustang**, incluyendo autenticación con Keycloak/OAuth, MCP e
integración con Power BI. Eso hoy está tratado como una pista separada del
trabajo de tesis (ver `documento/03-contexto-tecnico-erp.md`), pero no está
resuelto si debería seguir siendo así.

## Las tres opciones sobre la mesa

### A. Mantener el tema tal cual está aprobado (módulo predictivo)
El ERP/MCP/Power BI quedan fuera de la tesis, mencionados como mucho como
antecedente breve (Cap. I) o recomendación/trabajo futuro.
- **Consecuencia:** ninguna sobre lo ya aprobado. Es la opción sin trámite.

### B. Ampliar el mismo tema para incluir rehacer/mejorar el ERP + MCP + Power BI como objetivos formales, junto al módulo predictivo
- **A favor:** el objeto de estudio y el objetivo general (módulo predictivo)
  se mantienen; el Cap. I y II del perfil aprobado siguen sirviendo de base.
- **En contra:** sigue siendo una expansión de la delimitación ya aprobada
  (`perfil/perfil.tex:234`) — necesita validación del tutor igual.
- **Riesgo real:** un Proyecto de Grado tiene alcance acotado a propósito
  (norma: 3–6 capítulos, un objeto de estudio). Sumar modernización de ERP +
  SSO + MCP + BI + módulo de ML en el plazo abril–agosto 2026 (definido
  pensando solo en el módulo predictivo) corre el riesgo de leerse como
  falta de foco frente al tribunal, no como más mérito.

### C. Reemplazar el tema por completo (p. ej. "rehacer y mejorar el ERP ISI Mustang")
- **Consecuencia:** no es un ajuste, es un tema nuevo. Antecedentes,
  planteamiento del problema, objetivos, justificación y marco teórico del
  perfil aprobado (todo construido sobre ML/analítica predictiva) dejan de
  servir — hay que reescribir el perfil desde el planteamiento del problema.
  Implica volver a pasar por la aprobación del tutor y probablemente del
  jurado que ya revisó.

## Preguntas que hay que responder (la mayoría, con el tutor)

### Sobre el tema en sí
1. ¿Se mantiene el módulo predictivo como único objeto de estudio (opción A)?
2. Si se amplía (opción B): ¿qué tan formal es esa ampliación — se reescriben
   objetivo general/específicos y delimitación, o se agrega como un capítulo
   adicional sin tocar el objetivo general?
3. Si se reemplaza (opción C): ¿cuál sería el nuevo objeto de estudio y
   objetivo general exactos? ¿Sigue habiendo lugar para el módulo predictivo
   dentro de ese tema nuevo, o queda completamente fuera?

### Sobre el trámite y el cronograma
4. ¿La carrera tiene un proceso formal de "cambio de tema" o "ampliación de
   alcance" para un perfil ya aprobado? ¿Qué plazos tiene?
   **Búsqueda hecha (2026-09-16), sin resultado:** no aparece públicamente
   ningún reglamento de Universidad Privada del Valle (Bolivia) sobre esto.
   Los resultados de búsqueda solo devuelven normativa de la Universidad
   del Valle de Cali, Colombia — es una institución completamente distinta,
   no aplica. Esto no está documentado públicamente en ningún lado
   accesible; **hay que preguntarlo directo a tu tutor o a coordinación de
   carrera**, no hay atajo de investigación acá.
5. ¿El jurado que ya dejó observaciones (commit `1ea19e4`) tiene que volver a
   revisar si el tema cambia o se amplía?
6. La delimitación temporal aprobada es abril–agosto 2026. ¿Ese plazo sigue
   siendo realista si el alcance crece (opción B) o cambia (opción C)?

### Sobre el trabajo ya hecho
7. Si se decide A: ¿cómo se documenta el ERP/MCP/Power BI en el Cap. I sin
   que parezca que son parte del alcance de la tesis?
8. Si se decide B o C: ¿qué parte de `documento/` (estructura de capítulos,
   mapeo de fuentes) sigue sirviendo y qué hay que rehacer?
9. ¿Hay que avisarle a alguien más además del tutor (director de carrera,
   coordinación) antes de mover ficha?

## Estado

**Decidido (opción B, ver encabezado).**

Decisiones derivadas (2026-09-16):
- **Índice:** se mantienen 4 capítulos y un objeto de estudio. El alcance ERP
  entra como secciones: teoría en Cap. II (2.8–2.10), análisis y diseño en
  Cap. III, y construcción **por incrementos** en Cap. IV. Detalle en
  `documento/01-estructura-capitulos.md`. Avisar al tutor del ajuste al
  índice tentativo.
- **Bibliografía:** el documento final usa su propio `documento.bib` (raíz,
  copia inicial de `perfil/perfil.bib`, destino del auto-export de Zotero).
  `perfil/perfil.bib` queda congelado.
- **Portal anterior** = Portal ISIMustang Bolivia (PHP/MySQL 5.7).
  Documentación en `~/Projects/isi-mustang/erp-isi-mustang/docs/old-manual/`.
  Ver `documento/03-contexto-tecnico-erp.md`.

Queda abierto (por diseño, no por falta de respuesta):
- Qué procesos del portal anterior se reimplementan **no es una lista
  cerrada**: el ERP sigue en desarrollo, algunos puntos faltan desarrollar y
  otros dependen de decisiones de negocio todavía en curso. El alcance de
  3.2 y del incremento 4.1 se va fijando a medida que se toman esas
  decisiones — registrarlas en `documento/03-contexto-tecnico-erp.md`
  (sección "Portal anterior") cuando ocurran.
- Reescribir objetivo general/específicos y delimitación en
  `perfil/perfil.tex`.
- Revisar qué partes de `documento/` (estructura de capítulos, mapeo de
  fuentes, contexto técnico ERP) siguen sirviendo tal cual y cuáles hay que
  rehacer para el alcance ampliado (pregunta 8, sin responder aún).
- Confirmar si hay que avisar a alguien más además del tutor —
  coordinación de carrera, director (pregunta 9, sin responder aún).
