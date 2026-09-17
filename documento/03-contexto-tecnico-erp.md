# Contexto técnico — estado real del ERP ISI Mustang

Snapshot del código en `~/Projects/isi-mustang/` al 2026-09-16. Esto es
insumo para el Capítulo II (2.1, 2.7) y sobre todo para el Capítulo III
(qué datos y qué módulos existen realmente para el análisis). **No es
contenido para copiar tal cual al documento** — es la base factual.

## Alcance de la tesis sobre el ERP — ampliado (2026-09-16)

**Actualizado tras `decisiones-tema.md` (opción B, aprobada por el tutor).**
Antes esto se trataba como "dos pistas separadas"; ya no. El alcance de la
tesis es:

1. **El módulo predictivo** (objeto de estudio principal): se construye
   como componente propio (DuckDB/Polars/FastAPI/modelos ML) que consume los
   datos del ERP y se conecta con un endpoint en NestJS y una sección de
   dashboard en Angular. El módulo sigue sin vivir *dentro* del código del
   ERP — la integración es ese punto de conexión.
2. **Trabajo formal sobre el ERP**, ahora parte del alcance:
   autenticación con Keycloak/OAuth, MCP, integración con Power BI, y
   reimplementación en el ERP de procesos que vivían en un portal anterior
   (obsoleto/ignorado, distinto de `portal-erp`).

Ubicación en el índice: Cap. II 2.8–2.10, Cap. III 3.2/3.4, Cap. IV
incrementos 4.1, 4.2 y 4.5 (ver [[01-estructura-capitulos]]).

## Portal anterior — Portal ISIMustang Bolivia

Sistema previo (PHP + MySQL 5.7, dump de phpMyAdmin), documentado en
`~/Projects/isi-mustang/erp-isi-mustang/docs/old-manual/`:

- `manual.md` — manual de usuario. Módulos: 01 Carga de Horas, 02 Pedido de
  Requisición (+02.1 Compras), 03 Viáticos (política, administración,
  rendición), 04 Consulta de Horas, 05 Proyectos Activos, 06 Áreas de
  Estructura (rubros e ítems de gasto, seguimiento y control, centros de
  costo, horas de estructura, glosario de costos directos/indirectos), 11
  Permisos, 12 Tipos de Costos por Rubro.
- `05-proyectos.md` — módulo Proyectos en detalle: planificación,
  seguimiento y control con **indicadores (Desvío de Costo, Desvío de
  Ingresos, Avance del Proyecto, Avance de Trabajo)**, seguimiento de
  VM/RQ, horas por proyecto, avance por actividad, rubros y tareas.
- `isi(1).sql` — esquema de 175 tablas, **solo estructura, sin datos**
  (0 `INSERT`). No sirve como histórico para entrenar modelos.
- `images/` — 45 capturas del portal (útiles como figuras en 3.2).

Varios de estos módulos **ya tienen equivalente en el ERP nuevo**
(`hour-entries`, `requisitions`, `purchase-orders`, `travel-allowances`,
`travel-allowance-settlements`, `cost-center`). El propio
`docs/documentation/00-indice.md` del ERP trata `old-manual/` como "solo
glosario y contexto histórico".

**Qué se reimplementa — en evolución.** No es una lista cerrada: el ERP
sigue en desarrollo, hay puntos que faltan desarrollar y otros que dependen
de decisiones todavía en curso. 3.2 y el incremento 4.1 se redactan con lo
que esté decidido e implementado en ese momento, no antes.

**Dónde están las decisiones:** no se duplican acá. La fuente de verdad es
`erp-isi-mustang/docs/documentation/`: cada doc de área tiene los flujos
(parte A), la implementación (B), las preguntas del requerimiento con su
respuesta y estado (C) y los pendientes (D). Todo lo ABIERTO/BRECHA está
consolidado en `90-pendientes-y-brechas.md`. Para 3.2 y 4.1, leer ahí el
estado al momento de redactar. Relevante para los indicadores de control de
proyectos: `05-centros-de-costo-y-proyectos.md` y `11-presupuesto.md` (línea
base, seguimiento, flujo de caja).

Candidatos observados (no confirmados): indicadores de seguimiento y control de proyectos (desvíos,
avance) y avance por actividad; un grep en `erp-isi-mustang/src` sobre
desvío/avance/progress/deviation no encontró nada equivalente (solo
`proposal_activities`, que son actividades de propuestas, no avance de
proyectos). Además, los indicadores
de desvío del portal viejo son antecedente directo de lo que predicen los
modelos (sección 3.1).

Todo lo de este archivo sobre módulos de negocio, brechas y defectos de
datos sigue siendo **contexto y fuente de datos** para el módulo predictivo.

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

## Alcance ERP ampliado — todavía sin rastro en el código

Keycloak/OAuth, MCP e integración con Power BI **no aparecen todavía en
ningún .md de docs/ ni en package.json de ninguno de los dos repos**
(verificado por grep al 2026-09-16). Hoy el auth real es JWT propio
(Passport), no Keycloak. Tampoco está identificado en este archivo el portal
anterior cuyos procesos se reimplementan.

Desde la decisión B (`decisiones-tema.md`) esto **sí es alcance formal de la
tesis**. Consecuencias:
- Mismo criterio que el Cap. IV del módulo predictivo: no se redacta su
  construcción hasta que exista el código.
- `perfil/perfil.tex:234` (delimitación) todavía excluye esto — hay que
  reescribirlo antes de que el documento final lo cite como alcance.
- Ubicación en el índice: pendiente (ver `decisiones-tema.md`).

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
