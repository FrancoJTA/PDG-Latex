# Qué se necesita para redactar el Capítulo III — Análisis y Diseño

Escrito el 2026-09-17. Complementa a [[04-pendientes-preparacion]] y al brief
[[11-brief-proyecto]] (que manda si hay contradicción). Estado del código real
en [[03-contexto-tecnico-erp]]. Estructura de secciones en
[[01-estructura-capitulos]].

**Resumen:** 3.2, 3.3 y 3.4 se pueden redactar hoy. 3.1 ya tiene datos
(dump del 2026-09-17, exploración abajo); quedan decisiones de Franco y las
planillas Excel. Orden sugerido: 3.3 → 3.4 → 3.2 → 3.1.

---

## 3.1 Análisis de Datos Históricos — DESBLOQUEADA (dump disponible; faltan decisiones)

### Insumos

| Insumo | Quién | Estado |
|---|---|---|
| **Dump del MySQL 5.7 de producción** (phpMyAdmin, generado 2026-09-17, 100 MB) | Franco | **Listo:** `documento/referencias/isidump.sql` (ignorado por git, `*.sql`) |
| **Planillas Excel** de control de proyectos que se llevan fuera del sistema: cuáles son, dónde están, qué columnas tienen, cuántos años cubren | Franco | **Pendiente.** Ahora importan más: ver hallazgos H3 y H5 |
| Confirmar que la base de **demo local no se usa** para nada del análisis (ver [[06-exploracion-datos-erp]]) | — | Ya decidido |

Para reproducir la exploración: el dump se carga en un contenedor
`mysql:8.0` (`sql_mode=""`; importa sin errores, 163 tablas con datos).

### Hallazgos de la exploración (2026-09-17)

Cifras preliminares, calculadas con SQL directo sobre el dump. Sirven para
decidir; las definitivas salen del pipeline (DuckDB/Polars).

**Tablas que importan** (el resto son catálogos, permisos, RR. HH. o
comercial):

| Tabla | Qué es | Filas | Cobertura |
|---|---|---|---|
| `act_proyecto` | Maestro de proyectos (centro de costo): fechas de inicio y cierre, plazo, monto OC, presupuesto de costo por rubro (`CDSer`, `CDMat`, `CDLog`, `CDSub`, `CDSubInt`, `CDPEM`), HH planificadas, MB proyectado, moneda, estado | 292 | 2003–2026 |
| `adicionales` | Adicionales (cambios de alcance) con monto y costo presupuestado | 237 | 79 proyectos cerrados |
| `gpre` | Cash flow **vigente** por ítem: rubro, monto USD, fecha planificada y real. Rubros `WI001` = certificación OC, `WA001` = certificación adicionales (catálogo en `rubro`) | 10 872 | 161 CC |
| `gbase` / `gbasebk` | Línea base del cash flow | 9 411 / 33 766 | 106 CC |
| `gprepublicadomensual` | **Foto mensual** del cash flow publicado (`anomespublicado`) | 170 225 | 84 CC, 2013-07 a 2020-05 |
| `gpreeventos` | Log de cambios al cash flow (alta, modificación, baja) | 47 896 | 66 CC, 2013-01 a 2020-06 |
| `gpdir` | Asientos contables por CC (débito = costo, crédito = ingreso), montos en BOB con `tipocambio` | 81 307 | 220 CC, 2008–2025 |
| `horas` + `horasctroctos` | Carga de horas diaria por persona; el CC está en `horasctroctos` (se une por `rrhh_id`, `Fila`, `Mes`, `Ano`) | 310 137 | 2005–2021 |
| `rq`, `rqdetalle` | Requisiciones de compra por CC | 6 165 / 21 574 | 209 proyectos cerrados |
| `viaticos`, `viaticos_detalle` | Viáticos por CC | 3 713 / 3 702 | 157 proyectos cerrados |
| `propuestas` | Oportunidades comerciales; `tipoindustria_id` = sector (Oil and Gas, Minería, Industria y Construcción) | 844 | 2013–2026 |
| `facturacion` | Facturas | 656 | **solo 2007–2011**, 48 CC: no sirve para el período útil |
| `resultados` | Resumen de resultados | 3 416 | **inservible**: sin fecha (`0000-00-00`) y sin CC en casi todo |

**H1 — Universo.** 258 proyectos cerrados (`ID_Estado` 2 = cerrado final:
248; 4 = cerrado provisorio: 10), con inicio entre 2003 y 2026. Prefijo del
CC: `O-` 182 (proyecto), `S-` 57 (servicio), `C-` 16 (consultoría, ver
decisión 4); el resto (`I-`, `P-`) es estructura. Casi todo en USD (245) y Bolivia. Por año de
inicio: 5–13 por año hasta 2019, pico 2021–2023 (22, 38, 25).

**H2 — Etiqueta "desviación en certificaciones": existe, con reservas.**
- Las certificaciones son los ítems `WI001`/`WA001` del cash flow, con
  `Fechaplanificadacertificacion` y `Fecharealcertificacion`.
- En `gpre` la fecha planificada **se sobreescribe al replanificar** (en
  ~50 % de los ítems la real es igual a la planificada). Compararla contra
  la real no mide desvío.
- La fecha planificada original sale de la **primera foto mensual**
  (`gprepublicadomensual`), emparejando por (CC, rubro, `Detalle`) porque
  los `id` no se conservan entre tablas.
- Resultado: 1 308 certificaciones con plan original, 971 emparejadas con
  `gpre`, **947 con fecha real**, de **68 proyectos**. Retraso > 30 días:
  146 (15 %); > 60 días: 98. Proyectos con al menos una certificación
  retrasada > 30 días: 32.
- Las columnas `desvio` y `mitigacion` de `gprebase` están **vacías**: **no
  hay causas documentadas**. El perfil no debe afirmarlo (brief §3).
- Montos: se puede definir también desvío de monto (certificado vs.
  planificado original), no calculado todavía.

**H3 — Solo ~70 proyectos (2010–2018) tienen cash flow con certificaciones.**
Por año de inicio, los cerrados con fecha real de certificación son 0 antes
de 2008, 6–13 por año entre 2010 y 2018, y **0–2 por año desde 2019**. Desde
2019 el cash flow del portal dejó de usarse para certificar. Si hay
planillas Excel, probablemente cubren ese hueco.

**H4 — Etiqueta "retraso en fecha de cierre": `Fecha_Cierre` no sirve.**
- Es fecha de cierre **administrativo**: 28 proyectos cerrados el mismo día
  (2022-04-19), 11 el 2005-12-25; 6 tienen cierre antes del inicio.
- Contra `Fecha_Inicio + Plazo_Ejecucion` salen retrasados 84 % de los
  proyectos: el plazo registrado no es comparable (valores de 1, 3 o 7
  días en proyectos de meses).
- Alternativa viable: fin real = última certificación real; fin
  planificado = última certificación en la primera foto. Con eso: **70
  proyectos, 31 retrasados > 30 días (44 %)**, 27 > 60 días, media +93
  días. Mismo límite que H3 (2010–2018).

**H5 — Etiqueta "sobrecosto": calculable, pero la calidad depende del período.**
- Presupuesto = suma de `CD*` de `act_proyecto` + `adicionales`.
  Ejecutado = débitos de `gpdir` / `tipocambio`.
- Validación: el crédito de `gpdir` convertido a USD cuadra con OC +
  adicionales (p. ej. O-HEC: 64 354 vs. 64 355). Se usa como control de
  calidad por proyecto.
- 212 proyectos cerrados tienen presupuesto y costo contable. Cuadran
  ingresos (±15 %): 116. De esos, costo > presupuesto + 10 %: **39**.
- Por período: 2010–2018, 75 proyectos, 64 con ingreso cuadrado, ratio
  costo/presupuesto medio 0,99 (razonable). **2019+**: 114 proyectos, solo
  42 cuadran, 41 sin ingresos en `gpdir`, ratio medio 2,2 con 14 casos > 3×
  (costos que no corresponden al presupuesto o moneda mal convertida).
  Antes de 2010, `tipocambio = 1` en todos: moneda ambigua.
- Desde 2020 `gpdir.id_grtarea` (rubro) viene vacío en ~90 % de los
  asientos: no se puede desagregar el costo por rubro.

**H6 — Granularidad.** Con ~70 proyectos útiles por proyecto (H3/H4), un
clasificador por proyecto queda muy corto. Por **certificación** hay ~950
filas (146 positivas): es la única unidad con volumen razonable. Propuesta:
certificaciones → unidad = certificación; sobrecosto y retraso → unidad =
proyecto (regresión o clasificación con pocas filas, declarado como
limitación). Esto cambia lo que asume 2.2 ("un vector por proyecto") y 3.4.3.

**H7 — Variables predictoras disponibles** (en el período 2010–2018):
- `act_proyecto`: monto OC, presupuesto por rubro, HH planificadas, MB
  proyectado, plazo, moneda, tipo de alta (OC / gestión comercial / control
  de cambios), prefijo del CC.
- `adicionales`: cantidad y monto de adicionales.
- `gpreeventos`: cantidad de replanificaciones por proyecto (2013–2020).
- `rq`/`viaticos`: cantidad y monto de requisiciones y viáticos.
- `horas`: horas por CC y mes. **Solo ~25–35 % de las horas antes de 2020
  se pueden asignar a un CC** (faltan filas en `horasctroctos`); 2020–2021
  ~100 %; desde 2022 no hay carga de horas en el portal.
- **Sector: no está en `act_proyecto`.** Se obtiene uniendo el número de
  cotización de `NRegistro` con `propuestas.num_cot` (142 de 258 unen), pero
  `tipoindustria_id` solo está cargado desde 2020: **no hay sector para la
  cohorte 2010–2018**.
- **Cliente:** los `idCliente` de `act_proyecto` (44, 86, 103…) no existen
  en `cliente` ni `clientes1`: variable no recuperable.

**H8 — Calidad de datos (para 3.1 y 2.3.3):** moneda inconsistente entre
períodos (`tipocambio` = 1 antes de 2010); fechas de cierre administrativas
masivas; cierre anterior al inicio; plan sobreescrito al replanificar;
identificadores no estables entre tablas; texto con codificación rota
(`l?gica`, `Gesti�n`); asignación de horas a CC incompleta; rubro contable
vacío desde 2020; tablas de resumen inservibles (`resultados`).

**H9 — Mapeo al ERP nuevo (PostgreSQL, `schema.prisma`).**

| Histórico (MySQL) | ERP nuevo | Nota |
|---|---|---|
| `act_proyecto` | `cost_centers` + `cost_center_budgets` | Presupuesto por rubro: equivalente directo (servicios, materiales, logística, subcontratos, ingresos) |
| `gpre` / `gbase` (cash flow) | `cost_center_budget_lines` (`planned_date`, `category`) | Equivalente |
| Certificación `WI001`/`WA001` | `certifications` (`planned_date`, `certification_date`, `requested_amount`, `certified_amount`) | Equivalente directo |
| `gpreeventos` | `cost_center_events` (`old_values`/`new_values`) | Equivalente |
| `horas` + `horasctroctos` | `hour_entries` | Equivalente |
| `rq`, `viaticos` | `requisitions`, `purchase_orders`, `travel_allowance_requests` | Equivalente |
| `propuestas.tipoindustria_id` | `proposals.industry_market` | Equivalente (vía `cost_centers.proposal_id`) |
| `adicionales` | `cost_center_budget_lines` con `kind = baseline` | En `main` no hay campo que distinga OC original de adicional: el vendido es la suma de todas las líneas base. El histórico se agrega igual (OC + adicionales) |
| `gpdir` (costo contable real) | Ejecutado calculado en `CostCenterBudgetService.collectExecuted` (ya en `main`) | No se guarda; se arma de provisiones (servicios), órdenes de compra emitidas (materiales, logística, subcontratos), rendiciones de viáticos (logística) y certificaciones registradas (ingresos). Compras se toma **por compromiso** (orden emitida), no por factura: es costo comprometido, no pagado |

### Decisiones de 3.1 (respuestas de Franco, 2026-09-17)

1. **Ventana de entrenamiento: pendiente.** Franco va a conseguir las
   planillas Excel. Hasta verlas, la base es 2010–2018 (≈70 proyectos,
   ≈950 certificaciones).
2. **Granularidad: aceptada.** Certificación para el caso 1; proyecto para
   sobrecosto y retraso. Ajustar 2.2 y 3.4.3.
3. **Costo ejecutado: se define como en el ERP nuevo**, por presupuesto de
   centro de costo con cuatro bolsas (servicios, materiales, logística,
   subcontratos): **vendido** (línea base + adicionales), **seguimiento**
   (proyección editable) y **ejecutado** (calculado, no guardado: servicios
   de provisiones/horas, materiales y subcontratos de órdenes de compra,
   logística de órdenes de compra + viáticos). Doc 11 y
   `cost_center_type` = `project | service | structure | commercial`.
   Consecuencias:
   - Sobrecosto = ejecutado / vendido − 1, por bolsa y total, solo para CC
     de tipo proyecto y servicio.
   - En el histórico, `act_proyecto.CD*` + `adicionales` es el vendido;
     `gpre` es el seguimiento. El ejecutado se puede armar de dos formas:
     (a) `gpdir` por rubro (`OI001`→servicios, `PC001`→materiales,
     `MC*`/`VC*`→logística, `SC002`→subcontratos), fiel a la contabilidad
     pero sin equivalente en el ERP nuevo y con rubro vacío desde 2020; o
     (b) horas × costo HH + `rq` + `viaticos`, que replica cómo lo calcula
     el ERP nuevo (misma definición en entrenamiento e inferencia). **Se
     recomienda (b)**, con (a) como control de consistencia. Falta
     verificar (b): `rq.montorq` mezcla BOB (`id_moneda` 5) y USD (1),
     los montos de viáticos son texto y solo ~30 % de las horas antes de
     2020 tienen CC.
   - **Corrección (verificado en código, 2026-09-17):** el ejecutado **ya
     está implementado en `main`** (`cost-center-budget.service.ts`,
     `collectExecuted`); los docs 11 y 90 (brecha B2) están desactualizados.
     Lo que sigue abierto es B1: sin factura de proveedor, compras cuenta el
     monto estimado de la orden, no el costo real. Se declara como
     limitación de la variable en inferencia.
   - Para el histórico, la opción (b) queda: provisiones ↔ horas × costo
     HH, órdenes de compra ↔ `rq` aprobadas (estado 9, "aprobada para
     emisión de PO"), rendiciones ↔ `viaticos`.
4. **Prefijos de CC:** `O-` proyecto/operación, `S-` servicio, `A-`
   administrativo, `V-` ventas. Deducidos del dump (sin confirmar): `C-`
   consultoría/ingeniería (estudios, HAZOP, SIL; 16 CC entre 2003 y 2014,
   con OC, es decir facturables); `P-` áreas de soporte (Control de Gestión,
   Calidad y Seguridad, TIC; sin OC); `I-` operaciones internas (sin OC).
   Franco lo da por bueno (hay pocos CC con esos prefijos).
   Mapeo a `cost_center_type`: `O-`/`C-` → project, `S-` → service, `A-`/
   `P-`/`I-` → structure, `V-` → commercial. **Universo del modelo:
   `O-`, `S-`, `C-`** (255 cerrados).
5. **Umbrales:** retraso **> 10 % del plazo planificado** (aceptado por
   Franco, alineado con el rojo del semáforo). Contexto: los propuestos (> 30 días, > 10 %) eran supuestos míos
   sin fuente. Fuentes reales en el requerimiento de la empresa:
   - Sobrecosto: semáforo parametrizable **verde ≤ 5 %, amarillo 5–10 %,
     rojo > 10 %** de desviación desfavorable; el menor costo no alerta
     (`docs/documentation/complete/02-base-URS-TO-BE.md` §12.11;
     `03-base-SRS...` §11.9).
   - Certificaciones: desvío **> 10 %** exige causa y mitigación
     (URS §13.9). Aplica a monto; para fecha no hay umbral definido.
   - Retraso en fecha de cierre y en fecha de certificación: no hay umbral
     documentado; se adopta > 10 % del plazo planificado y se justifica con
     la distribución observada.
   - Con umbral de tres niveles, el caso de sobrecosto puede plantearse
     como clasificación verde/amarillo/rojo o como regresión del % y luego
     semáforo. Decidir en 3.4.3.
6. **Clientes:** Franco no está seguro; el dump tiene relaciones que no
   conectan. `cliente` queda **excluido como variable** y se anota como
   defecto de calidad (H8). Si aparece la tabla correcta, se reincorpora.

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

- **Procesos del portal (decidido 2026-09-17):** la fuente es
  `docs/old-manual/` (`manual.md` y `05-proyectos.md`). El relevamiento
  3.2.1 se arma desde ahí sin pedirle más a Franco; el estado en el ERP
  nuevo se toma de `docs/documentation/` y **se verifica contra el código**
  (los docs 11 y 90 ya mostraron estar desactualizados: el ejecutado del
  presupuesto existe en `main`). Priorización 3.2.2: primero los procesos
  que alimentan variables del modelo.
- **Defectos D1–D6 (decidido):** se corrigen los que ensucian variables del
  modelo; el resto se documenta como limitación.
- **Ojo (2026-09-17):** los docs de `docs/documentation/` están
  desactualizados en el estado de implementación. Verificado en código de
  `main`: ya existen el ejecutado del presupuesto, desviaciones y semáforo
  5/10 % (front, `budget-grid.util.ts`), rendiciones con conversión por
  línea (D2). Faltan: factura del proveedor en la orden de compra, causa y
  mitigación en certificaciones, reconstrucción del presupuesto a una fecha.
  D1 y D3 no aplican (Franco, 2026-09-17): las ausencias no se cargan como
  horas (la empresa decidió no trabajar ese apartado por ahora) y el
  subsidio fijo de 2000 es correcto así.

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

- Nada externo. Franco revisa la lista de requerimientos después de
  redactada (acordado).
- **Entrevistas a 5–8 usuarios clave: no realizadas (2026-09-17).** 3.3 se
  redacta con E-01, el requerimiento de la empresa (URS/SRS en
  `docs/documentation/complete/`) y los objetivos; se anota como
  limitación. Si se hacen antes de cerrar el capítulo, se incorporan.

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

- **Diagramas C4:** en **TikZ** (decidido).
- **Granularidad:** decidida en 3.1 (certificación para el caso 1; proyecto
  para sobrecosto y retraso).
- **Tools del servidor MCP (provisorio, aceptado):** consultar centro de
  costo; vendido vs. ejecutado por bolsa; certificaciones de un proyecto;
  predicción de riesgo de un proyecto; proyectos en rojo.
- **Reportes de Power BI (provisorio, aceptado):** cartera de proyectos;
  presupuesto vs. ejecutado; certificaciones y cobranza; horas por centro
  de costo. Falta nombrar los endpoints NestJS que los alimentan (se
  derivan del código en la redacción).
- **Despliegue (decidido):** Docker Compose en servidor propio (Keycloak,
  PostgreSQL, NestJS, Angular, FastAPI, MCP). **El objetivo final del
  proyecto es que todo quede desplegado** en ese servidor, no solo
  demostrado en local. Contabo queda como trabajo futuro.

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

- [x] Franco: dump o credenciales de solo lectura del MySQL de producción (dump 2026-09-17).
- [x] Exploración inicial del dump (hallazgos H1–H9 en 3.1).
- [x] Franco: responder las 6 decisiones de 3.1 (queda abierta la 1: Excels).
- [ ] Franco: ubicación y descripción de las planillas Excel.
- [x] Procesos del portal: fuente `old-manual/` (se relevan sin más insumos).
- [x] Lista provisoria de tools MCP y de reportes Power BI.
- [x] Formato de los diagramas C4: TikZ.
- [x] Redactar 3.3 (2026-09-17, `content/chapter-3/sec-03-requerimientos.tex`; sin revisar).
- [x] Redactar 3.4, 3.2 y 3.1 (2026-09-17; sin revisar). Hallazgos en [[16-hallazgos-cap3]].

- [ ] Resolver hallazgos de [[16-hallazgos-cap3]] → pasar `revisor` por el Cap. III.
