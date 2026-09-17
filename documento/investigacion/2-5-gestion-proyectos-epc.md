# Brief de investigación — 2.5 Gestión de Proyectos EPC (Cap. II)

Fecha: 2026-09-17. Investigador. Verificación: CrossRef (DOI), OpenAlex,
Semantic Scholar, Open Library (ISBN), fidic.org, wiley.com, ANSI webstore.
Todo lo que no pude verificar está marcado. Las entradas BibLaTeX son
candidatas: se cargan por Zotero (`documento/09-setup-zotero.md`), no a mano.

Resumen: 12 fuentes núcleo verificadas en metadatos (10 con contenido
verificado por abstract o descripción editorial) + 3 opcionales. **Las dos keys
existentes en `documento.bib` (`CostOverrunsEPC2022`, `EPCleadingIndicators2018`)
tienen autores falsos**; ver "Notas para el redactor".

Convención: **[V]** = verificado en abstract/texto/descripción oficial;
**[V-cap]** = metadatos verificados, número de sección/cláusula tomado de
fuentes secundarias o del índice conocido, confirmar en el PDF antes de citar;
**[NV]** = no verificado, no afirmar con esa cita.

---

## 2.5.1 Definición y Características

### FIDIC2017

```bibtex
@book{FIDIC2017,
  author    = {{FIDIC}},
  title     = {Conditions of Contract for {EPC}/Turnkey Projects},
  subtitle  = {Silver Book},
  edition   = {2},
  publisher = {F{\'e}d{\'e}ration Internationale des Ing{\'e}nieurs-Conseils},
  address   = {Geneva},
  year      = {2017},
  isbn      = {9782884320832},
  pagetotal = {228},
  note      = {Reimpresión 2022 con enmiendas}
}
```

Verificación: fidic.org/books (ISBN 978-2-88432-083-2, 2.ª ed. 2017,
reimpresa nov. 2022, A4, 228 pp.); RIBA Books confirma el mismo ISBN.

Claims:
- [V] (descripción oficial FIDIC) Es la forma contractual para proyectos EPC
  "llave en mano" en los que el contratista asume la responsabilidad integral
  del diseño y la ejecución bajo un único contrato.
- [V] (descripción oficial) FIDIC lo declara **no apto** cuando el comitente
  pretende supervisar de cerca la obra o cuando hay obra subterránea
  sustancial que los oferentes no pueden inspeccionar — es decir, es la forma
  en que más riesgo se traslada al contratista a cambio de mayor certeza de
  precio y plazo para el cliente. (La frase "mayor certeza de precio y plazo"
  es la lectura estándar; el texto verbatim de la introducción no lo
  verifiqué — [V-cap], confirmar en las "Notes"/introducción del PDF.)
- [V-cap] Cláusula 14 "Contract Price and Payment": el contratista presenta
  Statements periódicos (Sub-cl. 14.3) y, a diferencia de Red/Yellow Book,
  **no hay Ingeniero**: el Comitente (Employer) es quien evalúa y paga
  (comentario de Howard Kennedy sobre la suite 2017: "no equivalent
  provision in the 2017 Silver Book" para la certificación del Ingeniero).
  Confirmar numeración 14.3/14.6/14.4 en el PDF.
- [V] (fidic.org) Sucede a la 1.ª edición de 1999, "in widespread use for
  nearly two decades".

Por qué aplica: fuente primaria y normativa para definir "contrato EPC" y
"llave en mano" y para el punto de que el riesgo se traslada al contratista
— justo la posición de ISI Mustang.

### Galloway2009

```bibtex
@article{Galloway2009,
  author  = {Galloway, Patricia},
  title   = {Design-Build/{EPC} Contractor's Heightened Risk---{Changes} in a Changing World},
  journal = {Journal of Legal Affairs and Dispute Resolution in Engineering and Construction},
  volume  = {1},
  number  = {1},
  pages   = {7--15},
  year    = {2009},
  doi     = {10.1061/(ASCE)1943-4162(2009)1:1(7)}
}
```

Verificación: CrossRef DOI (ASCE, 1(1), 7–15, 2009); abstract vía OpenAlex.

Claims:
- [V] El propietario ve al contratista design-build/EPC como "a one-stop
  shop and last stop for all costs incurred for a project—from inception to
  project closeout".
- [V] Aunque el EPC "can potentially save millions of dollars up front, as
  well as paid in change orders", "may not be the silver bullet" que se
  percibe; el cambio (change) es el problema mal definido en ese entorno.

Por qué aplica: respalda con una fuente ASCE la afirmación "riesgo
trasladado al contratista" y conecta con los cambios de alcance como
origen de desviaciones (puente a 2.5.3).

### Yeo2002

```bibtex
@article{Yeo2002,
  author  = {Yeo, K. T. and Ning, J. H.},
  title   = {Integrating supply chain and critical chain concepts in engineer-procure-construct ({EPC}) projects},
  journal = {International Journal of Project Management},
  volume  = {20},
  number  = {4},
  pages   = {253--262},
  year    = {2002},
  doi     = {10.1016/S0263-7863(01)00021-7}
}
```

Verificación: CrossRef DOI (IJPM 20(4), 253–262, 2002). **Ojo**: el DOI
que suele circular, `…(01)00042-9`, no existe; el correcto es
`…(01)00021-7`. Abstract **no disponible** en OpenAlex ni Semantic Scholar
(elidido por Elsevier); ScienceDirect y ResearchGate devolvieron 403.

Claims:
- [V] (TLDR de Semantic Scholar) Propone un marco de procura para EPC que
  acopla Supply Chain Management con Critical Chain Project Management
  (Teoría de Restricciones).
- [NV-abstract] Que "muchos proyectos EPC sufren relaciones tensas entre
  propietario, contratista principal y proveedores/subcontratistas, con
  retrasos, sobrecostos, mala calidad y reclamos" y que "la fase de
  ingeniería es crítica porque ahí se definen las necesidades del
  propietario": lo citan fuentes secundarias (búsqueda web), no lo verifiqué
  en el texto. Confirmar en el PDF antes de citar.

Por qué aplica: es el artículo clásico de IJPM que define las tres fases
E-P-C como cadena y sitúa la procura como fuente de incertidumbre. Si no se
consigue el PDF, usar la versión de conferencia (Ning2000, opcional abajo),
cuyo abstract sí verifiqué.

### Merrow2011

```bibtex
@book{Merrow2011,
  author    = {Merrow, Edward W.},
  title     = {Industrial Megaprojects},
  subtitle  = {Concepts, Strategies, and Practices for Success},
  publisher = {John Wiley \& Sons},
  address   = {Hoboken, NJ},
  year      = {2011},
  isbn      = {9780470938829},
  pagetotal = {371}
}
```

Verificación: Open Library ISBN 9780470938829 (Wiley, 2011, 371 pp.);
wiley.com (autor Edward W. Merrow, fundador/CEO de Independent Project
Analysis; e-book 2015 ISBN 978-1-119-20104-5). Existe 2.ª ed. (Wiley,
ago. 2024, ISBN 9781119893172) — usar la 1.ª salvo que se consiga la 2.ª.

Claims:
- [V] (descripción editorial Wiley/Open Library) "Over half of large-scale
  engineering and construction projects" tienen resultados pobres, con
  sobrecostos y retrasos; causas señaladas: gestión de proyecto inadecuada,
  disfunción de equipos, débil rendición de cuentas e inversión técnica
  insuficiente. Cubre plataformas offshore, plantas químicas y similares
  (petróleo, gas, minerales, química).
- [NV] La cifra "65% de los megaproyectos fallan, con +30% de sobrecosto y
  +30% de retraso promedio" aparece en reseñas y en la web de IPA, pero no
  la verifiqué en el libro. Citar sólo con página tras leer el cap. 1.

Por qué aplica: única fuente del brief centrada en la industria de proceso
(oil & gas, minería), el sector exacto de ISI Mustang; sirve para abrir
2.5.1 con "por qué importa" y como puente a 2.5.3.

---

## 2.5.2 Certificaciones y Control de Avance

### PMI2019EVM

```bibtex
@book{PMI2019EVM,
  author    = {{Project Management Institute}},
  title     = {The Standard for Earned Value Management},
  publisher = {Project Management Institute},
  address   = {Newtown Square, PA},
  year      = {2019},
  isbn      = {9781628256383},
  note      = {ANSI/PMI 19-006-2019}
}
```

Verificación: ANSI webstore (designación ANSI/PMI 19-006-2019, 2019);
Amazon/Goodreads ISBN impreso 9781628256383; Open Library registra
9781628256390 (fecha 2020, probablemente e-book). El preview PDF de ANSI
devolvió 403; el índice no lo verifiqué.

Claims:
- [V] (descripción PMI vía búsqueda) EVM es "a management methodology for
  integrating scope, schedule, and resources; objectively measuring project
  performance and progress; and forecasting project outcome".
- [V] Sustituye al *Practice Standard for Earned Value Management* (2.ª ed.
  2011, ISBN 9781935589358) e incorpora *earned schedule* y enfoques
  híbridos/ágiles.
- [V-cap] Métodos de medición del valor ganado: fórmula fija (0/100,
  50/50), hitos ponderados, porcentaje completado, medición física,
  nivel de esfuerzo. Aparecen en resúmenes del estándar; confirmar
  sección en el PDF.

Por qué aplica: es la norma citable para "medición de avance físico" y para
las fórmulas CV/SV/CPI/SPI/EAC que usará el modelo de desviación en
certificaciones.

### PMI2021

```bibtex
@book{PMI2021,
  author    = {{Project Management Institute}},
  title     = {A Guide to the Project Management Body of Knowledge ({PMBOK} Guide) and The Standard for Project Management},
  edition   = {7},
  publisher = {Project Management Institute},
  address   = {Newtown Square, PA},
  year      = {2021},
  isbn      = {9781628256642},
  pagetotal = {250}
}
```

Verificación: Open Library ISBN 9781628256642 (PMI, 1 ago. 2021, 250 pp.,
"Seventh Edition").

Claims:
- [V-cap] La 7.ª ed. reemplaza los 49 procesos por 12 principios y 8
  dominios de desempeño; el dominio "Measurement" (§2.7) lista entre las
  métricas de "baseline performance" la variación de costo y el CPI, y la
  variación de cronograma y el SPI, y como pronóstico ETC/EAC (fuentes
  secundarias; confirmar página en el PDF).

Por qué aplica: cita de referencia general para "control de avance" y para
nombrar CPI/SPI en 2.5.2–2.5.3 con la nomenclatura vigente. Para detalle
de fórmulas, preferir PMI2019EVM o Fleming2010.

### Fleming2010

```bibtex
@book{Fleming2010,
  author    = {Fleming, Quentin W. and Koppelman, Joel M.},
  title     = {Earned Value Project Management},
  edition   = {4},
  publisher = {Project Management Institute},
  address   = {Newtown Square, PA},
  year      = {2010},
  isbn      = {9781935589082},
  pagetotal = {231}
}
```

Verificación: Open Library ISBN 9781935589082 (PMI, 2010, 4.ª ed., 231 pp.,
autores Fleming y Koppelman). Índice (Open Library): fundamentos del método,
alcance y planificación, estimación de recursos, línea base, monitoreo del
desempeño, pronóstico, aplicación a portafolios, cumplimiento.

Claims:
- [V-cap] Explica el ciclo completo: definir alcance (WBS), fijar la línea
  base de medición del desempeño (PMB), medir valor ganado periódicamente,
  calcular variaciones e índices y pronosticar el EAC.
- [NV] Números de capítulo/página: no los verifiqué.

Por qué aplica: texto clásico y legible sobre valor ganado; útil para
explicar al tribunal por qué comparar valor ganado con costo real y con
valor planificado, que es la lógica que replica el ETL sobre certificaciones.

### Anbari2003

```bibtex
@article{Anbari2003,
  author  = {Anbari, Frank T.},
  title   = {Earned Value Project Management Method and Extensions},
  journal = {Project Management Journal},
  volume  = {34},
  number  = {4},
  pages   = {12--23},
  year    = {2003},
  doi     = {10.1177/875697280303400403}
}
```

Verificación: CrossRef DOI (PMJ 34(4), 12–23, dic. 2003); abstract vía
OpenAlex (~390 citas).

Claims:
- [V] "The earned value project management method integrates three critical
  elements of management: scope management, cost management, and time
  management."
- [V] "It requires the periodic monitoring of actual expenditures and
  physical scope accomplishments, and allows calculation of cost and
  schedule variances, along with performance indices. It allows forecasting
  of cost at completion and highlights the possible need for corrective
  action."
- [V] Presenta herramientas gráficas para tendencias y "extensiones y
  simplificaciones" del método.

Por qué aplica: artículo revisado por pares (no manual) que define EVM y
CPI/SPI de forma citable; la idea de "monitoreo periódico de avance físico"
es exactamente lo que registra una certificación.

### Lipke2009

```bibtex
@article{Lipke2009,
  author  = {Lipke, Walt and Zwikael, Ofer and Henderson, Kym and Anbari, Frank},
  title   = {Prediction of project outcome: {The} application of statistical methods to earned value management and earned schedule performance indexes},
  journal = {International Journal of Project Management},
  volume  = {27},
  number  = {4},
  pages   = {400--407},
  year    = {2009},
  doi     = {10.1016/j.ijproman.2008.02.009}
}
```

Verificación: CrossRef DOI (IJPM 27(4), 400–407, 2009). CrossRef registra
el título corto "Prediction of project outcome"; Semantic Scholar y
ScienceDirect el título completo. Abstract obtenido vía búsqueda web
(ResearchGate/Semantic Scholar), no verbatim por API.

Claims:
- [V] "EVM has provided methods for predicting the final cost for
  projects"; la guía de EVM "does not support prediction of final duration".
- [V] Integra EVM, earned schedule (ES) y límites de confianza estadísticos
  "to derive the range of probable outcomes for the project final cost and
  duration"; concluyen que el método es "sufficiently reliable for general
  application".

Por qué aplica: muestra que CPI/SPI ya se usan como predictores del
resultado final (costo y duración) con estadística clásica — es el
antecedente directo del enfoque ML del proyecto y justifica usar CPI/SPI
como variables de entrada/salida (puente a 2.4).

---

## 2.5.3 Desviaciones Presupuestarias y de Cronograma

### Flyvbjerg2014

```bibtex
@article{Flyvbjerg2014,
  author  = {Flyvbjerg, Bent},
  title   = {What You Should Know About Megaprojects and Why: {An} Overview},
  journal = {Project Management Journal},
  volume  = {45},
  number  = {2},
  pages   = {6--19},
  year    = {2014},
  doi     = {10.1002/pmj.21409}
}
```

Verificación: CrossRef DOI (PMJ 45(2), 6–19, 2014); abstract verbatim vía
OpenAlex.

Claims:
- [V] Enuncia la "iron law of megaprojects": "Over budget, over time, over
  and over again", y el "break-fix model" como explicación.
- [V] Gasto global en megaproyectos de US$6–9 billones anuales (8% del PIB
  mundial).
- [V] "Survival of the unfittest": se construyen los peores proyectos, no
  los mejores; crítica a la "Hiding Hand" de Hirschman.
- [NV] La cifra "9 de cada 10 proyectos tienen sobrecosto" está en el
  cuerpo, no en el abstract; citar con página tras leer el PDF.

Por qué aplica: fuente de mayor autoridad para abrir 2.5.3 con la
sistematicidad de sobrecostos y retrasos; da el marco para justificar que
predecirlos tiene valor.

### Assaf2006

```bibtex
@article{Assaf2006,
  author  = {Assaf, Sadi A. and Al-Hejji, Sadiq},
  title   = {Causes of delay in large construction projects},
  journal = {International Journal of Project Management},
  volume  = {24},
  number  = {4},
  pages   = {349--357},
  year    = {2006},
  doi     = {10.1016/j.ijproman.2005.11.010}
}
```

Verificación: CrossRef DOI (IJPM 24(4), 349–357, 2006); abstract verbatim
vía KFUPM Pure (~1.700 citas OpenAlex / ~1.950 Semantic Scholar).

Claims:
- [V] Encuesta en Arabia Saudita a 23 contratistas, 19 consultores y 15
  propietarios; identifica 73 causas de retraso.
- [V] "70% of projects experienced time overrun"; 45 de 76 proyectos
  considerados estaban retrasados.
- [V] 76% de contratistas y 56% de consultores indican retraso promedio
  "between 10% and 30% of the original duration".
- [V] La causa más común según las tres partes: "change order".

Por qué aplica: evidencia cuantitativa clásica sobre retrasos; la orden de
cambio como causa principal enlaza con Galloway2009 y con la variable
"cambios de alcance" del modelo de retraso.

### Olawale2010

```bibtex
@article{Olawale2010,
  author  = {Olawale, Yakubu Adisa and Sun, Ming},
  title   = {Cost and time control of construction projects: inhibiting factors and mitigating measures in practice},
  journal = {Construction Management and Economics},
  volume  = {28},
  number  = {5},
  pages   = {509--526},
  year    = {2010},
  doi     = {10.1080/01446191003674519}
}
```

Verificación: CrossRef DOI (CME 28(5), 509–526, 2010); abstract verbatim
vía OpenAlex (~477 citas).

Claims:
- [V] "Despite the availability of various control techniques and project
  software many construction projects still do not achieve their cost and
  time objectives."
- [V] Encuesta a 250 organizaciones del Reino Unido + entrevistas en 15;
  los cinco factores inhibidores principales del control de costo y plazo:
  "design changes, risks/uncertainties, inaccurate evaluation of
  time/duration, complexities and non-performance of subcontractors".
- [V] Propone 90 medidas mitigadoras clasificadas como "preventive,
  predictive, corrective and organizational".

Por qué aplica: distingue causas de desviación de factores que impiden
controlarlas; la categoría "predictive measures" es el hueco que llena un
módulo de predicción integrado al ERP.

### Habibi2018 (corrige `EPCleadingIndicators2018`)

```bibtex
@inproceedings{Habibi2018,
  author    = {Habibi, Mohammadreza and Kermanshachi, Sharareh and Safapour, Elnaz},
  title     = {Engineering, Procurement, and Construction Cost and Schedule Performance Leading Indicators: {State-of-the-Art} Review},
  booktitle = {Construction Research Congress 2018},
  publisher = {American Society of Civil Engineers},
  address   = {New Orleans, LA},
  pages     = {378--388},
  year      = {2018},
  doi       = {10.1061/9780784481271.037}
}
```

Verificación: CrossRef DOI (ASCE, CRC 2018, New Orleans, pp. 378–388);
abstract vía OpenAlex (62 citas). **Los autores en `documento.bib`
("Herrera, Rafael and others") son falsos.**

Claims:
- [V] "approximately more than 50% of projects face significant delay and
  major cost escalation".
- [V] Revisión de >200 artículos para identificar indicadores adelantados
  (LPIs) de costo y plazo por fase E, P y C; la mayoría de la literatura
  previa se concentra en la fase de construcción y descuida ingeniería y
  procura.
- [V] Causa principal común de retraso y sobrecosto: "design change";
  cronograma afectado por "resource shortage" y "price fluctuation";
  otras raíces de sobrecosto: "poor economic condition", "poor
  communication between different stakeholders", "severe weather
  condition". "It is proven that any delay causes cost overrun."

Por qué aplica: única revisión sistemática del brief específica de EPC y
por fases; los LPIs son candidatos directos a variables del modelo.

### Roshdi2022 (corrige `CostOverrunsEPC2022`)

```bibtex
@article{Roshdi2022,
  author  = {Mohd Roshdi, Farrah Rina and Ismail, Kharizam and Lop, Nor Suzila and Ab Wahab, Lilawati},
  title   = {Cost Overruns in Engineering Procurement Construction ({EPC}) Fabrication Oil and Gas Megaprojects in {Malaysia}: {The} Importance of Resource Allocation ({5M})},
  journal = {International Journal of Academic Research in Business and Social Sciences},
  volume  = {12},
  number  = {9},
  year    = {2022},
  doi     = {10.6007/ijarbss/v12-i9/14752},
  publisher = {HRMARS}
}
```

Verificación: CrossRef (IJARBSS 12(9), 2022, HRMARS, DOI existe); abstract
vía OpenAlex (1 cita). **El autor "Zainol, Norfashiha" en `documento.bib` es
falso** y la entrada no tiene DOI. Hay un artículo hermano de 2023 (mismos
autores, "The Issues of Resource Allocation (5M)", IJARBSS 13(5), DOI
10.6007/ijarbss/v13-i5/17092).

Claims:
- [V] Estudio preliminar cualitativo: entrevistas semiestructuradas a 10
  especialistas en proyectos EPC de oil & gas (fabricación onshore) en
  Malasia, análisis con ATLAS.ti.
- [V] Los sobrecostos se vinculan a la asignación de recursos 5M (máquinas,
  mano de obra, métodos, dinero, materiales); "money had a greater impact"
  y el presupuesto que no cubre los requisitos es el problema principal.

Por qué aplica: evidencia sectorial (EPC oil & gas) aunque débil (n=10,
revista de bajo impacto, 1 cita). Usar como ejemplo de estudio empírico
sectorial, no como evidencia central; Olaniran2015 y Merrow2011 son más
sólidos para oil & gas.

### Olaniran2015

```bibtex
@article{Olaniran2015,
  author  = {Olaniran, Olugbenga Jide and Love, Peter E. D. and Edwards, David and Olatunji, Oluwole Alfred and Matthews, Jane},
  title   = {Cost Overruns in Hydrocarbon Megaprojects: {A} Critical Review and Implications for Research},
  journal = {Project Management Journal},
  volume  = {46},
  number  = {6},
  pages   = {126--138},
  year    = {2015},
  doi     = {10.1002/pmj.21556}
}
```

Verificación: CrossRef DOI (PMJ 46(6), 126–138, 2015); abstract verbatim
vía OpenAlex (88 citas).

Claims:
- [V] "Cost overruns are prevalent in hydrocarbon (oil and gas)
  megaprojects. A recent report indicates that 64% of ongoing megaprojects
  globally are facing cost overruns."
- [V] "limited published research in the mainstream literature that has
  specifically examined why and how they occur".
- [V] Los sobrecostos surgen de "complex interactions between project
  characteristics, people, technology, structure and culture"; proponen
  teoría del caos como marco explicativo.

Por qué aplica: revisión crítica en PMJ específica de oil & gas; el "64%"
es citable con el matiz de que es un reporte citado por los autores. La
naturaleza multifactorial de las causas justifica un modelo que combine
muchas variables en vez de una regla simple.

---

## Opcionales verificadas

### Ning2000 — respaldo de Yeo2002 con abstract verificado

```bibtex
@inproceedings{Ning2000,
  author    = {Ning, Jianhua and Yeo, K. T.},
  title     = {Management of procurement uncertainties in {EPC} projects---applying supply chain and critical chain concepts},
  booktitle = {Proceedings of the 2000 {IEEE} International Conference on Management of Innovation and Technology ({ICMIT} 2000)},
  volume    = {2},
  pages     = {803--808},
  publisher = {IEEE},
  year      = {2000},
  doi       = {10.1109/ICMIT.2000.916807}
}
```
Verificado por CrossRef y abstract OpenAlex: [V] "The present practice of
engineering, procurement and construction (EPC) projects in the engineering
industry receives many criticisms and requires substantial improvement";
examina la naturaleza y características de los proyectos EPC y mapea sus
procesos. Usar si no se consigue el PDF de Yeo2002.

### Roshdi2023 — artículo hermano de Roshdi2022

Mohd Roshdi, Ismail, Lop, Ab Wahab. "Cost Overruns in EPC Fabrication Oil
and Gas Megaprojects in Malaysia: The Issues of Resource Allocation (5M)".
IJARBSS 13(5), 2023, DOI 10.6007/ijarbss/v13-i5/17092. Sólo metadatos
verificados por CrossRef; abstract no leído.

### PMI2011PS — Practice Standard for EVM, 2.ª ed. (superado)

PMI, *Practice Standard for Earned Value Management*, 2.ª ed., 2011, ISBN
9781935589358 (AbeBooks/OL). Sólo si se necesita citar la versión previa;
preferir PMI2019EVM.

---

## Notas para el redactor

### Keys: existentes vs. nuevas

- **Existentes con errores (corregir por Zotero antes de citar):**

| Key actual | Problema | Dato correcto |
|---|---|---|
| `EPCleadingIndicators2018` | Autor "Herrera, Rafael and others" **falso**; DOI correcto | Habibi, Kermanshachi, Safapour. CRC 2018, ASCE, pp. 378–388. Ver `Habibi2018` |
| `CostOverrunsEPC2022` | Autor "Zainol, Norfashiha and others" **falso**; falta DOI, volumen y número | Mohd Roshdi, Ismail, Lop, Ab Wahab. IJARBSS 12(9), 2022, DOI 10.6007/ijarbss/v12-i9/14752. Ver `Roshdi2022` |

  Sugerencia: reemplazar las keys por `Habibi2018` y `Roshdi2022` (o
  mantener las viejas y corregir campos, pero renombrar evita arrastrar
  citas rotas en `content/chapter-2/`).

- **Nuevas (cargar por Zotero):** FIDIC2017, Galloway2009, Yeo2002,
  Merrow2011, PMI2019EVM, PMI2021, Fleming2010, Anbari2003, Lipke2009,
  Flyvbjerg2014, Assaf2006, Olawale2010, Olaniran2015; opcionales Ning2000,
  Roshdi2023, PMI2011PS.

### Claims sin fuente verificada (no afirmar sin cita o buscar una)

1. **Yeo2002**: no obtuve el abstract; las frases sobre "relaciones
   tensas" y "fase de ingeniería crítica" vienen de fuentes secundarias.
   Confirmar en PDF o citar Ning2000.
2. **Merrow2011 "65% fallan / +30% costo / +30% plazo"**: no verificado en
   el libro. Lo verificado es "over half" (descripción editorial).
3. **Flyvbjerg2014 "9 de 10 proyectos con sobrecosto"**: en el cuerpo, no
   en el abstract.
4. **Cláusulas FIDIC (14.3, 14.4, 14.6)** y la frase "mayor certeza de
   precio y plazo": [V-cap], confirmar en el PDF del Silver Book.
5. **PMBOK 7 §2.7** y los **métodos de medición de EV** del estándar 2019:
   de fuentes secundarias; confirmar página/sección en los PDFs.
6. **Fleming2010**: sin números de capítulo verificados.
7. **"Interim payment certificate" como término técnico**: está en FIDIC
   (Red/Yellow: el Ingeniero emite el IPC; Silver: el Employer notifica el
   monto). No encontré un artículo revisado por pares que defina
   "certificación de avance" como concepto; tratarlo como término
   contractual (FIDIC) y como término del ERP (glosario).

### Vínculo con el dominio ISI Mustang (glosario `08-glosario-dominio.md`)

- La **certificación** del ERP ("ingreso ejecutado de un centro de costo",
  con estados draft → submitted → registered y `collection_status`) equivale
  funcionalmente al ciclo Statement → certificación → pago de FIDIC cl. 14 y
  a la facturación por avance/hitos. Redactar la equivalencia como
  interpretación propia del proyecto, no como cita.
- **Centro de costo** = unidad de control (proyecto/servicio/área). El
  valor ganado se calcula por centro de costo; no hay WBS formal en el ERP,
  así que no afirmar que ISI Mustang usa EVM completo: sólo que los datos
  de certificación + presupuesto (línea base vs. seguimiento) permiten
  aproximar CV/SV/CPI/SPI. Recordar el punto pendiente del brief del
  proyecto: la existencia de "desviaciones con causas documentadas" en el
  histórico no está confirmada.
- **Provisión** (costo de personal imputado al proyecto) es parte del costo
  real (AC) — cuidado con confidencialidad de sueldos al ejemplificar.

### Sugerencia de estructura para el redactor

- 2.5.1: FIDIC2017 (definición, llave en mano, riesgo) → Galloway2009
  (contratista "one-stop shop", cambios) → Yeo2002/Ning2000 (fases E-P-C,
  procura como fuente de incertidumbre) → Merrow2011 (sector oil & gas).
- 2.5.2: Anbari2003 (definición EVM) → PMI2019EVM (norma, métodos de
  medición de avance) → PMI2021 (CPI/SPI en el dominio Medición) →
  FIDIC cl. 14 (certificación y pago por avance) → Lipke2009 (índices como
  predictores: puente a 2.4).
- 2.5.3: Flyvbjerg2014 ("iron law") → Assaf2006 y Olawale2010 (causas:
  change orders, diseño, subcontratistas) → Habibi2018 (LPIs por fase EPC)
  → Olaniran2015 y Roshdi2022 (oil & gas) → cierre: CPI/SPI como
  indicadores de desviación y candidatos a variables objetivo.

### Fuera de alcance / no investigado

No busqué literatura sobre IoT, clima ni mercado como predictores
(excluidos en `11-brief-proyecto.md`), ni sobre asistentes conversacionales.
