# Brief de investigación — 2.1 Sistemas ERP (Cap. II)

Fecha: 2026-09-16. Investigador. Verificación: CrossRef (DOI), OpenAlex,
Semantic Scholar, Open Library (ISBN), páginas de editorial/repositorio
institucional. Todo lo que no pude verificar está marcado como tal. Las
entradas BibLaTeX son candidatas: se cargan por Zotero
(`documento/09-setup-zotero.md`), no a mano.

Resumen: 14 fuentes núcleo verificadas + 2 opcionales. Dos keys ya existen
en `documento.bib` (`Rashid2019`, `MLdrivenERP2023`); **`Rashid2019` tiene
autores, año y DOI incorrectos** — ver "Notas para el redactor".

Convención de claims: **[V]** = verificado en abstract/texto/landing page;
**[V-cap]** = verificado a nivel de capítulo/obra (título, editorial,
ISBN), el contenido puntual viene del índice conocido de la obra y hay que
confirmarlo en el ejemplar antes de citar página; **[NV]** = no verificado
(sólo por snippet o conocimiento general): no citar como afirmación de la
fuente hasta leer el PDF.

---

## 2.1.1 Definición y Características

### Davenport1998

```bibtex
@article{Davenport1998,
  author  = {Davenport, Thomas H.},
  title   = {Putting the Enterprise into the Enterprise System},
  journal = {Harvard Business Review},
  volume  = {76},
  number  = {4},
  pages   = {121--131},
  year    = {1998},
  note    = {PMID 10181586}
}
```

Verificación: hbr.org (título, autor, número julio–agosto 1998); OpenAlex
W1524237663 (vol. 76, n.º 4, pp. 121–131, PMID 10181586, ~3.270 citas).
Sin DOI: HBR no asigna. Abstract leído vía OpenAlex/PubMed.

Claims:
- [V] Los sistemas empresariales (enterprise systems) son paquetes
  comerciales que prometen "the seamless integration of all the
  information flowing through a company — financial and accounting
  information, human resource information, supply chain information,
  customer information" (párrafo de apertura, hbr.org).
- [V] Reemplazan sistemas heredados dispersos e incompatibles; el atractivo
  es la integración frente a "incompatible information systems and
  inconsistent operating practices".
- [V] Riesgo central: a diferencia del software desarrollado en casa, el
  paquete comercial **impone su propia lógica** sobre la estrategia, la
  organización y la cultura de la empresa, forzando a la organización a
  adaptarse (abstract). Cita el caso FoxMeyer Drug como implementación
  fallida.
- [V] La adopción debe ser responsabilidad de la gerencia general, no sólo
  de los tecnólogos (abstract).

Por qué aplica: definición clásica y citable de ERP como integración de la
información en un sistema único; y es la fuente canónica del argumento
"paquete impone lógica vs. desarrollo propio", que justifica por qué ISI
Mustang mantiene un ERP a medida.

### Klaus2000

```bibtex
@article{Klaus2000,
  author  = {Klaus, Helmut and Rosemann, Michael and Gable, Guy G.},
  title   = {What is {ERP}?},
  journal = {Information Systems Frontiers},
  volume  = {2},
  number  = {2},
  pages   = {141--162},
  year    = {2000},
  doi     = {10.1023/A:1026543906354}
}
```

Verificación: CrossRef DOI (Springer, 2(2), 141–162, 2000); OpenAlex ~700
citas. Abstract completo no accesible por API (Springer redirige a login;
ACM 403; Ovid 402). Lo que sigue viene de la landing page de QUT ePrints
(eprints.qut.edu.au/40347) y del snippet de búsqueda.

Claims:
- [V] Mediante análisis histórico, meta-análisis de literatura de SI y
  encuesta a expertos, los autores muestran visiones divergentes sobre el
  fenómeno ERP y concluyen que "it is unlikely that at this stage a broadly
  agreed definition of ERP can be achieved" (descripción QUT ePrints).
- [V] Objetivo declarado: facilitar la comunicación entre investigadores y
  practicantes y orientar el desarrollo curricular (QUT ePrints).
- [NV] Evolución MRP → MRP II → ERP y ERP como "paquete de software
  estándar" integrado: es el contenido conocido de la sección histórica del
  paper, pero **no lo pude confirmar con el abstract**. Confirmar en el PDF
  (QUT ePrints lo ofrece en acceso abierto) antes de citar.

Por qué aplica: sirve para abrir 2.1.1 reconociendo que "ERP" no tiene
una definición única y para presentar la evolución histórica (una vez
confirmada en el PDF).

### Jacobs2007

```bibtex
@article{Jacobs2007,
  author  = {Jacobs, F. Robert and Weston, F. C. `Ted', Jr.},
  title   = {Enterprise resource planning ({ERP})---{A} brief history},
  journal = {Journal of Operations Management},
  volume  = {25},
  number  = {2},
  pages   = {357--363},
  year    = {2007},
  doi     = {10.1016/j.jom.2006.11.005}
}
```

Verificación: CrossRef DOI (JOM 25(2), 357–363, 2007; abstract incluido);
Semantic Scholar ~410 citas.

Claims:
- [V] "This is a brief history of ERP—enterprise resource planning. Major
  ERP vendors are discussed as well as the major impact of developments in
  computer hardware and software on the industry" (abstract CrossRef).
- [NV] El término ERP fue acuñado a comienzos de los 90 por Gartner Group
  (Wylie 1990, "A vision of the next-generation MRP II") como sucesor de
  MRP (material requirements planning) y MRP II (manufacturing resource
  planning). Viene de snippets de búsqueda sobre el cuerpo del paper, no
  del abstract. Confirmar en el PDF antes de citar.

Por qué aplica: es la fuente más citada para el párrafo de evolución
MRP → MRP II → ERP; sólo requiere leer el PDF (7 páginas) para fijar la
página exacta.

### Umble2003

```bibtex
@article{Umble2003,
  author  = {Umble, Elisabeth J. and Haft, Ronald R. and Umble, M. Michael},
  title   = {Enterprise resource planning: {Implementation} procedures and critical success factors},
  journal = {European Journal of Operational Research},
  volume  = {146},
  number  = {2},
  pages   = {241--257},
  year    = {2003},
  doi     = {10.1016/S0377-2217(02)00547-7}
}
```

Verificación: CrossRef DOI (EJOR 146(2), 241–257, 2003); ~1.600–1.900
citas (OpenAlex / Semantic Scholar). Abstract obtenido vía RePEc/IDEAS
(ideas.repec.org/a/eee/ejores/v146y2003i2p241-257.html).

Claims:
- [V] "Enterprise resource planning (ERP) systems are highly complex
  information systems. The implementation of these systems is a difficult
  and high cost proposition that places tremendous demands on corporate
  time and resources."
- [V] "Many ERP implementations have been classified as failures because
  they did not achieve predetermined corporate goals."
- [V] Identifica factores críticos de éxito, pasos de selección de software
  y procedimientos de implementación; presenta un caso de implementación
  mayormente exitosa.

Por qué aplica: respalda la parte de "riesgos de implementación" y
factores críticos de éxito en 2.1.1, y sirve de contraste con la
implementación incremental de un ERP propio.

### Shang2002

```bibtex
@article{Shang2002,
  author  = {Shang, Shari and Seddon, Peter B.},
  title   = {Assessing and managing the benefits of enterprise systems: the business manager's perspective},
  journal = {Information Systems Journal},
  volume  = {12},
  number  = {4},
  pages   = {271--299},
  year    = {2002},
  doi     = {10.1046/j.1365-2575.2002.00132.x}
}
```

Verificación: CrossRef DOI (ISJ 12(4), 271–299, Wiley, 2002); abstract
completo vía OpenAlex (~760 citas).

Claims:
- [V] Propone un marco de beneficios de los sistemas empresariales basado
  en 233 casos reportados por proveedores y entrevistas con gerentes de 34
  organizaciones.
- [V] Consolida los beneficios en **cinco dimensiones: operacional,
  gerencial, estratégica, de infraestructura de TI y organizacional**.
- [V] Los beneficios se evalúan años después de la implementación
  (perspectiva longitudinal, "perceived net benefit flow").

Por qué aplica: taxonomía citable para el párrafo de "beneficios" de
2.1.1; la dimensión gerencial (mejor información para decidir) es el
enlace natural hacia el módulo predictivo.

### Olsen2007

```bibtex
@article{Olsen2007,
  author  = {Olsen, Kai A. and S{\ae}tre, Per},
  title   = {{ERP} for {SMEs} -- is proprietary software an alternative?},
  journal = {Business Process Management Journal},
  volume  = {13},
  number  = {3},
  pages   = {379--389},
  year    = {2007},
  doi     = {10.1108/14637150710752290}
}
```

Verificación: OpenAlex por DOI (BPMJ 13(3), 379–389, Emerald, 2007, ~74
citas); abstract completo. Ojo: el DOI que aparece en algunas listas
(…10752353) es incorrecto; el válido es **…10752290**.

Claims:
- [V] Para muchas PyMEs, desarrollar software propio ("proprietary",
  in-house) es una alternativa óptima: control total, flexibilidad y
  adaptación a requisitos específicos.
- [V] Las herramientas modernas de desarrollo hacen viable el desarrollo
  propio, con costos "often comparable" a implementar un ERP estándar.
- [V] El desarrollo propio no cubre todas las necesidades, pero integrar
  componentes comerciales con desarrollo a medida es manejable.
- [V] Cuando el software soporta el núcleo del negocio, el desarrollo
  propio da ventaja competitiva; los ERP estándar pueden tener "rigid
  structures" que amenazan la dinámica organizacional.

Por qué aplica: es la fuente directa para justificar el ERP a medida de
ISI Mustang (PyME de ingeniería con procesos específicos: certificaciones,
centros de costo, viáticos) frente a un paquete comercial.

### MonkWagner2013

```bibtex
@book{MonkWagner2013,
  author    = {Monk, Ellen F. and Wagner, Bret J.},
  title     = {Concepts in Enterprise Resource Planning},
  edition   = {4},
  publisher = {Course Technology, Cengage Learning},
  address   = {Boston, MA},
  year      = {2013},
  isbn      = {9781111820398},
  pagetotal = {272}
}
```

Verificación: Open Library ISBN 9781111820398 (Course Technology, fecha de
publicación 2012, 272 pp., autores Ellen Monk y Bret Wagner). El número de
edición (4.ª) y el año de copyright 2013 son de conocimiento general de la
obra, **no verificados** por Open Library; confirmar en la portada del
ejemplar (si el ejemplar dice 2012, usar 2012).

Claims:
- [V-cap] Libro de texto introductorio sobre ERP; por su índice conocido:
  cap. 1 funciones y procesos de negocio, cap. 2 desarrollo/evolución de
  los sistemas ERP (MRP, MRP II, ERP, SAP R/3), caps. 3–6 procesos de
  ventas, producción, contabilidad y RR.HH. dentro del ERP, cap. 7
  implementación. Índice no verificado por API — confirmar en el ejemplar.

Por qué aplica: fuente de manual para definir módulos, base de datos común
y procesos estandarizados sin depender de artículos; opcional si el
redactor prefiere sólo artículos.

### Laudon2022

```bibtex
@book{Laudon2022,
  author    = {Laudon, Kenneth C. and Laudon, Jane P.},
  title     = {Management Information Systems},
  subtitle  = {Managing the Digital Firm},
  edition   = {17, Global Edition},
  publisher = {Pearson},
  address   = {Harlow},
  year      = {2022},
  isbn      = {9781292417752}
}
```

Verificación: Open Library ISBN 9781292417752 (Pearson Education Limited,
2022, subtítulo "Managing the Digital Firm, Global Edition"); página de
Pearson en resultados de búsqueda confirma "17th Edition". Índice interno
no verificado.

Claims:
- [V-cap] Texto general de SI que trata los "enterprise systems" (ERP) como
  aplicación empresarial integrada sobre una base de datos central (cap. 9
  en ediciones recientes, "Achieving Operational Excellence and Customer
  Intimacy: Enterprise Applications"). Número de capítulo de índice
  conocido, **no verificado** — confirmar en el ejemplar.

Por qué aplica: referencia de libro de texto ampliamente aceptada por
tribunales para la definición básica de ERP; usar sólo si se confirma el
capítulo.

---

## 2.1.2 ERP en Empresas de Ingeniería

### Shi2003

```bibtex
@article{Shi2003,
  author  = {Shi, Jonathan Jingsheng and Halpin, Daniel W.},
  title   = {Enterprise Resource Planning for Construction Business Management},
  journal = {Journal of Construction Engineering and Management},
  volume  = {129},
  number  = {2},
  pages   = {214--221},
  year    = {2003},
  doi     = {10.1061/(ASCE)0733-9364(2003)129:2(214)}
}
```

Verificación: OpenAlex por DOI (JCEM 129(2), 214–221, ASCE, 2003, ~93
citas); abstract completo.

Claims:
- [V] El ERP se originó en manufactura y provee un entorno integrado que
  permite "an enterprise to integrate its major business management
  functions with one single common database so that information can be
  shared and efficient communications can be achieved between management
  functions".
- [V] La naturaleza particular de la industria de la construcción impide
  adoptar directamente los sistemas orientados a manufactura; los autores
  proponen las características fundamentales de un ERP para construcción
  (CERP), incluyendo funciones de gestión de proyectos, técnicas de
  planificación avanzada y estandarización.

Por qué aplica: (a) definición operativa de ERP con base de datos común,
citable en 2.1.1; (b) fundamenta el contraste "ERP orientado a
manufactura vs. orientado a proyectos" que pide 2.1.2 y explica por qué una
empresa EPC necesita funciones de proyecto que un ERP genérico no trae.

### Chung2008

```bibtex
@article{Chung2008,
  author  = {Chung, Boo Young and Skibniewski, Miros{\l}aw J. and Lucas, Henry C., Jr. and Kwak, Young Hoon},
  title   = {Analyzing Enterprise Resource Planning System Implementation Success Factors in the Engineering--Construction Industry},
  journal = {Journal of Computing in Civil Engineering},
  volume  = {22},
  number  = {6},
  pages   = {373--382},
  year    = {2008},
  doi     = {10.1061/(ASCE)0887-3801(2008)22:6(373)}
}
```

Verificación: OpenAlex por DOI (JCCE 22(6), 373–382, ASCE, 2008, ~125
citas); abstract completo.

Claims:
- [V] "Enterprise resource planning (ERP) systems offer many benefits to
  the engineering–construction industry"; sin embargo muchas firmas
  "still hesitate to adopt these systems due to high cost, uncertainties,
  and risks".
- [V] Identifica factores críticos de éxito/fracaso e indicadores para
  evaluar el éxito del ERP en firmas de ingeniería-construcción, y propone
  un modelo de SI que relaciona factores e indicadores.

Por qué aplica: riesgos y factores de éxito específicos del sector
ingeniería-construcción (más cercano a una EPC que Umble2003, que es
genérico).

### Skibniewski2009

```bibtex
@article{Skibniewski2009,
  author  = {Skibniewski, Miros{\l}aw J. and Ghosh, Saumyendu},
  title   = {Determination of Key Performance Indicators with Enterprise Resource Planning Systems in Engineering Construction Firms},
  journal = {Journal of Construction Engineering and Management},
  volume  = {135},
  number  = {10},
  pages   = {965--978},
  year    = {2009},
  doi     = {10.1061/(ASCE)0733-9364(2009)135:10(965)}
}
```

Verificación: OpenAlex por DOI (JCEM 135(10), 965–978, ASCE, 2009, ~114
citas); abstract completo.

Claims:
- [V] Pregunta central: qué áreas de procesos de negocio de la construcción
  **no** pueden ser cubiertas por el ERP para recolectar KPIs; revisa
  procesos empíricos y especializados del sector no cubiertos por los ERP
  existentes.
- [V] Define KPI con dos dimensiones, especificidad de conocimiento y
  especificidad temporal; encuesta a "ERP-enablers" de grandes firmas de
  ingeniería-construcción en EE. UU.

Por qué aplica: conecta el ERP con **indicadores de desempeño de
proyectos** (como los desvíos de costo/ingreso y avance del portal viejo de
ISI Mustang) y muestra que hay procesos de proyecto que los ERP estándar no
cubren — argumento para el desarrollo propio y para los módulos
faltantes (3.2 / incremento 4.1).

---

## 2.1.3 ERP en el Sector de Petróleo, Gas y Minería

### AlJafari2018 (reemplaza a `Rashid2019`)

```bibtex
@inproceedings{AlJafari2018,
  author    = {Al Jafari, Ashraf and Nair, Smitha Sunil Kumaran},
  title     = {{ERP} Implementation in the Oil and Gas Sector: {A} Case Study in Sultanate of Oman},
  booktitle = {2018 7th International Conference on Reliability, Infocom Technologies and Optimization (Trends and Future Directions) ({ICRITO})},
  pages     = {848--854},
  publisher = {IEEE},
  address   = {Noida, India},
  year      = {2018},
  doi       = {10.1109/ICRITO.2018.8748779}
}
```

Verificación: CrossRef DOI 10.1109/ICRITO.2018.8748779 (título, autores
Ashraf AL Jafari y Smitha Sunil Kumaran Nair, ICRITO 2018, pp. 848–854,
IEEE); Semantic Scholar (abstract, ~5 citas); OpenAlex (~6 citas).
**El DOI 10.1109/ICCISci.2019.8748779 de `Rashid2019` no existe** (404 en
CrossRef y OpenAlex); los autores "Rashid & Al-Azri" y el año 2019 no
corresponden a ningún registro con este título.

Claims:
- [V] "The role of Enterprise Resource Planning (ERP) systems in Oil and
  Gas sector cannot be denied"; el estudio analiza cómo la implementación
  del ERP influye en la eficiencia y productividad del sector en Omán.
- [V] Metodología mixta (cualitativa y cuantitativa) con retroalimentación
  de usuarios finales sobre el impacto del ERP, además de literatura.
- [V] Conclusión: "Oil and Gas industries should implement ERP system to
  boost its growth in all aspects".

Por qué aplica: caso de ERP en petróleo y gas con enfoque mixto (mismo
enfoque metodológico del proyecto). Es un paper de conferencia poco citado:
usarlo como caso, no como autoridad teórica.

### Ali2023

```bibtex
@article{Ali2023,
  author  = {Ali, Mohammed and Edghiem, Farag and Alkhalifah, Eman Saleh},
  title   = {Cultural Challenges of {ERP} Implementation in {Middle-Eastern} Oil \& Gas Sector: {An} Action Research Approach},
  journal = {Systemic Practice and Action Research},
  volume  = {36},
  number  = {1},
  pages   = {111--140},
  year    = {2023},
  doi     = {10.1007/s11213-022-09600-4}
}
```

Verificación: CrossRef DOI (SPAR 36(1), 111–140, 2023; online 31-05-2022);
abstract vía Semantic Scholar (~19 citas).

Claims:
- [V] Investigación-acción (documentos, observación, entrevistas) sobre
  barreras culturales a la implementación de ERP en el sector de petróleo y
  gas de Medio Oriente, en las fases de planificación, ejecución y
  post-implementación.
- [V] Barreras identificadas: "team conflict, managerial authority, and a
  lack of an IT culture", falta de compromiso con la capacitación y
  tecnofobia, "all of which contributed to the project's delay".

Por qué aplica: retos organizacionales de implementar ERP en oil & gas;
útil para la parte de "retos del sector" y para anticipar resistencia al
uso de un módulo predictivo.

### Gool2018

```bibtex
@inproceedings{Gool2018,
  author    = {Gool, Sharif and Seymour, Lisa F.},
  title     = {Managing Enterprise Resource Planning System Customisation Post-Implementation -- {The} Case of an {African} Petroleum Organisation},
  booktitle = {Proceedings of the 20th International Conference on Enterprise Information Systems ({ICEIS} 2018)},
  volume    = {2},
  pages     = {111--119},
  publisher = {SCITEPRESS},
  year      = {2018},
  doi       = {10.5220/0006676401110119}
}
```

Verificación: OpenAlex por DOI (ICEIS 2018, pp. 111–119); abstract
completo en scitepress.org. Poco citado (~2).

Claims:
- [V] Dilema central de implementar ERP: "when to customise the ERP system
  to match organisational requirements and when to rather change business
  processes to fit standard ERP delivered functionality".
- [V] Caso interpretativo único en una petrolera multinacional africana;
  identifica razones para personalizar el ERP después de implementado y
  prácticas para gestionarlo (capacitación, eliminación sistemática de
  modificaciones, procesos de aprobación).

Por qué aplica: muestra que en petróleo la personalización del ERP es una
necesidad continua, no un evento único — refuerza la decisión de ERP a
medida y la naturaleza iterativa del desarrollo.

### Larasati2023

```bibtex
@article{Larasati2023,
  author  = {Larasati, Shinta Dewi and Eitiveni, Imairi and Mahardhika, Pramudya},
  title   = {Analysis of {ERP} Critical Failure Factors: {A} Case Study in an {Indonesian} Mining Company},
  journal = {Jurnal Sistem Informasi},
  volume  = {19},
  number  = {2},
  pages   = {34--47},
  year    = {2023},
  doi     = {10.21609/jsi.v19i2.1291}
}
```

Verificación: CrossRef DOI (Jurnal Sistem Informasi 19(2), 34–47, Fac. of
Computer Science, Universitas Indonesia, 2023); abstract completo vía
OpenAlex (~6 citas). Revista nacional indonesia, no indexada en Scopus
hasta donde sé: es la única fuente con DOI y abstract sobre ERP en minería
que encontré; usar como caso ilustrativo, no como autoridad.

Claims:
- [V] Caso en una empresa minera ("Company XYZ"); cuestionario a gerencia y
  empleados, ranking de factores de fracaso con TOPSIS.
- [V] Los dos factores críticos de fracaso más importantes: "bad
  understanding of organization's business processes and poor business
  process reengineering".
- [V] Cifra citada en el abstract: "Around 70% of ERP fails to produce
  expected benefits" — es una afirmación de segunda mano de los autores; no
  reproducir la cifra sin rastrear su origen.

Por qué aplica: único caso de minería verificado; el hallazgo (entender los
procesos antes de sistematizar) coincide con el enfoque de documentar
flujos (parte A de `docs/documentation/`) antes de reimplementar.

### MLdrivenERP2023 (ya en `documento.bib`) — puente hacia 2.2 y 2.4

```bibtex
@article{MLdrivenERP2023,
  author  = {Jawad, Zainab Nadhim and Vill{\'a}nyi, Bal{\'a}zs},
  title   = {Machine learning-driven optimization of enterprise resource planning ({ERP}) systems: a comprehensive review},
  journal = {Beni-Suef University Journal of Basic and Applied Sciences},
  volume  = {13},
  number  = {1},
  pages   = {4},
  year    = {2024},
  doi     = {10.1186/s43088-023-00460-y}
}
```

Verificación: OpenAlex por DOI (vol. 13, issue 1, artículo 4, 2024);
abstract completo. La entrada existente en `documento.bib` tiene autores y
DOI correctos, pero `number = {4}` es el número de artículo, no el issue
(que es 1); corregir por Zotero.

Claims:
- [V] Revisión de la integración de ML con sistemas ERP: los algoritmos de
  ML extraen patrones complejos de grandes conjuntos de datos, lo que
  permite a las plataformas ERP generar "more precise forecasts" y tomar
  decisiones informadas.
- [V] Los ERP potenciados con ML se adaptan dinámicamente a partir de datos
  en tiempo real, con mejoras en eficiencia operativa y flexibilidad;
  creciente énfasis en interpretabilidad para los stakeholders.

Por qué aplica: cierra 2.1.3 con el ERP como fuente de datos para analítica
predictiva y abre 2.2/2.4. Nota: la revista es de perfil general (Springer
Open, Q3–Q4); como es una revisión, sirve para el puente, no como evidencia
empírica.

---

## Opcionales verificadas

### Haynes2016 — ERP y auditoría continua en oil & gas (2.1.3)

```bibtex
@article{Haynes2016,
  author  = {Haynes, Robin and Li, Chunyan},
  title   = {Continuous Audit and Enterprise Resource Planning Systems: {A} Case Study of {ERP} Rollouts in the {Houston}, {TX} Oil and Gas Industries},
  journal = {Journal of Emerging Technologies in Accounting},
  volume  = {13},
  number  = {1},
  pages   = {171--179},
  year    = {2016},
  doi     = {10.2308/jeta-51446}
}
```
Verificado por OpenAlex (abstract completo, ~12 citas). Claim [V]: caso en
un conglomerado energético de Houston; la adopción de ERP mejoró la
eficiencia, redujo el riesgo de fraude y fortaleció la aplicación del
conocimiento; la mitigación de fraude depende de ERP con funciones de
auditoría continua. Útil sólo si el redactor quiere un caso en EE. UU.
además de Omán/Medio Oriente/África.

### Light2005 — personalización de paquetes ERP (2.1.1)

```bibtex
@article{Light2005,
  author  = {Light, Ben},
  title   = {Going beyond `misfit' as a reason for {ERP} package customisation},
  journal = {Computers in Industry},
  volume  = {56},
  number  = {6},
  pages   = {606--619},
  year    = {2005},
  doi     = {10.1016/j.compind.2005.02.008}
}
```
Verificado sólo en metadatos (OpenAlex); **abstract no disponible por
API**. Por el título, trata razones de personalización de paquetes ERP más
allá del desajuste organización–sistema. No citar contenido sin leer el
PDF; Olsen2007 + Gool2018 cubren el punto.

---

## Notas para el redactor

### Keys: existentes vs. nuevas

- **`Rashid2019` — NO USAR tal como está.** El DOI
  10.1109/ICCISci.2019.8748779 no existe (404 en CrossRef y OpenAlex) y los
  autores "Rashid & Al-Azri" no corresponden a ningún registro. El paper
  real con ese título es **Al Jafari & Nair, ICRITO 2018, pp. 848–854, DOI
  10.1109/ICRITO.2018.8748779**. Reemplazar por `AlJafari2018` vía Zotero
  y actualizar cualquier `\cite{Rashid2019}` en `perfil/` o capítulos.
- **`MLdrivenERP2023` — reutilizar.** Autores, año y DOI correctos;
  corregir `number` (issue 1, artículo 4).
- **Nuevas (cargar por Zotero):** Davenport1998, Klaus2000, Jacobs2007,
  Umble2003, Shang2002, Olsen2007, MonkWagner2013, Laudon2022, Shi2003,
  Chung2008, Skibniewski2009, AlJafari2018, Ali2023, Gool2018,
  Larasati2023; opcionales Haynes2016, Light2005.

### Claims sin fuente verificada (no afirmar sin cita o buscar una)

1. **Evolución MRP → MRP II → ERP** y "ERP acuñado por Gartner en 1990":
   Jacobs2007 y Klaus2000 lo tratan en el cuerpo, pero no lo pude
   confirmar con abstracts. Leer uno de los dos PDFs (Klaus2000 está en
   acceso abierto en QUT ePrints) y citar con página. MonkWagner2013 cap. 2
   también lo cubre, pero el índice no está verificado.
2. **Características canónicas "modularidad, integración, procesos
   estandarizados" como lista:** ninguna fuente verificada las enumera así
   en el abstract. Davenport1998 respalda "integración" y "el paquete
   impone sus procesos"; Shi2003 respalda "base de datos única común". La
   "modularidad" sólo la respaldan los libros de texto [V-cap] — confirmar
   capítulo en el ejemplar o redactarla como descripción propia.
3. **Gestión de proyectos dentro del ERP (centros de costo, horas,
   compras, presupuesto, certificación/facturación por avance):** no
   encontré una fuente que describa exactamente ese conjunto de módulos
   "project-based ERP". Lo más cercano: Shi2003 (funciones de gestión de
   proyectos como requisito de un CERP) y Skibniewski2009 (procesos de
   proyecto no cubiertos por ERP estándar). El detalle de módulos debe
   redactarse a partir de `03-contexto-tecnico-erp.md` y
   `docs/documentation/` como descripción del sistema propio, no como
   afirmación de la literatura. Si se quiere una cita de "ERP orientado a
   proyectos" en general, hace falta una búsqueda puntual adicional.
4. **ERP en minería:** sólo Larasati2023 (revista nacional). No encontré
   casos en revistas indexadas con DOI y abstract accesibles. Si el
   redactor necesita más peso, alternativa honesta: tratar oil & gas y
   minería juntos como "industrias extractivas / EPC" y apoyarse en
   AlJafari2018, Ali2023 y Gool2018, dejando explícito que la literatura
   específica de minería es escasa.
5. **Cifras de tasa de fracaso de ERP** (p. ej. "70%"): sólo aparecen de
   segunda mano (Larasati2023). Umble2003 afirma "many ERP implementations
   have been classified as failures" sin cifra. No poner porcentaje sin
   fuente primaria.
6. **Números de capítulo de MonkWagner2013 y Laudon2022:** índice de
   memoria, no verificado por API. Confirmar en el ejemplar.
7. **Ediciones/años de libros:** MonkWagner2013 — Open Library dice 2012;
   el "4.ª ed., 2013" es conocimiento general. Usar el año que figure en la
   portada del ejemplar.

## Verificaciones posteriores (2026-09-17, redactor, sobre PDF completo)

- **Klaus2000** (eprint QUT, `https://eprints.qut.edu.au/40347/1/c40347.pdf`):
  [V] §2.2 "The evolution of ERP" trata explícitamente MRP → MRP II → ERP
  ("MRP evolved into MRP II… The concept of a totally integrated enterprise
  solution is now called ERP"). El eprint no lleva la paginación de
  Springer (141–162); fijar página con el ejemplar si el tribunal la exige.
- MonkWagner2013 y Laudon2022 ya no se citan en 2.1 (oración eliminada en
  la corrección). Rashid2019 reemplazada en `documento.bib` por AlJafari2018.
