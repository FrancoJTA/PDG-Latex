# Decisiones pendientes sobre el tema — no tocar `perfil/perfil.tex` hasta resolver esto

Este archivo existe porque surgió una tensión real entre lo que dice el
perfil **ya aprobado** (`perfil/perfil.tex`) y lo que Franco está evaluando
hacer. Hasta que esto se resuelva (con el tutor, no solo acá), todo lo
preparado en `documento/` sigue asumiendo el escenario tal como está
aprobado hoy — no se reescribe nada por adelantado.

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

**Sin decidir.** `perfil/perfil.tex` no se toca. `documento/` sigue
preparado bajo el escenario A (módulo predictivo tal como está aprobado)
hasta que esto se resuelva.
