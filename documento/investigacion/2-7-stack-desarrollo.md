# Brief de investigación — 2.7 Tecnologías del Stack de Desarrollo (Cap. II)

Fecha: 2026-09-17. Investigador. Verificación: CrossRef (DOI), Semantic
Scholar (abstracts), arXiv API, Open Library (ISBN), y `curl` + lectura de
cada página de documentación oficial (código HTTP 200, título exacto de la
página `<title>` y fecha de consulta 2026-09-17 para todas las `@online`).
Todo lo que no pude verificar está marcado. Las entradas BibLaTeX son
candidatas: se cargan por Zotero (`documento/09-setup-zotero.md`), no a mano.

Resumen: 14 fuentes núcleo (todas verificadas: 6 papers + 8 sitios de
documentación oficial), más 8 subpáginas de esas mismas documentaciones
(cada una con su `@online` porque respalda un claim puntual) y 2 opcionales.
De las 14 núcleo, dos (**Pedregosa2011** y **Chen2016**) ya están
verificadas en `2-2-aprendizaje-automatico.md`; acá se reutilizan las mismas
keys y sólo se agregan claims específicos de 2.7.

Versiones reales del proyecto (leídas de los `package.json` y `Dockerfile`
de `~/Projects/isi-mustang/`, no de fuentes bibliográficas): NestJS 11
sobre Express (`@nestjs/platform-express`), Prisma 7.8, TypeScript 5.7/5.9,
Angular 21.2 + `@angular/ssr` 21.2, PrimeNG 21.1, Tailwind 4.1, imagen base
`node:22-bookworm-slim`, `docker-compose.yml` en la raíz del monorepo.

Convención de claims: **[V]** = verificado en abstract/texto de la página;
**[V-meta]** = sólo metadatos verificados (título, autores, año, DOI/ISBN),
contenido no leído.

---

## 2.7.1 Python y su Ecosistema ML

### PythonFAQ

```bibtex
@online{PythonFAQ,
  author       = {{Python Software Foundation}},
  title        = {General {Python} {FAQ}},
  titleaddon   = {Python 3.14.7 documentation},
  url          = {https://docs.python.org/3/faq/general.html},
  urldate      = {2026-09-17},
  organization = {Python Software Foundation}
}
```

Verificación: HTTP 200. Título exacto: "General Python FAQ — Python 3.14.7
documentation".

Claims:
- [V] Sección "What is Python?": "Python is an interpreted, interactive,
  object-oriented programming language. It incorporates modules, exceptions,
  dynamic typing, very high level dynamic data types, and classes. It
  supports multiple programming paradigms beyond object-oriented
  programming, such as procedural and functional programming."
- [V] "It has interfaces to many system calls and libraries […] and is
  extensible in C or C++." (Esto es lo que permite que NumPy, Polars y
  Pydantic tengan núcleos compilados.)
- [V] "Python is portable: it runs on many Unix variants including Linux and
  macOS, and on Windows."

Por qué aplica: definición oficial y citable de Python para abrir 2.7.1 sin
recurrir a un manual de terceros. Alternativa en papel: **VanRossum2009**
(opcional, abajo).

### Harris2020

```bibtex
@article{Harris2020,
  author  = {Harris, Charles R. and Millman, K. Jarrod and van der Walt, St{\'e}fan J. and Gommers, Ralf and Virtanen, Pauli and Cournapeau, David and Wieser, Eric and Taylor, Julian and Berg, Sebastian and Smith, Nathaniel J. and Kern, Robert and Picus, Matti and Hoyer, Stephan and van Kerkwijk, Marten H. and Brett, Matthew and Haldane, Allan and Fern{\'a}ndez del R{\'i}o, Jaime and Wiebe, Mark and Peterson, Pearu and G{\'e}rard-Marchant, Pierre and Sheppard, Kevin and Reddy, Tyler and Weckesser, Warren and Abbasi, Hameer and Gohlke, Christoph and Oliphant, Travis E.},
  title   = {Array programming with {NumPy}},
  journal = {Nature},
  volume  = {585},
  number  = {7825},
  pages   = {357--362},
  year    = {2020},
  doi     = {10.1038/s41586-020-2649-2}
}
```

Verificación: CrossRef DOI (Nature 585(7825), 357–362, 16-sep-2020, 26
autores, abstract completo). numpy.org/citing-numpy confirma que es la cita
oficial que pide el proyecto.

Claims:
- [V] "NumPy is the primary array programming library for the Python
  language."
- [V] "NumPy is the foundation upon which the scientific Python ecosystem is
  constructed." y "NumPy increasingly acts as an interoperability layer
  between such array computation libraries".
- [V] "Array programming provides a powerful, compact and expressive syntax
  for accessing, manipulating and operating on data in vectors, matrices and
  higher-dimensional arrays."

Por qué aplica: justifica presentar NumPy como la base sobre la que se
apoyan pandas y Scikit-learn (pandas lo declara explícitamente, ver
PandasOverview) y explica el paradigma vectorizado que después reaparece en
DuckDB y Polars.

### McKinney2010

```bibtex
@inproceedings{McKinney2010,
  author    = {McKinney, Wes},
  title     = {Data Structures for Statistical Computing in {Python}},
  booktitle = {Proceedings of the 9th {Python} in {Science} {Conference} ({SciPy} 2010)},
  editor    = {van der Walt, St{\'e}fan and Millman, Jarrod},
  pages     = {56--61},
  year      = {2010},
  doi       = {10.25080/Majora-92bf1922-00a}
}
```

Verificación: CrossRef DOI (Proceedings of the 9th Python in Science
Conference, pp. 56–61, 2010, publisher SciPy); abstract vía Semantic Scholar
(~9.500 citas); pandas.pydata.org/about/citing.html confirma que es la cita
oficial del proyecto (con el BibTeX y los editores).

Claims:
- [V] "pandas is a new library which aims to facilitate working with these
  data sets and to provide a set of fundamental building blocks for
  implementing statistical models."
- [V] Motivación: "the practical issues of working with data sets common to
  finance, statistics, and other related fields", con comparaciones con R.
- No verificado en el abstract (está en el cuerpo): la descripción de
  `DataFrame` y `Series` y el manejo de faltantes. Para eso citar
  **PandasOverview** (docs oficiales), que sí lo dice textualmente.

Por qué aplica: fuente primaria de pandas. pandas cumple en el proyecto el
rol de puente con Scikit-learn (que acepta `DataFrame`) y de herramienta de
exploración en 3.1, aunque el feature engineering pesado va en Polars.

### PandasOverview (subpágina, docs oficiales)

```bibtex
@online{PandasOverview,
  author       = {{pandas development team}},
  title        = {Package overview},
  titleaddon   = {pandas 3.0.5 documentation},
  url          = {https://pandas.pydata.org/docs/getting_started/overview.html},
  urldate      = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "Package overview — pandas 3.0.5
documentation".

Claims:
- [V] "pandas is a Python package that provides fast, flexible, and
  expressive data structures designed to make working with 'relational' or
  'labeled' data both easy and intuitive."
- [V] Dos estructuras primarias: `Series` (1-D, homogénea, con etiquetas) y
  `DataFrame` (2-D, tabular, mutable en tamaño, columnas potencialmente
  heterogéneas).
- [V] "pandas is built on top of NumPy".
- [V] Lista de "things pandas does well": manejo de faltantes (NaN),
  alineación por etiquetas, group by (split-apply-combine), merge/join, y
  "time series-specific functionality: date range generation and frequency
  conversion, moving window statistics, date shifting, and lagging."

Por qué aplica: el último punto (ventanas móviles, shifting, lagging)
resuelve parcialmente la nota 2 del brief de 2.2 ("agregaciones
temporales / lags sin fuente"): se puede citar como capacidad de la
herramienta, no como técnica estándar de feature engineering.

### Pedregosa2011 (reutilizar del brief 2.2)

Key y entrada: ver `2-2-aprendizaje-automatico.md`, sección "Opcionales".
Reverificado hoy en scikit-learn.org/stable/about.html ("Citing
scikit-learn": JMLR 12, pp. 2825–2830, 2011, es la cita que pide el
proyecto).

Claims adicionales para 2.7:
- [V] (abstract, JMLR) Énfasis en "ease of use, performance, documentation,
  and API consistency"; licencia BSD; dependencias mínimas (NumPy, SciPy).
- [V] (about.html) El proyecto sugiere una segunda cita para el diseño de
  la API: **Buitinck2013** (opcional, abajo), que describe la interfaz común
  `fit`/`predict`/`transform` y la composición en pipelines.

### SklearnDocs

```bibtex
@online{SklearnDocs,
  author     = {{scikit-learn developers}},
  title      = {scikit-learn: machine learning in {Python}},
  titleaddon = {scikit-learn 1.9.1 documentation},
  url        = {https://scikit-learn.org/stable/},
  urldate    = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "scikit-learn: machine learning in
Python — scikit-learn 1.9.1 documentation". Sólo usar como referencia
general a la versión de la biblioteca; para claims de contenido citar
Pedregosa2011 o la sección concreta del manual (p. ej. §1.11.1.1.4 ya
anotada en el brief 2.2).

### Chen2016 (reutilizar del brief 2.2) + XGBoostDocs

Key y entrada Chen2016: ver `2-2-aprendizaje-automatico.md` (2.2.3).

```bibtex
@online{XGBoostDocs,
  author     = {{xgboost developers}},
  title      = {{XGBoost} Documentation},
  titleaddon = {xgboost 3.4.2 documentation},
  url        = {https://xgboost.readthedocs.io/en/stable/},
  urldate    = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "XGBoost Documentation — xgboost
3.4.2 documentation".

Claims (XGBoostDocs):
- [V] "XGBoost is an optimized distributed gradient boosting library
  designed to be highly efficient, flexible and portable. It implements
  machine learning algorithms under the Gradient Boosting framework."
- [V] "provides a parallel tree boosting (also known as GBDT, GBM)".
- [V] Existe una sección "Python Package" con "Scikit-Learn Estimator
  Interface" (estimadores compatibles con la API de Scikit-learn:
  `XGBClassifier`, `XGBRegressor`), lo que permite usarlos dentro de
  `Pipeline` y `cross_val_score`.

Por qué aplica: en 2.7.1 XGBoost se presenta como biblioteca (versión,
interfaz con Scikit-learn), no como algoritmo (eso ya está en 2.2.3).

---

## 2.7.2 DuckDB y Polars

### Stonebraker2005

```bibtex
@inproceedings{Stonebraker2005,
  author    = {Stonebraker, Michael and {\c{C}}etintemel, U{\u{g}}ur},
  title     = {``One size fits all'': {An} idea whose time has come and gone},
  booktitle = {Proceedings of the 21st International Conference on Data Engineering ({ICDE} 2005)},
  pages     = {2--11},
  publisher = {IEEE},
  year      = {2005},
  doi       = {10.1109/ICDE.2005.1}
}
```

Verificación: CrossRef DOI (21st ICDE'05, pp. 2–11, IEEE; CrossRef lista
los autores como "Stonebraker, M." y "Cetintemel, U."); abstract vía
Semantic Scholar (~180 citas de esa entrada; la versión extendida posterior
tiene muchas más).

Claims:
- [V] "the traditional DBMS architecture (originally designed and optimized
  for business data processing) has been used to support many data-centric
  applications with widely varying characteristics and requirements."
- [V] "we argue that this concept is no longer applicable […] the commercial
  world will fracture into a collection of independent database engines".
- [V] Usa "the data-warehouse market" como uno de los dos ejemplos que
  sustentan el argumento.

Por qué aplica: fundamento para separar el motor transaccional del ERP
(PostgreSQL, OLTP) del motor analítico del pipeline Medallion (DuckDB,
OLAP) en vez de correr el análisis sobre la base de producción. Es un
argumento de arquitectura, no de rendimiento medido en este proyecto.

### Raasveldt2019

```bibtex
@inproceedings{Raasveldt2019,
  author    = {Raasveldt, Mark and M{\"u}hleisen, Hannes},
  title     = {{DuckDB}: an Embeddable Analytical Database},
  booktitle = {Proceedings of the 2019 International Conference on Management of Data ({SIGMOD} '19)},
  pages     = {1981--1984},
  publisher = {ACM},
  address   = {Amsterdam},
  year      = {2019},
  doi       = {10.1145/3299869.3320212}
}
```

Verificación: CrossRef DOI (SIGMOD/PODS '19, pp. 1981–1984, ACM, jun-2019;
CrossRef registra el título sólo como "DuckDB"); título completo y abstract
vía Semantic Scholar (~485 citas). Es un demo paper (4 páginas).

Claims:
- [V] "The immense popularity of SQLite shows that there is a need for
  unobtrusive in-process data management solutions. However, there is no
  such system yet geared towards analytical workloads."
- [V] "DuckDB, a novel data management system designed to execute
  analytical SQL queries while embedded in another process."
- [V] "available as Open Source software under a permissive license."

Por qué aplica: fuente primaria de DuckDB; "embedded in another process"
es exactamente el modo de uso del proyecto (dentro del proceso Python del
ETL, sin servidor adicional que desplegar).

### DuckDBWhy

```bibtex
@online{DuckDBWhy,
  author  = {{DuckDB Foundation}},
  title   = {Why {DuckDB}},
  url     = {https://duckdb.org/why_duckdb},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "Why DuckDB – DuckDB".

Claims:
- [V] "DuckDB has no external dependencies, neither for compilation nor
  during run-time."
- [V] "DuckDB is designed to support analytical query workloads, also known
  as online analytical processing (OLAP)." Motor "columnar-vectorized query
  execution engine, where queries are still interpreted, but a large batch
  of values (a 'vector') are processed in one operation."
- [V] Extensible: "defining new data types, functions, file formats and new
  SQL syntax"; soporte de Parquet, JSON, HTTP(S)/S3.
- [V] Licencia MIT; propiedad intelectual en la DuckDB Foundation.

### DuckDBMySQL y DuckDBPostgres (subpáginas)

```bibtex
@online{DuckDBMySQL,
  author  = {{DuckDB Foundation}},
  title   = {{MySQL} Extension},
  url     = {https://duckdb.org/docs/current/core_extensions/mysql.html},
  urldate = {2026-09-17}
}
@online{DuckDBPostgres,
  author  = {{DuckDB Foundation}},
  title   = {{PostgreSQL} Extension},
  url     = {https://duckdb.org/docs/current/core_extensions/postgres/overview.html},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200 ambas. Títulos exactos: "MySQL Extension – DuckDB" y
"PostgreSQL Extension – DuckDB". Ojo: las rutas `/docs/stable/...`
redirigen (meta refresh) a `/docs/current/...`; citar las `current`.

Claims:
- [V] MySQL: "The `mysql` extension allows DuckDB to directly read and write
  data from/to a running MySQL instance." "The data can be queried directly
  from the underlying MySQL database. Data can be loaded from MySQL tables
  into DuckDB tables, or vice versa." Conexión con `ATTACH '...' AS x (TYPE
  mysql)`.
- [V] PostgreSQL: lo mismo para "a running PostgreSQL database instance",
  con `ATTACH ... (TYPE postgres)`.
- No verificado: ninguna de las dos páginas indica versiones mínimas
  soportadas (importa porque el portal viejo corre MySQL 5.7). Hay que
  probarlo empíricamente en el incremento de ETL y documentar el resultado;
  no afirmar compatibilidad citando la doc.

Por qué aplica: es la justificación técnica de la fila "Unificación (Silver):
DuckDB (lee MySQL, PostgreSQL y archivos)" del brief §4: un solo motor SQL
que se conecta a las dos bases (histórico y ERP nuevo) y a los Excel/CSV.

### PolarsDocs

```bibtex
@online{PolarsDocs,
  author  = {{Polars developers}},
  title   = {Polars user guide},
  url     = {https://docs.pola.rs/},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "Index - Polars user guide" (el H1
visible es "Blazingly Fast DataFrame Library"). **No existe paper ni
whitepaper de Polars** (búsqueda web sin resultados académicos; la única
cita formal es un registro de software en Zenodo, ver PolarsZenodo).

Claims:
- [V] "Polars is a blazingly fast DataFrame library for manipulating
  structured data. The core is written in Rust, and available for Python,
  R and NodeJS."
- [V] Características declaradas: "Fast" (escrito desde cero en Rust, sin
  dependencias externas), "Out of Core" ("The streaming API allows you to
  process results without all data in memory"), "Parallel" (divide el
  trabajo entre núcleos de CPU), "Vectorized Query Engine", soporte de
  Apache Arrow.

### PolarsLazy (subpágina)

```bibtex
@online{PolarsLazy,
  author  = {{Polars developers}},
  title   = {Lazy {API}},
  titleaddon = {Polars user guide},
  url     = {https://docs.pola.rs/user-guide/concepts/lazy-api/},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200 (título "Lazy API").

Claims:
- [V] Optimizaciones de consulta en modo lazy: "Predicate pushdown: Apply
  filters as early as possible while reading the dataset" y "Projection
  pushdown: Select only the columns that are needed while reading the
  dataset"; "These will significantly lower the load on memory & CPU".
- [V] "In general, the lazy API should be preferred unless you are either
  interested in the intermediate results or are doing exploratory work".

Por qué aplica: explica por qué Polars (y no pandas) hace la transformación
Gold: API perezosa con optimizador, paralelismo y streaming para el
histórico de 10+ años sin que quepa todo en memoria.

### DuckDBPolars (subpágina)

```bibtex
@online{DuckDBPolars,
  author  = {{DuckDB Foundation}},
  title   = {Integration with {Polars}},
  url     = {https://duckdb.org/docs/current/guides/python/polars.html},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "Integration with Polars – DuckDB".

Claims:
- [V] "DuckDB can natively query Polars DataFrames by referring to the name
  of Polars DataFrames as they exist in the current scope."
- [V] "DuckDB can output results as Polars DataFrames using the `.pl()`
  result-conversion method." Internamente "using the efficient Apache Arrow
  integration".

Por qué aplica: cierra el par Silver (DuckDB) → Gold (Polars): el traspaso
entre las dos capas es directo vía Arrow, sin serializar a disco.

### PolarsZenodo (registro de software, opcional)

```bibtex
@software{PolarsZenodo,
  author  = {Vink, Ritchie and Beedie, Alexander and others},
  title   = {pola-rs/polars},
  publisher = {Zenodo},
  doi     = {10.5281/zenodo.7697217},
  url     = {https://doi.org/10.5281/zenodo.7697217},
  urldate = {2026-09-17},
  note    = {DOI concepto (todas las versiones); la versión Python 1.44.2 de 2026-09-09 tiene DOI 10.5281/zenodo.22670325}
}
```

Verificación: el badge DOI de docs.pola.rs apunta a 10.5281/zenodo.7697217;
la página zenodo.org/records/7697217 (leída por WebFetch; la API JSON
devolvió 403 por tráfico) resuelve al registro "pola-rs/polars: Python
Polars 1.44.2", tipo Software, licencia MIT, creadores Ritchie Vink,
Alexander Beedie et al., fecha 2026-09-09. Es la única cita "formal" de
Polars; usar sólo si el estilo de la carrera exige DOI para software.

---

## 2.7.3 FastAPI como Microservicio (ASGI, Pydantic, OpenAPI)

### FastAPIDocs

```bibtex
@online{FastAPIDocs,
  author  = {Ram{\'i}rez, Sebasti{\'a}n},
  title   = {{FastAPI}},
  url     = {https://fastapi.tiangolo.com/},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "FastAPI - FastAPI".

Claims:
- [V] Descripción: "FastAPI framework, high performance, easy to learn, fast
  to code, ready for production".
- [V] "FastAPI stands on the shoulders of giants: Starlette for the web
  parts. Pydantic for the data parts."
- [V] "Standards-based: Based on (and fully compatible with) the open
  standards for APIs: OpenAPI (previously known as Swagger) and JSON
  Schema."
- [V] Documentación interactiva automática con dos interfaces: Swagger UI y
  ReDoc, "based on the OpenAPI standard and JSON Schema, enabling
  interactive documentation systems and automatic client code generation
  for many languages."
- **No citar como hecho** las cifras de marketing de la misma página ("on
  par with NodeJS and Go", "+200% to 300%" de velocidad de desarrollo,
  "-40% bugs"): son autoevaluaciones del autor sin estudio de respaldo.

### FastAPIASGI (subpágina)

```bibtex
@online{FastAPIASGI,
  author  = {Ram{\'i}rez, Sebasti{\'a}n},
  title   = {Run a Server Manually},
  titleaddon = {FastAPI documentation},
  url     = {https://fastapi.tiangolo.com/deployment/manually/},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "Run a Server Manually - FastAPI".

Claims:
- [V] "FastAPI uses a standard for building Python web frameworks and
  servers called ASGI. FastAPI is an ASGI web framework."
- [V] Servidores ASGI listados: Uvicorn ("a high performance ASGI server"),
  Hypercorn, Daphne, Granian.

### ASGISpec

```bibtex
@online{ASGISpec,
  author  = {{Django Software Foundation}},
  title   = {{ASGI} (Asynchronous Server Gateway Interface) Specification},
  titleaddon = {ASGI 3.0 documentation},
  url     = {https://asgi.readthedocs.io/en/latest/specs/main.html},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "ASGI (Asynchronous Server Gateway
Interface) Specification — ASGI 3.0 documentation". La introducción
(asgi.readthedocs.io/en/latest/introduction.html, título "Introduction —
ASGI 3.0 documentation") aporta los claims de abajo. Autoría: el proyecto
vive bajo `django/asgiref`; si Zotero exige autor, usar "Django Software
Foundation" o el editor Andrew Godwin (no verificado en la página).

Claims (de la introducción):
- [V] "ASGI is a spiritual successor to WSGI, the long-standing Python
  standard for compatibility between web servers, frameworks, and
  applications."
- [V] "WSGI applications are a single, synchronous callable that takes a
  request and returns a response; this doesn't allow for long-lived
  connections, like you get with long-poll HTTP or WebSocket connections."
- [V] "ASGI's goal is to continue this onward into the land of asynchronous
  Python."

Por qué aplica: define el estándar sobre el que corre el microservicio de
predicción; el argumento del proyecto es E/S asíncrona (llamadas a
Keycloak para validar tokens, lecturas de la base) sin bloquear el worker.

### StarletteDocs

```bibtex
@online{StarletteDocs,
  author  = {Christie, Tom and others},
  title   = {Starlette},
  url     = {https://starlette.dev/},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200 en **starlette.dev**. Título exacto: "Introduction -
Starlette". **`starlette.io` / `www.starlette.io` ya no resuelven DNS**
(curl 000, ENOTFOUND); no usar esa URL aunque aparezca en libros. Autoría
"Tom Christie (Encode)" es conocimiento general del proyecto, no aparece
como autor en la página; si Zotero lo exige, usar `{Encode OSS}`.

Claims:
- [V] "Starlette is a lightweight ASGI framework/toolkit, which is ideal for
  building async web services in Python."
- [V] Provee: framework HTTP ligero, WebSocket, tareas en segundo plano,
  eventos de startup/shutdown, cliente de pruebas sobre httpx, CORS, GZip,
  archivos estáticos, respuestas streaming; "100% type annotated codebase";
  "Few hard dependencies" (sólo `anyio`); compatible con asyncio y trio.

### PydanticDocs

```bibtex
@online{PydanticDocs,
  author  = {Colvin, Samuel and others},
  title   = {Pydantic Validation},
  titleaddon = {Pydantic Docs},
  url     = {https://docs.pydantic.dev/latest/},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200; `docs.pydantic.dev/latest/` redirige a
`pydantic.dev/docs/validation/latest/get-started/`. Título exacto: "Pydantic
Validation | Pydantic Docs". Si Zotero necesita la URL final, usar la
redirigida. Autoría "Samuel Colvin" no está en la página como autor
(conocimiento general); alternativa `{Pydantic Services Inc.}`.

Claims:
- [V] "the most widely used data validation library for Python".
- [V] Validación guiada por tipos: "schema validation and serialization are
  controlled by type annotations".
- [V] "Pydantic's core validation logic is written in Rust".
- [V] Emite JSON Schema para integrarse con otras herramientas; modos
  estricto (sin conversión) y laxo (coerción de tipos).
- [V] "around 8,000 packages on PyPI use Pydantic, including massively
  popular libraries like FastAPI, huggingface, Django Ninja, SQLModel, &
  LangChain".
- **No citar como hecho** las cifras de adopción ("550M downloads/month",
  "all FAANG") — autoreportadas.

Por qué aplica: Pydantic es lo que define el contrato de entrada/salida del
endpoint de predicción (tipos, rangos, faltantes) y el JSON Schema que
FastAPI expone en OpenAPI y que NestJS puede consumir para tipar el cliente.

---

## 2.7.4 NestJS y Angular (más Prisma, PostgreSQL y Docker)

### NestJSDocs

```bibtex
@online{NestJSDocs,
  author  = {My{\'s}liwiec, Kamil and others},
  title   = {Documentation},
  titleaddon = {NestJS - A progressive Node.js framework},
  url     = {https://docs.nestjs.com/},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "Documentation | NestJS - A
progressive Node.js framework". Autoría: Kamil Myśliwiec es el creador
(conocimiento general, no figura como autor en la página); alternativa
`{NestJS Team}`.

Claims:
- [V] "Nest (NestJS) is a framework for building efficient, scalable Node.js
  server-side applications. It uses progressive JavaScript, is built with
  and fully supports TypeScript […] and combines elements of OOP, FP, and
  FRP."
- [V] "Nest makes use of robust HTTP Server frameworks like Express (the
  default) and optionally can be configured to use Fastify as well!" (El
  ERP usa Express: `@nestjs/platform-express`.)
- [V] Filosofía: "Nest provides an out-of-the-box application architecture
  which allows developers and teams to create highly testable, scalable,
  loosely coupled, and easily maintainable applications. The architecture
  is heavily inspired by Angular."

### NestJSModules (subpágina)

```bibtex
@online{NestJSModules,
  author  = {My{\'s}liwiec, Kamil and others},
  title   = {Modules},
  titleaddon = {NestJS documentation},
  url     = {https://docs.nestjs.com/modules},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "Modules | NestJS - A progressive
Node.js framework".

Claims:
- [V] "A module is a class that is annotated with the `@Module()`
  decorator."
- [V] "Every Nest application has at least one module, the root module,
  which serves as the starting point for Nest to build the application
  graph."
- [V] "The module encapsulates providers by default, meaning you can only
  inject providers that are either part of the current module or explicitly
  exported from other imported modules."

Por qué aplica: sustenta describir el ERP como conjunto de módulos NestJS
(proyectos, certificaciones, integración con FastAPI, API para Power BI,
MCP) con inyección de dependencias y encapsulación por módulo.

### AngularOverview

```bibtex
@online{AngularOverview,
  author  = {{Google LLC}},
  title   = {What is {Angular}?},
  titleaddon = {Angular documentation},
  url     = {https://angular.dev/overview},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "What is Angular? • Angular".

Claims:
- [V] "Angular is a web framework that empowers developers to build fast,
  reliable applications that users love." "Maintained by a dedicated team
  at Google".
- [V] Componentes: "Angular components make it easy to split your code into
  well-encapsulated parts."
- [V] Signals: "Our fine-grained reactivity model, combined with
  compile-time optimizations, simplifies development and helps build faster
  apps by default."
- [V] "Angular supports both server-side rendering (SSR) and static site
  generation (SSG) along with full DOM hydration."
- [V] Inyección de dependencias, enrutamiento (guards, lazy-loading) y
  formularios con validación.

### AngularSSR (subpágina)

```bibtex
@online{AngularSSR,
  author  = {{Google LLC}},
  title   = {Server-side and hybrid-rendering},
  titleaddon = {Angular documentation},
  url     = {https://angular.dev/guide/ssr},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "Server-side and hybrid-rendering •
Angular". **La página documenta Angular v22; el proyecto usa Angular
21.2** (`portal-erp/package.json`). Los claims de abajo son generales y
valen para ambas, pero no citar detalles de API sin confirmar en la doc de
v21 (angular.dev sólo publica la última versión; para v21 habría que usar
`v21.angular.dev` si existe — no verificado).

Claims:
- [V] SSR: "Renders the application on the server for each request, sending
  a fully populated HTML page to the browser."
- [V] "Server-side rendering offers faster page loads than client-side
  rendering. Instead of waiting for JavaScript to download and run, the
  server directly renders an HTML document upon receiving a request from
  the browser."
- [V] "generally has excellent search engine optimization (SEO)".
- [V] Se habilita con `ng add @angular/ssr`; la hidratación reutiliza el
  HTML renderizado en el servidor para evitar rehacer el trabajo en el
  cliente.

Por qué aplica: el brief §4 fija "Angular 21 (SSR)". El beneficio
relevante para el ERP es el primer render rápido del dashboard, no el SEO
(la app es interna, con login): decirlo así.

### PrismaDocs7

```bibtex
@online{PrismaDocs7,
  author  = {{Prisma Data, Inc.}},
  title   = {What is {Prisma} 7?},
  titleaddon = {Prisma Documentation},
  url     = {https://www.prisma.io/docs/orm/v7},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "What is Prisma 7? | Prisma
Documentation". **Cuidado con la URL raíz `prisma.io/docs/orm`: hoy
describe Prisma ORM 8** (modelo por contratos, "MySQL support planned
next"), que no es lo que usa el ERP (Prisma 7.8 según `package.json`).
Citar la página de v7. (Existe también la de v6:
`/docs/orm/v6/overview/introduction/what-is-prisma`, título "What is Prisma
ORM? (Prisma 6 overview)".)

Claims:
- [V] "Prisma ORM is a next-generation Node.js and TypeScript ORM that
  provides type-safe database access, migrations, and a visual data editor."
- [V] Componentes: Prisma Client ("Auto-generated, type-safe ORM
  interface"), Prisma Migrate ("Database migration system"), Prisma Studio
  ("GUI to view and edit your data").
- [V] El esquema Prisma es la "single source of truth […] for database and
  application models"; "Type-safe queries validated at compile time with
  full autocompletion."
- [V] Cambios de v7: "providing a driver adapter is mandatory for direct
  database connections"; ESM obligatorio (`"type": "module"`); configuración
  en `prisma.config.ts` (el repo del ERP tiene ese archivo).
- No verificado en esta página: lista completa de bases soportadas (el
  ejemplo usa PostgreSQL; menciona adaptadores como MariaDB). Para el
  proyecto basta PostgreSQL.

### PostgreSQLDocs

```bibtex
@online{PostgreSQLDocs,
  author  = {{The PostgreSQL Global Development Group}},
  title   = {What Is {PostgreSQL}?},
  titleaddon = {PostgreSQL 18 Documentation},
  url     = {https://www.postgresql.org/docs/current/intro-whatis.html},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "PostgreSQL: Documentation: 18: 1.
What Is PostgreSQL?". (Versión de PostgreSQL que corre el ERP: no la
verifiqué en el repo; anotar la del `docker-compose.yml` al redactar.)

Claims:
- [V] "PostgreSQL is an object-relational database management system
  (ORDBMS) based on POSTGRES, Version 4.2, developed at the University of
  California at Berkeley Computer Science Department."
- [V] "It supports a large part of the SQL standard and offers many modern
  features: complex queries, foreign keys, triggers, updatable views,
  transactional integrity, multiversion concurrency control".
- [V] Extensible por el usuario (tipos, funciones, operadores, índices,
  lenguajes procedurales) y "because of the liberal license, PostgreSQL can
  be used, modified, and distributed by anyone free of charge for any
  purpose".

Por qué aplica: base OLTP del ERP nuevo y fuente de inferencia (§3 del
brief); "transactional integrity" y MVCC son justamente las propiedades OLTP
que Stonebraker2005 contrapone al análisis (por eso el ETL no corre ahí).

### DockerDocs

```bibtex
@online{DockerDocs,
  author  = {{Docker, Inc.}},
  title   = {What is {Docker}?},
  titleaddon = {Docker Docs},
  url     = {https://docs.docker.com/get-started/docker-overview/},
  urldate = {2026-09-17}
}
```

Verificación: HTTP 200. Título exacto: "What is Docker? | Docker Docs".
Docker Compose: `https://docs.docker.com/compose/` responde 200 (título
"Docker Compose | Docker Docs"); no leí su contenido, sólo verifiqué que
existe por si el redactor necesita citarlo (el monorepo tiene
`docker-compose.yml`).

Claims:
- [V] "Docker provides the ability to package and run an application in a
  loosely isolated environment called a container. The isolation and
  security let you run many containers simultaneously on a given host."
- [V] "The container becomes the unit for distributing and testing your
  application. When you're ready, deploy your application into your
  production environment, as a container or an orchestrated service."
- [V] Arquitectura cliente-servidor: "The Docker client talks to the Docker
  daemon, which does the heavy lifting of building, running, and
  distributing your Docker containers." El daemon `dockerd` gestiona
  "images, containers, networks, and volumes"; los registries almacenan
  imágenes.
- [V] "An image is a read-only template with instructions for creating a
  Docker container." "A container is a runnable instance of an image."

Por qué aplica: el brief §4 fija Docker para el despliegue en servidor
propio (fase 1) con migración a nube como trabajo futuro; la portabilidad
de imágenes es el argumento para esa migración.

---

## Opcionales verificadas

### VanRossum2009 — Python en papel (2.7.1)

```bibtex
@book{VanRossum2009,
  author    = {Van Rossum, Guido and Drake, Fred L.},
  title     = {Python 3 Reference Manual},
  publisher = {CreateSpace Independent Publishing Platform},
  address   = {Scotts Valley, CA},
  year      = {2009},
  isbn      = {9781441412690},
  pagetotal = {244}
}
```

Verificación [V-meta]: Open Library ISBN 1441412697 / 9781441412690:
"Python 3 Reference Manual", CreateSpace, 20-mar-2009, 244 pp., rústica
(nota de la fuente: "Python Documentation Manual Part 2"). Los dos autores
figuran como claves de Open Library (OL2987199A, OL10650516A), que no
resolví a nombres en esta pasada; que sean Van Rossum y Drake es
conocimiento general de esta obra. Es la cita en papel habitual de Python,
pero es sólo la impresión del manual de referencia de 2009; para claims
concretos prefiero PythonFAQ (actual y verificada).

### Buitinck2013 — diseño de la API de Scikit-learn (2.7.1)

```bibtex
@inproceedings{Buitinck2013,
  author    = {Buitinck, Lars and Louppe, Gilles and Blondel, Mathieu and Pedregosa, Fabian and Mueller, Andreas and Grisel, Olivier and Niculae, Vlad and Prettenhofer, Peter and Gramfort, Alexandre and Grobler, Jaques and Layton, Robert and VanderPlas, Jake and Joly, Arnaud and Holt, Brian and Varoquaux, Ga{\"e}l},
  title     = {{API} design for machine learning software: experiences from the scikit-learn project},
  booktitle = {{ECML} {PKDD} Workshop: Languages for Data Mining and Machine Learning},
  pages     = {108--122},
  year      = {2013},
  eprint    = {1309.0238},
  eprinttype = {arxiv}
}
```

Verificación: arXiv API 1309.0238 (título, 15 autores, sep-2013, abstract);
scikit-learn.org/stable/about.html lo recomienda como segunda cita y da el
BibTeX con booktitle y páginas. Semantic Scholar no devolvió el registro
por arXiv id (sin importancia).

Claims:
- [V] "we describe the simple and elegant interface shared by all learning
  and processing units in the library and then discuss its advantages in
  terms of composition and reusability."
- [V] Scikit-learn está "designed to be simple and efficient, accessible to
  non-experts, and reusable in various contexts".
- No verificado en el abstract (está en el cuerpo, §2): los nombres de las
  tres interfaces (estimator `fit`, predictor `predict`, transformer
  `transform`) y `Pipeline`. Citar con sección sólo tras leer el PDF.

Por qué aplica: respalda la afirmación de que XGBoost se integra al flujo
de Scikit-learn porque respeta la misma interfaz (junto con XGBoostDocs).

---

## Notas para el redactor

### Keys: existentes vs. nuevas

- **Ya verificadas en el brief 2.2 (reutilizar la misma key, no duplicar):**
  Pedregosa2011, Chen2016.
- **Nuevas (cargar por Zotero):** PythonFAQ, Harris2020, McKinney2010,
  PandasOverview, SklearnDocs, XGBoostDocs, Stonebraker2005, Raasveldt2019,
  DuckDBWhy, DuckDBMySQL, DuckDBPostgres, PolarsDocs, PolarsLazy,
  DuckDBPolars, FastAPIDocs, FastAPIASGI, ASGISpec, StarletteDocs,
  PydanticDocs, NestJSDocs, NestJSModules, AngularOverview, AngularSSR,
  PrismaDocs7, PostgreSQLDocs, DockerDocs; opcionales PolarsZenodo,
  VanRossum2009, Buitinck2013.
- Ninguna de estas keys existe hoy en `documento.bib` (no lo edité).

### Sobre las `@online`

1. Todas las URLs respondieron HTTP 200 el 2026-09-17 y anoté el `<title>`
   exacto. Los títulos incluyen la versión del software en el momento de
   consulta (NumPy v2.5, pandas 3.0.5, scikit-learn 1.9.1, xgboost 3.4.2,
   Python 3.14.7, PostgreSQL 18, ASGI 3.0, Angular v22, Prisma 7). Esas
   versiones **no** son las del proyecto: el texto debe citar la versión
   que se usa (Angular 21.2, Prisma 7.8, NestJS 11) y dejar la de la doc en
   `titleaddon`/`urldate`. Si Zotero pide "version", poner la del proyecto.
2. URLs que cambiaron y hay que evitar: `starlette.io` (DNS muerto → usar
   `starlette.dev`); `duckdb.org/docs/stable/...` (redirige → usar
   `/docs/current/...`); `prisma.io/docs/orm` (raíz describe ORM 8 → usar
   `/docs/orm/v7`); `docs.pydantic.dev/latest/` (redirige a
   `pydantic.dev/docs/validation/latest/get-started/`; cualquiera de las dos
   vale, Zotero guardará la final).
3. Autoría de las `@online`: las páginas no declaran autor persona. Puse
   la organización titular (o el creador conocido "and others" en FastAPI,
   Starlette, Pydantic, NestJS). Elegir un criterio único con Zotero
   (recomiendo organización en todos) y aplicarlo parejo.
4. Cifras de marketing que **no** hay que citar como hecho: FastAPI
   ("+200–300% velocidad", "-40% bugs", "on par with NodeJS and Go"),
   Pydantic ("550M downloads/month", "all FAANG"), Polars ("blazingly
   fast"). Son autoevaluaciones sin estudio independiente. Si se quiere un
   argumento de rendimiento, plantearlo como propiedad arquitectónica
   (ASGI asíncrono, núcleo en Rust, motor vectorizado) y no como número.

### Claims sin fuente verificada (no afirmar sin cita o buscar una)

1. **Compatibilidad de la extensión MySQL de DuckDB con MySQL 5.7** (la
   versión del portal viejo): la doc no lista versiones. Probarlo en el
   incremento de ETL y reportarlo como resultado propio.
2. **"Polars es más rápido que pandas"**: no hay paper ni benchmark
   independiente verificado en esta pasada. Si se quiere afirmar, buscar un
   benchmark de terceros (p. ej. TPC-H de DuckDB Labs "database-like ops
   benchmark") o decir sólo lo que la doc afirma (Rust, paralelo, lazy,
   streaming).
3. **Nombres de interfaces `fit`/`predict`/`transform` en Buitinck2013**:
   están en el cuerpo, no en el abstract. Leer el PDF (arXiv 1309.0238)
   antes de citar sección.
4. **Descripción de `DataFrame`/`Series` atribuida a McKinney2010**: el
   abstract no las nombra; citar PandasOverview para eso y McKinney2010
   para el origen y la motivación.
5. **Versión de PostgreSQL en producción del ERP**: no la verifiqué;
   tomarla del `docker-compose.yml` del monorepo.
6. **"NestJS inspirado en Angular"**: sí verificado ([V] en NestJSDocs);
   lo anoto porque es útil para justificar la coherencia del stack
   TypeScript en ambos extremos.
7. **Docker Compose**: sólo verifiqué que la URL existe; no leí claims.

### Sugerencia de armado de 2.7 (no es prosa, es orden)

- 2.7.1: PythonFAQ → Harris2020 (base) → McKinney2010 + PandasOverview →
  Pedregosa2011 (+Buitinck2013) → Chen2016 + XGBoostDocs (interfaz sklearn).
- 2.7.2: Stonebraker2005 (por qué separar OLTP de OLAP) → Raasveldt2019 +
  DuckDBWhy (embebido, columnar, sin dependencias) → DuckDBMySQL /
  DuckDBPostgres (lee las dos fuentes) → PolarsDocs + PolarsLazy (Gold) →
  DuckDBPolars (traspaso vía Arrow).
- 2.7.3: ASGISpec → StarletteDocs → PydanticDocs → FastAPIDocs +
  FastAPIASGI (OpenAPI/JSON Schema como contrato con NestJS).
- 2.7.4: NestJSDocs + NestJSModules → PrismaDocs7 → PostgreSQLDocs
  (cerrar el lazo con Stonebraker2005) → AngularOverview + AngularSSR →
  DockerDocs.
