# Brief del proyecto — fuente de verdad para redactar

Consolidado con Franco el 2026-09-16. **Si algo de este archivo contradice
`perfil/perfil.tex` o documentos anteriores de `documento/`, manda este
archivo.** Los agentes lo leen antes que cualquier otro.

## 1. Idea en una línea

Aprovechar el histórico operativo de ISI Mustang Bolivia (empresa EPC: gas,
petróleo, minería, energía) para **anticipar desviaciones y riesgos en
proyectos** con aprendizaje automático, integrado a un ERP que se moderniza
dentro del mismo trabajo (SSO, MCP, Power BI, procesos migrados).

## 2. Alcance

**Objeto de estudio (sin cambios):** gestión y control de desviaciones y
riesgos en los proyectos de ISI Mustang a partir de sus datos históricos.

**Dentro del alcance:**

| Bloque | Qué se construye |
|---|---|
| ETL analítico | Pipeline Medallion Bronze → Silver → Gold. **Solo analítico**: no migra datos al ERP |
| Modelos ML | 3 casos: desviación en certificaciones, sobrecosto de proyecto y retraso en la fecha de cierre |
| Servicio de predicción | FastAPI, consumido por NestJS y mostrado en el dashboard Angular |
| Keycloak / OAuth 2.0 / OIDC | **SSO central** que reemplaza el JWT propio (Passport) del ERP; lo validan ERP, FastAPI y MCP |
| Servidor MCP | Expone como tools consultas del ERP **y** de las predicciones. **No** se construye asistente conversacional (sigue como trabajo futuro) |
| Power BI | Reportes **descriptivos** del ERP, **sin predicciones**. Lee datos por una **API de NestJS** protegida con Keycloak. Las predicciones solo van en Angular |
| Mejoras del ERP | (a) procesos del portal viejo que faltan, según lo decidido en `erp-isi-mustang/docs/documentation/`; (b) corrección de defectos D1–D6 que ensucian datos; (c) cierre de brechas estructurales (doc 90, bloque 2); (d) preparar el ERP para integraciones (endpoints y permisos para FastAPI, MCP y Power BI) |

**Fuera del alcance:** asistente conversacional o agente de IA, fuentes
externas (IoT, mercado, clima), migración del histórico MySQL al esquema
nuevo, módulos sin datos suficientes.

## 3. Datos

- **Histórico de 10+ años:** en la **base MySQL de producción del portal
  viejo** (Portal ISIMustang Bolivia, PHP + MySQL 5.7). Franco **ya tiene
  acceso**. Esquema de referencia (sin datos) en
  `erp-isi-mustang/docs/old-manual/isi(1).sql`, con 175 tablas.
- **Datos complementarios:** planillas Excel de control de proyectos que se
  llevan por fuera del sistema (capa Bronze).
- **Entrenamiento:** histórico MySQL + planillas.
- **Inferencia:** proyectos **activos del ERP nuevo (PostgreSQL)**.
  Consecuencia de diseño: la capa Silver tiene que **mapear los dos esquemas
  (MySQL viejo y PostgreSQL nuevo) a las mismas variables**; sin ese mapeo,
  un modelo entrenado con uno no puede predecir sobre el otro.
- **Por verificar en la exploración (3.1):** el perfil afirma que hay
  "desviaciones con causas documentadas" en certificaciones. En el esquema
  viejo no hay una tabla `certificaciones` explícita (las candidatas son
  `facturacion`, `act_proyecto` y `codeproyecto`). No afirmarlo en el
  documento hasta confirmarlo con los datos.
- La base PostgreSQL local es de **demo** y no sirve para análisis.
- **Puesta en producción y corte (confirmado con Franco, 2026-09-17):** hoy
  la empresa opera con el **portal viejo**. El ERP nuevo está casi
  terminado para ir a producción. Al pasar se hace un **corte**: no hay
  migración de base de datos. Lo vigente (contratos, proyectos activos,
  etc.) se **registra de nuevo** en el ERP nuevo; los centros de costo
  cerrados y el resto del histórico **quedan solo en el MySQL viejo**.
  Consecuencias: (a) no afirmar en presente que el ERP nuevo opera
  proyectos reales hasta que esté en producción; (b) un proyecto activo al
  momento del corte arranca en el ERP nuevo sin su historia previa, que
  sigue en el portal viejo — la inferencia sobre esos proyectos puede
  necesitar combinar ambas fuentes (a resolver en 3.4 / 4.3).
- **Tamaño de los esquemas:** 175 tablas en el portal viejo (MySQL); unas
  50–51 tablas (modelos Prisma) en el ERP nuevo (PostgreSQL).

**Corrección a la arquitectura del perfil:** la capa Bronze del perfil dice
"PostgreSQL ERP + CSV/Parquet". La real es **MySQL del portal viejo (entrenamiento)
+ PostgreSQL del ERP nuevo (inferencia) + planillas Excel**.

## 4. Tecnologías

| Capa | Tecnología |
|---|---|
| ERP backend | NestJS + TypeScript + Prisma + PostgreSQL |
| ERP frontend | Angular 21 (SSR) + PrimeNG + Tailwind |
| Sistema legado (fuente histórica) | PHP + MySQL 5.7 |
| Unificación (Silver) | DuckDB (lee MySQL, PostgreSQL y archivos) |
| Transformación (Gold) | Polars (feature engineering) |
| Modelos | Scikit-learn + XGBoost (gradient boosting) |
| Servicio de predicción | FastAPI |
| Identidad | Keycloak (OAuth 2.0 / OpenID Connect) |
| Integración con IA | Servidor MCP (Model Context Protocol) |
| BI | Power BI (vía API NestJS) |
| Despliegue | Docker. **Fase 1: servidor propio** de la empresa. **Objetivo final: todo el sistema desplegado** (Keycloak, PostgreSQL, NestJS, Angular, FastAPI, MCP), no solo demostrado en local (confirmado 2026-09-17). **Más adelante: migración a la nube (Contabo)**, que va en recomendaciones o trabajo futuro |

## 5. Metodología

- **Investigación:** aplicada; alcance exploratorio → descriptivo →
  correlacional; enfoque mixto (sin cambios respecto al perfil).
- **Desarrollo:** **iterativa-incremental**, con 5 incrementos (ver
  `01-estructura-capitulos.md`, Cap. IV). Cada incremento tiene alcance,
  análisis, diseño, desarrollo y validación.
- **Evaluación de modelos:** clasificación (exactitud, precisión,
  sensibilidad, F1, matriz de confusión); regresión (RMSE, MAE, R²);
  validación cruzada.
- **Entrevistas a usuarios clave (5–8: jefes de proyecto, certificadores,
  administradores): pendientes.** No redactar resultados de entrevistas
  hasta que existan. El relevamiento de negocio ya hecho está en las
  preguntas del requerimiento (parte C) de `docs/documentation/`.

## 6. Confidencialidad — qué NO se publica

El documento queda en la biblioteca de la universidad. **Todo se puede
publicar** (nombre de la empresa, capturas, cifras de proyectos) **excepto:**
- **sueldos y remuneraciones** (nómina, provisiones, contratos con montos);
- **información privada de empleados** (datos personales, legajo,
  vacaciones o descansos individuales).

Esto afecta a figuras, anexos y ejemplos de datos: enmascarar esas columnas
o usar agregados. Ojo con los módulos `payroll`, `provisions`,
`user_contracts`, `user_profiles`, `vacations` y `rest`, y con el defecto D3.

## 7. Plazos

- Delimitación temporal del perfil: abril–agosto 2026, **ya vencida**.
- **Fecha real de entrega: la definen la carrera o el tutor.** Pendiente.
  No inventar fechas en el cronograma del documento.

## 8. Qué se puede redactar ya

Ver la tabla en `04-pendientes-preparacion.md`. En resumen: Cap. I (tras
actualizar objetivos y delimitación), Cap. II completo, 3.2–3.4 ya; 3.1 con
datos reales (hay acceso); Cap. IV incremento por incremento; evaluación y
conclusiones al final.
