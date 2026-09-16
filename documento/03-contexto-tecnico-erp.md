# Contexto técnico — estado real del ERP ISI Mustang

Snapshot del código en `~/Projects/isi-mustang/` al 2026-09-16. Esto es
insumo para el Capítulo II (2.1, 2.7) y sobre todo para el Capítulo III
(qué datos y qué módulos existen realmente para el análisis). **No es
contenido para copiar tal cual al documento** — es la base factual.

## Dos pistas de trabajo distintas — no mezclar

**Importante, aclarado por Franco:** el ERP (`erp-isi-mustang` + `portal-erp`)
**no va a tener el módulo predictivo implementado dentro**. Son dos pistas de
trabajo separadas:

1. **El ERP en sí (trabajo de Franco en la empresa, no es la tesis):**
   adaptarlo a los procesos reales de ISI Mustang, sus reglas de negocio,
   mejorar flujos existentes, y dejar preparado lo demás (autenticación,
   integraciones futuras). Acá es donde entran Keycloak/OAuth, MCP y Power
   BI — son trabajo de plataforma del ERP, no del módulo predictivo. Todo lo
   de este archivo sobre módulos de negocio, brechas y defectos de datos
   pertenece a esta pista: es el **contexto y la fuente de datos**, no algo
   que la tesis construya.
2. **El módulo predictivo (la tesis, el PDG):** se construye aparte
   (DuckDB/Polars/FastAPI/modelos ML, según el perfil aprobado). Consume
   los datos del ERP y, recién al final (Cap. IV del índice, ver
   [[01-estructura-capitulos]]), se conecta con un endpoint puntual en
   NestJS y una sección de dashboard en Angular — una integración delgada,
   no una reescritura ni una feature más del ERP.

Al redactar el Capítulo IV, dejar claro que "integración con el ERP" es ese
punto de conexión acotado, no que el ERP en desarrollo ya incluye o va a
incluir el módulo predictivo como parte de su alcance regular.

## Qué es el proyecto real

Reescritura/modernización del ERP interno de ISI Mustang (había uno
anterior, se está reconstruyendo para dejarlo listo para integraciones
futuras). Dos repos:

- **`erp-isi-mustang/`** — backend NestJS + TypeScript + Prisma +
  PostgreSQL. API REST, auth propia con JWT (Passport), `bcrypt`.
- **`portal-erp/`** — frontend Angular 21 (SSR) + PrimeNG + Tailwind.
  Login, guards por rol/permiso, interceptor con refresh de token.

## Módulos de negocio ya implementados (backend)

Según `erp-isi-mustang/docs/documentation/00-indice.md`, 19 módulos
cubiertos: `auth`, `access-control`, `user`, `approvals`, `mail`, `clients`,
`proposals`, `cost-center` (proyectos/servicios/estructura), `hour-entries`,
`user-contracts`, `vacations`, `payroll`, `provisions`, `requisitions`,
`purchase-orders`, `suppliers`, `travel-allowances`,
`travel-allowance-settlements`, `cost-center-budget`. Certificaciones
(`docs/flujo-certificaciones.md`) es el módulo central para el tema del
perfil: registra ingresos por certificación con estados
`draft→submitted→registered` y cobro (`collectionStatus`) separado.

Ese mismo índice documenta el nivel de madurez con tres estados:
**IMPLEMENTADO** / **ABIERTO** (funciona, falta que negocio confirme la
regla) / **BRECHA** (lo pide el requerimiento y no existe). El consolidado
completo de brechas está en `docs/documentation/90-pendientes-y-brechas.md`
— incluye defectos activos que ensucian datos históricos (relevante para
3.1 del documento: calidad del dataset de entrenamiento).

## Lo que todavía NO existe en el repo

- Nada del módulo predictivo propuesto en el perfil: no hay DuckDB, Polars,
  FastAPI, ni modelos ML en ningún repo de `~/Projects/isi-mustang/`. El
  perfil describe una arquitectura objetivo, no algo ya construido.
- Frontend: según `portal-erp/README.md`, de los módulos planificados solo
  Dashboard está "en desarrollo"; Clientes, Inventario, Productos, Órdenes,
  Reportes, Documentos siguen "pendiente".

## Roadmap del ERP (pista 1, no de la tesis), todavía sin rastro en el código

Franco mencionó tres frentes que siguen en desarrollo dentro de la pista del
ERP (adaptación a procesos, reglas y flujos de la empresa), pero que **no
aparecen todavía en ningún .md de docs/ ni en package.json de ninguno de los
dos repos** (verificado por grep): autenticación con **Keycloak/OAuth**,
**MCP**, e integración con **Power BI**. Hoy el auth real es JWT propio
(Passport), no Keycloak.

**Nota de alcance — confirmada por Franco (ver pista 1 arriba):** estos tres
frentes son trabajo de la plataforma ERP en general, **no del módulo
predictivo** — el perfil aprobado delimita el trabajo de tesis a "aprendizaje
automático supervisado, ingeniería de datos y analítica predictiva... sobre
los datos operativos del ERP" y excluye explícitamente fuentes externas al
ERP (`perfil/perfil.tex:234`). Consecuencia para el documento final:
- **No van en el Cap. III (Análisis y Diseño) ni en el Cap. IV
  (Construcción)** — esos capítulos son sobre el módulo predictivo, no
  sobre el ERP en general.
- Pueden aparecer como **antecedentes/contexto** breve en el Cap. I (para
  situar hacia dónde va el ERP en general), o como **recomendaciones/trabajo
  futuro** al final (p. ej. si Power BI termina consumiendo el dashboard
  predictivo más adelante).
- Si no aportan a explicar el problema o la solución del módulo predictivo,
  se dejan fuera del documento.

## Fuentes primarias para cuando haga falta más detalle

- `erp-isi-mustang/docs/documentation/` — 14 documentos de flujo (uno por
  área), cada uno con parte de negocio (A), técnica (B), preguntas del
  requerimiento (C) y pendientes (D). Está pensado para alimentar un
  URS/SRS, así que el nivel de detalle ya es el que necesita el Capítulo
  III.
- `erp-isi-mustang/prisma/schema.prisma` y `script.sql` — modelo de datos
  real, fuente de verdad para 3.1 (qué campos existen realmente).
- `erp-isi-mustang/docs/*.md` (fuera de `documentation/`) — cambios puntuales
  recientes (tipo de cambio, adjuntos, filtros de listados, notificaciones)
  que pueden servir de evidencia de evolución del sistema.
