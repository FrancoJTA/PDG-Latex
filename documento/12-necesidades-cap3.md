# Qué se necesita para redactar el Capítulo III — Análisis y Diseño

Escrito el 2026-09-17. Complementa a [[04-pendientes-preparacion]] y al brief
[[11-brief-proyecto]] (que manda si hay contradicción). Estado del código real
en [[03-contexto-tecnico-erp]]. Estructura de secciones en
[[01-estructura-capitulos]].

**Resumen:** 3.2, 3.3 y 3.4 se pueden redactar hoy. 3.1 está bloqueada hasta
tener acceso a los datos reales. Orden sugerido: 3.3 → 3.4 → 3.2 → 3.1.

---

## 3.1 Análisis de Datos Históricos — BLOQUEADA (falta acceso a datos)

### Insumos que hay que conseguir

| Insumo | Quién | Estado |
|---|---|---|
| Acceso al **MySQL 5.7 de producción** del Portal ISIMustang Bolivia: usuario de solo lectura, o un **dump** completo (`mysqldump`) | Franco | Franco dice tener acceso; falta ponerlo a disposición del análisis |
| **Planillas Excel** de control de proyectos que se llevan fuera del sistema: cuáles son, dónde están, qué columnas tienen, cuántos años cubren | Franco | Sin identificar en el repo |
| Confirmar que la base de **demo local no se usa** para nada del análisis (ver [[06-exploracion-datos-erp]]) | — | Ya decidido |

Lo único que hay en el repo es el esquema sin datos:
`~/Projects/isi-mustang/erp-isi-mustang/docs/old-manual/isi(1).sql` (175 tablas).

### Preguntas que 3.1 tiene que responder con datos, no con supuestos

1. **Universo:** cuántos proyectos (centros de costo) cerrados hay, en qué
   rango de años, por sector (gas, petróleo, minería, energía), por tamaño.
2. **Etiquetas de los tres casos de uso** (brief §2): ¿existen y para qué
   proporción de proyectos?
   - Desviación en certificaciones: **no hay tabla `certificaciones`** en el
     esquema viejo. Candidatas: `facturacion`, `act_proyecto`,
     `codeproyecto` (brief §3). Hay que definir operativamente qué es
     "desviación" a partir de esas tablas (facturado vs. planificado, o
     certificado vs. estimado) y contar cuántos casos hay.
   - Sobrecosto: presupuesto (línea base) vs. ejecutado, por proyecto.
   - Retraso en fecha de cierre: fecha comprometida vs. fecha real de
     cierre. Verificar que ambas fechas se registran.
3. **Granularidad del clasificador:** por proyecto o por certificación /
   período. Quedó abierta en 2.2 (el texto asume "un vector por proyecto");
   3.1 la cierra y 2.2 se ajusta si hace falta.
4. **Variables predictoras disponibles** (3.1.2): horas por proyecto,
   compras y órdenes de compra, presupuesto, viáticos, cliente, sector,
   duración planificada, moneda, responsable (enmascarado). Cruzar con las
   preguntas de negocio del requerimiento (parte C de `docs/documentation/`).
5. **Calidad de datos** con las dimensiones que define 2.3.3: completitud
   (campos vacíos), consistencia (monedas sin convertir, fechas cargadas
   tarde), duplicados por corrección de registros, cambios de proceso a lo
   largo de los diez años. Ojo: los defectos D1–D6 son del **ERP nuevo**,
   no del histórico viejo; el histórico tiene sus propios defectos que hay
   que relevar.
6. **Tamaño efectivo** del conjunto de entrenamiento tras filtrar. 2.2 ya
   advierte que probablemente sean cientos de filas, no miles; 3.1 pone el
   número.
7. **Mapeo de esquemas:** qué variables del histórico viejo tienen
   equivalente en el PostgreSQL nuevo (para la inferencia). Sin equivalente
   → la variable no puede usarse. Esto alimenta el diseño Silver de 3.4.

### Cómo se haría el análisis

- DuckDB directo sobre el dump (extensión `mysql`) o sobre CSV exportados,
  más Polars para agregaciones. Notebooks o scripts en un repo aparte del
  ERP; el documento solo lleva cuadros y figuras con agregados.
- **Confidencialidad (brief §6):** enmascarar o excluir `payroll`,
  `provisions`, `user_contracts`, `user_profiles`, `vacations`, `rest` y
  cualquier monto de remuneración. Nombres de personas: nunca. Cifras de
  proyectos y nombre de la empresa: sí se pueden publicar.

### Entregables para el capítulo

- Cuadro de fuentes (tablas/planillas, período, filas, columnas útiles).
- Cuadro de variables candidatas con tipo, origen y equivalente en el ERP nuevo.
- Figuras: distribución de proyectos por año/sector, distribución de las
  tres variables objetivo, mapa de valores faltantes.
- Definición operativa de los tres casos de uso (3.1.3) con las reglas
  exactas de etiquetado.

---

## 3.2 Análisis de Procesos del Portal Anterior — SE PUEDE HOY

### Insumos existentes

- `~/Projects/isi-mustang/erp-isi-mustang/docs/old-manual/` — manual del
  portal viejo (p. ej. `05-proyectos.md` con los siete indicadores: MBP,
  desvío de costos, desvío de ingresos, índice de proyecto, desvío MB,
  avance de proyecto, avance de trabajo).
- `~/Projects/isi-mustang/erp-isi-mustang/docs/documentation/` — un doc por
  módulo con partes A–D (flujo, preguntas del requerimiento, respuesta y
  estado, pendientes) y `90-pendientes-y-brechas.md` con brechas y defectos
  D1–D6 consolidados.
- [[03-contexto-tecnico-erp]] y [[08-glosario-dominio]] para los términos.

### Lo que falta y depende de Franco

- **La lista de procesos que entran en el incremento 1** (brief §2,
  bloque "Mejoras del ERP", ítems a–d). Hoy es abierta por diseño
  (`decisiones-tema.md`). Para redactar 3.2 alcanza una lista provisoria
  marcada "al cierre de este análisis"; para mandarla al tutor conviene
  fijarla. Registrar cada decisión en [[03-contexto-tecnico-erp]], sección
  "Portal anterior".
- Confirmar qué defectos D1–D6 se corrigen en el incremento 1 y cuáles se
  documentan como limitación.

### Entregables

- 3.2.1: relevamiento de procesos del portal (cuadro: proceso, módulo del
  portal, estado en el ERP nuevo: implementado / abierto / brecha).
- 3.2.2: procesos a reimplementar, con criterio de priorización.
- 3.2.3: defectos y brechas que afectan la calidad de datos, y su relación
  con las variables del módulo predictivo.

---

## 3.3 Requerimientos del Sistema — SE PUEDE HOY

### Insumos existentes

- Brief §2 (alcance por bloques) y §4 (tecnologías).
- Objetivos específicos del perfil actualizado (7) → cada uno genera
  requerimientos.
- Entrevista E-01 del Anexo A del perfil (necesidades del usuario:
  semáforo por proyecto, alertas con 2–4 semanas de anticipación,
  explicabilidad, sin carga extra de datos).
- Preguntas del requerimiento (parte C) en `docs/documentation/`.

### Lo que falta

- Nada externo. Solo una revisión de Franco de que la lista de
  requerimientos coincide con lo que va a construir.
- **Entrevistas a 5–8 usuarios clave: pendientes.** 3.3 se redacta con lo
  que ya hay; si las entrevistas se hacen antes de cerrar el capítulo, se
  incorporan como fuente de requerimientos; si no, se anota como limitación.

### Entregables

- 3.3.1 Funcionales: por incremento (procesos migrados; SSO; pipeline y
  modelos; servicio de predicción y dashboard; Power BI y MCP), con
  identificador RF-nn, prioridad y origen (brief / entrevista / objetivo).
- 3.3.2 No funcionales: seguridad (Keycloak en todos los componentes,
  verificación de `aud`), confidencialidad (enmascarado), rendimiento de
  inferencia, disponibilidad, despliegue en Docker en servidor propio,
  mantenibilidad (reentrenamiento periódico, ver delimitación temporal),
  trazabilidad de predicciones.

---

## 3.4 Diseño de la Arquitectura — SE PUEDE HOY (es diseño, no construcción)

### Insumos existentes

- Figura de arquitectura por capas del perfil (`perfil/perfil.tex`,
  `fig:arquitectura`, ya con Bronze = MySQL + PostgreSQL + Excel) y el
  diagrama de flujo (`fig:flujo`). Se reutilizan en 3.4.1.
- Propuesta de solución del perfil (sección 6) como texto base.
- Esquema viejo (`old-manual/isi(1).sql`) y esquema nuevo
  (`erp-isi-mustang/prisma/schema.prisma`) para el diseño del mapeo Silver.
- Lo redactado en 2.2 (protocolo de evaluación, features), 2.3 (Medallion,
  calidad), 2.8 (flujos OAuth/OIDC), 2.9 (MCP), 2.10 (Power BI).

### Lo que falta

- **Diagramas C4** de contexto y contenedores: no existen. Se hacen con la
  skill `diagram-design` (imagen incluida) o en TikZ. Decidir formato.
- **Decisión de granularidad** (proyecto vs. certificación) para el
  clasificador: depende de 3.1. Hasta entonces, 3.4.3 se redacta con la
  hipótesis "por proyecto" y se marca.
- **Lista de tools del servidor MCP** (qué consultas del ERP y qué
  predicciones se exponen). Decisión de Franco; puede ser provisoria.
- **Lista de reportes de Power BI** y los endpoints de NestJS que los
  alimentan. Decisión de Franco; puede ser provisoria.
- Confirmar el modelo de despliegue: Docker Compose en servidor propio
  (Keycloak, PostgreSQL, NestJS, Angular, FastAPI, MCP); Contabo como
  trabajo futuro.

### Entregables

- 3.4.1 Arquitectura por capas + C4 contexto y contenedores.
- 3.4.2 Pipeline: Bronze (tres fuentes), Silver (DuckDB: mapeo de los dos
  esquemas a un modelo canónico de variables, con cuadro de
  correspondencias), Gold (Polars: features por unidad de análisis a fecha
  de corte).
- 3.4.3 Modelos: tres modelos, algoritmo (XGBoost vía API de Scikit-learn),
  features previstas, protocolo de evaluación (CV, estratificada solo en
  el clasificador, métricas de 2.2), criterio de aceptación.
- 3.4.4 API de predicción: endpoints FastAPI, contratos JSON, validación
  de tokens Keycloak, versionado de modelos.
- 3.4.5 Dashboard: vistas Angular (semáforo por proyecto, detalle,
  explicación de la predicción), endpoints NestJS que consumen FastAPI.
- 3.4.6 Autenticación centralizada: realm, clientes (Angular público con
  PKCE; NestJS, FastAPI, MCP como resource servers; Power BI como cliente),
  roles, flujo de login, migración desde Passport.
- 3.4.7 Integraciones: API de datos para Power BI (descriptiva, sin
  predicciones) y servidor MCP (tools sobre ERP y predicciones), ambos
  validando Keycloak.

---

## Checklist para arrancar

- [ ] Franco: dump o credenciales de solo lectura del MySQL de producción.
- [ ] Franco: ubicación y descripción de las planillas Excel.
- [ ] Franco: lista provisoria de procesos del incremento 1.
- [ ] Franco: lista provisoria de tools MCP y de reportes Power BI.
- [ ] Decidir formato de los diagramas C4 (imagen vs. TikZ).
- [ ] Redactar 3.3 y 3.4 (redactor, sin investigador; revisor de fondo).
- [ ] Redactar 3.2 con la lista provisoria.
- [ ] Exploración de datos → redactar 3.1 → cerrar granularidad y ajustar 2.2 y 3.4.3 si hace falta.
