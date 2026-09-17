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

**Pendiente de decidir:** dónde entra el punto 2 en el índice de capítulos
(ver `decisiones-tema.md`). Hasta entonces, no asumir ubicación al redactar.

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
