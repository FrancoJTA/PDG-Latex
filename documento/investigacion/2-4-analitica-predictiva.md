# Brief de investigación — 2.4 Analítica Predictiva (Cap. II)

Fecha: 2026-09-17. Investigador. Verificación: CrossRef (DOI), OpenAlex,
Semantic Scholar, Project Euclid, RePEc, biblio UGent, Open Library (ISBN),
páginas de editorial. Todo lo que no pude verificar está marcado. Las
entradas BibLaTeX son candidatas: se cargan por Zotero
(`documento/09-setup-zotero.md`), no a mano.

Resumen: 14 fuentes núcleo (todas con metadatos verificados; contenido
verificado salvo donde se indica) + 3 opcionales. Cinco keys ya existen en
`documento.bib` con metadatos corregidos; acá verifico su **contenido**.
Dos keys existentes requieren corrección (`EPCleadingIndicators2018`,
`DomainAwareXGBoost2025`), ver "Notas para el redactor".

Convención de claims: **[V]** = verificado en abstract/texto;
**[V-cap]** = verificado a nivel de capítulo/índice, sin leer el texto;
**[V-sec]** = verificado sólo por fuentes secundarias (citas del pasaje en
otros sitios), confirmar en el ejemplar antes de citar página.

---

## 2.4.1 Definición y Aplicaciones

### Shmueli2010

```bibtex
@article{Shmueli2010,
  author  = {Shmueli, Galit},
  title   = {To Explain or to Predict?},
  journal = {Statistical Science},
  volume  = {25},
  number  = {3},
  pages   = {289--310},
  year    = {2010},
  doi     = {10.1214/10-STS330}
}
```

Verificación: CrossRef DOI (Statistical Science 25(3), 2010, IMS); Project
Euclid confirma pp. 289–310, agosto 2010, y abstract; OpenAlex abstract.

Claims:
- [V] El modelado estadístico sirve a tres fines: explicación causal,
  predicción y descripción; en muchas disciplinas domina la explicación y
  se asume que un modelo con alto poder explicativo tiene también alto
  poder predictivo.
- [V] "conflation between explanation and prediction is common, yet the
  distinction must be understood for progressing scientific knowledge".
- [V] El objetivo del artículo es aclarar la distinción explicar/predecir,
  sus fuentes, y las implicancias prácticas para **cada paso del proceso de
  modelado** (diseño, recolección, preparación, selección de variables,
  elección del método, evaluación).

Por qué aplica: fundamenta que el proyecto persigue **predecir** (anticipar
desviaciones en proyectos activos) y no explicar causas; justifica evaluar
por error fuera de muestra (RMSE/MAE, CV) y no por ajuste o significancia.
Enlaza con 2.2 (validación cruzada) y con la decisión de usar gradient
boosting aunque sea menos interpretable que una regresión.

### Davenport2007

```bibtex
@book{Davenport2007,
  author    = {Davenport, Thomas H. and Harris, Jeanne G.},
  title     = {Competing on Analytics},
  subtitle  = {The New Science of Winning},
  publisher = {Harvard Business School Press},
  address   = {Boston, MA},
  year      = {2007},
  isbn      = {9781422103326},
  pagetotal = {240}
}
```

Verificación: Open Library ISBN 9781422103326 (Harvard Business School
Press, 6 marzo 2007, 240 pp., Davenport y Harris). Existe edición
actualizada 2017 (Harvard Business Review Press, ISBN 9781633693722, 320
pp., "with a new introduction", verificada en Open Library); si Franco
consigue esa, cambiar año/editorial/ISBN. No accedí al texto.

Claims:
- [V-sec] Definición de analítica: "the extensive use of data, statistical
  and quantitative analysis, explanatory and predictive models, and
  fact-based management to drive decisions and actions" (cap. 1; página no
  verificada — reproducida de forma consistente en reseñas y resúmenes).
- [V] (descripción editorial, Open Library) Tesis del libro: las empresas
  líderes no sólo acumulan datos sino que construyen estrategias
  competitivas alrededor de insights analíticos, combinando análisis
  cuantitativo, modelado predictivo, liderazgo orientado a datos e
  infraestructura de TI.

Por qué aplica: fuente gerencial clásica para abrir 2.4.1 con una
definición de analítica que incluye explícitamente "predictive models", y
para posicionar la analítica como capacidad de negocio (conecta con 2.10
Inteligencia de Negocios / Power BI).

### Delen2013

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

Verificación: OpenAlex DOI (DSS 55(1), 359–363; online 2012, número
impreso 2013). Abstract obtenido vía búsqueda web (ScienceDirect /
Semantic Scholar), OpenAlex no lo trae.

Claims:
- [V] La analítica de negocios se clasifica en **descriptiva, predictiva y
  prescriptiva**; la predictiva considera "what might happen next" y la
  prescriptiva "the best steps to take".
- [V] Marco conceptual de datos, información y analítica como servicios
  (SOA / cloud) para la toma de decisiones gerencial.

Por qué aplica: es la cita estándar y breve para la tríada
descriptiva/predictiva/prescriptiva de 2.4.1. Encaja con la división del
proyecto: Power BI = descriptiva, modelos ML = predictiva, prescriptiva
fuera de alcance.

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

Verificación: CrossRef DOI (vol. 50, 57–70, impreso febrero 2020, online
abril 2019); abstract vía OpenAlex.

Claims:
- [V] "To date, the major focus in the academic and industrial realms is on
  descriptive and predictive analytics."
- [V] La prescriptiva "seeks to find the best course of action for the
  future" y se considera "the next step towards increasing data analytics
  maturity", conduciendo a decisiones optimizadas anticipadas.
- [V] Es una revisión de literatura de métodos prescriptivos con desafíos
  de investigación.

Por qué aplica: segunda fuente, revisada por pares y reciente, para la
tríada y para justificar por qué el proyecto se detiene en la predictiva
(la prescriptiva es un escalón de madurez posterior: trabajo futuro).

### Waller2013

```bibtex
@article{Waller2013,
  author  = {Waller, Matthew A. and Fawcett, Stanley E.},
  title   = {Data Science, Predictive Analytics, and Big Data: {A} Revolution That Will Transform Supply Chain Design and Management},
  journal = {Journal of Business Logistics},
  volume  = {34},
  number  = {2},
  pages   = {77--84},
  year    = {2013},
  doi     = {10.1111/jbl.12010}
}
```

Verificación: CrossRef DOI (JBL 34(2), 77–84, 2013); abstract vía OpenAlex.

Claims:
- [V] Define data science, analítica predictiva y big data en el contexto
  de gestión de cadena de suministro y las presenta como una revolución
  para el diseño y la gestión.
- [V] "data science requires both domain knowledge and a broad set of
  quantitative skills": la analítica predictiva no es sólo estadística,
  necesita conocimiento del dominio.
- El abstract no da la definición textual de analítica predictiva; está en
  el cuerpo (no leído). Citar la definición sólo tras leer el PDF.

Por qué aplica: respalda que la analítica predictiva aplicada a
operaciones requiere conocimiento del negocio (aquí: EPC, certificaciones)
además del método; útil para 2.4.1 "aplicaciones" en gestión operativa.

---

## 2.4.2 Analítica Predictiva en Gestión de Proyectos

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

Verificación: Open Library ISBN 9781935589082 (PMI, 2010, 231 pp.,
Fleming y Koppelman) con índice de capítulos: introducción y panorama;
génesis y evolución del EVM; cuerpo de conocimiento; procesos núcleo
(alcance, planificación, cronograma, estimación, líneas base); EVM en
adquisiciones; **monitoreo de desempeño y pronóstico de resultados
finales**; portafolio; "simple" earned value; Sarbanes-Oxley; apéndice con
los 32 criterios EVMS. No leí el texto.

Claims:
- [V-cap] El EVM integra alcance, cronograma y costo contra una línea base
  y produce índices de desempeño (CPI, SPI) y pronósticos del resultado
  final (estimate at completion) — capítulo de "performance monitoring and
  forecasting final results". Números de capítulo y página: confirmar en
  el ejemplar.
- [V-cap] Existe un estándar de 32 criterios para sistemas EVM (apéndice).

Por qué aplica: fuente de referencia para explicar qué es el EVM, la
técnica de pronóstico "clásica" en control de proyectos, antes de mostrar
sus límites y la alternativa con ML. Si se prefiere una fuente normativa,
alternativa no verificada: PMI, *Practice Standard for Earned Value
Management* (2.ª ed., 2011).

### Vandevoorde2006

```bibtex
@article{Vandevoorde2006,
  author  = {Vandevoorde, Stephan and Vanhoucke, Mario},
  title   = {A comparison of different project duration forecasting methods using earned value metrics},
  journal = {International Journal of Project Management},
  volume  = {24},
  number  = {4},
  pages   = {289--302},
  year    = {2006},
  doi     = {10.1016/j.ijproman.2005.10.004}
}
```

Verificación: CrossRef DOI (IJPM 24(4), 289–302, 2006); abstract completo
vía RePEc (working paper UGent 05/312, mismo texto); Semantic Scholar ~390
citas.

Claims:
- [V] "Earned value management was originally developed for cost management
  and has not widely been used for forecasting project duration."
- [V] Compara los indicadores clásicos SV y SPI con los de Earned Schedule
  SV(t) y SPI(t), presenta una fórmula genérica de pronóstico de duración
  y compara tres métodos de la literatura sobre un ejemplo y datos reales.
- [V-sec] Conclusión (reproducida en resúmenes, no leída en el PDF):
  Earned Schedule fue el único método con resultados satisfactorios y
  confiables durante toda la duración del proyecto; el SPI clásico
  converge a 1 al final del proyecto aunque haya retraso.

Por qué aplica: documenta el **límite del EVM para pronosticar duración**
(uno de los tres casos del proyecto es el retraso en fecha de cierre) y
da el vocabulario EVM/ES que usan luego los papers de ML.

### Wauters2016

```bibtex
@article{Wauters2016,
  author  = {Wauters, Mathieu and Vanhoucke, Mario},
  title   = {A comparative study of {Artificial} {Intelligence} methods for project duration forecasting},
  journal = {Expert Systems with Applications},
  volume  = {46},
  pages   = {249--261},
  year    = {2016},
  doi     = {10.1016/j.eswa.2015.10.008}
}
```

Verificación: CrossRef DOI (ESWA 46, 249–261, 2016); abstract completo vía
biblio.ugent.be/publication/6976924.

Claims:
- [V] Presenta cinco métodos de IA para predecir la duración final de un
  proyecto, con una metodología de simulación Monte Carlo, PCA y
  validación cruzada "que pueden aplicar académicos y practicantes".
- [V] Benchmark contra los mejores métodos EVM/ES: "the AI methods
  outperform the EVM/ES methods if the training and test sets are at least
  similar to one another"; excelentes resultados en etapas temprana y media.
- [V] Experimento de robustez: al aumentar la discrepancia entre
  entrenamiento y prueba se muestran "the limitations of the newly
  proposed AI methods".
- [V-sec] Los cinco métodos incluyen árboles de decisión, bagging, random
  forest y boosting (según resúmenes; el abstract no los enumera).

Por qué aplica: evidencia directa de que ML supera al EVM en pronóstico de
duración, **con la advertencia** de que exige que los proyectos futuros se
parezcan a los históricos: argumento para el mapeo Silver MySQL→PostgreSQL
y para vigilar el drift entre histórico y proyectos activos.

### MLcostForecasting2022 (ya en `documento.bib`, metadatos correctos)

İnan, Narbaev & Hazir, *IFAC-PapersOnLine* 55(10), 3286–3291, 2022, DOI
10.1016/j.ifacol.2022.10.127. Abstract verificado vía OpenAlex.

Claims:
- [V] Modelo de ML basado en **LSTM** (no árboles) para pronosticar el
  costo del proyecto, con un vector de siete características que incluye
  factores de cronograma y desempeño y sus medias móviles.
- [V] 300 experimentos en fase de prueba; "the proposed model produces more
  accurate estimates when compared to traditional Earned Value Management
  index-based model".

Por qué aplica: segunda evidencia de ML > EVM, ahora para **costo**. Ojo:
usa LSTM, no gradient boosting; citarla por el resultado (ML mejora al
EVM) y por el uso de medias móviles de indicadores como features, no como
respaldo de XGBoost.

### AutoMLpipeline2025 (ya en `documento.bib`, metadatos correctos)

Ottaviani, Ballesteros-Pérez & Narbaev, *Automation in Construction* 178,
art. 106426, 2025, DOI 10.1016/j.autcon.2025.106426. Abstract verificado
vía OpenAlex.

Claims:
- [V] Las estimaciones al completar (EAC) son vitales para dimensionar
  acciones correctivas; la literatura reciente construye modelos EAC con
  regresión supervisada usando features de EVM y gestión de cronograma,
  pero descuida under/overfitting, lo que "could undermine model
  robustness".
- [V] Propone un pipeline automatizado (balanceo de datos, mejora de
  features, entrenamiento, evaluación) evaluado con **30 algoritmos de ML
  sobre 50 proyectos reales de construcción**.
- [V] Los modelos del pipeline "surpass conventional Earned Value
  Management and Schedule Management approaches in accuracy, precision,
  and timeliness".

Por qué aplica: es la fuente más reciente y de mejor revista para el
puente EVM → ML; además legitima la forma de trabajo del proyecto
(pipeline de datos + entrenamiento + evaluación con CV) y el uso de EAC
como objetivo. El abstract no dice qué algoritmo ganó: no afirmar que fue
XGBoost.

---

## 2.4.3 Predicción de Desviaciones y Costos

### Flyvbjerg2002

```bibtex
@article{Flyvbjerg2002,
  author  = {Flyvbjerg, Bent and Holm, Mette Skamris and Buhl, S{\o}ren},
  title   = {Underestimating Costs in Public Works Projects: {Error} or {Lie}?},
  journal = {Journal of the American Planning Association},
  volume  = {68},
  number  = {3},
  pages   = {279--295},
  year    = {2002},
  doi     = {10.1080/01944360208976273}
}
```

Verificación: CrossRef DOI (JAPA 68(3), 279–295, 2002); abstract vía
OpenAlex.

Claims:
- [V] "the first statistically significant study of cost escalation in
  transportation infrastructure projects", muestra de **258 proyectos, US$90
  mil millones**, distintos tipos, regiones y períodos.
- [V] "estimates used to decide whether such projects should be built are
  highly and systematically misleading"; la subestimación "cannot be
  explained by error and is best explained by strategic misrepresentation".
- El abstract no da la cifra promedio de sobrecosto (28% en el cuerpo,
  según conocimiento general): no citarla sin leer el PDF.

Por qué aplica: evidencia empírica canónica de que el sobrecosto es
sistemático (no ruido), lo que justifica un modelo que lo anticipe a
partir del histórico. Es infraestructura pública, no EPC privado: usarla
como contexto general, no como dato del sector.

### Habibi2018 (corrige `EPCleadingIndicators2018`)

```bibtex
@inproceedings{Habibi2018,
  author    = {Habibi, Mohammadreza and Kermanshachi, Sharareh and Safapour, Elnaz},
  title     = {Engineering, Procurement, and Construction Cost and Schedule Performance Leading Indicators: {State-of-the-Art} Review},
  booktitle = {Construction Research Congress 2018},
  publisher = {American Society of Civil Engineers},
  address   = {Reston, VA},
  pages     = {378--388},
  year      = {2018},
  doi       = {10.1061/9780784481271.037}
}
```

Verificación: CrossRef DOI 10.1061/9780784481271.037 → autores **Habibi,
Kermanshachi, Safapour**, ASCE, pp. 378–388, 2018. **El autor "Herrera,
Rafael and others" de `documento.bib` es falso.** Abstract obtenido vía
búsqueda web (ascelibrary devolvió 403); paráfrasis, no verbatim.

Claims:
- [V] Los proyectos de construcción rara vez terminan al costo y tiempo
  estimados; más del 50% enfrenta retrasos significativos y escaladas de
  costo importantes (paráfrasis del abstract).
- [V] Revisa los indicadores líderes de desempeño (LPIs) de costo y
  cronograma para proyectos **EPC**, señalando falta de consistencia entre
  indicadores y que la mayoría de estudios previos se concentra sólo en la
  fase de construcción.

Por qué aplica: única fuente del brief explícitamente sobre **EPC**; da la
cifra de prevalencia de desviaciones y la idea de "indicadores líderes"
que el modelo ML operacionaliza como features.

### Elmousalami2020

```bibtex
@article{Elmousalami2020,
  author  = {Elmousalami, Haytham H.},
  title   = {Artificial Intelligence and Parametric Construction Cost Estimate Modeling: {State-of-the-Art} Review},
  journal = {Journal of Construction Engineering and Management},
  volume  = {146},
  number  = {1},
  eid     = {03119008},
  year    = {2020},
  doi     = {10.1061/(ASCE)CO.1943-7862.0001678}
}
```

Verificación: CrossRef DOI (JCEM 146(1), 03119008, 2020; OpenAlex fecha
online 2019); abstract vía OpenAlex. Existen Discussion (Sonmez & Uysal
2021) y Closure (2021) en JCEM 147(6), señal de que el paper fue debatido.

Claims:
- [V] Revisa técnicas de IA/ML para estimación paramétrica de costo:
  lógica difusa, redes neuronales, regresión, CBR, árboles de decisión,
  random forest, SVM, AdaBoost, **gradient boosting**, algoritmos genéticos;
  clasifica cost drivers en cualitativos y cuantitativos.
- [V] Caso de estudio (proyectos de mejora de canales de riego) con 20
  técnicas: **XGBoost obtuvo la mejor exactitud, MAPE 9,091% y R² ajustado
  0,929**.
- [V] Discute adaptabilidad no lineal, manejo de valores faltantes y
  atípicos, interpretación del modelo e incertidumbre; publica el dataset.

Por qué aplica: revisión en revista de primer nivel del área que
respalda elegir gradient boosting/XGBoost para costo en construcción, y
que nombra faltantes/atípicos (relevante por los defectos D1–D6 del ERP).

### AIcostEstimation2024 (ya en `documento.bib`, metadatos correctos)

Shamim, Abdul Hamid, Nyamasvisva & Rafi, *Modelling* 6(2), art. 35, 2025,
DOI 10.3390/modelling6020035. Abstract verificado vía Semantic Scholar.

Claims:
- [V] Revisión sistemática de **39 artículos (2016–2024)** sobre IA en
  estimación de costos en gestión de proyectos (construcción, salud,
  manufactura, inmobiliario).
- [V] ANN es la técnica más frecuente (26,33% de los estudios); SVM 7,90%;
  "decision trees, and gradient-boosting models, offer substantial
  improvements in cost prediction".
- [V] Rangos de exactitud reportados: DL 85–90%, ML 75–80%, regresión
  70–80%, híbridos 80–90%; regresión "more suitable for simpler cost
  estimations where the relationships between variables are linear".
- Advertencia: los "% de exactitud" agregan métricas heterogéneas de
  estudios distintos; citarlos como tendencia de la revisión, no como
  benchmark comparable con el proyecto. Revista MDPI: usar como apoyo, no
  como fuente principal.

Por qué aplica: panorama reciente del estado del arte para 2.4.3 y para
posicionar árboles/boosting frente a ANN y regresión.

### XGBoostCostOverrun2026 (ya en `documento.bib`, metadatos correctos)

Nguyen, Phan, Tran & Nguyen Vu, *Asian Journal of Civil Engineering*
27(7), 3611–3628, 2026 (online 22-abr-2026), DOI 10.1007/s42107-026-01686-8.
CrossRef ahora trae volumen/número/páginas (agregar a la entrada).
Abstract obtenido vía búsqueda web (Springer devolvió redirección de
autenticación); paráfrasis.

Claims:
- [V] Propone XGBoost + **SHAP** para predecir sobrecostos en construcción;
  el sobrecosto es "one of the most prevalent challenges in construction
  projects".
- [V] Features: tamaño del proyecto, costo estimado, costo de materiales,
  presión de cronograma, riesgo de retraso, cambios de diseño, índice de
  precios de materiales e inflación.
- [V] Optimización con Randomized Search + **5-fold CV**; evaluación con
  **MAE y R²**; SHAP para identificar factores más influyentes.
- [V] **El dataset son 1.000 observaciones simuladas**, no proyectos reales.

Por qué aplica: ejemplo cercano al diseño del proyecto (XGBoost, CV,
MAE/R², explicabilidad). **Limitación seria**: datos simulados; citarla
como ejemplo de arquitectura/método, nunca como evidencia empírica de
desempeño. Revista de nivel medio.

### Shen2025 (reemplaza `DomainAwareXGBoost2025`)

```bibtex
@inproceedings{Shen2025,
  author    = {Shen, Zhenhua and Wang, Xingfeng and Zhang, Zheng and Kim, Hyunjoo},
  title     = {Domain-Aware Machine Learning for Project Delay Prediction: {A} Rule-Constrained {XGBoost} Framework},
  booktitle = {2025 10th International Conference on Computer and Information Processing Technology ({ISCIPT})},
  publisher = {IEEE},
  pages     = {9--13},
  year      = {2025},
  doi       = {10.1109/ISCIPT67144.2025.11265281}
}
```

Verificación: CrossRef (query por título) → DOI
10.1109/iscipt67144.2025.11265281, IEEE, ISCIPT 2025, pp. 9–13, cuatro
autores; Semantic Scholar por DOI confirma título, autores, venue y
abstract. El documento existe: **no es un manuscrito no publicado** y el
autor "Morales, Diego" del `.bib` es falso. El ResearchGate 398263979 es
la misma obra.

Claims:
- [V] Los modelos de ML "data-only" en gestión de proyectos carecen de la
  capacidad de incorporar conocimiento experto y reglas del dominio.
- [V] Marco híbrido sobre XGBoost: features derivadas de reglas en el
  preprocesamiento, penalizaciones por restricciones en la función de
  pérdida y motor de reglas de postprocesamiento para consistencia lógica.
- [V] Sobre "a real-world project dataset" (no caracterizado en el
  abstract) mejora exactitud, baja la tasa de falsos negativos y elimina
  violaciones lógicas frente a modelos sólo de datos.

Por qué aplica: respalda incorporar reglas de negocio de ISI Mustang (p.
ej. relaciones certificación–avance) como features y validaciones del
modelo de retraso. **Conferencia IEEE de bajo perfil**: usar como apoyo
secundario, no como fuente principal.

---

## Opcionales verificadas

### Wauters2017 — extensión kNN (2.4.2)

```bibtex
@article{Wauters2017,
  author  = {Wauters, Mathieu and Vanhoucke, Mario},
  title   = {A Nearest Neighbour extension to project duration forecasting with {Artificial} {Intelligence}},
  journal = {European Journal of Operational Research},
  volume  = {259},
  number  = {3},
  pages   = {1097--1111},
  year    = {2017},
  doi     = {10.1016/j.ejor.2016.11.018}
}
```
Verificado por CrossRef (EJOR 259(3), 1097–1111, 2017). **Abstract no
obtenido** (OpenAlex y S2 sin abstract): metadatos sí, contenido no. Usar
sólo como "véase también" junto a Wauters2016.

### MLdrivenERP2023 (ya en `documento.bib`, metadatos correctos) — ML en ERP (2.4.1 / 2.1)

Jawad & Villányi, *Beni-Suef Univ. J. Basic Appl. Sci.* 13, art. 4, 2024,
DOI 10.1186/s43088-023-00460-y. Abstract verificado vía Semantic Scholar.
Claims [V]: revisión de la integración de ML en sistemas ERP; los
algoritmos de ML "enable ERP systems to make more accurate predictions and
data-driven decisions"; las organizaciones buscan hacer los modelos ML
dentro del ERP "clear and comprehensible for stakeholders" (explicabilidad);
también cubre IoT/IIoT (fuera de alcance del proyecto, no citar esa parte).
Es más pertinente a 2.1 (ERP) que a 2.4; sirve en 2.4.1 como puente
"analítica predictiva integrada al ERP". Revista de bajo perfil.

### Davenport2017 (edición actualizada, si se prefiere la reciente)

```bibtex
@book{Davenport2017,
  author    = {Davenport, Thomas H. and Harris, Jeanne G.},
  title     = {Competing on Analytics},
  subtitle  = {The New Science of Winning, Updated, with a New Introduction},
  publisher = {Harvard Business Review Press},
  address   = {Boston, MA},
  year      = {2017},
  isbn      = {9781633693722},
  pagetotal = {320}
}
```
Verificado por Open Library. Mismos claims que Davenport2007; elegir una
sola de las dos según el ejemplar que se tenga.

---

## Notas para el redactor

### Keys: existentes vs. nuevas vs. a corregir

- **Ya en `documento.bib` y verificadas en contenido (usar):**
  `AIcostEstimation2024`, `MLcostForecasting2022`, `AutoMLpipeline2025`,
  `XGBoostCostOverrun2026`, `MLdrivenERP2023`. A `XGBoostCostOverrun2026`
  agregar `volume = {27}, number = {7}, pages = {3611--3628}`.
- **Corregir por Zotero antes de citar:**
  - `EPCleadingIndicators2018`: autores reales **Habibi, Kermanshachi,
    Safapour**; pp. 378–388; publisher ASCE. DOI correcto. Ver Habibi2018.
  - `DomainAwareXGBoost2025`: **no es unpublished**. Es Shen, Wang, Zhang &
    Kim, IEEE ISCIPT 2025, pp. 9–13, DOI 10.1109/ISCIPT67144.2025.11265281.
    Reemplazar por la entrada `@inproceedings` Shen2025 y borrar la nota
    "NO VERIFICADA".
  - `CostOverrunsEPC2022` (Zainol "and others", HRMARS): **no la
    verifiqué** (no estaba en el encargo). Tiene "and others", sin DOI ni
    volumen. Tratarla como sospechosa hasta verificarla.
- **Nuevas (cargar por Zotero):** Shmueli2010, Davenport2007 (o
  Davenport2017), Delen2013, Lepenioti2020, Waller2013, Fleming2010,
  Vandevoorde2006, Wauters2016, Flyvbjerg2002, Elmousalami2020, Shen2025;
  opcional Wauters2017.

### Claims sin fuente verificada (no afirmar sin cita o buscar una)

1. **Cifra de sobrecosto promedio (28%) de Flyvbjerg2002**: está en el
   cuerpo, no en el abstract. Leer el PDF antes de citarla.
2. **Definición textual de "predictive analytics"** de Waller2013: en el
   cuerpo, no en el abstract.
3. **Página de la definición de analítica** de Davenport & Harris: cap. 1,
   página no verificada (secundarias).
4. **Que Wauters2016 usa árboles/bagging/RF/boosting**: según resúmenes de
   terceros; el abstract sólo dice "five AI methods".
5. **Qué algoritmo ganó en Ottaviani2025**: no está en el abstract. No
   decir "XGBoost fue el mejor" con esa cita.
6. **Números de capítulo de Fleming2010**: índice verificado sin
   numeración; confirmar en el ejemplar.
7. **Datos del sector EPC boliviano / oil & gas**: ninguna fuente del
   brief los da. Habibi2018 es EPC en general; Flyvbjerg es infraestructura
   pública. Si se necesita un dato de oil & gas, hay que buscarlo aparte
   (no verifiqué `CostOverrunsEPC2022`).

### Advertencias de calidad de evidencia

- `XGBoostCostOverrun2026` usa **1.000 observaciones simuladas**: es un
  ejemplo de método, no evidencia empírica. Decirlo si se cita.
- `MLcostForecasting2022` usa **LSTM**, no árboles: cita ML > EVM, no
  respaldo de XGBoost.
- `AIcostEstimation2024` (MDPI) y `Shen2025` (conferencia IEEE menor) y
  `MLdrivenERP2023`: apoyo secundario. Las fuentes fuertes de 2.4 son
  Shmueli2010, Vandevoorde2006, Wauters2016, AutoMLpipeline2025,
  Flyvbjerg2002 y Elmousalami2020.
- Elmousalami2020 recibió una Discussion (Sonmez & Uysal 2021, JCEM
  147(6), DOI 10.1061/(ASCE)CO.1943-7862.0002048): si el tribunal lo
  conoce, conviene mencionar que el resultado XGBoost fue debatido.

### Hilo sugerido (sólo orden, no prosa)

2.4.1: Davenport2007 (definición) → Delen2013 / Lepenioti2020 (tríada;
Power BI = descriptiva, ML = predictiva, prescriptiva = futuro) →
Shmueli2010 (predecir ≠ explicar → evaluación fuera de muestra) →
Waller2013 (dominio + método).
2.4.2: Fleming2010 (EVM) → Vandevoorde2006 (límite para duración) →
Wauters2016, MLcostForecasting2022, AutoMLpipeline2025 (ML > EVM/ES, con
la condición de similitud histórico/activo).
2.4.3: Flyvbjerg2002 + Habibi2018 (desviaciones sistemáticas, >50% en EPC)
→ Elmousalami2020 + AIcostEstimation2024 (árboles/boosting en costo) →
XGBoostCostOverrun2026 (XGBoost+SHAP, simulado) → Shen2025 (reglas de
dominio en XGBoost para retraso).
