# Mapeo de fuentes — de dónde sale el contenido de cada sección

Para cada bloque del índice ([[01-estructura-capitulos]]), de dónde sacar la
información. Objetivo: al momento de redactar, no perder tiempo buscando —
ya saber a qué archivo ir.

## Preliminares + Capítulo I (Marco General)

**Fuente principal: `perfil/perfil.tex` ya redactado y aprobado.** Antecedentes,
planteamiento del problema, árbol del problema, FODA, objetivos,
justificación, delimitación y metodología ya están escritos y aprobados por
el tutor (`perfil/perfil.tex:67-405`). El trabajo acá es **expandir y
formalizar** ese texto al formato de capítulo completo (con la numeración
1.1–1.5 del índice, no la de sección corrida del perfil), no reescribirlo
desde cero. Cambiar de fondo solo si el avance real del proyecto lo obliga.

Dedicatoria/Agradecimientos/Resumen/Abstract: contenido nuevo, libre
(`referencias/norma-analisis.md` §5.4–5.7 da el formato).

## Capítulo II (Marco Teórico y Tecnológico)

- **2.1 Sistemas ERP** y **2.5 Gestión de Proyectos EPC**: base ya en
  `perfil/perfil.tex:500-509` (cita a Rashid2019, MLdrivenERP2023) — expandir
  con la realidad operativa de ISI Mustang documentada en
  `~/Projects/isi-mustang/erp-isi-mustang/docs/documentation/` (ver más
  abajo, es evidencia de primera mano del "ERP en empresa de ingeniería").
- **2.2 Aprendizaje Automático** y **2.4 Analítica Predictiva**: literatura
  académica. `perfil/perfil.bib` ya tiene las citas base (MLdrivenERP2023,
  AIcostEstimation2024, AutoMLpipeline2025, XGBoostCostOverrun2026,
  DomainAwareXGBoost2025). Completar con más fuentes sobre Gradient
  Boosting/XGBoost, feature engineering, arquitectura Medallion.
- **2.3 Ingeniería de Datos**: literatura sobre ETL/ELT, Medallion
  (Bronze/Silver/Gold), calidad de datos — no hay nada propio del ERP acá
  todavía, es 100% teoría de respaldo para la arquitectura ya definida en
  el perfil.
- **2.6 Ingeniería de Software**: teoría de proceso de desarrollo,
  metodología iterativa-incremental (justificar por qué se eligió esa y no
  otra — coherente con el enfoque "por incrementos" visto en
  `referencias/ejemplo-plantilla-capitulos.pdf`), arquitectura por capas.
- **2.7 Stack de desarrollo**: documentación oficial de cada tecnología +
  justificación de por qué se eligió cada una para *este* proyecto. El stack
  del backend/frontend del ERP real (NestJS + Prisma + PostgreSQL, Angular +
  PrimeNG) ya está fijado — ver `erp-isi-mustang/package.json` y
  `portal-erp/package.json`. El stack del módulo predictivo (DuckDB, Polars,
  FastAPI, modelos ML) está propuesto en el perfil pero **todavía no
  implementado** — al escribir 2.7 no dar por hecho que ya existe código,
  redactar como decisión de diseño justificada.

## Capítulo III (Análisis y Diseño) y IV (Construcción)

Esta es la parte que depende de trabajo que **todavía no se hizo** (es
lógico: el perfil se aprobó para desarrollarse entre abril y agosto de 2026).
Fuentes a medida que avance el desarrollo real:

- **3.1 Análisis de Datos Históricos**: requiere explorar la base de datos
  real del ERP (`erp-isi-mustang/prisma/schema.prisma`, `script.sql`) y en
  particular el módulo de certificaciones
  (`erp-isi-mustang/docs/flujo-certificaciones.md`, ya leído — trae estados
  `draft/submitted/registered/rejected/cancelled`, dos responsables, y
  distingue `status` de `collectionStatus`). Ahí es literal donde viven las
  "desviaciones con causas documentadas" que menciona el perfil.
- **3.1.2 Variables predictoras / 3.1.3 Casos de uso**: cruzar con
  `docs/documentation/05-centros-de-costo-y-proyectos.md`,
  `06-horas.md`, `09-compras.md`, `10-viaticos-y-rendiciones.md`,
  `11-presupuesto.md` — son los módulos con datos operativos históricos
  (horas, compras, presupuesto) que el perfil identifica como fuente para
  entrenar los modelos.
- **Ojo con calidad de datos**: `docs/documentation/90-pendientes-y-brechas.md`
  ya documenta defectos activos que ensucian los datos históricos (ausencias
  que se cuentan como horas trabajadas, rendiciones que suman monedas sin
  convertir, factor de costo empresa hardcodeado, etc.). Esto es material
  directo para la sección de "calidad de datos" del marco teórico (2.3.3) y
  para las limitaciones/supuestos del análisis de datos (3.1.1) — hay que
  decidir con el tutor si se filtran, se corrigen o se documentan como
  limitación conocida del dataset.
- **3.2 Requerimientos** y **3.3 Diseño de arquitectura**: ya hay una
  propuesta de arquitectura en el perfil (`perfil/perfil.tex:249-360`,
  capas Bronze/Silver/Gold/Modelos/Servicio/Presentación). Formalizar eso en
  diagramas C4 (estilo `referencias/ejemplo-plantilla-capitulos.pdf`) y en requerimientos funcionales/no
  funcionales explícitos.
- **Capítulo IV completo**: sale del desarrollo real del módulo predictivo
  (pipeline, entrenamiento, FastAPI, integración). Hoy no existe código de
  esto en `~/Projects/isi-mustang/` (solo existe el ERP base: NestJS +
  Angular). Se redacta a medida que se construye — no antes.
- **4.4 Integración con el ERP**: es un punto de conexión delgado (un
  endpoint en NestJS, una sección de dashboard en Angular), no una
  reescritura del ERP. El ERP en sí (adaptación a procesos, reglas, flujos,
  Keycloak/MCP/Power BI) es trabajo aparte de Franco en la empresa, no parte
  de la tesis — ver la nota de las "dos pistas" en
  [[03-contexto-tecnico-erp]].

## Conclusiones / Recomendaciones

Se redactan al final, una por cada objetivo específico del perfil
(`perfil/perfil.tex:200-208`), siguiendo la regla de `referencias/norma-analisis.md` §6.3
y el patrón visto en el `INDICE` genérico (organizar por objetivo específico).

## Referencias Bibliográficas

`perfil/perfil.bib` ya es la base (formato APA, ver `referencias/norma-analisis.md`
§7.1). Se va a ampliar sección por sección del Capítulo II.
