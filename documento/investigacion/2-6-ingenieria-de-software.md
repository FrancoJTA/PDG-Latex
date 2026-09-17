# Brief de investigación — 2.6 Ingeniería de Software (Cap. II)

Fecha: 2026-09-17. Investigador. Verificación: CrossRef (DOI), OpenAlex,
Open Library (ISBN), InformIT/Pearson/McGraw-Hill (fichas de editorial),
PDFs leídos con `pdftotext` (Royce 1970, Larman & Basili 2003, índice de
Fowler 2002, preview de Richards & Ford 2020, muestra oficial de ISO/IEC/IEEE
12207:2017). Todo lo que no pude verificar está marcado. Las entradas
BibLaTeX son candidatas: se cargan por Zotero (`documento/09-setup-zotero.md`).

Resumen: 12 fuentes núcleo verificadas + 3 opcionales. Dos keys ya existen
en `documento.bib` (`Sommerville2011`, `Bass2012`) y **recomiendo
reemplazarlas por las ediciones nuevas** (ver "Notas para el redactor").

Convención de claims: **[V]** = verificado en texto/abstract leído;
**[V-cap]** = verificado a nivel de capítulo (título de capítulo en índice
oficial); el número de sección viene del índice conocido de la obra y hay
que confirmarlo en el ejemplar antes de escribir "§".

Alcance del subtema (brief §5 y §4): el desarrollo es **iterativo-incremental
con 5 incrementos**, cada uno con alcance, análisis, diseño, desarrollo y
validación; el módulo predictivo es un **microservicio FastAPI** separado
del ERP (NestJS + Angular), y conviven Keycloak, MCP y Power BI como
servicios que consumen APIs del ERP.

---

## 2.6.1 Proceso de Desarrollo de Software

### Royce1970 — origen del modelo en cascada (y su crítica)

```bibtex
@inproceedings{Royce1970,
  author    = {Royce, Winston W.},
  title     = {Managing the Development of Large Software Systems},
  booktitle = {Proceedings of {IEEE} {WESCON}},
  pages     = {1--9},
  publisher = {IEEE},
  address   = {Los Angeles, CA},
  month     = aug,
  year      = {1970},
  note      = {Reimpreso en Proceedings of the 9th International Conference on Software Engineering (ICSE '87), IEEE CS Press, 1987, pp. 328--338}
}
```

Verificación: PDF de la reimpresión ICSE '87 leído completo (pie de página:
"Reprinted from Proceedings, IEEE WESCON, August 1970, pages 1-9. Copyright
© 1970 by The Institute of Electrical and Electronics Engineers, Inc.
Originally published by TRW"; paginación 328–). ACM DL lista la reimpresión
como 10.5555/41765.41801 (no es DOI CrossRef; no usarlo como `doi`). El
original de 1970 no tiene DOI.

Claims:
- [V] Fig. 2 propone los pasos secuenciales para un programa grande:
  requisitos de sistema → requisitos de software → análisis → diseño de
  programa → codificación → pruebas → operación ("Implementation steps to
  develop a large computer program for delivery to a customer").
- [V] Royce **no** defiende la secuencia estricta: "I believe in this
  concept, but the implementation described above is risky and invites
  failure" — porque la fase de pruebas al final es el primer momento en
  que se experimentan (y no sólo analizan) tiempos, almacenamiento y E/S,
  y un fallo ahí obliga a rediseñar: "one can expect up to a 100-percent
  overrun in schedule and/or costs".
- [V] Propone cinco correcciones (Fig. 10, "Summary"): Step 1 Program
  design comes first; Step 2 Document the design; Step 3 **Do it twice**
  ("arrange matters so that the version finally delivered to the customer
  […] is actually the second version"; para un proyecto de 30 meses, un
  piloto de 10); Step 4 Plan, control and monitor testing; Step 5 Involve
  the customer ("To give the contractor free rein between requirement
  definition and operation is inviting trouble").
- [V] La palabra "waterfall" **no aparece** en el artículo (grep sobre el
  texto extraído); el nombre es posterior.

Por qué aplica: es la fuente primaria del modelo en cascada; permite
presentarlo con precisión histórica (Royce ya recomendaba iterar y
prototipar) y no como un hombre de paja.

### Boehm1988 — modelo en espiral

```bibtex
@article{Boehm1988,
  author  = {Boehm, Barry W.},
  title   = {A Spiral Model of Software Development and Enhancement},
  journal = {Computer},
  volume  = {21},
  number  = {5},
  pages   = {61--72},
  year    = {1988},
  doi     = {10.1109/2.59}
}
```

Verificación: CrossRef DOI 10.1109/2.59 (Computer 21(5), 61–72, mayo 1988,
IEEE; ~2.300 citas). Abstract obtenido de OpenAlex (el registro de OpenAlex
tiene los campos vol./págs. mal — 11(4), 14–24 — corresponden a la versión
previa en ACM SEN 1986; usar los de CrossRef).

Claims:
- [V] Abstract: el espiral es "an evolving risk-driven approach that
  provides a framework for guiding the software process"; el artículo
  "outlines the process steps involved in the spiral model" y muestra su
  aplicación a un proyecto real (TRW-SPS), además de "the primary
  advantages and implications" y "the primary difficulties in using it at
  its current incomplete level of elaboration".
- [V] (vía Larman2003, p. 6) el espiral "did formalize and make prominent
  the risk-driven-iterations concept and the need to use a discrete step of
  risk assessment in each iteration".
- No verificado con el abstract: los cuatro cuadrantes de cada ciclo
  (objetivos/alternativas/restricciones → evaluación y análisis de riesgo →
  desarrollo y verificación → planificación del siguiente ciclo). Está en
  el cuerpo (Fig. 2 del artículo); citar sólo tras leer el PDF.

Por qué aplica: es el modelo de proceso que introduce iteraciones guiadas
por riesgo; sirve de puente entre cascada y los métodos iterativos e
incrementales de 2.6.2.

### Sommerville2016 — modelos de proceso (cascada, incremental, ágil) y arquitectura

```bibtex
@book{Sommerville2016,
  author    = {Sommerville, Ian},
  title     = {Software Engineering},
  edition   = {10},
  publisher = {Pearson},
  address   = {Boston, MA},
  year      = {2016},
  isbn      = {9780133943030},
  pagetotal = {816}
}
```

Verificación: Open Library ISBN 9780133943030 (Pearson, 10.ª ed., 816 pp.,
fecha de publicación 3-abr-2015; el copyright impreso es 2016 — Pearson
Education Limited 2016 según la edición global; usar 2016 y confirmar en
la portada del ejemplar). Índice de capítulos verificado en la ficha
Pearson de la reimpresión 2021 (misma 10.ª ed.): cap. 2 "Software
processes", cap. 3 "Agile software development", cap. 6 "Architectural
design", cap. 17 "Distributed software engineering", cap. 18
"Service-oriented software engineering". Diapositivas oficiales del
cap. 6 (10.ª ed.) leídas.

Claims:
- [V-cap] Cap. 2, §2.1 "Software process models": cascada como modelo
  dirigido por plan con fases separadas de especificación y desarrollo;
  desarrollo incremental como interleaving de especificación, desarrollo y
  validación; integración y configuración (reutilización). Beneficios del
  incremental: menor costo de acomodar cambios de requisitos, feedback más
  fácil del cliente, entrega más rápida de software útil. Problemas: menor
  visibilidad para gestión y degradación de la estructura si no se
  refactoriza. (Definiciones tomadas de las diapositivas oficiales del
  cap. 2; las de la 9.ª ed. coinciden con la 10.ª salvo el tercer modelo,
  que en la 10.ª pasa de "reuse-oriented" a "integration and
  configuration".)
- [V-cap] Cap. 2, §2.3 "Coping with change": prototipado, entrega
  incremental y modelo en espiral como formas de reducir el costo del
  cambio.
- [V-cap] Cap. 3: métodos ágiles (XP, Scrum), técnicas ágiles y
  gestión ágil de proyectos.
- [V] Cap. 6, patrón de arquitectura en capas (diapositivas oficiales,
  10.ª ed.): "Organizes the system into layers with related functionality
  associated with each layer. A layer provides services to the layer above
  it so the lowest-level layers represent core services"; ventajas:
  "Allows replacement of entire layers so long as the interface is
  maintained"; desventajas: "providing a clean separation between layers
  is often difficult […] Performance can be a problem because of multiple
  levels of interpretation of a service request".
- [V-cap] Cap. 18: arquitectura orientada a servicios y servicios RESTful
  (§18.2 en el índice conocido; confirmar).

Por qué aplica: manual de referencia para 2.6.1 (los cuatro modelos del
temario), para 2.6.2 (incremental) y para 2.6.3 (capas). Es la fuente que
cubre más temario con una sola cita.

### Pressman2020 — modelos prescriptivos, evolutivos y ágiles

```bibtex
@book{Pressman2020,
  author    = {Pressman, Roger S. and Maxim, Bruce R.},
  title     = {Software Engineering},
  subtitle  = {A Practitioner's Approach},
  edition   = {9},
  publisher = {McGraw-Hill Education},
  address   = {New York},
  year      = {2020},
  isbn      = {9781259872976},
  pagetotal = {704}
}
```

Verificación: Open Library ISBN 9781259872976 (McGraw-Hill Education,
9-sep-2019, 704 pp.); ficha McGraw-Hill confirma autores, 9.ª ed. e
índice de capítulos: 2 "Process Models", 3 "Agility and Process", 4
"Recommended Process Model", 10 "Architectural Design — A Recommended
Approach". El copyright impreso de la 9.ª ed. es 2020 (fecha de venta
2019); confirmar en el ejemplar.

Claims:
- [V-cap] Cap. 2 "Process Models": marco genérico de proceso y modelos
  prescriptivos (cascada, prototipado, evolutivo/espiral, proceso
  unificado). **No pude verificar** los números de sección de la 9.ª ed.
  (en la 8.ª eran §4.1.1 cascada, §4.1.2 incremental, §4.1.3 evolutivo);
  citar el capítulo, no la sección, hasta ver el PDF.
- [V-cap] Cap. 3 "Agility and Process": agilidad, proceso ágil, Scrum y
  otros marcos ágiles.
- [V-cap] Cap. 10: diseño arquitectónico, estilos y patrones.

Por qué aplica: segunda voz de manual para 2.6.1 (complementa a
Sommerville) y aporta el vocabulario "modelo prescriptivo" vs. "ágil" que
el tribunal reconoce. Si hay que elegir una sola, Sommerville2016 tiene
índice mejor verificado.

### Beck2001 — Manifiesto Ágil

```bibtex
@online{Beck2001,
  author  = {Beck, Kent and Beedle, Mike and van Bennekum, Arie and Cockburn, Alistair and Cunningham, Ward and Fowler, Martin and Grenning, James and Highsmith, Jim and Hunt, Andrew and Jeffries, Ron and Kern, Jon and Marick, Brian and Martin, Robert C. and Mellor, Steve and Schwaber, Ken and Sutherland, Jeff and Thomas, Dave},
  title   = {Manifesto for Agile Software Development},
  year    = {2001},
  url     = {https://agilemanifesto.org/},
  urldate = {2026-09-17}
}
```

Verificación: sitio leído; 17 firmantes y año 2001 confirmados.

Claims:
- [V] Cuatro valores textuales: "Individuals and interactions over
  processes and tools; Working software over comprehensive documentation;
  Customer collaboration over contract negotiation; Responding to change
  over following a plan".
- [V] (vía Larman2003, p. 9) reunión de febrero de 2001 en Utah de 17
  expertos representando DSDM, XP, Scrum, FDD y otros, de la que salió la
  Agile Alliance y la etiqueta "agile methods", "all of which apply IID".

Por qué aplica: define "ágil" con su fuente primaria y conecta lo ágil con
lo iterativo-incremental (todos los métodos ágiles son IID), que es lo que
el proyecto adopta.

### ISO12207-2017 — marco normativo de procesos del ciclo de vida

```bibtex
@report{ISO12207-2017,
  author      = {{ISO/IEC/IEEE}},
  title       = {{ISO/IEC/IEEE} 12207:2017 -- Systems and software engineering -- Software life cycle processes},
  institution = {International Organization for Standardization},
  address     = {Geneva},
  type        = {Standard},
  edition     = {1},
  year        = {2017},
  doi         = {10.1109/IEEESTD.2017.8100771},
  note        = {Edición IEEE; ISBN electrónico 9781504442534}
}
```

Verificación: CrossRef DOI 10.1109/IEEESTD.2017.8100771 (IEEE, 2017, ISBN
9781504442534). Muestra oficial de iTeh (portada, índice y cláusula 1)
leída: edición 2017-11, "first edition" como ISO/IEC/IEEE (reemplaza a
ISO/IEC 12207:2008). En Zotero conviene tipo "Standard"; BibLaTeX estándar
no tiene `@standard`, `@report` con `type={Standard}` es el equivalente
habitual (el redactor decide según el estilo cargado).

Claims:
- [V] §1.1 Scope: "This document establishes a common framework for
  software life cycle processes, with well-defined terminology, that can
  be referenced by the software industry. It contains processes,
  activities, and tasks that are applicable during the acquisition,
  supply, development, operation, maintenance or disposal of software
  systems, products, and services."
- [V] §1.4 Limitations: "This document does not prescribe a specific
  software life cycle model, development methodology, method, modelling
  approach, or technique. The users of this document are responsible for
  selecting a life cycle model for the project and mapping the processes,
  activities, and tasks in this document into that model."
- [V] Índice §5.6.2–5.6.5: cuatro grupos de procesos — Agreement,
  Organizational project-enabling, Technical management, Technical.
- [V] §1.1: "provides a process reference model characterized in terms of
  the process purpose and the process outcomes".

Por qué aplica: separa "proceso" (qué actividades) de "modelo de ciclo de
vida" (cómo se ordenan en el tiempo); justifica que el proyecto elija
libremente el iterativo-incremental sin contradecir la norma.

---

## 2.6.2 Metodología de Desarrollo Iterativa e Incremental

(Además de Sommerville2016 cap. 2 y Pressman2020 cap. 2–3.)

### Larman2003 — definición e historia del IID

```bibtex
@article{Larman2003,
  author  = {Larman, Craig and Basili, Victor R.},
  title   = {Iterative and Incremental Development: {A} Brief History},
  journal = {Computer},
  volume  = {36},
  number  = {6},
  pages   = {47--56},
  year    = {2003},
  doi     = {10.1109/MC.2003.1204375}
}
```

Verificación: CrossRef DOI (Computer 36(6), 47–56, junio 2003, IEEE; ~660
citas). El título en CrossRef está mal transcrito ("Iterative and
incremental developments. a brief history"); usar el del PDF. PDF oficial
del autor leído completo (paginación interna 2–11; en la revista 47–56 —
las páginas de abajo son las del PDF).

Claims:
- [V] Tesis (resumen): "Although many view iterative and incremental
  development as a modern practice, its application dates as far back as
  the mid-1950s. Prominent software-engineering thought leaders from each
  succeeding decade supported IID practices, and many large projects used
  them successfully."
- [V] Rasgo común de todos los enfoques IID (p. 2): "to avoid a
  single-pass sequential, document-driven, gated-step approach".
  Terminología: "iterative development" implica "not just revisiting work,
  but also evolutionary advancement".
- [V] Raíces (p. 2): ciclos PDSA de Shewhart (años 30) y Deming; Project
  Mercury de la NASA (principios de los 60) con iteraciones de medio día,
  time-boxed y test-first.
- [V] Sobre Royce (p. 3): "Many—incorrectly—view Royce's paper as the
  paragon of single-pass waterfall. In reality, he recommended an approach
  somewhat different […] Royce's recommendation was to do it twice."
- [V] Definición clásica de IID citada de Basili & Turner 1975 (p. 4):
  "start with a simple implementation of a subset of the software
  requirements and iteratively enhance the evolving sequence of versions
  until the full system is implemented. At each iteration, design
  modifications are made along with adding new functional capabilities."
- [V] Ejemplos de incrementos fijos (p. 4): TRW/Army Site Defense (1972)
  "developed the system in five iterations"; Trident (IBM FSD, 1972) en
  cuatro iteraciones time-boxed de ~6 meses; LAMPS en 45 iteraciones de
  un mes.
- [V] Espiral (p. 6): Boehm 1985/86 "did formalize and make prominent the
  risk-driven-iterations concept".
- [V] Normas (pp. 7–8): DoD-Std-2167 exigía cascada de una sola pasada;
  fue reemplazado por Mil-Std-498 (1994), que "describes software
  development in one or more incremental builds. Each build implements a
  specified subset of the planned capabilities."
- [V] Años 90 (p. 9): Scrum (Sutherland y Schwaber, iteraciones de 30
  días), DSDM, RUP, XP (Beck, 1996); reunión de 2001 → Agile Alliance.
- [V] Conclusión (p. 10): razones de la persistencia de la cascada
  ("simple to explain and recall"; "illusion of an orderly, accountable,
  and measurable process") y recomendación final de promover IID.

Por qué aplica: es **la** fuente para 2.6.2 — definición, historia,
ejemplos con número fijo de incrementos (útil para justificar los 5 del
proyecto) y la relación con cascada, espiral y ágil, todo en un artículo
revisado por pares.

---

## 2.6.3 Arquitectura de Software por Capas

(Además de Sommerville2016 cap. 6.)

### Fowler2002 — capas en aplicaciones empresariales

```bibtex
@book{Fowler2002,
  author    = {Fowler, Martin},
  title     = {Patterns of Enterprise Application Architecture},
  publisher = {Addison-Wesley},
  address   = {Boston, MA},
  year      = {2002},
  isbn      = {0321127420},
  note      = {Con contribuciones de David Rice, Matthew Foemmel, Edward Hieatt, Robert Mee y Randy Stafford}
}
```

Verificación: Open Library ISBN 0321127420 / 9780321127426 (Addison-Wesley;
la edición listada es la 13.ª reimpresión de 2007, primera edición 2002
según martinfowler.com/books/eaa.html). Índice oficial leído (PDF de
tabla de contenidos): cap. 1 "Layering" (p. 17) con secciones "The
Evolution of Layers in Enterprise Applications" (18), "The Three Principal
Layers" (19), "Choosing Where to Run Your Layers" (22); cap. 2
"Organizing Domain Logic" con "Service Layer" (30).

Claims:
- [V-cap] Cap. 1, "The Three Principal Layers" (p. 19): presentación,
  dominio (lógica de negocio) y fuente de datos como las tres capas
  principales de una aplicación empresarial. (El nombre de las tres capas
  está verificado por el índice y por el catálogo de patrones en
  martinfowler.com/eaaCatalog, que agrupa "Domain Logic Patterns", "Data
  Source Architectural Patterns" y "Web Presentation Patterns"; el texto
  exacto de la p. 19 no lo leí.)
- [V-cap] Cap. 1, "Choosing Where to Run Your Layers" (p. 22): las capas
  lógicas pueden distribuirse en distintos nodos físicos.
- [V-cap] Cap. 2, "Service Layer" (p. 30): capa de servicios que define el
  límite de la aplicación y coordina la lógica de dominio.

Por qué aplica: vocabulario canónico (presentación / dominio / fuente de
datos) para describir tanto el ERP NestJS (controllers / services /
Prisma) como el servicio FastAPI (routers / lógica de predicción / acceso
a modelos y datos).

### Bass2021 — arquitectura como conjunto de estructuras; capas como estructura de módulos

```bibtex
@book{Bass2021,
  author    = {Bass, Len and Clements, Paul and Kazman, Rick},
  title     = {Software Architecture in Practice},
  edition   = {4},
  series    = {SEI Series in Software Engineering},
  publisher = {Addison-Wesley Professional},
  address   = {Boston, MA},
  year      = {2021},
  isbn      = {9780136886099},
  pagetotal = {464}
}
```

Verificación: ficha InformIT (Addison-Wesley Professional, 3-ago-2021,
ISBN 978-0-13-688609-9, 464 pp.) e índice completo: Parte I cap. 1 "What
Is Software Architecture?", cap. 2 "Why Is Software Architecture
Important?"; Parte II calidad (caps. 3–14: availability, deployability,
energy efficiency, integrability, modifiability, performance, safety,
security, testability, usability); Parte III cap. 15 "Software
Interfaces", cap. 16 "Virtualization", cap. 17 "The Cloud and Distributed
Computing"; Parte IV caps. 19–23 (requisitos arquitectónicamente
significativos, diseño, evaluación, documentación, deuda). Open Library
confirma ISBN y 2021.

Claims:
- [V-cap] Cap. 1: definición de arquitectura de software como el conjunto
  de estructuras necesarias para razonar sobre el sistema (elementos,
  relaciones y propiedades); §1.2 "Architectural Structures and Views"
  (título de sección confirmado por búsqueda) distingue estructuras de
  módulos (entre ellas **layers**), de componentes y conectores, y de
  asignación. La redacción exacta de la definición no la leí en la 4.ª
  ed.; confirmar en el ejemplar antes de entrecomillar.
- [V-cap] Cap. 8 "Modifiability" y cap. 7 "Integrability": atributos de
  calidad que justifican separar el módulo predictivo del ERP (cambiar el
  modelo sin tocar el ERP; integrar FastAPI, MCP y Power BI por
  interfaces).
- [V-cap] Cap. 15 "Software Interfaces" y cap. 17 "The Cloud and
  Distributed Computing": interfaces entre servicios y despliegue
  distribuido (Docker en servidor propio; nube como trabajo futuro).

Por qué aplica: fuente académica de referencia para definir arquitectura y
"separación de responsabilidades" en términos de atributos de calidad, no
sólo de moda tecnológica. La 3.ª ed. (`Bass2012`) ya está en el .bib;
recomiendo migrar a la 4.ª (ver Notas).

### Richards2020 — estilo en capas vs. microservicios, con trade-offs

```bibtex
@book{Richards2020,
  author    = {Richards, Mark and Ford, Neal},
  title     = {Fundamentals of Software Architecture},
  subtitle  = {An Engineering Approach},
  publisher = {O'Reilly Media},
  address   = {Sebastopol, CA},
  year      = {2020},
  isbn      = {9781492043454},
  pagetotal = {432}
}
```

Verificación: Open Library ISBN 9781492043454 (O'Reilly, 11-feb-2020, 432
pp.). Preview oficial (portada, copyright "© 2020 Mark Richards, Neal
Ford", "February 2020: First Edition", índice) y cap. 1 completo (PDF
gratuito de ThoughtWorks) leídos. Índice verificado: Parte II
"Architecture Styles": cap. 9 "Foundations" (119), cap. 10 "Layered
Architecture Style" (133: Topology, Layers of Isolation, Adding Layers,
Other Considerations, Why Use This Architecture Style, Architecture
Characteristics Ratings), cap. 13 "Service-Based Architecture Style"
(163), cap. 17 "Microservices Architecture" (245: History, Topology,
Distributed, Bounded Context, Granularity, Data Isolation, API Layer,
Operational Reuse, Frontends, Communication, Choreography and
Orchestration, Transactions and Sagas, Architecture Characteristics
Ratings), cap. 18 "Choosing the Appropriate Architecture Style" (267).
Existe una 2.ª ed. (2025, ISBN 9781098175511) que no verifiqué; la 1.ª
alcanza.

Claims:
- [V] Cap. 1 (p. 5): las decisiones de arquitectura "define the 'rules'
  for how a system should be constructed. For example, an architect might
  make an architecture decision that only the business and services layer
  within a layered architecture may access the database […] therefore
  restricting the presentation layer from making direct database calls."
- [V-cap] Cap. 10: topología del estilo en capas, "layers of isolation"
  (una capa sólo depende de la inmediata inferior), cuándo usarlo y sus
  calificaciones de atributos de calidad.
- [V-cap] Cap. 17: microservicios como estilo distribuido, con "Bounded
  Context" (DDD), "Data Isolation" (cada servicio dueño de sus datos),
  "API Layer", comunicación, coreografía vs. orquestación, y
  calificaciones de atributos.
- [V-cap] Cap. 18: criterios para elegir estilo (monolito vs. distribuido).

Por qué aplica: pone capas y microservicios en el mismo marco comparativo
con trade-offs explícitos; sirve para justificar que el ERP siga siendo un
monolito en capas y que sólo el módulo predictivo se separe como servicio.

### Newman2021 — microservicios: definición, comunicación y datos propios

```bibtex
@book{Newman2021,
  author    = {Newman, Sam},
  title     = {Building Microservices},
  subtitle  = {Designing Fine-Grained Systems},
  edition   = {2},
  publisher = {O'Reilly Media},
  address   = {Sebastopol, CA},
  year      = {2021},
  isbn      = {9781492034025}
}
```

Verificación: Open Library ISBN 9781492034025 (O'Reilly; el registro dice
2020 y 250 pp., que son datos de preventa — la edición real es de
agosto de 2021, ~616 pp., según AbeBooks/VitalSource; confirmar en el
ejemplar). Índice verificado en samnewman.io: Parte I cap. 1 "What Are
Microservices?", 2 "How to Model Microservices", 3 "Splitting the
Monolith", 4 "Microservice Communication Styles"; Parte II caps. 5–13
(implementación, workflow, build, deployment, testing, observabilidad,
seguridad, resiliencia, escalado); Parte III caps. 14–16 (UI,
organización, arquitecto evolutivo).

Claims:
- [V-cap] Cap. 1: qué es un microservicio (independientemente
  desplegable, modelado alrededor de un dominio de negocio, dueño de su
  propio estado). **No pude verificar la frase textual** de la definición;
  para una cita literal usar Lewis2014.
- [V-cap] Cap. 3: extraer capacidades de un monolito hacia servicios
  (el caso del proyecto: extraer la capacidad "predicción" fuera del ERP).
- [V-cap] Cap. 4: estilos de comunicación síncrona (request/response,
  p. ej. HTTP) vs. asíncrona; lo que el proyecto usa entre NestJS y FastAPI.
- [V-cap] Cap. 11 "Security": autenticación/autorización entre servicios
  (conecta con Keycloak, sección 2.8).

Por qué aplica: manual de referencia para justificar el diseño del
servicio FastAPI como microservicio (frontera, comunicación HTTP,
datos/modelos propios) y sus costos operativos.

### Lewis2014 — definición canónica del estilo microservicios

```bibtex
@online{Lewis2014,
  author  = {Lewis, James and Fowler, Martin},
  title   = {Microservices},
  subtitle = {A definition of this new architectural term},
  year    = {2014},
  month   = mar,
  url     = {https://martinfowler.com/articles/microservices.html},
  urldate = {2026-09-17}
}
```

Verificación: página leída (25-mar-2014).

Claims:
- [V] Definición: "an approach to developing a single application as a
  suite of small services, each running in its own process and
  communicating with lightweight mechanisms, often an HTTP resource API."
- [V] Nueve características: componentization via services; organized
  around business capabilities; products not projects; smart endpoints
  and dumb pipes; decentralized governance; decentralized data
  management; infrastructure automation; design for failure; evolutionary
  design.

Por qué aplica: es el texto que acuñó la definición que todos los libros
citan; permite una cita literal corta. "Decentralized governance" respalda
que el servicio predictivo esté en Python/FastAPI mientras el ERP está en
TypeScript/NestJS.

---

## Opcionales verificadas

### Basili1975 — fuente primaria de "iterative enhancement" (2.6.2)

```bibtex
@article{Basili1975,
  author  = {Basili, Victor R. and Turner, Albert J.},
  title   = {Iterative Enhancement: {A} Practical Technique for Software Development},
  journal = {IEEE Transactions on Software Engineering},
  volume  = {SE-1},
  number  = {4},
  pages   = {390--396},
  year    = {1975},
  doi     = {10.1109/TSE.1975.6312870}
}
```
Verificado por CrossRef (TSE SE-1(4), 390–396, dic. 1975). No leí el
abstract directamente; el claim [V] sale de la cita textual en Larman2003
p. 4 ("start with a simple implementation of a subset of the software
requirements and iteratively enhance…"). Útil si el redactor quiere citar
la definición en su origen y no de segunda mano.

### Cockburn2006 — primer libro bajo la etiqueta "agile" (2.6.1)

```bibtex
@book{Cockburn2006,
  author    = {Cockburn, Alistair},
  title     = {Agile Software Development},
  subtitle  = {The Cooperative Game},
  edition   = {2},
  publisher = {Addison-Wesley Professional},
  address   = {Boston, MA},
  year      = {2006},
  isbn      = {9780321482754}
}
```
Verificado por Open Library (2.ª ed., 19-oct-2006, 504 pp.). Larman2003
(p. 10) afirma que la 1.ª ed. (2002) fue "the first book under the new
appellation" agile. Sólo para un pie histórico; no hace falta para el
temario.

### Sommerville2020 — microservicios en un manual académico (2.6.3)

```bibtex
@book{Sommerville2020,
  author    = {Sommerville, Ian},
  title     = {Engineering Software Products},
  subtitle  = {An Introduction to Modern Software Engineering},
  publisher = {Pearson},
  address   = {Hoboken, NJ},
  year      = {2020},
  isbn      = {9780135210642}
}
```
Verificado: Open Library (Pearson, ISBN 9780135210642, ~432 pp., primera
publicación 2019; copyright 2020 según el sitio del autor) e índice en
iansommerville.com: cap. 4 "Software Architecture" (system decomposition,
distribution architecture), cap. 6 "Microservices Architecture"
(microservices, microservices architecture, RESTful services,
microservice deployment), cap. 5 "Cloud-based Software" (contenedores).
Alternativa académica a Newman2021 si el tribunal prefiere manual
universitario a libro de O'Reilly.

---

## Notas para el redactor

### Keys: existentes vs. nuevas

- **Existentes en `documento.bib`:** `Sommerville2011` (9.ª ed., ISBN
  9780137035151 — correcto para esa edición) y `Bass2012` (3.ª ed., ISBN
  9780321815736 — correcto para esa edición). **Recomendación:**
  reemplazarlas por `Sommerville2016` (10.ª) y `Bass2021` (4.ª). Razones:
  (a) la 10.ª de Sommerville es la que circula en las cátedras y la que
  tiene diapositivas oficiales que verifiqué; el contenido de caps. 2, 3 y
  6 es el mismo salvo el modelo "integration and configuration";
  (b) la 4.ª de Bass agrega "Deployability", "Integrability", "The Cloud
  and Distributed Computing" y "Virtualization", que hablan directamente
  del despliegue en Docker y de la integración FastAPI/MCP/Power BI —
  cosas que la 3.ª no cubre. Si Franco sólo tiene el PDF de la 9.ª/3.ª,
  mantener las keys viejas y ajustar los números de capítulo (en la 9.ª,
  cascada/incremental están en cap. 2 y capas en cap. 6 igual; en la 3.ª
  de Bass, la definición está en cap. 1 y modifiabilidad en cap. 7). No
  citar las dos ediciones de un mismo libro.
- **Nuevas (cargar por Zotero):** Royce1970, Boehm1988, Sommerville2016,
  Pressman2020, Beck2001, ISO12207-2017, Larman2003, Fowler2002, Bass2021,
  Richards2020, Newman2021, Lewis2014; opcionales Basili1975,
  Cockburn2006, Sommerville2020.

### Cómo justificar "iterativo-incremental con 5 incrementos"

Cadena de citas sugerida (todas verificadas): definición de IID
(Larman2003 citando Basili1975) → ejemplos históricos con número fijo de
incrementos (Larman2003: TRW en 5 iteraciones, Trident en 4) → beneficios
del incremental frente a cascada (Sommerville2016 cap. 2) → ISO 12207 no
prescribe modelo de ciclo de vida (ISO12207-2017 §1.4), así que la
elección es del proyecto. El argumento de "conviene cuando el alcance se
fija por incrementos" es una inferencia del redactor apoyada en Mil-Std-498
vía Larman2003 ("Each build implements a specified subset of the planned
capabilities"); no atribuírselo literalmente a Sommerville ni a Pressman.

### Claims sin fuente verificada (no afirmar sin cita o buscar una)

1. **Cuadrantes del espiral** (Boehm1988): están en el cuerpo (Fig. 2),
   no en el abstract. Citar con figura sólo tras leer el PDF.
2. **Definición textual de arquitectura** de Bass2021 ("set of structures
   needed to reason about the system…"): la 3.ª ed. la tiene en cap. 1;
   en la 4.ª el título de §1.2 lo confirma pero no leí el texto.
3. **Definición textual de microservicio** de Newman2021 cap. 1: no
   verificada; usar Lewis2014 para la cita literal.
4. **Números de sección de Pressman2020** (cap. 2): no verificados para la
   9.ª ed.; citar el capítulo.
5. **Texto de "The Three Principal Layers"** (Fowler2002 p. 19): título y
   página verificados por índice; el contenido, por el catálogo web. No
   entrecomillar.
6. **Año de Sommerville 10.ª ed.:** Open Library dice abril 2015; el
   copyright impreso y la cita habitual es 2016. Confirmar en portada.
7. **Fecha/paginación de Newman2021:** Open Library tiene datos de
   preventa (2020, 250 pp.); las fuentes comerciales dicen 30-ago-2021,
   616 pp. Confirmar en el ejemplar o en Zotero al importar por ISBN.
8. **"Microservicio" aplicado al servicio FastAPI del proyecto:** ninguna
   fuente lo dice, obviamente; es una decisión de diseño que se
   *justifica* con Lewis2014 (proceso propio, HTTP), Richards2020 cap. 17
   (data isolation, API layer) y Newman2021 cap. 3–4. Redactarlo como
   decisión, no como "según X el módulo es un microservicio".
9. **DOI de Royce1970:** no existe para el original; la reimpresión ICSE
   '87 sólo tiene ID de ACM (10.5555/…), que no es DOI. Dejar `doi` vacío.

### Fuera de alcance (no investigado a propósito)

Scrum/XP en detalle, DevOps/CI-CD, DDD como método, y arquitectura
hexagonal/clean: no están en el temario de 2.6 ni en el brief. Si el
redactor los necesita, pedir un brief aparte.
