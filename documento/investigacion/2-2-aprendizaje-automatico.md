# Brief de investigación — 2.2 Aprendizaje Automático (Cap. II)

Fecha: 2026-09-16. Investigador. Verificación: CrossRef (DOI), OpenAlex,
arXiv, JMLR, Open Library (ISBN), sitios de autor/editorial. Todo lo que no
pude verificar está marcado como tal. Las entradas BibLaTeX son candidatas:
se cargan por Zotero (`documento/09-setup-zotero.md`), no a mano.

Resumen: 12 fuentes núcleo (todas verificadas) + 5 opcionales verificadas.
Ninguna de las keys existe todavía en `documento.bib`. Ver "Notas para el
redactor" al final, incluidos **errores encontrados en entradas existentes
de `documento.bib`**.

Convención de claims: **[V]** = verificado en abstract/texto/índice;
**[V-cap]** = verificado a nivel de capítulo (título y páginas por CrossRef),
número de sección tomado del índice conocido de la obra, confirmar en el PDF
antes de citar la sección exacta.

---

## 2.2.1 Tipos de Aprendizaje

### Mitchell1997

```bibtex
@book{Mitchell1997,
  author    = {Mitchell, Tom M.},
  title     = {Machine Learning},
  publisher = {McGraw-Hill},
  address   = {New York},
  year      = {1997},
  isbn      = {0070428077},
  pagetotal = {414}
}
```

Verificación: página del autor (cs.cmu.edu/~tom/mlbook.html: McGraw-Hill,
1997, ISBN 0070428077, 414 pp., 13 capítulos) y Open Library (ISBN
0070428077, McGraw-Hill, marzo 1997).

Claims:
- [V] Definición canónica del campo: "the study of computer algorithms that
  improve automatically through experience" (descripción del libro; la
  definición formal "A computer program is said to learn from experience E
  with respect to some class of tasks T and performance measure P..." está en
  el cap. 1, §1.1, p. 2 — confirmar página en el ejemplar).
- [V] Existe un capítulo dedicado a árboles de decisión (cap. 3, "Decision
  Tree Learning") y otro a aprendizaje por refuerzo (cap. 13,
  "Reinforcement Learning") y uno a evaluación de hipótesis (cap. 5).

Por qué aplica: fuente fundacional para abrir 2.2 con una definición de ML
citable y para nombrar el aprendizaje por refuerzo como paradigma distinto
del supervisado (el proyecto sólo usa supervisado).

### Hastie2009

```bibtex
@book{Hastie2009,
  author    = {Hastie, Trevor and Tibshirani, Robert and Friedman, Jerome},
  title     = {The Elements of Statistical Learning},
  subtitle  = {Data Mining, Inference, and Prediction},
  edition   = {2},
  series    = {Springer Series in Statistics},
  publisher = {Springer},
  address   = {New York},
  year      = {2009},
  doi       = {10.1007/978-0-387-84858-7},
  isbn      = {9780387848570}
}
```

Verificación: CrossRef DOI 10.1007/978-0-387-84858-7 (Springer New York,
2009, ISBN 9780387848570 impreso / 9780387848587 electrónico). Capítulos
verificados por DOI de capítulo:
- cap. 2 "Overview of Supervised Learning", pp. 9–41 (…_2)
- cap. 7 "Model Assessment and Selection", pp. 219–259 (…_7)
- cap. 9 "Additive Models, Trees, and Related Methods", pp. 295–336 (…_9)
- cap. 10 "Boosting and Additive Trees", pp. 337–387 (…_10)
- cap. 15 "Random Forests", pp. 587–604 (…_15)

Claims:
- [V-cap] Distinción supervisado / no supervisado: cap. 2 trata el
  supervisado (predecir una salida a partir de entradas); el no supervisado
  es el cap. 14 (no verificado por DOI, mismo índice).
- [V-cap] Regresión vs. clasificación como los dos tipos de problema
  supervisado según la salida sea cuantitativa o cualitativa (cap. 2, §2.1–2.2).
- [V-cap] Compromiso sesgo–varianza, sobreajuste y complejidad del modelo
  (cap. 7, §7.2–7.3); validación cruzada K-fold (cap. 7, §7.10).
- [V-cap] Árboles de regresión y clasificación, CART (cap. 9, §9.2).
- [V-cap] Boosting como método de ensamble y gradient boosting como
  optimización numérica en el espacio de funciones (cap. 10, §10.1 y
  §10.10); regularización por shrinkage y submuestreo (§10.12).
- [V-cap] Bosques aleatorios como ensamble por bagging de árboles (cap. 15).

Por qué aplica: es la referencia estándar que cubre de una vez 2.2.1, 2.2.2
y 2.2.3; permite citar teoría sin depender de un manual de práctica.

### James2021

```bibtex
@book{James2021,
  author    = {James, Gareth and Witten, Daniela and Hastie, Trevor and Tibshirani, Robert},
  title     = {An Introduction to Statistical Learning},
  subtitle  = {with Applications in {R}},
  edition   = {2},
  series    = {Springer Texts in Statistics},
  publisher = {Springer},
  address   = {New York},
  year      = {2021},
  doi       = {10.1007/978-1-0716-1418-1},
  isbn      = {9781071614174}
}
```

Verificación: CrossRef DOI 10.1007/978-1-0716-1418-1 (Springer US, 2021,
ISBN 9781071614174 / 9781071614181). statlearning.com confirma 2.ª ed. 2021
(R) y edición Python 2023. Capítulos verificados por DOI de capítulo:
- cap. 2 "Statistical Learning", pp. 15–57
- cap. 4 "Classification", pp. 129–195
- cap. 5 "Resampling Methods", pp. 197–223
- cap. 8 "Tree-Based Methods", pp. 327–365

Claims:
- [V-cap] Supervisado vs. no supervisado (cap. 2, §2.1.4); regresión vs.
  clasificación (§2.1.5).
- [V-cap] Error de entrenamiento vs. error de prueba, sobreajuste,
  compromiso sesgo–varianza (cap. 2, §2.2); MSE como medida de calidad en
  regresión (§2.2.1).
- [V-cap] Matriz de confusión, sensibilidad y especificidad (cap. 4, §4.4.2
  en la 2.ª ed.; confirmar numeración).
- [V-cap] Conjunto de validación, LOOCV y validación cruzada k-fold, y sus
  sesgos/varianzas (cap. 5, §5.1).
- [V-cap] Árboles de decisión, bagging, random forests, boosting (cap. 8,
  §8.1–8.2); incluye hiperparámetros de boosting: número de árboles,
  shrinkage λ, profundidad d (§8.2.3).

Por qué aplica: versión introductoria y más citable que ESL para
definiciones de 2.2.1 y 2.2.2, con el mismo linaje de autores. Útil para
definir sobreajuste y CV con lenguaje accesible al tribunal.

---

## 2.2.2 Aprendizaje Supervisado

(Además de Hastie2009 cap. 2 y 7, y James2021 cap. 2, 4 y 5.)

### Geron2022

```bibtex
@book{Geron2022,
  author    = {G{\'e}ron, Aur{\'e}lien},
  title     = {Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow},
  subtitle  = {Concepts, Tools, and Techniques to Build Intelligent Systems},
  edition   = {3},
  publisher = {O'Reilly Media},
  address   = {Sebastopol, CA},
  year      = {2022},
  isbn      = {9781098125974}
}
```

Verificación: Open Library ISBN 9781098125974 (O'Reilly, 2022, autor
Aurélien Géron); repositorio oficial github.com/ageron/handson-ml3 confirma
"third edition" y el índice de capítulos (01 The Machine Learning Landscape,
02 End-to-End ML Project, 03 Classification, 06 Decision Trees, 07 Ensemble
Learning and Random Forests, 09 Unsupervised Learning, 18 Reinforcement
Learning, …). La página de O'Reilly devolvió 403; no verifiqué títulos de
secciones internas.

Claims:
- [V-cap] Taxonomía de sistemas de ML: supervisado / no supervisado /
  por refuerzo (cap. 1); sobreajuste y "testing and validating" (cap. 1).
- [V-cap] Flujo de un proyecto de ML de punta a punta con Scikit-learn:
  split entrenamiento/prueba, limpieza, codificación de categóricas,
  escalado, pipelines, validación cruzada (cap. 2).
- [V-cap] Métricas de clasificación: matriz de confusión, precisión,
  sensibilidad (recall), F1 (cap. 3).
- [V-cap] Árboles de decisión (cap. 6) y ensambles incluyendo boosting
  (cap. 7).

Por qué aplica: manual de práctica alineado con el stack del proyecto
(Scikit-learn); sirve para citar el "cómo" de 2.2.2 y 2.2.4 sin inventar
procedimientos.

### Kohavi1995

```bibtex
@inproceedings{Kohavi1995,
  author    = {Kohavi, Ron},
  title     = {A Study of Cross-Validation and Bootstrap for Accuracy Estimation and Model Selection},
  booktitle = {Proceedings of the 14th International Joint Conference on Artificial Intelligence ({IJCAI}'95)},
  volume    = {2},
  pages     = {1137--1143},
  publisher = {Morgan Kaufmann},
  address   = {San Francisco, CA},
  year      = {1995}
}
```

Verificación: PDF oficial ijcai.org/Proceedings/95-2/Papers/016.pdf
(leído); OpenAlex: vol. 2, pp. 1137–1143, ~10.700 citas. Sin DOI oficial
(OpenAlex lista uno de Zenodo; no usarlo).

Claims:
- [V] Abstract: "for selecting a good classifier from a set of classifiers
  (model selection), ten-fold cross-validation may be better than the more
  expensive leave-one-out cross-validation"; experimento con >500.000
  corridas de C4.5 y Naive-Bayes.
- [V] Conclusión del abstract: "the best method to use for model selection
  is ten-fold stratified cross validation, even if computation power allows
  using more folds".
- [V] Introducción: leave-one-out es casi insesgado pero de alta varianza
  ("leave-one-out is almost unbiased, but it has high variance leading to
  unreliable estimates").

Por qué aplica: respalda la elección de validación cruzada k-fold
estratificada (k=10) para evaluar los tres modelos y para selección de
hiperparámetros.

### Sokolova2009

```bibtex
@article{Sokolova2009,
  author  = {Sokolova, Marina and Lapalme, Guy},
  title   = {A systematic analysis of performance measures for classification tasks},
  journal = {Information Processing \& Management},
  volume  = {45},
  number  = {4},
  pages   = {427--437},
  year    = {2009},
  doi     = {10.1016/j.ipm.2009.03.002}
}
```

Verificación: CrossRef DOI (título, autores, revista, 45(4), 427–437,
2009). Abstract obtenido vía búsqueda web (dblp/ScienceDirect), no vía API.

Claims:
- [V] Analiza 24 medidas de desempeño para clasificación binaria,
  multiclase, multietiqueta y jerárquica, todas derivadas de la matriz de
  confusión.
- [V] Introduce la "measure invariance taxonomy": qué cambios en la matriz
  de confusión no alteran cada medida (p. ej. exactitud vs. precisión,
  sensibilidad, F-score reaccionan distinto ante cambios en la distribución
  de clases).

Por qué aplica: justifica reportar exactitud, precisión, sensibilidad y F1
juntas (y la matriz de confusión) en el caso de clasificación de
desviaciones, en vez de sólo exactitud, sobre todo si las clases están
desbalanceadas.

### Chai2014

```bibtex
@article{Chai2014,
  author  = {Chai, T. and Draxler, R. R.},
  title   = {Root mean square error ({RMSE}) or mean absolute error ({MAE})? -- {Arguments} against avoiding {RMSE} in the literature},
  journal = {Geoscientific Model Development},
  volume  = {7},
  number  = {3},
  pages   = {1247--1250},
  year    = {2014},
  doi     = {10.5194/gmd-7-1247-2014}
}
```

Verificación: CrossRef DOI + abstract completo vía OpenAlex.

Claims:
- [V] "The RMSE is more appropriate to represent model performance than the
  MAE when the error distribution is expected to be Gaussian."
- [V] RMSE cumple la desigualdad triangular (es una métrica de distancia).
- [V] "a combination of metrics, including but certainly not limited to
  RMSEs and MAEs, are often required to assess model performance."
- [V] MAE penaliza menos errores grandes que RMSE (implícito en la
  discusión RMSE vs. MAE; el abstract lo sostiene indirectamente — citar
  con cuidado o apoyarse en James2021 §2.2 para MSE).

Por qué aplica: respalda reportar RMSE y MAE juntos en los dos casos de
regresión (sobrecosto y retraso) y explicar qué aporta cada uno. Para R²
no encontré una fuente puntual; usar James2021 cap. 3 (§3.1.3, "R²
statistic") — [V-cap], capítulo 3 no verificado por DOI en esta pasada.

---

## 2.2.3 Algoritmos de Aprendizaje Supervisado: Gradient Boosting y XGBoost

(Además de Hastie2009 cap. 9, 10 y 15; James2021 cap. 8; Geron2022 cap. 6–7.)

### Friedman2001

```bibtex
@article{Friedman2001,
  author  = {Friedman, Jerome H.},
  title   = {Greedy function approximation: {A} gradient boosting machine},
  journal = {The Annals of Statistics},
  volume  = {29},
  number  = {5},
  pages   = {1189--1232},
  year    = {2001},
  doi     = {10.1214/aos/1013203451}
}
```

Verificación: CrossRef DOI (Annals of Statistics 29(5), 2001, IMS);
Project Euclid confirma pp. 1189–1232, octubre 2001, abstract.

Claims:
- [V] Reformula la estimación de funciones como optimización numérica en el
  espacio de funciones (no de parámetros); conecta expansiones aditivas por
  etapas (stagewise) con descenso por gradiente ("steepest-descent
  minimization").
- [V] Propone un marco general de "gradient boosting" aplicable a distintos
  criterios de ajuste: mínimos cuadrados, desviación absoluta y Huber para
  regresión; verosimilitud logística multiclase para clasificación.
- [V] Con árboles de regresión como aprendices base, define los modelos
  "TreeBoost", con herramientas de interpretación; el autor destaca
  robustez e interpretabilidad para datos reales.

Por qué aplica: fuente primaria del algoritmo que usa XGBoost; permite
explicar boosting de gradiente para regresión (sobrecosto, retraso) y
clasificación (desviación) con la misma base teórica.

### Chen2016

```bibtex
@inproceedings{Chen2016,
  author    = {Chen, Tianqi and Guestrin, Carlos},
  title     = {{XGBoost}: {A} Scalable Tree Boosting System},
  booktitle = {Proceedings of the 22nd {ACM} {SIGKDD} International Conference on Knowledge Discovery and Data Mining ({KDD} '16)},
  pages     = {785--794},
  publisher = {ACM},
  address   = {San Francisco, CA},
  year      = {2016},
  doi       = {10.1145/2939672.2939785}
}
```

Verificación: CrossRef DOI (KDD '16, pp. 785–794, ACM); abstract vía arXiv
1603.02754 y Semantic Scholar (~61.500 citas).

Claims:
- [V] "Tree boosting is a highly effective and widely used machine learning
  method"; XGBoost es un sistema de boosting de árboles escalable, "used
  widely by data scientists to achieve state-of-the-art results on many
  machine learning challenges".
- [V] Aportes técnicos: algoritmo "sparsity-aware" para datos dispersos
  (maneja valores faltantes de forma nativa), "weighted quantile sketch"
  para aprendizaje aproximado de árboles, y optimizaciones de caché,
  compresión y sharding.
- [V] Escala "beyond billions of examples using far fewer resources than
  existing systems".
- No verificado con el abstract (está en el cuerpo, §2.1–2.2): función
  objetivo regularizada (término de complejidad Ω con γ y λ) y aproximación
  de segundo orden. Citar con número de sección sólo tras leer el PDF.

Por qué aplica: fuente primaria de la biblioteca elegida; el manejo nativo
de faltantes es relevante porque el histórico del ERP tiene defectos D1–D6.

### Grinsztajn2022

```bibtex
@inproceedings{Grinsztajn2022,
  author    = {Grinsztajn, L{\'e}o and Oyallon, Edouard and Varoquaux, Ga{\"e}l},
  title     = {Why do tree-based models still outperform deep learning on typical tabular data?},
  booktitle = {Advances in Neural Information Processing Systems 35 ({NeurIPS} 2022), Datasets and Benchmarks Track},
  year      = {2022},
  eprint    = {2207.08815},
  eprinttype = {arxiv}
}
```

Verificación: proceedings.neurips.cc (título con "typical", autores,
NeurIPS 2022 Datasets and Benchmarks Track, abstract); arXiv 2207.08815
(título del preprint sin "typical"). Usar el título de NeurIPS.

Claims:
- [V] Benchmark de 45 datasets tabulares comparando deep learning vs.
  modelos de árboles (XGBoost, Random Forests): "tree-based models remain
  state-of-the-art on medium-sized data (~10K samples) even without
  accounting for their superior speed".
- [V] Explicación por sesgos inductivos: los árboles son robustos a
  variables no informativas, preservan la orientación de los datos y
  aprenden funciones irregulares; las redes neuronales no.
- [V] Metodología contempla la búsqueda de hiperparámetros, no sólo el
  ajuste.

Por qué aplica: justificación directa de elegir gradient boosting y no
redes neuronales para un dataset tabular de tamaño medio como el del ERP.

### ShwartzZiv2022

```bibtex
@article{ShwartzZiv2022,
  author  = {Shwartz-Ziv, Ravid and Armon, Amitai},
  title   = {Tabular data: {Deep} learning is not all you need},
  journal = {Information Fusion},
  volume  = {81},
  pages   = {84--90},
  year    = {2022},
  doi     = {10.1016/j.inffus.2021.11.011}
}
```

Verificación: CrossRef DOI (Information Fusion 81, 84–90, 2022); abstract
vía arXiv 2106.03253 y Semantic Scholar (~2.300 citas).

Claims:
- [V] "Tree ensemble models (such as XGBoost) are usually recommended for
  classification and regression problems with tabular data."
- [V] Comparación rigurosa de modelos profundos recientes para tabular vs.
  XGBoost: "XGBoost outperforms these deep models across the datasets,
  including the datasets used in the papers that proposed the deep models".
- [V] "XGBoost requires much less tuning."
- [V] Un ensamble de modelos profundos + XGBoost supera a XGBoost solo
  (matiz honesto para "trabajo futuro").

Por qué aplica: segunda evidencia independiente para 2.2.3; el punto de
"menos tuning" pesa en un proyecto de un solo desarrollador con plazo
acotado.

---

## 2.2.4 Feature Engineering

(Además de Geron2022 cap. 2.)

### Kuhn2019

```bibtex
@book{Kuhn2019,
  author    = {Kuhn, Max and Johnson, Kjell},
  title     = {Feature Engineering and Selection},
  subtitle  = {A Practical Approach for Predictive Models},
  publisher = {Chapman and Hall/CRC},
  address   = {Boca Raton, FL},
  year      = {2019},
  doi       = {10.1201/9781315108230},
  isbn      = {9781138079229}
}
```

Verificación: CrossRef DOI 10.1201/9781315108230 (Chapman and Hall/CRC,
2019); Open Library ISBN 9781138079229 (tapa dura, 298 pp.). Índice
verificado en la versión abierta feat.engineering:
1 Introduction · 2 Illustrative Example · 3 A Review of the Predictive
Modeling Process · 4 Exploratory Visualizations · 5 Encoding Categorical
Predictors · 6 Engineering Numeric Predictors · 7 Detecting Interaction
Effects · 8 Handling Missing Data · 9 Working with Profile Data ·
10 Feature Selection Overview · 11 Greedy Search Methods · 12 Global
Search Methods.

Claims:
- [V] Codificación de predictores categóricos (cap. 5): dummy/one-hot,
  categorías raras, codificación supervisada (effect/likelihood encoding),
  variables con muchos niveles.
- [V] Transformación de predictores numéricos (cap. 6): escalado/centrado,
  transformaciones para asimetría, binning.
- [V] Manejo de datos faltantes (cap. 8): visualización del patrón de
  faltantes, eliminación, imputación, y modelos tolerantes a faltantes.
- [V] Selección de variables (caps. 10–12): filtros, wrappers, búsqueda
  greedy (RFE, stepwise) y global (algoritmos genéticos, simulated
  annealing); riesgo de sesgo de selección si se hace fuera del remuestreo.
- [V] Proceso de modelado predictivo: división de datos, remuestreo,
  ajuste de hiperparámetros y evaluación (cap. 3).

Por qué aplica: cubre casi todo el temario de 2.2.4 (categóricas,
faltantes, escalado, selección) con lenguaje de modelado predictivo; el
manejo de faltantes conecta con los defectos D1–D6 del ERP. Nota: las
técnicas de agregación temporal (ventanas, lags sobre certificaciones)
no están tratadas como capítulo propio en este libro; ver "Notas".

---

## Opcionales verificadas (usar si el redactor necesita reforzar un punto)

### Breiman2001 — bagging / random forests como ensamble (2.2.3)

```bibtex
@article{Breiman2001,
  author  = {Breiman, Leo},
  title   = {Random Forests},
  journal = {Machine Learning},
  volume  = {45},
  number  = {1},
  pages   = {5--32},
  year    = {2001},
  doi     = {10.1023/A:1010933404324}
}
```
Verificado por CrossRef. Claim [V-cap]: ensamble de árboles por bagging con
selección aleatoria de variables; contraste bagging (paralelo) vs. boosting
(secuencial) para explicar en qué se diferencia XGBoost. No leí el abstract
en esta pasada.

### Breiman1984 — CART (2.2.3)

```bibtex
@book{Breiman1984,
  author    = {Breiman, Leo and Friedman, Jerome H. and Olshen, Richard A. and Stone, Charles J.},
  title     = {Classification and Regression Trees},
  publisher = {Chapman and Hall/CRC},
  year      = {1984},
  doi       = {10.1201/9781315139470},
  note      = {Reedición Routledge, 2017}
}
```
Verificado por CrossRef sobre la reedición 2017 (Routledge, ISBN
9781315139470). El año original 1984 (Wadsworth) es de conocimiento general,
no verificado por API. Claim: origen del algoritmo CART que usan tanto
Scikit-learn como los aprendices base de gradient boosting.

### Guyon2003 — selección de variables (2.2.4)

```bibtex
@article{Guyon2003,
  author  = {Guyon, Isabelle and Elisseeff, Andr{\'e}},
  title   = {An Introduction to Variable and Feature Selection},
  journal = {Journal of Machine Learning Research},
  volume  = {3},
  pages   = {1157--1182},
  year    = {2003}
}
```
Verificado en jmlr.org/papers/v3/guyon03a.html. Claim [V] (abstract): tres
objetivos de la selección de variables — mejorar el desempeño del
predictor, obtener modelos más rápidos y económicos, y entender mejor el
proceso que generó los datos. Sin DOI oficial de JMLR (OpenAlex lista uno
de ACM DL 10.5555/…, no usarlo).

### Pedregosa2011 — Scikit-learn (2.2.3 / sección de tecnologías)

```bibtex
@article{Pedregosa2011,
  author  = {Pedregosa, Fabian and Varoquaux, Ga{\"e}l and Gramfort, Alexandre and Michel, Vincent and Thirion, Bertrand and Grisel, Olivier and Blondel, Mathieu and Prettenhofer, Peter and Weiss, Ron and Dubourg, Vincent and Vanderplas, Jake and Passos, Alexandre and Cournapeau, David and Brucher, Matthieu and Perrot, Matthieu and Duchesnay, {\'E}douard},
  title   = {Scikit-learn: {Machine} Learning in {Python}},
  journal = {Journal of Machine Learning Research},
  volume  = {12},
  pages   = {2825--2830},
  year    = {2011}
}
```
Verificado en jmlr.org/papers/v12/pedregosa11a.html (16 autores, vol. 12,
pp. 2825–2830). Claim [V]: módulo Python que integra algoritmos de ML para
problemas supervisados y no supervisados de escala media, con énfasis en
facilidad de uso, rendimiento, documentación y consistencia de API;
licencia BSD. Es la cita oficial que pide el proyecto Scikit-learn.

### Zheng2018 — feature engineering (2.2.4)

```bibtex
@book{Zheng2018,
  author    = {Zheng, Alice and Casari, Amanda},
  title     = {Feature Engineering for Machine Learning},
  subtitle  = {Principles and Techniques for Data Scientists},
  publisher = {O'Reilly Media},
  address   = {Sebastopol, CA},
  year      = {2018},
  isbn      = {9781491953242}
}
```
Verificado por Open Library (O'Reilly, abril 2018, 218 pp., autoras Alice
Zheng y Amanda Casari). Índice no verificado (O'Reilly 403); por la
descripción editorial cubre codificación de categóricas (one-hot, feature
hashing, bin-counting), escalado y transformaciones log/potencia de
numéricas. Prefiero Kuhn2019, que sí tiene índice verificado.

---

## Notas para el redactor

### Keys: existentes vs. nuevas

- **Ya en `documento.bib`:** ninguna de las keys de este brief. Las seis
  del encargo (`XGBoostCostOverrun2026`, `DomainAwareXGBoost2025`,
  `AIcostEstimation2024`, `MLcostForecasting2022`, `AutoMLpipeline2025`,
  `MLdrivenERP2023`) son de aplicación (Cap. 2.4 / estado del arte), no de
  fundamentos; no las usé en 2.2. Ver advertencia abajo.
- **Nuevas (cargar por Zotero):** Mitchell1997, Hastie2009, James2021,
  Geron2022, Kohavi1995, Sokolova2009, Chai2014, Friedman2001, Chen2016,
  Grinsztajn2022, ShwartzZiv2022, Kuhn2019; opcionales Breiman2001,
  Breiman1984, Guyon2003, Pedregosa2011, Zheng2018.

### Claims sin fuente verificada (no afirmar sin cita o buscar una)

1. **R²** como métrica de regresión: no verifiqué una fuente puntual.
   Candidato: James2021 cap. 3 (§3.1.3 "Assessing the Accuracy of the
   Model" — R² statistic), pero el cap. 3 no lo verifiqué por DOI en esta
   pasada. Alternativa: cualquier texto de regresión lineal.
2. **Agregaciones temporales / lags / ventanas** como técnica de feature
   engineering sobre datos operativos: ninguna de las fuentes verificadas
   lo trata como sección propia. Kuhn2019 cap. 9 ("Working with Profile
   Data") es lo más cercano, pero no es lo mismo. Si se afirma, hacerlo
   como decisión de diseño del proyecto, no como "técnica estándar según
   X", o pedir una búsqueda puntual (feature engineering para series /
   datos transaccionales).
3. **Función objetivo regularizada y aproximación de segundo orden de
   XGBoost**: está en el cuerpo de Chen2016 (§2), no en el abstract. Citar
   con sección sólo después de leer el PDF.
4. **Números de sección de Hastie2009 y James2021** (§7.10, §10.10, §2.1.4,
   §5.1, etc.): capítulos y páginas están verificados por DOI; los números
   de sección los tomé del índice conocido de las obras. Confirmar en el
   PDF antes de poner "§" en el texto.
5. **Definición formal de Mitchell (E, T, P)**: la página exacta (cap. 1,
   p. 2) no la verifiqué; confirmar en el ejemplar.
6. **Manejo de faltantes en XGBoost = "sparsity-aware"**: el abstract dice
   "sparsity-aware algorithm for sparse data"; que eso incluya valores
   faltantes está en el cuerpo (§3.4). Misma precaución que el punto 3.

### ADVERTENCIA: errores en entradas existentes de `documento.bib`

Al verificar los DOIs de las seis entradas del encargo encontré que
**cuatro tienen autores o DOI incorrectos** (probablemente generadas sin
verificar). No las edité (no es mi ámbito); hay que corregirlas por Zotero
antes de citarlas en cualquier capítulo:

| Key | Problema | Dato correcto (CrossRef) |
|---|---|---|
| `MLdrivenERP2023` | Autor "Hassan, Ahmed" es falso; año/volumen faltan | Jawad, Zainab Nadhim; Balázs, Villányi. *Beni-Suef Univ. J. Basic Appl. Sci.* **13**, art. 4, **2024**. DOI 10.1186/s43088-023-00460-y (correcto) |
| `AIcostEstimation2024` | DOI 10.3390/make6020035 apunta a otro paper (Pham & Nguyen, "Soil Sampling Map Optimization…"); autor "Akter" falso | Shamim, Md. Mahfuzul Islam; Abdul Hamid, Abu Bakar bin; Nyamasvisva, Tadiwa Elisha; Rafi, Najmus Saqib Bin. *Modelling* **6**(2), **2025**. DOI **10.3390/modelling6020035** |
| `MLcostForecasting2022` | DOI 10.1016/j.ifacol.2022.09.537 apunta a otro paper (Nagi); autor "Pereira" falso | İnan, Tolga; Narbaev, Timur; Hazir, Öncü. *IFAC-PapersOnLine* **55**(10), 3286–3291, 2022. DOI **10.1016/j.ifacol.2022.10.127** |
| `AutoMLpipeline2025` | DOI 10.1016/j.autcon.2025.004662 no existe (404); autor "Zhang" falso | Ottaviani, Filippo Maria; Ballesteros-Pérez, Pablo; Narbaev, Timur. *Automation in Construction* **178**, 2025. DOI **10.1016/j.autcon.2025.106426** |
| `XGBoostCostOverrun2026` | DOI correcto, pero autor "Kumar, Rajesh" es falso | Nguyen, Minh-Thu; Phan, Van-Tien; Tran, Ha-Lan; Nguyen Vu, Minh-Anh. *Asian J. Civil Eng.*, 2026. DOI 10.1007/s42107-026-01686-8 |
| `DomainAwareXGBoost2025` | `@unpublished` de ResearchGate, sin DOI: no pude verificar autores ni existencia | Buscar el documento real o descartar |

No verifiqué el contenido (abstracts) de estas cinco; sólo metadatos. Eso
corresponde al brief de 2.4 / estado del arte.

## Verificaciones posteriores (2026-09-17, redactor, sobre PDF completo)

- **Chen2016** (arXiv 1603.02754): [V] §2.1 "Regularized Learning Objective",
  ec. (2): Ω(f) = γT + ½λ‖w‖², T = número de hojas, w = pesos de hoja;
  "the second term Ω penalizes the complexity of the model". [V] §3.4
  "Sparsity-aware Split Finding", Alg. 3 / Fig. 4: dirección por defecto en
  cada nodo, aprendida de los datos, para valores ausentes. Resuelve las
  notas 3 y 6 de arriba.
- **James2021** (ISLR2, PDF de statlearning.com): [V] §3.1.3 "Assessing the
  Accuracy of the Model", apartado "R² Statistic", ec. (3.17): proporción
  de varianza explicada, independiente de la escala de Y; "what is a good
  R² value […] will depend on the application". Resuelve la nota 1.
- Soporte nativo de categóricas (sin key en el brief; candidatas `@online`
  en comentario al pie de 2.2 en `content/chapter-2/content.tex`): docs
  XGBoost "Since version 1.5, XGBoost has support for categorical data"
  (`enable_categorical`); docs scikit-learn §1.11.1.1.4 "Categorical
  Features Support" (`categorical_features` en `HistGradientBoosting*`).
