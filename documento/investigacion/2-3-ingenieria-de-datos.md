# Brief de investigación — 2.3 Ingeniería de Datos (Cap. II)

Fecha: 2026-09-17. Investigador. Verificación: CrossRef (DOI), OpenAlex
(abstracts), arXiv, Open Library (ISBN), Wiley, texto completo del paper de
CIDR (PDF leído), documentación de Databricks (leída hoy). Las entradas
BibLaTeX son candidatas: se cargan por Zotero (`documento/09-setup-zotero.md`),
no a mano.

Resumen: 12 fuentes núcleo verificadas + 2 opcionales. Dos keys ya existen
en `documento.bib` (`ReisHousley2022`, `DatabricksMedallion`); ambas
verificadas, ver notas. Ver "Notas para el redactor" al final.

Convención de claims: **[V]** = verificado en abstract/texto/índice;
**[V-cap]** = verificado a nivel de capítulo (título de capítulo por
editorial/O'Reilly/CrossRef), el contenido puntual se toma del índice o de
resúmenes de terceros — confirmar en el ejemplar antes de citar sección;
**[NV]** = no verificado, no citar sin leer el PDF.

Contexto del proyecto que guía el brief (de `11-brief-proyecto.md`):
pipeline Medallion **Bronze** (MySQL 5.7 del portal viejo + PostgreSQL del
ERP nuevo + planillas Excel) → **Silver** (DuckDB; mapea los dos esquemas a
las mismas variables) → **Gold** (Polars; features). Sólo analítico, no
migra datos al ERP. 3.1 documentará defectos del histórico (D1–D6), así que
2.3.3 tiene que dejar definidas las dimensiones de calidad y el vínculo
calidad de datos → desempeño del modelo.

---

## 2.3.1 Procesos ETL y ELT

### ReisHousley2022 (ya en `documento.bib`)

```bibtex
@book{ReisHousley2022,
  author    = {Reis, Joe and Housley, Matt},
  title     = {Fundamentals of Data Engineering},
  subtitle  = {Plan and Build Robust Data Systems},
  publisher = {O'Reilly Media},
  address   = {Sebastopol, CA},
  year      = {2022},
  isbn      = {9781098108304},
  pagetotal = {400}
}
```

Verificación: Open Library ISBN 9781098108304 → "Fundamentals of Data
Engineering: Plan and Build Robust Data Systems", O'Reilly Media, 2022,
400 pp. **La entrada existente es correcta** (autores, título, ISBN, año);
sólo sugiero separar `subtitle` y agregar `pagetotal`. Títulos de capítulo
verificados por las URLs de O'Reilly (`ch07.html` "Ingestion", `ch08.html`
"Queries, Modeling, and Transformation"); O'Reilly devolvió 403 al pedir
el contenido, así que los claims de contenido salen de resúmenes de
terceros (kantarcise.com, Medium) y del índice conocido.

Claims:
- [V-cap] Ciclo de vida de la ingeniería de datos: generación → ingesta →
  almacenamiento → transformación → servicio (cap. 2, "The Data Engineering
  Lifecycle").
- [V-cap] Ingesta = mover datos desde sistemas fuente hacia el
  almacenamiento; patrones batch vs. streaming; consideraciones de
  frecuencia, fiabilidad y esquema (cap. 7, "Ingestion").
- [V-cap] ETL (extraer → transformar → cargar) surgió cuando los recursos
  de cómputo eran limitados; ELT (extraer → cargar → transformar) es el
  patrón de lagos/lakehouses modernos, que difieren la transformación al
  destino; los autores recomiendan elegir según el caso y no adherir a uno
  por principio (cap. 8, sección "Transformations"). Fuente del claim:
  notas de terceros sobre el cap. 8 — confirmar redacción exacta en el PDF.
- [V-cap] Modelado y transformación como el paso que "hace útiles" los
  datos crudos para consumidores aguas abajo (cap. 8).

Por qué aplica: es el manual moderno de referencia para 2.3.1; permite
definir ETL y ELT sin recurrir a blogs, y encuadra el pipeline del proyecto
(ingesta desde MySQL/PostgreSQL/Excel, transformación en DuckDB/Polars)
como un caso de ELT: se carga crudo en Bronze y se transforma después.

### Kimball2013

```bibtex
@book{Kimball2013,
  author    = {Kimball, Ralph and Ross, Margy},
  title     = {The Data Warehouse Toolkit},
  subtitle  = {The Definitive Guide to Dimensional Modeling},
  edition   = {3},
  publisher = {Wiley},
  address   = {Indianapolis, IN},
  year      = {2013},
  isbn      = {9781118530801},
  pagetotal = {600}
}
```

Verificación: Open Library ISBN 9781118530801 (Wiley, julio 2013, 3.ª
ed., 600 pp.); Wiley (autores Kimball y Ross, 608 pp., ISBN 978-1-118-
53080-1 tapa blanda / 978-1-118-73228-1 e-book); kimballgroup.com
(descripción: "34 ETL subsystems and techniques"). Capítulos verificados
por títulos en O'Reilly: cap. 19 "ETL Subsystems and Techniques", cap. 20
"ETL System Design and Development Process and Tasks".

Claims:
- [V] El sistema ETL "consumes a disproportionate share of the time and
  effort required to build a DW/BI environment" (cap. 19, apertura;
  resumen de O'Reilly).
- [V] Los 34 subsistemas de ETL se agrupan en cuatro áreas: extraer
  ("Extracting: Getting Data into the Data Warehouse"), limpiar y
  conformar ("Cleaning and Conforming Data"), entregar ("Delivering:
  Prepare for Presentation") y gestionar el entorno ETL ("Managing the
  ETL Environment") (cap. 19, encabezados de sección).
- [V-cap] Dentro de "Cleaning and Conforming" están los subsistemas de
  data cleansing, data-quality screens, error event schema, audit
  dimension y conforming (deduplicación y conformado de dimensiones)
  — numeración de subsistemas (4–8) tomada del índice conocido; confirmar
  en el PDF.
- [V] Cap. 20 propone un plan de 10 pasos para diseñar el sistema ETL, con
  recomendaciones separadas para la **carga histórica única** y para el
  **procesamiento incremental** (resumen de O'Reilly del cap. 20).

Por qué aplica: fuente canónica de ETL en almacenes de datos. El
"conforming" de dimensiones es exactamente lo que hace Silver al mapear el
esquema MySQL y el PostgreSQL a las mismas variables; y la distinción
carga histórica (entrenamiento, MySQL) vs. incremental (inferencia,
PostgreSQL) describe los dos modos del pipeline del proyecto.

### Inmon2005

```bibtex
@book{Inmon2005,
  author    = {Inmon, William H.},
  title     = {Building the Data Warehouse},
  edition   = {4},
  publisher = {Wiley},
  address   = {Indianapolis, IN},
  year      = {2005},
  isbn      = {9780764599446},
  pagetotal = {576}
}
```

Verificación: Open Library ISBN 9780764599446 (Wiley, 7-oct-2005, 4.ª
ed., 576 pp., autor "W. H. Inmon"); Wiley (W. H. Inmon, octubre 2005,
576 pp.). Índice no verificado (Wiley sólo ofrece PDF de ToC no leído).

Claims:
- [V-cap] Definición de almacén de datos: colección de datos "subject-
  oriented, integrated, time-variant, and nonvolatile" en apoyo de la toma
  de decisiones. La definición es de conocimiento general y aparece citada
  a Inmon en múltiples fuentes secundarias; **la página exacta en la 4.ª
  ed. no está verificada** (cap. 2 en ediciones anteriores). Confirmar en
  el ejemplar antes de poner página.

Por qué aplica: cierra la definición de "almacén de datos" con la fuente
primaria; sirve para contrastar el enfoque de arquitectura de Inmon con el
dimensional de Kimball en un párrafo y justificar por qué el proyecto usa
un patrón de capas (Medallion) y no un DW corporativo completo.

### Vassiliadis2009

```bibtex
@article{Vassiliadis2009,
  author  = {Vassiliadis, Panos},
  title   = {A Survey of Extract--Transform--Load Technology},
  journal = {International Journal of Data Warehousing and Mining},
  volume  = {5},
  number  = {3},
  pages   = {1--27},
  year    = {2009},
  doi     = {10.4018/jdwm.2009070101}
}
```

Verificación: CrossRef DOI (IJDWM 5(3), 1–27, 2009; autor Panos
Vassiliadis, Univ. de Ioannina); abstract vía OpenAlex (311 citas). Existe
una reimpresión como capítulo de libro (IGI Global 2011, DOI
10.4018/978-1-60960-537-7.ch008); usar la versión de revista.

Claims:
- [V] Definición: "The software processes that facilitate the original
  loading and periodic refreshment of data warehouse contents are commonly
  known as Extraction-Transformation-Loading (ETL) processes."
- [V] El survey cubre (a) modelado conceptual y lógico de procesos ETL y
  métodos de diseño, (b) problemas de cada etapa E, T y L, (c) problemas
  que afectan al proceso completo, y (d) prototipos académicos.

Por qué aplica: definición académica de ETL con DOI, para 2.3.1; la
distinción "carga original" vs. "refresco periódico" del abstract respalda
el diseño de carga histórica + incremental.

### KimballCaserta2004 (opcional)

```bibtex
@book{KimballCaserta2004,
  author    = {Kimball, Ralph and Caserta, Joe},
  title     = {The Data Warehouse {ETL} Toolkit},
  subtitle  = {Practical Techniques for Extracting, Cleaning, Conforming, and Delivering Data},
  publisher = {Wiley},
  address   = {Indianapolis, IN},
  year      = {2004},
  isbn      = {9780764567575},
  pagetotal = {491}
}
```

Verificación: Open Library ISBN 9780764567575 (Wiley, 2004, 491 pp.,
autores Kimball y Caserta). Índice no verificado.

Claim [V-cap]: el propio subtítulo enuncia las cuatro fases extracting,
cleaning, conforming, delivering — el mismo esquema que Kimball2013 cap.
19. Usar sólo si el redactor quiere una cita dedicada a ETL; Kimball2013
lo cubre.

---

## 2.3.2 Arquitectura Medallion (Bronze, Silver, Gold)

### Armbrust2021

```bibtex
@inproceedings{Armbrust2021,
  author    = {Armbrust, Michael and Ghodsi, Ali and Xin, Reynold and Zaharia, Matei},
  title     = {Lakehouse: {A} New Generation of Open Platforms that Unify Data Warehousing and Advanced Analytics},
  booktitle = {Proceedings of the 11th Annual Conference on Innovative Data Systems Research ({CIDR} '21)},
  year      = {2021},
  url       = {https://www.cidrdb.org/cidr2021/papers/cidr2021_paper17.pdf},
  note      = {CIDR '21, 11--15 de enero de 2021, en línea}
}
```

Verificación: PDF oficial de cidrdb.org **leído completo** (pdftotext).
Título, autores (Databricks / UC Berkeley / Stanford) y venue confirmados
en el encabezado. CIDR no asigna DOI. Tras grep del texto completo:
**el paper NO menciona "medallion", "bronze", "silver" ni "gold"** (la
única aparición de "silver" es "No silver bullet" en las referencias).

Claims:
- [V] Abstract: propone el "Lakehouse" como patrón que (i) usa formatos
  abiertos de acceso directo como Parquet, (ii) tiene soporte de primera
  clase para ML y ciencia de datos, y (iii) ofrece rendimiento de punta;
  ataca "data staleness, reliability, total cost of ownership, data
  lock-in, and limited use-case support".
- [V] §1: los data lakes de segunda generación (schema-on-read) "punted the
  problem of data quality and governance downstream"; en la arquitectura
  de dos niveles "data is first ETLed into lakes, and then again ELTed into
  warehouses, creating complexity, delays, and new failure modes".
- [V] §1: "Each ETL step also risks incurring failures or introducing bugs
  that reduce data quality, e.g., due to subtle differences between the
  data lake and warehouse engines."
- [V] §2: "the top problem reported by enterprise data users today is
  usually data quality and reliability"; un Lakehouse "needs to be able to
  store raw data, similar to today's data lakes, while simultaneously
  supporting ETL/ELT processes that curate this data to improve its
  quality for analysis".
- [V] §3: la capa de metadatos (p. ej. Delta Lake) es "a natural place to
  implement data quality enforcement features" como schema enforcement y
  constraints que rechazan o ponen en cuarentena registros inválidos.

Por qué aplica: es la fuente académica que respalda el principio detrás de
Medallion — guardar crudo y curar por etapas ETL/ELT hasta datos aptos
para ML — y el uso de ELT. Sirve además para argumentar que el proyecto
adopta el patrón conceptual (capas de calidad creciente, formatos abiertos
como Parquet) sin Spark/Delta, con DuckDB y Polars.

### DatabricksMedallion (ya en `documento.bib`)

```bibtex
@online{DatabricksMedallion,
  author       = {{Databricks}},
  title        = {What is the medallion lakehouse architecture?},
  year         = {2025},
  organization = {Databricks Documentation},
  url          = {https://docs.databricks.com/aws/en/lakehouse/medallion},
  urldate      = {2026-06-19}
}
```

Verificación: URL vigente y **leída hoy (2026-09-17)**; el contenido
coincide con los claims de abajo. La entrada existente es correcta;
sugiero actualizar `urldate` a la fecha en que el redactor la cite.
El campo `year = {2025}` no se puede verificar en la página (no muestra
fecha de publicación); si Zotero no la detecta, dejarlo sin año o usar
`urldate` solamente.

Claims:
- [V] "A medallion architecture is a data design pattern used to organize
  data logically"; también llamada "multi-hop architecture".
- [V] "The medallion architecture describes a series of data layers that
  denote the quality of data stored in the lakehouse."
- [V] Bronze: recibe datos crudos de las fuentes sin validación;
  "contains and maintains the raw state of the data source in its original
  formats".
- [V] Silver: capa validada; incluye "at least one validated,
  non-aggregated representation of each record"; ahí "you perform data
  cleansing, deduplication, and normalization".
- [V] Gold: "consists of aggregated data tailored for analytics and
  reporting", alineada a requisitos de negocio.
- [V] "By progressing data through these layers, organizations can
  incrementally improve data quality and reliability, making it more
  suitable for business intelligence and machine learning applications."

Por qué aplica: es la fuente que **nombra** las tres capas; sin ella no
hay cita para "Bronze/Silver/Gold". Es documentación de proveedor
(literatura gris): citarla como tal y apoyar el fundamento en
Armbrust2021 y Kimball2013. Mapeo directo al proyecto: Bronze = copias
crudas de MySQL/PostgreSQL/Excel; Silver = DuckDB con esquema unificado y
deduplicado; Gold = tablas de features en Polars.

---

## 2.3.3 Calidad de Datos

### WangStrong1996

```bibtex
@article{WangStrong1996,
  author  = {Wang, Richard Y. and Strong, Diane M.},
  title   = {Beyond Accuracy: What Data Quality Means to Data Consumers},
  journal = {Journal of Management Information Systems},
  volume  = {12},
  number  = {4},
  pages   = {5--33},
  year    = {1996},
  doi     = {10.1080/07421222.1996.11518099}
}
```

Verificación: CrossRef DOI (JMIS 12(4), 5–33, 1996); abstract completo vía
OpenAlex (~4.590 citas).

Claims:
- [V] Abstract: los esfuerzos de mejora de datos "tend to focus narrowly on
  accuracy"; los consumidores requieren "a much broader quality
  conceptualization".
- [V] Abstract: marco jerárquico de dimensiones de calidad en cuatro
  categorías: **intrínseca**, **contextual** ("data must be considered
  within the context of the task at hand"), **representacional** y de
  **accesibilidad**; "high-quality data should be intrinsically good,
  contextually appropriate for task, clearly represented, and accessible
  to the consumer".
- [V-cap] Las 15 dimensiones concretas (intrínseca: accuracy, objectivity,
  believability, reputation; contextual: value-added, relevancy,
  **timeliness**, **completeness**, appropriate amount of data;
  representacional: interpretability, ease of understanding,
  representational **consistency**, concise representation;
  accesibilidad: accessibility, access security) están en el cuerpo (Fig.
  2 / Tabla). No pude leer el PDF (el enlace de MIT TDQM redirige);
  confirmar antes de listar las 15.
- [V-cap] Definición de calidad de datos como "fitness for use" — está en
  el cuerpo del artículo, no en el abstract; confirmar página.

Por qué aplica: fuente fundacional para definir calidad de datos y ubicar
exactitud, completitud, oportunidad y consistencia dentro de un marco; el
énfasis en "contexto de la tarea" justifica evaluar el histórico del ERP
respecto de la tarea predictiva (3.1) y no en abstracto.

### Batini2009

```bibtex
@article{Batini2009,
  author  = {Batini, Carlo and Cappiello, Cinzia and Francalanci, Chiara and Maurino, Andrea},
  title   = {Methodologies for data quality assessment and improvement},
  journal = {ACM Computing Surveys},
  volume  = {41},
  number  = {3},
  pages   = {16:1--16:52},
  year    = {2009},
  doi     = {10.1145/1541880.1541883}
}
```

Verificación: CrossRef DOI (ACM CSUR 41(3), art. 16, 52 pp., 2009);
abstract vía OpenAlex (~1.280 citas).

Claims:
- [V] Abstract: la literatura ofrece "a wide range of techniques to assess
  and improve the quality of data"; el artículo compara sistemáticamente
  las metodologías de evaluación y mejora "along several dimensions,
  including the methodological phases and steps, the strategies and types
  of data, and finally the types of information systems addressed".
- [V-cap] El survey define en su §2 las dimensiones de calidad más usadas
  (accuracy, completeness, consistency, timeliness/currency) y distingue
  estrategias **data-driven** (corregir los datos) vs. **process-driven**
  (corregir el proceso que los genera). Está en el cuerpo, no en el
  abstract — [NV] hasta leer el PDF.

Por qué aplica: cita de survey (ACM CSUR) para decir que evaluación y
mejora de calidad son un campo con metodologías establecidas; la
distinción data-driven / process-driven (si se confirma) encaja con el
proyecto: corrección de defectos D1–D6 en el ERP (process-driven) +
limpieza en Silver (data-driven).

### BatiniScannapieco2016

```bibtex
@book{BatiniScannapieco2016,
  author    = {Batini, Carlo and Scannapieco, Monica},
  title     = {Data and Information Quality},
  subtitle  = {Dimensions, Principles and Techniques},
  series    = {Data-Centric Systems and Applications},
  publisher = {Springer},
  address   = {Cham},
  year      = {2016},
  doi       = {10.1007/978-3-319-24106-7},
  isbn      = {9783319241043}
}
```

Verificación: CrossRef DOI del libro (Springer International Publishing,
2016, ISBN 9783319241043 impreso / 9783319241067 electrónico, serie
Data-Centric Systems and Applications). Capítulo verificado por DOI:
cap. 2 "Data Quality Dimensions", pp. 21–51 (…_2); cap. 12 "Methodologies
for Information Quality Assessment and Improvement" (…_12). El
sumario del cap. 2 no está en OpenAlex y Springer redirige a login: el
detalle de qué dimensiones trata es [V-cap] por el título.

Nota: la candidata "Batini & Scannapieco, *Data Quality: Concepts,
Methodologies and Techniques*, Springer 2006" existe (hay reseña con DOI
10.1504/ijiq.2007.016717), pero la edición de 2016 es la vigente y
ampliada; recomiendo citar la de 2016.

Claims:
- [V-cap] Cap. 2 dedica un capítulo entero a las dimensiones de calidad
  (accuracy, completeness, consistency, time-related dimensions —
  currency, timeliness, volatility). Nombres de sección no verificados.
- [V-cap] Cap. 12 sistematiza metodologías de evaluación y mejora (mismo
  linaje que Batini2009).

Por qué aplica: libro de texto con DOI y capítulo específico para citar
las definiciones formales de exactitud, completitud, consistencia y
oportunidad en 2.3.3, en lugar de citar un survey de 2009 para
definiciones.

### DAMA2017

```bibtex
@book{DAMA2017,
  author    = {{DAMA International}},
  title     = {{DAMA-DMBOK}: Data Management Body of Knowledge},
  edition   = {2},
  publisher = {Technics Publications},
  address   = {Basking Ridge, NJ},
  year      = {2017},
  isbn      = {9781634622349},
  pagetotal = {590}
}
```

Verificación: Open Library ISBN 9781634622349 (Technics Publications,
julio 2017, 2.ª ed., 590 pp., autor "DAMA International"). Que el cap. 13
es "Data Quality" está confirmado por el paper de DAMA-NL (Black & van
Nederpelt 2020, "Dimensions of Data Quality (DDQ)", que cita "DMBOK (2017)
Chapter 13 on Data Quality") y por resúmenes de terceros. Contenido de la
tabla de dimensiones: [V-cap] vía terceros (GitHub androchentw: "Table 29,
pp. 462–464").

Claims:
- [V-cap] Cap. 13 "Data Quality" lista como dimensiones: accuracy,
  completeness, consistency, integrity, reasonability, timeliness,
  uniqueness, validity (Tabla 29, pp. 462–464 según terceros). Confirmar
  en el ejemplar.
- [V] Según DAMA-NL 2020, las definiciones de dimensiones de DMBOK2 "had
  not yet been elevated to the status of a standard and were sometimes
  open to improvement" — útil como matiz: no hay un estándar único de
  dimensiones.

Por qué aplica: referencia de industria (cuerpo de conocimiento) que
respalda la lista exactitud / completitud / consistencia / oportunidad que
pide el temario, y agrega unicidad y validez, que 3.1 probablemente
necesite (duplicados, valores fuera de dominio en D1–D6).

### Sambasivan2021

```bibtex
@inproceedings{Sambasivan2021,
  author    = {Sambasivan, Nithya and Kapania, Shivani and Highfill, Hannah and Akrong, Diana and Paritosh, Praveen and Aroyo, Lora M.},
  title     = {``Everyone wants to do the model work, not the data work'': {Data} Cascades in High-Stakes {AI}},
  booktitle = {Proceedings of the 2021 {CHI} Conference on Human Factors in Computing Systems ({CHI} '21)},
  pages     = {1--15},
  publisher = {ACM},
  address   = {New York, NY},
  year      = {2021},
  doi       = {10.1145/3411764.3445518}
}
```

Verificación: CrossRef DOI (CHI '21, ACM, pp. 1–15, seis autores);
abstract vía OpenAlex (~720 citas).

Claims:
- [V] "Paradoxically, data is the most under-valued and de-glamorised
  aspect of AI."
- [V] Define "Data Cascades — compounding events causing negative,
  downstream effects from data issues — triggered by conventional AI/ML
  practices that undervalue data quality"; en entrevistas con 53
  practicantes las cascadas son "pervasive (92% prevalence), invisible,
  delayed, but often avoidable".
- [V] Propone tratar la "data excellence" como ciudadano de primera clase
  en IA.

Por qué aplica: evidencia empírica de que los problemas de datos se
propagan y degradan el sistema predictivo; justifica que el proyecto
invierta en 3.1 (diagnóstico de defectos) y en un pipeline de calidad
antes de modelar.

### Mohammed2025

```bibtex
@article{Mohammed2025,
  author  = {Mohammed, Sedir and Budach, Lukas and Feuerpfeil, Moritz and Ihde, Nina and Nathansen, Andrea and Noack, Nele and Patzlaff, Hendrik and Naumann, Felix and Harmouch, Hazar},
  title   = {The effects of data quality on machine learning performance on tabular data},
  journal = {Information Systems},
  volume  = {132},
  pages   = {102549},
  year    = {2025},
  doi     = {10.1016/j.is.2025.102549}
}
```

Verificación: CrossRef DOI (Information Systems 132, art. 102549, 2025,
nueve autores); abstract vía OpenAlex (~177 citas); preprint arXiv
2207.14529 (v1 julio 2022, título del preprint sin "on Tabular Data" en
v1; usar el título de la revista).

Claims:
- [V] "Incomplete, erroneous, or inappropriate training data can lead to
  unreliable models" que producen malas decisiones.
- [V] La IA confiable requiere datos de alta calidad "across multiple
  quality dimensions including accuracy, completeness, and consistency".
- [V] Estudio empírico de la relación entre **seis dimensiones de calidad**
  y el desempeño de **19 algoritmos** de ML en clasificación, regresión y
  clustering, con tres escenarios: datos contaminados en entrenamiento,
  en prueba, o en ambos.
- [NV] Resultados específicos por dimensión/algoritmo (p. ej. qué tan
  sensibles son los métodos de árboles a faltantes o a inconsistencias)
  están en el cuerpo; leer el PDF antes de citar cifras.

Por qué aplica: es la fuente más directa para el vínculo "calidad de datos
→ desempeño del modelo" que pide el temario, y además es sobre datos
tabulares, como los del ERP. Conecta 2.3.3 con 2.2 (XGBoost sobre tabular).

### Gudivada2017

```bibtex
@article{Gudivada2017,
  author  = {Gudivada, Venkat and Apon, Amy and Ding, Junhua},
  title   = {Data Quality Considerations for Big Data and Machine Learning: {Going} Beyond Data Cleaning and Transformations},
  journal = {International Journal on Advances in Software},
  volume  = {10},
  number  = {1--2},
  pages   = {1--20},
  year    = {2017},
  issn    = {1942-2628}
}
```

Verificación: página oficial de ThinkMind/IARIA (título, autores, revista,
vol. 10 n.º 1–2, 2017, pp. 1–20, ISSN 1942-2628). Sin DOI (IARIA no asigna).
Abstract leído parcialmente en la página.

Claims:
- [V] "Data quality issues trace back their origin to the early days of
  computing. A wide range of domain-specific techniques to assess and
  improve the quality of data exist in the literature."
- [V] Evalúa si los enfoques de calidad centrados en bases de datos siguen
  siendo adecuados para big data y ML; propone un marco de gobernanza de
  datos para el ciclo de vida de la calidad y discute herramientas.
- [NV] Facetas de calidad específicas para ML (p. ej. sesgo, deriva, datos
  de entrenamiento vs. producción) están en el cuerpo; leer antes de citar.

Por qué aplica: fuente que explicita que la calidad de datos "para ML" va
más allá de limpiar y transformar (gobernanza del ciclo completo), lo que
respalda que el proyecto corrija defectos en el origen (ERP) y no sólo en
Silver. Es de revista de acceso abierto de menor prestigio que las demás;
usar como complemento, no como fuente principal.

---

## Notas para el redactor

### Keys: existentes vs. nuevas

- **Ya en `documento.bib` (verificadas, correctas):**
  - `ReisHousley2022`: ISBN 9781098108304 correcto, autores y año
    correctos. Opcional: separar `subtitle`, agregar `pagetotal = {400}`.
  - `DatabricksMedallion`: URL vigente y contenido verificado hoy. El
    `year = {2025}` no consta en la página; mantener `urldate` y, si se
    quiere, quitar `year`.
- **Nuevas (cargar por Zotero):** Kimball2013, Inmon2005, Vassiliadis2009,
  Armbrust2021, WangStrong1996, Batini2009, BatiniScannapieco2016,
  DAMA2017, Sambasivan2021, Mohammed2025, Gudivada2017; opcional
  KimballCaserta2004.

### Advertencias de atribución (importantes para no sobreafirmar)

1. **"Medallion / Bronze / Silver / Gold" es terminología de Databricks**,
   no del paper de CIDR: Armbrust2021 no usa esos términos (verificado por
   grep del texto completo). Redactar como: el patrón de capas de calidad
   creciente se fundamenta en el Lakehouse (Armbrust2021); la nomenclatura
   Bronze/Silver/Gold la fija la documentación de Databricks
   (DatabricksMedallion, literatura gris).
2. **ELT como término**: Armbrust2021 lo usa ("ETLed into lakes, and then
   again ELTed into warehouses"; "ETL/ELT processes that curate this
   data"), así que hay fuente académica para la sigla. La definición
   didáctica ETL vs. ELT es de ReisHousley2022 cap. 8 (contenido verificado
   por terceros; confirmar redacción en el PDF).
3. **DuckDB y Polars** no tienen fuente en este brief: son tecnologías de
   2.7 (stack), no de 2.3. Si el redactor necesita citarlas en 2.3.2,
   pedir un brief puntual (candidato para DuckDB: Raasveldt & Mühleisen,
   "DuckDB: an Embeddable Analytical Database", SIGMOD 2019 demo — no
   verificado aquí).

### Claims sin fuente verificada (no afirmar sin cita o leer el PDF)

1. **Lista de las 15 dimensiones de Wang & Strong** y la definición
   "fitness for use": en el cuerpo del artículo, no en el abstract. El PDF
   de MIT TDQM ya no está en línea; buscar otra copia o citar sólo las
   cuatro categorías del abstract.
2. **Definiciones formales de exactitud, completitud, consistencia y
   oportunidad**: la fuente más limpia es BatiniScannapieco2016 cap. 2
   (verificado por título y páginas 21–51), pero no leí el capítulo. Las
   definiciones cortas de DAMA2017 (Tabla 29, pp. 462–464) vienen de
   terceros. Confirmar en uno de los dos ejemplares antes de poner
   definiciones textuales.
3. **Estrategias data-driven vs. process-driven** de Batini2009: en el
   cuerpo (§2–3), no en el abstract.
4. **Números de subsistema ETL de Kimball** (4 data cleansing, 5 error
   event schema, 6 audit dimension, 7 deduplication, 8 conforming): del
   índice conocido, confirmar en el PDF del cap. 19.
5. **Página de la definición de Inmon** en la 4.ª ed.: no verificada.
6. **Resultados cuantitativos de Mohammed2025** (qué dimensión afecta más a
   qué familia de algoritmos): sólo el diseño experimental está en el
   abstract. Vale la pena leerlo completo porque puede dar una cifra
   citable sobre árboles/boosting y valores faltantes.
7. **"Oportunidad" (timeliness) como dimensión para este proyecto**: las
   fuentes la definen, pero cómo aplica al histórico (p. ej. registros
   cargados tarde respecto de la fecha real de certificación) es una
   observación de 3.1, no del marco teórico. No inventar el vínculo en
   2.3.3; dejarlo para 3.1 con datos.
