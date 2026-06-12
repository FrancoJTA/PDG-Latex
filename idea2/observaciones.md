# Observaciones pendientes

## Precisión de "desviaciones y riesgos"
El término "desviaciones y riesgos" usado en la formulación del problema y el objetivo general puede ser demasiado genérico.

**Desviaciones** = diferencia entre monto estimado y monto certificado real (módulo certifications, campo `deviation` + `deviation_cause`).

**Riesgos** cubre:
- Presupuestario: proyectos que excederán su presupuesto (`project_budget_lines`)
- De recursos: empleados sobreasignados (`resource_assignments`)
- De aprobación: requisiciones tardías o rechazadas (`requisitions`)
- De cronograma: proyectos fuera de fecha (`projects`)

**Pendiente:** evaluar si conviene reemplazar "desviaciones y riesgos" por "desviaciones presupuestarias y riesgos operativos" o algo más específico como "desviaciones en certificaciones, sobrecostos y cuellos de botella de recursos" en la formulación del problema y el objetivo general.

---

## Fechas del ERP y cronograma

- **Pendiente:** confirmar el año exacto en que el ERP ISI Mustang entró en operación (actualmente se usa "más de diez años" como aproximación en la delimitación temporal).
- **Pendiente:** definir con precisión las fechas del cronograma del proyecto de grado. Por ahora se usa abril–agosto 2026, pero hay que detallar qué etapa corresponde a qué mes y si incluye tiempo de elaboración del documento final.

---

## Ishikawa — causa en Personas
La causa "El área de TI está enfocada en mantenimiento, no en explotación de datos" puede sonar como crítica a la empresa. Evaluar con el tutor si conviene reemplazarla por "Sin metodología de ciencia de datos definida en el equipo".
