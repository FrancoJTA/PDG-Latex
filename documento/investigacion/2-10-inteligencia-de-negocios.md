# Brief de investigación — 2.10 Inteligencia de Negocios (Cap. II)

Fecha: 2026-09-17. Investigador. Verificación: CrossRef (DOI), Semantic
Scholar (abstract/TLDR), OpenAlex, AIS eLibrary, Open Library y Wiley (ISBN),
Microsoft Learn (curl 200 + lectura de la página, con fecha `ms.date`),
sitios oficiales de Superset, Metabase y Tableau. Todo lo que no pude
verificar está marcado. Las entradas BibLaTeX son candidatas: se cargan por
Zotero (`documento/09-setup-zotero.md`), no a mano.

Resumen: 11 fuentes núcleo (10 verificadas, 1 parcial: Delen2013) + 13
`@online` verificadas por URL (10 Microsoft Learn, 3 de alternativas).
Ninguna key existe todavía en `documento.bib` ni en los briefs 2-1 / 2-2.
`Kimball2013` se propone acá con esa key para que 2.3 la reutilice.

Convención: **[V]** = verificado en abstract/texto/metadatos; **[V-parcial]**
= verificado sólo por TLDR, fragmento o fuente secundaria (confirmar en el
PDF antes de citar textual); **[V-cap]** = verificado a nivel de obra
(título, edición, ISBN, descripción editorial), no de página.

Alcance según `11-brief-proyecto.md` §2: Power BI = reportes
**descriptivos** del ERP, **sin predicciones**, leyendo por una **API de
NestJS protegida con Keycloak**; las predicciones sólo en Angular. No
investigué Fabric, Copilot ni streaming (fuera de alcance).

---

## 2.10.1 Definición y Reportes Descriptivos

### Chaudhuri2011

```bibtex
@article{Chaudhuri2011,
  author  = {Chaudhuri, Surajit and Dayal, Umeshwar and Narasayya, Vivek},
  title   = {An overview of business intelligence technology},
  journal = {Communications of the ACM},
  volume  = {54},
  number  = {8},
  pages   = {88--98},
  year    = {2011},
  doi     = {10.1145/1978542.1978562}
}
```

Verificación: CrossRef DOI (CACM 54(8), 88–98, 2011, ACM); Semantic
Scholar ~870 citas. El abstract de CrossRef/S2 es sólo la frase "BI
technologies are essential to running today's businesses and this
technology is going through sea changes". El PDF abierto (uni-leipzig)
devolvió 503/HTML y la página de ACM 403: **no leí el cuerpo**.

Claims:
- [V-parcial] Definición: "Business intelligence (BI) software is a
  collection of decision support technologies for the enterprise aimed at
  enabling knowledge workers such as executives, managers, and analysts to
  make better and faster decisions" (primer párrafo del artículo; tomado
  de la página de CACM vía búsqueda, no del PDF). Confirmar en el PDF.
- [V-parcial] Describe la arquitectura típica de BI: fuentes → ETL /
  movimiento de datos → data warehouse → servidores de nivel medio (OLAP,
  reporting, búsqueda, minería) → aplicaciones front-end. Es el contenido
  conocido del artículo (Fig. 1), pero no lo verifiqué en esta pasada.

Por qué aplica: definición de BI citable y moderna (2011) desde autores de
la comunidad de bases de datos; sirve para abrir 2.10.1 y para ubicar a
Power BI como "front-end" de una arquitectura donde el ETL (2.3) y la API
del ERP son las capas anteriores.

### Chaudhuri1997

```bibtex
@article{Chaudhuri1997,
  author  = {Chaudhuri, Surajit and Dayal, Umeshwar},
  title   = {An overview of data warehousing and {OLAP} technology},
  journal = {ACM SIGMOD Record},
  volume  = {26},
  number  = {1},
  pages   = {65--74},
  year    = {1997},
  doi     = {10.1145/248603.248616}
}
```

Verificación: CrossRef DOI (SIGMOD Record 26(1), 65–74, 1997) con
abstract.

Claims:
- [V] Data warehousing y OLAP son "essential elements of decision
  support"; el artículo cubre "back end tools for extracting, cleaning and
  loading data into a data warehouse", modelos de datos
  multidimensionales, herramientas cliente de consulta y análisis,
  extensiones de procesamiento de consultas en el servidor y gestión de
  metadatos.
- [V] Origen: tutorial VLDB 1996; identifica problemas abiertos de
  investigación.

Por qué aplica: fuente clásica para definir data warehouse y OLAP y para
el vocabulario "multidimensional" (cubos, dimensiones, medidas) que Power
BI hereda en su modelo tabular. Complementa a Kimball2013 con una visión
académica.

### Negash2004

```bibtex
@article{Negash2004,
  author  = {Negash, Solomon},
  title   = {Business Intelligence},
  journal = {Communications of the Association for Information Systems},
  volume  = {13},
  pages   = {177--195},
  year    = {2004},
  doi     = {10.17705/1CAIS.01315},
  note    = {Artículo 15}
}
```

Verificación: CrossRef DOI (CAIS vol. 13, art. 15, 2004, AIS); AIS
eLibrary (aisel.aisnet.org/cais/vol13/iss1/15) con abstract y autor
(Kennesaw State University). **Páginas 177–195 no verificadas por API**
(CrossRef da "15" = número de artículo); confirmar en el PDF o citar sólo
`note = {Artículo 15}`.

Claims:
- [V] Definición: "Business intelligence systems combine operational data
  with analytical tools to present complex and competitive information to
  planners and decision makers" (abstract).
- [V] Objetivo: mejorar la oportunidad (timeliness) y la calidad de los
  insumos para la decisión; propone un marco que integra datos
  estructurados y no estructurados de fuentes internas y externas.

Por qué aplica: definición de BI desde sistemas de información (no desde
bases de datos), con foco en "datos operativos + herramientas analíticas",
exactamente lo que hace Power BI sobre el ERP.

### Watson2007

```bibtex
@article{Watson2007,
  author  = {Watson, Hugh J. and Wixom, Barbara H.},
  title   = {The Current State of Business Intelligence},
  journal = {Computer},
  volume  = {40},
  number  = {9},
  pages   = {96--99},
  year    = {2007},
  doi     = {10.1109/MC.2007.331}
}
```

Verificación: CrossRef DOI (IEEE Computer 40(9), 96–99, 2007); abstract
completo vía Semantic Scholar (~700 citas).

Claims:
- [V] "BI is a process that includes two primary activities: getting data
  in and getting data out."
- [V] "Getting data in, traditionally referred to as data warehousing,
  involves moving data from a set of source systems into an integrated data
  warehouse."
- [V] "Getting data out [...] consists of business users and applications
  accessing data from the data warehouse to perform enterprise reporting,
  OLAP, querying, and predictive analytics."
- [V] "Getting data in delivers limited value to an enterprise; only when
  users and applications access the data and use it to make decisions does
  the organization realize the full value."

Por qué aplica: el par "getting data in / getting data out" mapea
directamente al proyecto: el pipeline Medallion (2.3) es *getting data in*;
Power BI y el dashboard Angular son *getting data out*. **Ojo:** Watson
incluye la analítica predictiva dentro de BI; no afirmar que "BI excluye
predicciones". La separación Power BI (descriptivo) / Angular (predictivo)
es una decisión de diseño del proyecto, no una definición de BI.

### Chen2012

```bibtex
@article{Chen2012,
  author  = {Chen, Hsinchun and Chiang, Roger H. L. and Storey, Veda C.},
  title   = {Business Intelligence and Analytics: {From} Big Data to Big Impact},
  journal = {MIS Quarterly},
  volume  = {36},
  number  = {4},
  pages   = {1165--1188},
  year    = {2012},
  doi     = {10.2307/41703503}
}
```

Verificación: CrossRef DOI (MISQ 36(4), 1165–1188, 2012) con abstract.

Claims:
- [V] Propone un marco evolutivo BI&A 1.0 / 2.0 / 3.0 con sus
  "key characteristics and capabilities"; artículo introductorio de un
  número especial.
- [V] Incluye un análisis bibliométrico de publicaciones, investigadores y
  temas de BI&A de más de una década.
- No verificado con el abstract: que BI&A 1.0 = datos estructurados en
  DBMS/data warehouse con OLAP y reporting, BI&A 2.0 = web y contenido no
  estructurado, BI&A 3.0 = móvil y sensores. Está en el cuerpo (§"BI&A
  Evolution"); citar con esa sección sólo tras leer el PDF.

Por qué aplica: la referencia más citada sobre BI&A; permite ubicar el
proyecto en BI&A 1.0 (datos estructurados del ERP) y justificar por qué
Power BI, y no una plataforma de big data, es suficiente para el reporte
descriptivo.

### Lepenioti2020

```bibtex
@article{Lepenioti2020,
  author  = {Lepenioti, Katerina and Bousdekis, Alexandros and Apostolou, Dimitris and Mentzas, Gregoris},
  title   = {Prescriptive analytics: {Literature} review and research challenges},
  journal = {International Journal of Information Management},
  volume  = {50},
  pages   = {57--70},
  year    = {2020},
  doi     = {10.1016/j.ijinfomgt.2019.04.003}
}
```

Verificación: CrossRef DOI (IJIM 50, 57–70, 2020, Elsevier, CC BY 4.0);
abstract completo vía Semantic Scholar (~430 citas).

Claims:
- [V] "Business analytics aims to enable organizations to make quicker,
  better, and more intelligent decisions with the aim to create business
  value."
- [V] "To date, the major focus in the academic and industrial realms is on
  descriptive and predictive analytics."
- [V] La analítica prescriptiva "seeks to find the best course of action
  for the future" y es "the next step towards increasing data analytics
  maturity".

Por qué aplica: fuente reciente y abierta para la tríada descriptiva /
predictiva / prescriptiva; permite decir que Power BI cubre la descriptiva,
el módulo ML la predictiva, y que la prescriptiva queda como trabajo futuro.

### Delen2013 — [V-parcial]

```bibtex
@article{Delen2013,
  author  = {Delen, Dursun and Demirkan, Haluk},
  title   = {Data, information and analytics as services},
  journal = {Decision Support Systems},
  volume  = {55},
  number  = {1},
  pages   = {359--363},
  year    = {2013},
  doi     = {10.1016/j.dss.2012.05.044}
}
```

Verificación: CrossRef DOI (DSS 55(1), 359–363, 2013). Abstract elidido en
S2/OpenAlex; ScienceDirect 403. TLDR de S2: "A conceptual framework for
service oriented managerial decision making process is provided, and the
potential impact of SOA and cloud computing on data, information and
analytics is explained."

Claims:
- [V-parcial] Es la fuente que suele citarse para la clasificación
  descriptiva / predictiva / prescriptiva (qué pasó / qué pasará / qué
  hacer). Fuentes secundarias lo confirman, pero **no lo verifiqué en el
  texto**. Si el redactor la usa para esa tríada, leer el PDF (sección
  "Analytics as a service", tabla/figura de los tres tipos) o apoyarse en
  Lepenioti2020, que sí está verificada.

Por qué aplica: sólo como segunda cita de la tríada; prescindible.

### Eckerson2010

```bibtex
@book{Eckerson2010,
  author    = {Eckerson, Wayne W.},
  title     = {Performance Dashboards},
  subtitle  = {Measuring, Monitoring, and Managing Your Business},
  edition   = {2},
  publisher = {John Wiley \& Sons},
  address   = {Hoboken, NJ},
  year      = {2010},
  isbn      = {9780470589830}
}
```

Verificación: Open Library ISBN 9780470589830 (Wiley, 2010, 2.ª ed., 318
pp.); Wiley (noviembre 2010, 336 pp., ISBN 978-0-470-58983-0). Descripción
editorial: "explains what dashboards are, where they can be used, and why
they are important to measuring and managing performance".

Claims:
- [V-cap] Un dashboard de desempeño es una capa de presentación sobre la
  infraestructura de BI que integra monitoreo, análisis y gestión de
  indicadores (tesis del libro según la descripción editorial).
- No verificado: la tipología operativo / táctico / estratégico y la
  "arquitectura MAD" (monitor–analyze–drill). Están en el libro (cap. 1 y
  cap. 6 en la 2.ª ed. según índice conocido), pero no lo confirmé.
  Confirmar capítulo antes de citar.

Por qué aplica: define "dashboard" e "indicador" (KPI) en el sentido de
gestión que necesita 2.10.1 (dashboards e indicadores). Distinguir del
"dashboard" de Power BI Service (término de producto, ver
MSPowerBIServiceConcepts).

### Few2013

```bibtex
@book{Few2013,
  author    = {Few, Stephen},
  title     = {Information Dashboard Design},
  subtitle  = {Displaying Data for At-a-Glance Monitoring},
  edition   = {2},
  publisher = {Analytics Press},
  address   = {Burlingame, CA},
  year      = {2013},
  isbn      = {9781938377006}
}
```

Verificación: Open Library ISBN 9781938377006 (Analytics Press, agosto
2013, 260 pp.). Open Library no marca "2nd ed." explícitamente; la 1.ª ed.
es O'Reilly 2006 (ISBN distinto), así que la de Analytics Press 2013 es la
2.ª. Índice no verificado.

Claims:
- [V-cap] Obra de referencia sobre diseño visual de dashboards para
  monitoreo "de un vistazo": principios de percepción, reducción de
  elementos no informativos, elección de gráficos.
- No verificado: la definición de Few de dashboard ("a visual display of
  the most important information needed to achieve one or more objectives;
  consolidated and arranged on a single screen so the information can be
  monitored at a glance") está en el cap. 1 de ambas ediciones; confirmar
  página antes de citar textual.

Por qué aplica: criterios de diseño para los reportes de Power BI y para el
dashboard Angular; complementa a Eckerson (gestión) con la parte visual.

### Kimball2013 (coordinar con 2.3)

```bibtex
@book{Kimball2013,
  author    = {Kimball, Ralph and Ross, Margy},
  title     = {The Data Warehouse Toolkit},
  subtitle  = {The Definitive Guide to Dimensional Modeling},
  edition   = {3},
  publisher = {John Wiley \& Sons},
  address   = {Indianapolis, IN},
  year      = {2013},
  isbn      = {9781118530801}
}
```

Verificación: Open Library ISBN 9781118530801 (Wiley, julio 2013, 3.ª ed.,
600 pp.); Wiley (608 pp., ISBN 978-1-118-53080-1). Descripción editorial:
"complete library of updated dimensional modeling techniques [...] star
schema dimensional modeling patterns, adds two new chapters on ETL
techniques".

Claims:
- [V-cap] Modelado dimensional: esquema en estrella, tablas de hechos y
  dimensiones, como técnica estándar de diseño de data warehouses para BI.
- [V-cap] Incluye capítulos de ETL (según la descripción editorial: "two
  new chapters on ETL techniques"; en el índice conocido son caps. 19–20).
- No verificado por página: cap. 1 ("Data Warehousing, Business
  Intelligence, and Dimensional Modeling Primer") y cap. 2 (técnicas).

Por qué aplica: el modelo tabular de Power BI (tablas relacionadas, medidas
DAX) funciona mejor con un esquema en estrella; es el puente entre la capa
Gold (2.3) y los reportes. Si 2.3 ya la cita, usar la misma key.

### Alpar2016

```bibtex
@article{Alpar2016,
  author  = {Alpar, Paul and Schulz, Michael},
  title   = {Self-Service Business Intelligence},
  journal = {Business \& Information Systems Engineering},
  volume  = {58},
  number  = {2},
  pages   = {151--155},
  year    = {2016},
  doi     = {10.1007/s12599-016-0424-6}
}
```

Verificación: CrossRef DOI (BISE 58(2), 151–155, 2016, Springer); TLDR vía
Semantic Scholar (~136 citas). Abstract elidido; Springer redirige a login.

Claims:
- [V-parcial] (TLDR) "Self-Service BI should empower casual users to
  perform custom analytics and to derive actionable information from large
  amounts of multifaceted data without having to involve BI specialists";
  los power users "can accomplish their tasks with SSBI more easily and
  quickly than before". El TLDR de S2 es generado automáticamente a partir
  del texto; tratar como paráfrasis, no cita textual.

Por qué aplica: única fuente académica del brief para "self-service BI";
justifica que los usuarios de ISI Mustang (jefes de proyecto,
administración) exploren los reportes de Power BI sin depender del
desarrollador.

---

## 2.10.2 Power BI

Todas las páginas de Microsoft Learn devolvieron HTTP 200 el 2026-09-17 y
las leí completas. `urldate = {2026-09-17}`. `ms.date` es la fecha de
última revisión declarada por Microsoft; conviene ponerla en `date`.

### MSPowerBIOverview

```bibtex
@online{MSPowerBIOverview,
  author  = {{Microsoft}},
  title   = {What is {Power BI}?},
  organization = {Microsoft Learn},
  date    = {2026-03-23},
  url     = {https://learn.microsoft.com/en-us/power-bi/fundamentals/power-bi-overview},
  urldate = {2026-09-17}
}
```

Claims:
- [V] "Power BI is Microsoft's business analytics platform that helps you
  turn data into actionable insights [...] integrated tools and services to
  connect, visualize, and share data across your organization."
- [V] "Power BI has two main components: Power BI Desktop and the Power BI
  service. Desktop is best for data modeling and report creation, while the
  service is ideal for sharing and collaboration." También hay Power BI
  Mobile.
- [V] Desktop: "Connect to more than 100 data sources, including databases,
  cloud services, files, and web sources"; "Use Power Query Editor for data
  transformation"; "Create data models with DAX, calculated columns, and
  relationships".
- [V] Service: workspaces, apps, dataflows, "Schedule refresh", RLS,
  "embed content".
- [V] Power BI es hoy un componente de Microsoft Fabric (no se usa Fabric
  en el proyecto; no entrar en detalle).

### MSPowerQueryWhatIs

```bibtex
@online{MSPowerQueryWhatIs,
  author  = {{Microsoft}},
  title   = {What is {Power Query}?},
  organization = {Microsoft Learn},
  date    = {2026-08-10},
  url     = {https://learn.microsoft.com/en-us/power-query/power-query-what-is-power-query},
  urldate = {2026-09-17}
}
```

Claims:
- [V] "Power Query is a data transformation and data preparation engine.
  It includes a graphical interface for getting data from sources and a
  Power Query editor for applying transformations." "you can perform the
  extract, transform, and load (ETL) processing of data."
- [V] "Power Query records transformations as query steps and applies
  them when the query runs; it doesn't modify the source data."
- [V] Lenguaje M: "The Power Query engine uses a scripting language behind
  the scenes for all Power Query transformations: the Power Query M formula
  language, also known as M." Editable en el Advanced Editor.
- [V] "connectivity to hundreds of data sources and over 350 types of data
  transformations".
- [V] Dos experiencias: Power Query Desktop (Excel, Power BI Desktop) y
  Power Query Online (dataflows).

### MSDAXOverview

```bibtex
@online{MSDAXOverview,
  author  = {{Microsoft}},
  title   = {{DAX} overview},
  organization = {Microsoft Learn},
  date    = {2023-10-20},
  url     = {https://learn.microsoft.com/en-us/dax/dax-overview},
  urldate = {2026-09-17}
}
```

Claims:
- [V] "Data Analysis Expressions (DAX) is a formula expression language
  used in Analysis Services, Power BI, and Power Pivot in Excel. DAX
  formulas include functions, operators, and values to perform advanced
  calculations and queries on data in related tables and columns in tabular
  data models."
- [V] Se usa en medidas, columnas calculadas, tablas calculadas y
  seguridad a nivel de fila (RLS).
- [V] Medidas: "dynamic calculation formulas where the results change
  depending on context"; columnas calculadas: se calculan por fila y "are
  then stored in the in-memory data model".
- [V] Tres tipos de contexto: row context, query context, filter context.
- [V] Funciones de *time intelligence* para comparar períodos.
- [V] "Power BI Desktop is a free data modeling and reporting application."
- [V] Los modelos de Power BI son "tabular data models" (mismo motor que
  Analysis Services tabular). El nombre "VertiPaq" no aparece en esta
  página: no usarlo con esta cita.

### MSPowerBIServiceConcepts

```bibtex
@online{MSPowerBIServiceConcepts,
  author  = {{Microsoft}},
  title   = {{Power BI} service basics: key concepts and terms},
  organization = {Microsoft Learn},
  date    = {2026-03-23},
  url     = {https://learn.microsoft.com/en-us/power-bi/fundamentals/service-basic-concepts},
  urldate = {2026-09-17}
}
```

Claims (tabla de términos, textual):
- [V] Semantic model (antes *dataset*): "A container of data used by
  designers to build reports, dashboards, and apps; can combine multiple
  data sources into a single model."
- [V] Report: "One or more pages of interactive visuals, text, and
  graphics based on a single semantic model".
- [V] Dashboard: "A single screen with tiles of interactive visuals, text,
  and graphics, often used to monitor metrics or tell a story."
- [V] Workspace: "A collaborative area where designers store and manage
  collections of dashboards, reports, and other Fabric items" con roles
  Admin / Member / Contributor / Viewer.
- [V] App: colección de dashboards, reportes y modelos para compartir.
- [V] Dos roles: "designers or creators" vs. "end users, consumers, or
  business users".

### MSPowerQueryWeb

```bibtex
@online{MSPowerQueryWeb,
  author  = {{Microsoft}},
  title   = {{Power Query} {Web} connector},
  organization = {Microsoft Learn},
  date    = {2026-04-08},
  url     = {https://learn.microsoft.com/en-us/power-query/connectors/web/web},
  urldate = {2026-09-17}
}
```

Claims:
- [V] Conector Web (función `Web.Contents`), estado General Availability,
  disponible en Power BI (semantic models y dataflows). Tipos de
  autenticación soportados por `Web.Contents`: Anonymous, Windows, Basic,
  Web API, Organizational Account, Service Principal.
- [V] "Web API: Select this method if the web resource that you're
  connecting to uses an API Key for authentication purposes."
  "Organizational account: [...] if the web page requires organizational
  account credentials."
- [V] Capacidades: construir la URL con parámetros, timeout, "Defining
  HTTP request header parameters (Web.Contents only)".
- [V] "POST requests can only be made anonymously when using
  `Web.Contents`."
- [V] Al apuntar a un JSON, el conector "automatically wraps the web
  contents in the appropriate document type specified by the URL
  (`Json.Document` in this example)".
- [V] En Power Query Online hay conector "Web API" que no requiere gateway
  (a diferencia de "Web page", que sí).

### MSPowerQueryAuth

```bibtex
@online{MSPowerQueryAuth,
  author  = {{Microsoft}},
  title   = {Authentication in desktop apps},
  organization = {Microsoft Learn},
  date    = {2026-04-08},
  url     = {https://learn.microsoft.com/en-us/power-query/connector-authentication},
  urldate = {2026-09-17}
}
```

Claims:
- [V] La autenticación se fija por conector y por *nivel* de URL; las
  credenciales quedan guardadas y se editan en "Data source settings".
- [V] Sección "Connecting with Microsoft Entra ID using the Web and OData
  connectors": el flujo OAuth integrado ("Organizational account") sólo
  funciona si el servicio responde `401` con `WWW-Authenticate: Bearer
  authorization_uri=https://login.microsoftonline.com/...`; "Power Query
  can then initiate the OAuth flow against the authorization_uri".
- [V] "If you need more control over the OAuth flow [...] then you'd need
  to use a custom connector."
- [V] Si el servicio no lo soporta: error "We were unable to connect
  because this credential type isn't supported for this resource".

**Implicación para el proyecto (inferencia mía, no de la fuente):** el
OAuth "de fábrica" de Power Query está atado a Microsoft Entra ID; Keycloak
no es Entra. Ver "Notas para el redactor" §3.

### MSPowerQueryHandlingAuth

```bibtex
@online{MSPowerQueryHandlingAuth,
  author  = {{Microsoft}},
  title   = {Handling authentication for {Power Query} connectors},
  organization = {Microsoft Learn},
  date    = {2026-07-13},
  url     = {https://learn.microsoft.com/en-us/power-query/handling-authentication},
  urldate = {2026-09-17}
}
```

Claims:
- [V] Tipos de autenticación que puede declarar un conector personalizado:
  Anonymous (Implicit), OAuth, Aad, UsernamePassword, Windows, Key.
- [V] OAuth genérico: el conector implementa `StartLogin` (URL de
  autorización), `FinishLogin` (intercambio de código por access_token) y,
  opcionalmente, `Refresh` y `Logout`.
- [V] Recomendación de seguridad: "Data Connectors should not use
  confidential secrets in their OAuth flows [...] Go to Proof Key for Code
  Exchange by OAuth Public Clients RFC (also known as PKCE)". Enlace a RFC
  7636 y a un sample PKCE en GitHub (microsoft/DataConnectors).
- [V] Con `Key`, "By default, the mashup engine inserts this key in an
  Authorization header as if this value were a basic auth password";
  con `ManualCredentials = true` el conector arma el header a mano.

### MSPowerBIDirectQuery

```bibtex
@online{MSPowerBIDirectQuery,
  author  = {{Microsoft}},
  title   = {{DirectQuery} in {Power BI}: when to use, limitations, alternatives},
  organization = {Microsoft Learn},
  date    = {2025-09-25},
  url     = {https://learn.microsoft.com/en-us/power-bi/connect-data/desktop-directquery-about},
  urldate = {2026-09-17}
}
```

Claims:
- [V] Modo Import: "All data defined by those queries is loaded into the
  semantic model's in-memory cache"; "Visuals don't reflect source changes
  until you refresh (reimport)"; "You can schedule refresh [...] and might
  need an on-premises data gateway."
- [V] Modo DirectQuery: "No data is imported at load time. Each visual
  triggers one or more queries to the underlying source."
- [V] "Use import by default. It uses Power BI's high-performance in-memory
  engine and provides the richest feature set."
- [V] Fuentes con DirectQuery: bases de datos (SQL Server, PostgreSQL,
  MySQL, ...); la lista de fuentes "Other sources like websites" aparece
  bajo Import. **No afirma explícitamente que Web/REST no soporta
  DirectQuery**; es lo que se desprende de la lista de fuentes
  DirectQuery-enabled (verificar en `power-bi-data-sources` si se quiere
  afirmar).

### MSPowerBIRefresh

```bibtex
@online{MSPowerBIRefresh,
  author  = {{Microsoft}},
  title   = {Data refresh in {Power BI}},
  organization = {Microsoft Learn},
  date    = {2025-09-18},
  url     = {https://learn.microsoft.com/en-us/power-bi/connect-data/refresh-data},
  urldate = {2026-09-17}
}
```

Claims:
- [V] "refreshing data typically means importing data from the original
  data sources into a semantic model, either based on a refresh schedule or
  on demand."
- [V] "Power BI limits semantic models on shared capacity to eight
  scheduled daily semantic model refreshes"; en Premium/PPU/Fabric, "up to
  48 refreshes per day".
- [V] "Semantic models that use cloud data sources, such as Azure SQL DB,
  don't require a data gateway if Power BI can establish a direct network
  connection to the source."
- [V] "a gateway is required if a semantic model connects to sources
  requiring a gateway (such as on-premises or sources in a virtual
  network)".

### MSPowerBIGateway

```bibtex
@online{MSPowerBIGateway,
  author  = {{Microsoft}},
  title   = {On-premises data gateway},
  organization = {Microsoft Learn},
  date    = {2025-02-07},
  url     = {https://learn.microsoft.com/en-us/power-bi/connect-data/service-gateway-onprem},
  urldate = {2026-09-17}
}
```

Claims:
- [V] "An on-premises data gateway is software that you install in an
  on-premises network [...] acts as a bridge to provide quick and secure
  data transfer between on-premises data (data that isn't in the cloud)
  and several Microsoft cloud services", incluido Power BI.
- [V] Tres tipos: on-premises data gateway (estándar), personal mode (un
  solo usuario, sólo Power BI) y virtual network data gateway.

### Alternativas (para justificar la elección)

```bibtex
@online{ApacheSuperset,
  author  = {{Apache Software Foundation}},
  title   = {Apache {Superset}},
  url     = {https://superset.apache.org/},
  urldate = {2026-09-17}
}

@online{MetabaseDatabases,
  author  = {{Metabase}},
  title   = {Adding and managing databases},
  organization = {Metabase Documentation},
  url     = {https://www.metabase.com/docs/latest/databases/connecting},
  urldate = {2026-09-17}
}

@online{TableauWDC,
  author  = {{Tableau (Salesforce)}},
  title   = {Web Data Connector 2.0},
  organization = {Tableau Help},
  url     = {https://help.tableau.com/current/pro/desktop/en-us/examples_web_data_connector.htm},
  urldate = {2026-09-17}
}
```

Claims:
- [V] Superset (home): "Apache Superset is an open-source modern data
  exploration and visualization platform"; licencia Apache 2.0; "can
  connect to any SQL-based databases including modern cloud-native
  databases and engines at petabyte scale". No menciona APIs REST como
  fuente. (La página de docs `configuration/databases` devolvió 404 desde
  aquí; la afirmación se apoya en la home.)
- [V] Metabase (docs): lista de bases de datos con driver oficial
  (PostgreSQL, MySQL, SQL Server, BigQuery, Snowflake, MongoDB, ...); "The
  documentation does not mention REST APIs or non-database sources".
  Soporte oficial "for Pro and Enterprise".
- [V] Tableau WDC: "A web data connector is an HTML file that includes
  JavaScript code" para fuentes HTTP sin conector nativo; "As of 2022.3 the
  Web Data Connector 2.0 has been replaced by Web Data Connector 3.0" y WDC
  2.0 "is deprecated as of the 2023.1 release". La página de producto de
  Tableau Desktop devolvió 403; no verifiqué precios ni licencia.

Por qué aplica: el brief exige que Power BI lea **por una API REST de
NestJS**, no por acceso directo a PostgreSQL. Superset y Metabase se
conectan a bases SQL (no a APIs REST) sin desarrollo adicional; Tableau
requiere escribir un conector en JavaScript. Power BI trae conector Web con
`Json.Document` y headers HTTP de fábrica. Es un argumento técnico
verificable; **no** afirmar "Power BI es mejor" en general ni citar cuotas
de mercado (Gartner no se verificó).

---

## Notas para el redactor

### 1. Keys: existentes vs. nuevas

- Ya en `documento.bib`: ninguna de este brief.
- Nuevas (cargar por Zotero): Chaudhuri2011, Chaudhuri1997, Negash2004,
  Watson2007, Chen2012, Lepenioti2020, Delen2013 (opcional), Eckerson2010,
  Few2013, Kimball2013, Alpar2016; `@online`: MSPowerBIOverview,
  MSPowerQueryWhatIs, MSDAXOverview, MSPowerBIServiceConcepts,
  MSPowerQueryWeb, MSPowerQueryAuth, MSPowerQueryHandlingAuth,
  MSPowerBIDirectQuery, MSPowerBIRefresh, MSPowerBIGateway, ApacheSuperset,
  MetabaseDatabases, TableauWDC.
- **`Kimball2013`**: si el brief 2.3 la propone, usar esta misma key y
  entrada. **`Chen2012`** no colisiona con `Chen2016` (XGBoost) del brief
  2.2, pero cuidado al citar: son autores distintos.
- Entradas `@online` de Microsoft: `author = {{Microsoft}}` con doble
  llave para que biblatex no lo parta.

### 2. Claims sin fuente verificada (no afirmar sin cita o buscar una)

1. **"BI = descriptivo, ML = predictivo"** como definición: ninguna fuente
   lo dice así. Watson2007 incluye "predictive analytics" dentro de BI y
   Lepenioti2020 habla de *business analytics* (no BI) con las tres capas.
   Redactar la separación como **decisión de arquitectura del proyecto**
   (ver §3), apoyada en la tríada de Lepenioti2020.
2. **Tríada descriptiva / predictiva / prescriptiva en Delen2013**: sólo
   [V-parcial]. Usar Lepenioti2020 como cita principal.
3. **Definición de Chaudhuri2011** ("collection of decision support
   technologies..."): tomada de la página de ACM vía buscador, no del PDF.
   Confirmar antes de cita textual.
4. **BI&A 1.0/2.0/3.0 de Chen2012**: el marco existe [V]; el contenido de
   cada etapa no lo verifiqué en el abstract.
5. **Páginas y capítulos de Eckerson2010, Few2013 y Kimball2013**: sólo a
   nivel de obra. Nada de "§" ni "p." sin abrir el libro.
6. **Definición de dashboard de Few** (textual, cap. 1): no verificada.
7. **Páginas 177–195 de Negash2004**: no verificadas por API.
8. **"Web/REST no soporta DirectQuery"**: se desprende de la lista de
   fuentes, no está dicho textualmente en MSPowerBIDirectQuery.
9. **VertiPaq / motor columnar**: no aparece en las páginas leídas; no
   nombrarlo con estas citas.
10. **Cuotas de mercado o Gartner Magic Quadrant**: no verificado; no usar.

### 3. Implicaciones de diseño que el redactor puede afirmar (con las citas)

- **Por qué los descriptivos van a Power BI y las predicciones al ERP**
  (brief §2). Argumento sostenible con fuentes: (a) Power BI en modo Import
  trabaja sobre una copia en memoria que se actualiza por refresco
  programado, máximo 8/día en capacidad compartida [MSPowerBIDirectQuery,
  MSPowerBIRefresh]; las predicciones son valores calculados bajo demanda
  por FastAPI para proyectos activos y atados a la sesión Keycloak del
  usuario, así que su lugar natural es la UI transaccional (Angular), no un
  modelo importado. (b) La tríada analítica [Lepenioti2020] ordena el
  alcance: descriptiva = Power BI, predictiva = módulo ML, prescriptiva =
  trabajo futuro. (c) Watson2007: el valor está en *getting data out*; el
  proyecto lo hace por dos canales según el tipo de pregunta. Presentarlo
  como decisión, no como norma.
- **Conexión Power BI → API NestJS con Keycloak.** Lo verificado: el OAuth
  integrado del conector Web ("Organizational account") sólo negocia con
  Microsoft Entra ID [MSPowerQueryAuth]; para otro proveedor OAuth hay que
  escribir un conector personalizado con `OAuth` kind (StartLogin /
  FinishLogin / Refresh) y PKCE [MSPowerQueryHandlingAuth], o bien pasar
  un token/API key en el header `Authorization` vía `Web.Contents` con
  headers [MSPowerQueryWeb]. Restricción: "POST requests can only be made
  anonymously" en `Web.Contents` [MSPowerQueryWeb], lo que afecta al
  *client credentials grant* de Keycloak (POST al token endpoint) si se
  quiere hacer desde M. **Decisión pendiente para el Cap. IV**: (i)
  conector personalizado OAuth+PKCE contra Keycloak, o (ii) credencial de
  servicio (client credentials) emitida por Keycloak y token pasado por
  header, con rotación. Este brief no decide; sólo documenta lo que la
  plataforma permite.
- **Gateway.** Fase 1 es servidor propio de la empresa (brief §4). Si la
  API de NestJS no es alcanzable desde Internet, el refresco programado en
  Power BI Service requiere un on-premises data gateway [MSPowerBIRefresh,
  MSPowerBIGateway]; si es alcanzable (o tras la migración a Contabo), no
  [MSPowerBIRefresh]. Mencionarlo en 2.10.2 como condición, resolverlo en
  el Cap. IV.
- **Elección frente a alternativas.** Argumento técnico verificado:
  Superset y Metabase se conectan a bases SQL; el brief prohíbe el acceso
  directo a PostgreSQL desde BI (debe pasar por la API con Keycloak), y
  ninguno documenta conectores REST de fábrica; Tableau exige programar un
  WDC en JavaScript (y la versión 2.0 está deprecada). Power BI trae
  conector Web con JSON y headers. Sumar, si el redactor quiere, que Power
  BI Desktop es gratuito [MSDAXOverview] — el costo de Power BI Service /
  Pro no lo verifiqué; no citar cifras.

### 4. Vocabulario a fijar (para consistencia con 2.3 y Cap. IV)

- "Semantic model" (Power BI) = lo que antes se llamaba *dataset*
  [MSPowerBIServiceConcepts]. Usar "modelo semántico" en español y aclarar
  el sinónimo una vez.
- "Dashboard" tiene dos sentidos: el de gestión (Eckerson2010, Few2013) y
  el objeto de Power BI Service (pantalla de mosaicos). El dashboard
  Angular del ERP es del primer tipo; no confundirlo con el de Power BI.
- "Reporte" en Power BI = páginas de visuales sobre un único modelo
  semántico [MSPowerBIServiceConcepts]; distinto de "reporte" del portal
  viejo (PHP). Elegir un término para cada uno.
