# Brief de investigación: 2.2 y Cap. III, modelos con muestras chicas

Fecha: 2026-09-27. Investigador. Complementa (no reemplaza) a
`2-2-aprendizaje-automatico.md`. Sirve para reescribir 2.2 y para respaldar
el apartado DISEÑO DE MODELOS ML (`content/chapter-3/sec-04-arquitectura.tex`)
y `sec-01-datos-historicos.tex`.

Método: metadatos por CrossRef (todos los DOI resueltos); abstracts por
OpenAlex/PubMed; texto completo leído (pdftotext) cuando había acceso abierto
(arXiv, PMC/Europe PMC, JMLR, BMC, copias de autor). La documentación de
scikit-learn se leyó en la versión 1.9.1 (vigente al 2026-09-27).

Convención:
- **[V]** verificado en el texto completo, con cita textual o paráfrasis y
  página o sección.
- **[V-abs]** verificado solo en el abstract (no se leyó el cuerpo).
- **[V-cap]** solo a nivel de capítulo o índice.
- **NO dice**: límites de la fuente. No usarla para esas afirmaciones.

Keys que **ya existen** en `documento.bib` y se reutilizan: `Hastie2009`,
`Breiman1984`, `Grinsztajn2022`, `ShwartzZiv2022`, `Kohavi1995`,
`Pedregosa2011`, `Chen2016`. Todas las demás son **nuevas** (entrar por
Zotero, ver `09-setup-zotero.md`).

---

## ALERTAS para el Cap. III (leer antes que nada)

Al verificar las fuentes aparecen cuatro diferencias entre lo que dice el
diseño actual y lo que dicen las fuentes. Las tiene que resolver Franco o el
redactor. No las corregí porque no es mi tarea.

1. **"Una variable por cada diez casos" no es la regla de Peduzzi.** La regla
   EPV cuenta *eventos*, es decir, el grupo menos frecuente del desenlace
   binario (van Smeden 2016, Background: "the number of subjects in the smaller
   of two outcome groups ('number of events')"). No cuenta el total de casos.
   Con 20 sobrecostos positivos, 10 EPV da **2** variables candidatas; con 14
   retrasos, da **1**. Los 79 / 10 ≈ 8 del texto actual salen de dividir el
   *total* de proyectos. Eso se parece más a una regla de "sujetos por
   variable" para desenlaces continuos, y Peduzzi no la respalda. Para
   desenlaces continuos (log del cociente, días) la referencia es Riley et al.
   2019 Parte I (`RileyPartI2019`). Su ejemplo aplicado pide 36,7 sujetos por
   parámetro, pero es solo un ejemplo y no una regla. Opciones: (a) justificar
   las 8 variables como tope para la *regresión continua* con Riley Parte I y
   reconocer que para la *alerta binaria* el EPV sería de 2 o 1; (b) bajar el
   tope.
2. **Las variables se cuentan como candidatas, no como elegidas.** Riley 2019
   Parte II §1: la regla es "10 events per candidate predictor (variable),
   where 'candidate' indicates a predictor [...] considered, before any
   variable selection". Si dentro de cada partición se eligen 8 de un
   conjunto mayor, el conteo que importa es el del conjunto mayor. La
   selección anidada corrige el *sesgo de la estimación* (punto 6), pero no
   reduce el sobreajuste por tamaño. Wynants et al. 2015 [V-abs]: "Up to 50
   EPV may be needed when variable selection is performed."
3. **"El gradient boosting necesitaría un orden de magnitud más de casos"**
   solo tiene respaldo indirecto. van der Ploeg et al. 2014 muestran "over 10
   times as many events per variable" para random forest, SVM y redes
   neuronales, y **no evaluaron gradient boosting**. Decirlo de GBM es una
   extrapolación: redactar como "por analogía con otros métodos flexibles
   basados en árboles". En el mismo estudio, **CART (árbol único) rindió
   mal** (ver punto 4). Es un contrapeso que conviene mencionar al justificar
   el árbol de profundidad ≤ 3.
4. **Grinsztajn2022 y ShwartzZiv2022 no se pueden usar para n = 79.**
   Grinsztajn *excluye* conjuntos con menos de 3.000 filas y trunca el
   entrenamiento a 10.000. Shwartz-Ziv usa conjuntos de 7.000 a 1.000.000
   filas. Sirven para decir "árboles > redes en tabulares de tamaño medio",
   no para decir nada sobre 79 proyectos (ver punto 2).

Además, dos cosas sin fuente verificada (ver al final): que las filas
proyecto-mes "no suman n efectivo", y la operación de repetir 10 veces la
validación agrupada en scikit-learn.

---

## 1. Regla de ~10 eventos por variable (EPV)

### Peduzzi1996 (nueva)
Peduzzi, Concato, Kemper, Holford y Feinstein. *J Clin Epidemiol* 49(12),
1373–1379, 1996. DOI 10.1016/S0895-4356(96)00236-3.

- [V-abs] Simulación Monte Carlo de regresión logística sobre un ensayo
  cardíaco (673 pacientes, 252 muertes, 7 predictores), con EPV = 2, 5, 10,
  15, 20 y 25 y 500 muestras por nivel.
- [V-abs] "For EPV values of 10 or greater, no major problems occurred. For
  EPV values less than 10, however, the regression coefficients were biased
  in both positive and negative directions"; además, intervalos al 90 % con
  mala cobertura, Wald conservador y "paradoxical associations (significance
  in the wrong direction) were increased".
- [V-abs] Los propios autores matizan: "other factors (such as the total
  number of events, or sample size) may influence the validity".
- **NO dice**: nada sobre modelos predictivos evaluados fuera de la muestra
  (mide sesgo de coeficientes y pruebas de significación), ni sobre regresión
  lineal, ridge o árboles. El "evento" de su estudio es la muerte, el
  desenlace menos frecuente. No respalda "10 *casos* por variable".

Por qué aplica: es el origen citado de la regla. Úsese para el caso binario
(alerta de sobrecosto o retraso) y siempre junto a una revisión crítica.

### vanSmeden2016 (nueva)
van Smeden, de Groot, Moons, Collins, Altman, Eijkemans y Reitsma. *BMC Med
Res Methodol* 16, art. 163, 2016. DOI 10.1186/s12874-016-0267-3.

- [V] Background: define "events" como "the number of subjects in the
  smaller of two outcome groups" en relación con el número de coeficientes
  estimados.
- [V-abs] De tres estudios de simulación previos, "only one supports the use
  of a minimum of 10 EPV". Conclusión: "The current evidence supporting EPV
  rules for binary logistic regression is weak."
- [V-abs] Los problemas con EPV bajo "depend on other factors such as the
  total sample size"; con pocos eventos aparece la "separation" (predicción
  perfecta); la corrección de Firth mejora las estimaciones.
- **NO dice**: una regla alternativa. No trata árboles ni ridge.

Por qué aplica: define "evento" (alerta 1) y muestra que el 10 es una
convención discutida, no un umbral demostrado.

### vanSmeden2019 (nueva)
van Smeden, Moons, de Groot, Collins, Altman, Eijkemans y Reitsma. *Stat
Methods Med Res* 28(8), 2455–2474, 2019 (en línea 2018). DOI
10.1177/0962280218784726.

- [V-abs] "EPV does not have a strong relation with metrics of predictive
  performance, and is not an appropriate criterion for (binary) prediction
  model development studies." El desempeño fuera de la muestra se aproxima
  mejor con "the number of predictors, the total sample size and the events
  fraction".
- [V-abs] Estudió el desempeño "before and after regression shrinkage and
  variable selection". No leí los resultados de esa comparación en el cuerpo:
  no citar qué encontró sobre shrinkage.
- **NO dice** (a nivel del abstract): un número mínimo concreto.

### RileyPartII2019 (nueva)
Riley, Snell, Ensor, Burke, Harrell, Moons y Collins. "Minimum sample size
for developing a multivariable prediction model: PART II — binary and
time-to-event outcomes". *Stat Med* 38(7), 1276–1296, 2019 (en línea
2018-10-24). DOI 10.1002/sim.7992. Texto completo en PMC6519266.

- [V] §1 (Introduction): "the effective sample size is often considered to
  be the number of outcome events"; regla "at least 10 events per candidate
  predictor (variable), where 'candidate' indicates a predictor [...]
  considered, before any variable selection". Por eso hablan de EPP (eventos
  por *parámetro*): un predictor categórico o no lineal consume más de un
  parámetro.
- [V] §1: "The 10 EPP rule has generated much debate"; Harrell recomienda al
  menos 15 y otros trabajos piden 20 o hasta 50; "any blanket rule of thumb
  is too simplistic".
- [V] §1: proponen tres criterios mínimos: (i) factor de shrinkage global
  ≥ 0,9; (ii) diferencia ≤ 0,05 entre el R² de Nagelkerke aparente y el
  ajustado; (iii) estimación precisa del riesgo global.
- [V] §2: sobre penalización cita a Van Houwelingen: "shrinkage works on the
  average but may fail in the particular unique problem on which the
  statistician is working."
- [V] §5.1 (ejemplo Chagas): el mínimo resultante equivale a EPP = 4,84, "
  considerably lower than the 'EPP of at least 10' rule of thumb". El número
  que sale depende del caso, en ambas direcciones.
- **NO dice**: nada sobre datos de panel ni árboles. Su marco es la regresión
  logística o de Cox.

Por qué aplica: es la revisión moderna que pide el encargo y aporta la
definición "candidata antes de la selección" (alerta 2).

### RileyPartI2019 (nueva, para los desenlaces continuos)
Riley, Snell, Ensor, Burke, Harrell, Moons y Collins. "Minimum sample size
for developing a multivariable prediction model: Part I — Continuous
outcomes". *Stat Med* 38(7), 1262–1275, 2019. DOI 10.1002/sim.7993.

- [V-abs] Para desenlaces continuos con regresión lineal, el tamaño
  necesario se expresa en sujetos (n) respecto de los parámetros candidatos
  (p), con cuatro criterios: shrinkage ≥ 0,9; diferencia ≤ 0,05 entre R²
  aparente y ajustado; margen ≤ 10 % en la desviación estándar residual; y
  estimación precisa de la media.
- [V-abs] Ejemplo: 25 parámetros requieren al menos 918 sujetos, "at least
  36.7 subjects per predictor parameter".
- **NO dice**: "10 sujetos por variable". El 36,7 es de su ejemplo y no es
  una regla general.

Por qué aplica: sobrecosto (log del cociente) y retraso (días) se modelan
como continuos. Esta es la fuente pertinente para el tope de variables del
ridge.

### RileyBMJ2020 (nueva, opcional)
Riley, Ensor, Snell, Harrell, Martin, Reitsma, Moons, van Smeden y Collins.
"Calculating the sample size required for developing a clinical prediction
model". *BMJ* 368, m441, 2020. DOI 10.1136/bmj.m441.

- [V-abs] Muchos modelos "are developed using a dataset that is too small for
  the total number of participants or outcome events. This leads to
  inaccurate predictions". Es una guía práctica del cálculo.
- No pude leer el cuerpo (BMJ devolvió 403 y no está en PMC). Para el detalle
  técnico usar Riley Parte I y II.

### Wynants2015 (nueva, opcional)
Wynants, Bouwmeester, Moons, Moerbeek, Timmerman, Van Huffel, Van Calster y
Vergouwe. *J Clin Epidemiol* 68(12), 1406–1414, 2015. DOI
10.1016/j.jclinepi.2015.02.002.

- [V-abs] En datos agrupados (pacientes dentro de centros; ICC 0–20 %), el
  grado de agrupamiento "was not meaningfully associated with the models'
  predictive performance"; un EPV mayor mejora la calibración (pendiente 0,71
  con EPV = 5 contra 0,85 con EPV = 10). "We recommend at least 10 EPV [...]
  Up to 50 EPV may be needed when variable selection is performed."
- **NO dice**: nada sobre medidas repetidas de una misma unidad en el tiempo
  (el panel proyecto-mes). Su agrupamiento es "muchos pacientes en pocos
  centros", que es otra estructura. Usarlo solo para la frase sobre
  selección de variables.

---

## 2. Modelos complejos y n chico; alcance de Grinsztajn y Shwartz-Ziv

### vanderPloeg2014 (nueva)
van der Ploeg, Austin y Steyerberg. "Modern modelling techniques are data
hungry: a simulation study for predicting dichotomous endpoints". *BMC Med
Res Methodol* 14, art. 137, 2014. DOI 10.1186/1471-2288-14-137. Texto
completo en PMC4289553.

- [V] Compara regresión logística y CART con SVM, redes neuronales y random
  forest. Mide cuántos EPV hacen falta para un AUC estable y un optimismo
  pequeño (AUC aparente − validado < 0,01).
- [V] Resultados: la regresión logística se estabiliza con 20–50 EPV
  aproximadamente, "followed by CART, SVM, NN and RF". RF, SVM y NN
  "showed instability and a high optimism even with >200 events per
  variable".
- [V] Conclusión: "Modern modelling techniques such as SVM, NN and RF may
  need over 10 times as many events per variable to achieve a stable AUC and
  a small optimism than classical modelling techniques such as LR."
- [V] Sobre CART (Resultados y Discusión): "The CART models had a stable
  performance, but at a fairly poor level"; lo atribuyen a que las continuas
  se categorizan con puntos de corte óptimos y a "possibly unnecessary
  higher-order interactions".
- **NO dice**: nada sobre gradient boosting ni XGBoost (no los evalúa).
  Tampoco trata árboles podados a profundidad fija. Sus cohortes tienen de
  1.282 a 3.181 pacientes.

Por qué aplica: es la evidencia directa de que los métodos flexibles
necesitan muchos más eventos. Respalda descartar ensambles de árboles con 20
o 14 eventos. Ver alerta 3 para GBM y la nota sobre CART.

### Grinsztajn2022 (existe en .bib)
- [V] §3.1, p. 3 (arXiv 2207.08815v1): criterio de inclusión "Not too small.
  We remove datasets with too few features (< 4) and too few samples
  (< 3 000)". Además, "d/n ratio below 1/10".
- [V] §3.2, p. 3: "We truncate the training set to 10,000 samples for bigger
  datasets. This allows us to investigate the medium-sized dataset regime."
  El régimen grande (50.000) está en el anexo A.2.
- [V] Abstract: "tree-based models remain state-of-the-art on medium-sized
  data (~10K samples)".
- [V] También excluye los datos faltantes (§3.2, "No missing data").
- **NO dice**: nada sobre conjuntos de menos de 3.000 filas, que excluye a
  propósito. No compara árboles contra modelos lineales simples en el
  régimen chico. No se puede usar para justificar ningún modelo sobre 79
  proyectos. Tampoco dice que el GBM "necesite" 10.000 filas: ese es el tamaño
  que eligieron estudiar.

### ShwartzZiv2022 (existe en .bib)
- [V] §3.1.1 y Tabla 1, p. 4–5 (arXiv 2106.03253v2): "11 tabular datasets
  [...] 10 to 2,000 features, 1 to 7 classes, and 7,000 to 1,000,000
  samples". El más chico es Blastchar, con 7 mil filas.
- **NO dice**: nada sobre muestras chicas. Su comparación es XGBoost contra
  redes profundas, no contra modelos lineales ni reglas.

Precisión para 2.2: donde hoy dice "del orden de diez mil observaciones"
(Grinsztajn), está bien. Agregar que el benchmark excluye conjuntos de menos
de 3.000 filas, y que el de Shwartz-Ziv va de 7.000 a 1.000.000. Así queda
claro que ambos respaldan árboles frente a redes en tamaño medio, y no la
elección de modelo para este proyecto.

### Christodoulou2019 (nueva, sirve también para el punto 8)
Christodoulou, Ma, Collins, Steyerberg, Verbakel y Van Calster. *J Clin
Epidemiol* 110, 12–22, 2019. DOI 10.1016/j.jclinepi.2019.02.004.

- [V-abs] Revisión sistemática de 71 estudios con 282 comparaciones de
  regresión logística contra ML (árboles, RF, redes, SVM). En las 145 con bajo
  riesgo de sesgo, la diferencia de logit(AUC) fue 0,00 (IC95 −0,18 a 0,18).
  En las de alto riesgo de sesgo, el ML salía 0,34 mejor. "We found no
  evidence of superior performance of ML over LR."
- [V-abs] El 68 % de los estudios tenía "potential bias in the validation
  procedures".
- **NO dice**: nada sobre gradient boosting en particular ni sobre datos de
  proyectos. Es un ámbito clínico.

---

## 3. Ridge y regularización

### HoerlKennard1970 (nueva)
Hoerl y Kennard. "Ridge Regression: Biased Estimation for Nonorthogonal
Problems". *Technometrics* 12(1), 55–67, 1970. DOI
10.1080/00401706.1970.10488634.

- [V-abs] Con predictores no ortogonales (correlacionados), los estimadores
  de mínimos cuadrados "have a high probability of being unsatisfactory, if
  not incorrect". Propone sumar pequeñas cantidades positivas a la diagonal
  de X′X para obtener "biased estimates with smaller mean square error".
  Introduce la "ridge trace".
- **NO dice**: nada sobre tamaño de muestra ni validación cruzada. El
  argumento es la colinealidad.

### Hastie2009 (existe en .bib) — §3.4.1
- [V] §3.4.1, p. 61–63: "Ridge regression shrinks the regression
  coefficients by imposing a penalty on their size" (ec. 3.41). "λ ≥ 0 is a
  complexity parameter that controls the amount of shrinkage".
- [V] p. 63: "When there are many correlated variables in a linear
  regression model, their coefficients can become poorly determined and
  exhibit high variance. [...] By imposing a size constraint on the
  coefficients [...] this problem is alleviated." Las soluciones "are not
  equivariant under scaling of the inputs, and so one normally standardizes
  the inputs".
- [V] §3.3.4, p. 61: el λ se elige por validación cruzada de 10
  particiones "since selecting the shrinkage parameter is part of the
  training process", con la regla de un error estándar (§7.10, p. 244).

Por qué aplica: da la definición y el porqué (las variables de avance y
costo son colineales). La estandarización debe ir dentro del pipeline (ver
punto 6).

### Riley2021Penalization (nueva, contrapeso obligatorio)
Riley, Snell, Martin, Whittle, Archer, Sperrin y Collins. "Penalization and
shrinkage methods produced unreliable clinical prediction models especially
when sample size was small". *J Clin Epidemiol* 132, 88–96, 2021. DOI
10.1016/j.jclinepi.2020.12.005 (PMC8026952).

- [V-abs] Evalúa uniform shrinkage, **ridge**, lasso y elastic net. "penalization
  methods can be unreliable because tuning parameters are estimated with
  large uncertainty. This is of most concern when development data sets have
  a small effective sample size".
- [V-abs] "Penalization methods are not a 'carte blanche' [...] They are more
  unreliable when needed most".
- **NO dice**: que el ridge sea peor que no penalizar. Dice que no *garantiza*
  un modelo confiable.

Por qué aplica: el Cap. III presenta el ridge como la opción para pocos
casos. Es correcto en la medida en que reduce la varianza, pero el texto no
debe sugerir que el ridge resuelve el n chico. Esta fuente lo acota y
justifica comparar contra las reglas de referencia.

---

## 4. Árboles poco profundos e interpretabilidad

### Hastie2009 (existe) — §9.2 y §10.11
- [V] §9.2, p. 305: "A key advantage of the recursive binary tree is its
  interpretability. The feature space partition is fully described by a
  single tree."
- [V] §9.2.4, p. 312, "Instability of Trees": "One major problem with trees
  is their high variance. Often a small change in the data can result in a
  very different series of splits, making interpretation somewhat
  precarious."
- [V] §10.11, p. 361–362 (sobre árboles dentro de boosting): "no interaction
  effects of level greater than J − 1 are possible", con J = número de
  hojas. Es una afirmación sobre el tamaño del árbol medido en hojas. Aplicarla
  a "profundidad ≤ 3 ⇒ interacciones de hasta 3 variables" es una deducción
  propia, no una cita.

### Breiman1984 (existe en .bib)
- [V-cap] Libro fundacional de CART. No lo leí; citarlo solo como origen del
  método, sin página.

### Rudin2019 (nueva)
Rudin. "Stop explaining black box machine learning models for high stakes
decisions and use interpretable models instead". *Nat Mach Intell* 1(5),
206–215, 2019. DOI 10.1038/s42256-019-0048-x. Leído en arXiv 1811.10154v3.

- [V] §2 (i), p. 2 (arXiv): "It is a myth that there is necessarily a
  trade-off between accuracy and interpretability." Y: "When considering
  problems that have structured data with meaningful features, there is often
  no significant difference in performance between more complex classifiers
  (deep neural networks, boosted decision trees, random forests) and much
  simpler classifiers (logistic regression, decision lists) after
  preprocessing."
- [V] §2 (iv), p. 5: los modelos de caja negra "are often not compatible with
  situations where information outside the database needs to be combined
  with a risk assessment".
- **NO dice**: nada sobre profundidad de árboles ni tamaño de muestra. Es un
  ensayo de posición (perspective) con ejemplos, no un benchmark.
- La paginación del arXiv no coincide con la de la revista: en el texto citar
  la sección, no la página.

Por qué aplica: el jefe de proyecto tiene que poder leer la alerta como
reglas y combinarla con lo que sabe fuera del ERP. Eso es exactamente el
punto (iv).

### Holte1993 (nueva)
Holte. "Very Simple Classification Rules Perform Well on Most Commonly Used
Datasets". *Machine Learning* 11(1), 63–90, 1993. DOI
10.1023/A:1022631118932. Leído en una copia de autor (sin abstract, con
paginación propia): citar sección.

- [V] §1: las "1-rules" clasifican "on the basis of a single attribute (i.e.
  they are 1-level decision trees)". En 16 conjuntos habituales, "1R's rules
  are only a few percentage points less accurate, on most of the datasets,
  than the decision trees produced by C4".
- [V] §1, citando a Mingers (1989): la poda más severa dio los árboles más
  precisos, "in four of the five domains studied these trees had only 2 or 3
  leaves".
- **NO dice**: nada sobre regresión ni AUC (mide exactitud). Los conjuntos son
  del repositorio UCI de la época.

Por qué aplica: respalda probar "una sola variable como puntaje" y árboles
muy chicos como candidatos serios, no solo como línea base.

---

## 5. Validación cruzada agrupada y fuga de información

### Roberts2017 (nueva)
Roberts, Bahn, Ciuti, Boyce, Elith, Guillera-Arroita, Hauenstein,
Lahoz-Monfort, Schröder, Thuiller, Warton, Wintle, Hartig y Dormann.
"Cross-validation strategies for data with temporal, spatial, hierarchical,
or phylogenetic structure". *Ecography* 40(8), 913–929, 2017. DOI
10.1111/ecog.02881.

- [V-abs] Cuando los datos tienen estructura "temporal, spatial,
  hierarchical (random effects)", ignorarla en la validación cruzada produce
  "serious underestimation of predictive error". La dependencia persiste en
  los residuos y viola la independencia; además da "ample opportunity for
  overfitting with non-causal predictors".
- [V-abs] Recomienda la validación en bloques ("data are split strategically
  rather than randomly") "wherever dependence structures exist in a dataset,
  even if no correlation structure is visible in the fitted model residuals".
- [V-abs] Advierte que bloquear puede inducir extrapolación y sobreestimar el
  error cuando el objetivo es interpolar.
- No leí el cuerpo (Wiley, sin acceso abierto). No citar secciones.
  Los 14 autores están confirmados en CrossRef.

### Kaufman2012 (nueva)
Kaufman, Rosset, Perlich y Stitelman. "Leakage in data mining: Formulation,
detection, and avoidance". *ACM TKDD* 6(4), art. 15, 1–21, 2012. DOI
10.1145/2382577.2382579. El subtítulo está confirmado en CrossRef.

- [V-abs] Define fuga como "the introduction of information about the data
  mining target that should not be legitimately available to mine from". La
  cuenta entre los "top ten data mining mistakes" e incluye casos "where the
  classical independently and identically distributed (i.i.d.) assumption is
  violated". Propone una "learn-predict separation".
- **NO dice** (a nivel del abstract): nada específico sobre validación
  agrupada.

### Kapoor2023 (nueva)
Kapoor y Narayanan. "Leakage and the reproducibility crisis in
machine-learning-based science". *Patterns* 4(9), 100804, 2023. DOI
10.1016/j.patter.2023.100804. Leído en arXiv 2207.07048v1 (la taxonomía es
la misma).

- [V] Taxonomía de 8 tipos de fuga. **[L1.3] "Feature selection on training
  and test set"**: seleccionar sobre todo el conjunto usa información de qué
  variable funciona en la prueba. **[L3.2] "Nonindependence between train and
  test samples"**: "In the extreme (but unfortunately common) case, train and
  test samples come from the same people or units." **[L3.1] "Temporal
  leakage"**.
- [V-abs] Encontraron fuga en 17 campos y 294 artículos. En su estudio de
  guerras civiles, "When the errors are corrected, complex ML models do not
  perform substantively better than decades-old LR models" (también sirve
  para el punto 8).

### SklearnCrossValidation / SklearnGroupKFold (nuevas, @online)
scikit-learn 1.9.1, guía "Cross-validation: evaluating estimator
performance", apartado "Cross-validation iterators for grouped data", y
página de la API `GroupKFold`.

- [V] "The i.i.d. assumption is broken if the underlying generative process
  yields groups of dependent samples"; el ejemplo son varias muestras por
  paciente. "we would like to know if a model trained on a particular set of
  groups generalizes well to the unseen groups [...] all the samples in the
  validation fold come from groups that are not represented at all in the
  paired training fold."
- [V] `GroupKFold` "ensures that the same group is not represented in both
  testing and training sets"; "makes it possible to detect this kind of
  overfitting situations".
- [V] `StratifiedGroupKFold` intenta "preserve the distribution of classes in
  each split while keeping each group within a single split", útil con
  clases desbalanceadas. Es pertinente con 20 y 14 positivos.
- [V] API `GroupKFold`: `shuffle` ("Whether to shuffle the groups before
  splitting") está "Added in version 1.6". Sin `shuffle` las particiones son
  deterministas.
- **NO dice**: la guía menciona `RepeatedStratifiedKFold` y
  `RepeatedKFold`, pero **no documenta un "RepeatedGroupKFold"**. El 5×10
  repetido se implementa con 10 semillas (`random_state`) de
  `GroupKFold(shuffle=True)` o de `StratifiedGroupKFold(shuffle=True)`.
  Es un detalle de implementación, no un claim citable.

### Kohavi1995 (existe en .bib)
Ya se usa en 2.2 para la validación cruzada k-fold. No lo releí en esta
pasada.

---

## 6. Selección de variables anidada dentro de la validación

### Ambroise2002 (nueva)
Ambroise y McLachlan. "Selection bias in gene extraction on the basis of
microarray gene-expression data". *PNAS* 99(10), 6562–6566, 2002. DOI
10.1073/pnas.102102699.

- [V-abs] El error de prueba o de leave-one-out se calcula "without allowance
  for the selection bias [...] because the cross-validation of the rule is
  not external to the selection process; that is, gene selection is not
  performed in training the rule at each stage of the cross-validation
  process". La corrección es una validación "external to the selection
  process". Recomiendan 10 particiones antes que leave-one-out.
- [V-abs] Con la corrección, "the cross-validated error is no longer zero".
- **NO dice**: nada fuera de genómica (p ≫ n). El mecanismo es general, pero
  su evidencia es de microarrays.

### VarmaSimon2006 (nueva)
Varma y Simon. "Bias in error estimation when using cross-validation for
model selection". *BMC Bioinformatics* 7, art. 91, 2006. DOI
10.1186/1471-2105-7-91.

- [V-abs] Con datos "nulos" (sin diferencia entre clases), elegir
  parámetros minimizando el error de CV da errores estimados < 30 % en el
  18,5 % (Shrunken Centroids) y el 38 % (SVM) de los casos, cuando el
  desempeño real "was no better than chance".
- [V-abs] "all steps of the algorithm, including classifier parameter
  tuning, be repeated in each CV loop. A nested CV procedure provides an
  almost unbiased estimate of the true error."
- **NO dice**: habla de *ajuste de parámetros*. La extensión a la selección
  de variables es la misma lógica ("all steps"), pero para la selección
  citar a Ambroise o a Hastie §7.10.2.

### CawleyTalbot2010 (nueva)
Cawley y Talbot. "On Over-fitting in Model Selection and Subsequent
Selection Bias in Performance Evaluation". *JMLR* 11, 2079–2107, 2010.
URL https://www.jmlr.org/papers/v11/cawley10a.html.

- [V] Abstract y §1, p. 2080: "model selection must be treated as an integral
  part of the model fitting process and performed afresh every time a model
  is fitted to a new sample of data"; hacen falta protocolos "such [as]
  nested cross-validation or 'double cross' (Stone, 1974)".
- [V] Abstract: la varianza del criterio de selección permite "over-fitting
  in model selection", y su efecto es "of comparable magnitude to differences
  in performance between learning algorithms".
- [V] §4.4, p. 2094: "For very small data sets, where the problem of
  over-fitting in both learning and model selection is greatest", sugieren
  eliminar o reducir la selección de modelo (enfoque bayesiano, pocos
  hiperparámetros).
- [V] §6, p. 2103: la selección "should be conducted independently in each
  trial".

Por qué aplica: respalda la validación anidada. El §4.4 además respalda
tener pocos hiperparámetros (solo λ en el ridge y solo la profundidad fija en
el árbol).

### Hastie2009 (existe) — §7.10.2
- [V] §7.10.2, p. 245–247, "The Wrong and Right Way to Do Cross-validation":
  con N = 50 y p = 5.000 predictores independientes de la clase, seleccionar
  los 100 mejores con *todas* las muestras y después validar da un error de
  CV del 3 % cuando el verdadero es 50 %. "In general, with a multistep
  modeling procedure, cross-validation must be applied to the entire sequence
  of modeling steps. In particular, samples must be 'left out' before any
  selection or filtering steps are applied." La excepción son los pasos de
  filtrado *no supervisado*.

Por qué aplica: es la fuente de manual más clara, ya está en el `.bib` y
tiene página.

### SklearnPitfalls (nueva, @online)
scikit-learn 1.9.1, "Common pitfalls and recommended practices", §12.2
"Data leakage".

- [V] "Data leakage occurs when information that would not be available at
  prediction time is used when building the model. This results in overly
  optimistic performance estimates".
- [V] §12.2.2: con objetivos aleatorios, `SelectKBest` sobre todos los datos
  da una exactitud de 0,76; hecha solo sobre el entrenamiento, 0,5. "The
  scikit-learn pipeline is a great way to prevent data leakage".

---

## 7. AUC como medida de ordenamiento

### HanleyMcNeil1982 (nueva)
Hanley y McNeil. "The meaning and use of the area under a receiver
operating characteristic (ROC) curve". *Radiology* 143(1), 29–36, 1982.
DOI 10.1148/radiology.143.1.7063747.

- [V-abs] El área "represents the probability that a randomly chosen
  diseased subject is (correctly) rated or ranked with greater suspicion than
  a randomly chosen non-diseased subject", y equivale al estadístico de
  Wilcoxon.
- [V-abs] Da expresiones del error estándar y guía para "determining the size
  of the sample required to provide a sufficiently reliable estimate".
- **NO dice** (en lo leído): valores del error estándar para n concretos. No
  inventar cifras. Sí es pertinente advertir que con 14–20 positivos
  repartidos en 5 particiones y en bandas de avance el AUC es muy imprecisa.
  Esa es una consecuencia que el texto puede plantear citando a esta fuente
  para el *método*, no para un número.

### Fawcett2006 (nueva)
Fawcett. "An introduction to ROC analysis". *Pattern Recognit Lett* 27(8),
861–874, 2006. DOI 10.1016/j.patrec.2005.10.010.

- [V] §7 "Area under an ROC curve (AUC)", p. 868: "the AUC of a classifier is
  equivalent to the probability that the classifier will rank a randomly
  chosen positive instance higher than a randomly chosen negative instance",
  equivalente a la prueba de rangos de Wilcoxon (cita a Hanley y McNeil).
- [V] Mismo §7, p. 868: "It is possible for a high-AUC classifier to perform
  worse in a specific region of ROC space than a low-AUC classifier". Esto
  respalda reportar además la precisión y la sensibilidad en el umbral
  operativo, y no solo el AUC.
- [V] §3.1 (p. 863–864): un clasificador de puntaje más un umbral da un
  clasificador discreto. Es el mecanismo de "alertar el N % de mayor riesgo".
- [V] El texto remite al §4.2 por la insensibilidad de la curva ROC a la
  proporción de clases ("class skew"). No leí el §4.2 en detalle: verificar
  antes de citarlo.

---

## 8. Comparar contra una línea base simple

### Hand2006 (nueva)
Hand. "Classifier Technology and the Illusion of Progress". *Statistical
Science* 21(1), 1–15, 2006. DOI 10.1214/088342306000000060. Leído en arXiv
math/0606441. El encabezado del PDF dice "Statistical Science 2006, Vol. 21,
No. 1, 1–15".

- [V-abs] "simple methods typically yield performance almost as good as more
  sophisticated methods, to the extent that the difference in performance may
  be swamped by other sources of uncertainty".
- [V] §2 "Marginal improvements", Tabla 1 (p. 5–6): en 10 conjuntos, el
  discriminante lineal logra "in most cases over 90% of the achievable
  improvement in predictive accuracy, over the simple baseline model"; el
  mínimo es 85 %. La línea base es la "default rule", que asigna todo a la
  clase mayoritaria.
- [V] Palabras clave del artículo: "population drift" y "selectivity bias".
  Son pertinentes para la verificación temporal (entrenar hasta 2016 y
  probar después), pero no leí esa sección en detalle.

### SklearnDummy (nueva, @online)
scikit-learn 1.9.1, `DummyRegressor`: "useful as a simple baseline to compare
with other (real) regressors". Estrategias: `mean`, `median`, `quantile` y
`constant`.

- [V] Respalda la regla "predecir siempre la mediana" como línea base
  estándar implementada en la librería.

### Otras que ya cubren el punto 8
Holte1993 (§1), Rudin2019 (§2 (i)), Christodoulou2019 y Kapoor2023
(arriba).

**NO hay fuente** para la regla heurística del dominio (extrapolar el
consumo acumulado según el avance). Es un diseño propio de la sección 3.1.
Si se quiere anclar, la analogía es la proyección del costo final en EVM
(EAC). Eso corresponde a `2-5-gestion-proyectos-epc.md` y no lo verifiqué
aquí.

---

## Claims sin fuente verificada (no afirmar con cita)

1. **"Las filas proyecto-mes no aumentan el n efectivo; el n efectivo son los
   proyectos."** Ninguna fuente leída lo dice con esas palabras para datos de
   panel. Lo más cercano: Riley Parte II §1 ("effective sample size [...]
   number of outcome events", a nivel de *individuos*); la guía de
   scikit-learn sobre muestras dependientes dentro de un grupo; y Roberts2017
   sobre la dependencia jerárquica. Redactarlo como consecuencia de diseño
   ("el desenlace se observa una vez por proyecto"), apoyado en esas fuentes
   para la dependencia y no para el número.
2. **"El gradient boosting necesita un orden de magnitud más de casos."** Ver
   alerta 3: solo hay analogía (van der Ploeg: RF, SVM, NN).
3. **Profundidad ≤ 3 ⇒ reglas legibles.** La interpretabilidad del árbol único
   está respaldada (Hastie p. 305; Holte §1). El número 3 es una decisión de
   diseño.
4. **Métricas por banda de avance "y nunca agregadas".** No encontré una
   fuente que lo prescriba. Lo más cercano es Fawcett §7: un AUC global puede
   ocultar regiones donde un modelo es peor. Presentarlo como decisión propia.
5. **5×10 repetida "da una estimación con su dispersión".** Es razonable pero
   no lo verifiqué en una fuente. Kohavi1995 trata la varianza de la
   validación cruzada; no lo releí.

---

## Entradas BibLaTeX (solo fuentes verificadas; cargar por Zotero)

Estilo de `documento.bib`: `date`, `journaltitle` y `doi`; `urldate` solo en
`@online`. No se repiten las keys existentes.

```bibtex
@article{Peduzzi1996,
  title = {A Simulation Study of the Number of Events per Variable in Logistic Regression Analysis},
  author = {Peduzzi, Peter and Concato, John and Kemper, Elizabeth and Holford, Theodore R. and Feinstein, Alvan R.},
  date = {1996},
  journaltitle = {Journal of Clinical Epidemiology},
  volume = {49},
  number = {12},
  pages = {1373--1379},
  doi = {10.1016/S0895-4356(96)00236-3}
}

@article{vanSmeden2016,
  title = {No Rationale for 1 Variable per 10 Events Criterion for Binary Logistic Regression Analysis},
  author = {van Smeden, Maarten and de Groot, Joris A. H. and Moons, Karel G. M. and Collins, Gary S. and Altman, Douglas G. and Eijkemans, Marinus J. C. and Reitsma, Johannes B.},
  date = {2016},
  journaltitle = {BMC Medical Research Methodology},
  volume = {16},
  pages = {163},
  doi = {10.1186/s12874-016-0267-3}
}

@article{vanSmeden2019,
  title = {Sample Size for Binary Logistic Prediction Models: {{Beyond}} Events per Variable Criteria},
  author = {van Smeden, Maarten and Moons, Karel G. M. and de Groot, Joris A. H. and Collins, Gary S. and Altman, Douglas G. and Eijkemans, Marinus J. C. and Reitsma, Johannes B.},
  date = {2019},
  journaltitle = {Statistical Methods in Medical Research},
  volume = {28},
  number = {8},
  pages = {2455--2474},
  doi = {10.1177/0962280218784726}
}

@article{RileyPartI2019,
  title = {Minimum Sample Size for Developing a Multivariable Prediction Model: {{Part I}} -- Continuous Outcomes},
  author = {Riley, Richard D. and Snell, Kym I. E. and Ensor, Joie and Burke, Danielle L. and Harrell, Frank E. and Moons, Karel G. M. and Collins, Gary S.},
  date = {2019},
  journaltitle = {Statistics in Medicine},
  volume = {38},
  number = {7},
  pages = {1262--1275},
  doi = {10.1002/sim.7993}
}

@article{RileyPartII2019,
  title = {Minimum Sample Size for Developing a Multivariable Prediction Model: {{Part II}} -- Binary and Time-to-Event Outcomes},
  author = {Riley, Richard D. and Snell, Kym I. E. and Ensor, Joie and Burke, Danielle L. and Harrell, Frank E. and Moons, Karel G. M. and Collins, Gary S.},
  date = {2019},
  journaltitle = {Statistics in Medicine},
  volume = {38},
  number = {7},
  pages = {1276--1296},
  doi = {10.1002/sim.7992}
}

@article{RileyBMJ2020,
  title = {Calculating the Sample Size Required for Developing a Clinical Prediction Model},
  author = {Riley, Richard D. and Ensor, Joie and Snell, Kym I. E. and Harrell, Frank E. and Martin, Glen P. and Reitsma, Johannes B. and Moons, Karel G. M. and Collins, Gary and van Smeden, Maarten},
  date = {2020},
  journaltitle = {BMJ},
  volume = {368},
  pages = {m441},
  doi = {10.1136/bmj.m441}
}

@article{Wynants2015,
  title = {A Simulation Study of Sample Size Demonstrated the Importance of the Number of Events per Variable to Develop Prediction Models in Clustered Data},
  author = {Wynants, Laure and Bouwmeester, Walter and Moons, Karel G. M. and Moerbeek, Mirjam and Timmerman, Dirk and Van Huffel, Sabine and Van Calster, Ben and Vergouwe, Yvonne},
  date = {2015},
  journaltitle = {Journal of Clinical Epidemiology},
  volume = {68},
  number = {12},
  pages = {1406--1414},
  doi = {10.1016/j.jclinepi.2015.02.002}
}

@article{vanderPloeg2014,
  title = {Modern Modelling Techniques Are Data Hungry: A Simulation Study for Predicting Dichotomous Endpoints},
  author = {van der Ploeg, Tjeerd and Austin, Peter C. and Steyerberg, Ewout W.},
  date = {2014},
  journaltitle = {BMC Medical Research Methodology},
  volume = {14},
  pages = {137},
  doi = {10.1186/1471-2288-14-137}
}

@article{Christodoulou2019,
  title = {A Systematic Review Shows No Performance Benefit of Machine Learning over Logistic Regression for Clinical Prediction Models},
  author = {Christodoulou, Evangelia and Ma, Jie and Collins, Gary S. and Steyerberg, Ewout W. and Verbakel, Jan Y. and Van Calster, Ben},
  date = {2019},
  journaltitle = {Journal of Clinical Epidemiology},
  volume = {110},
  pages = {12--22},
  doi = {10.1016/j.jclinepi.2019.02.004}
}

@article{HoerlKennard1970,
  title = {Ridge Regression: {{Biased}} Estimation for Nonorthogonal Problems},
  author = {Hoerl, Arthur E. and Kennard, Robert W.},
  date = {1970},
  journaltitle = {Technometrics},
  volume = {12},
  number = {1},
  pages = {55--67},
  doi = {10.1080/00401706.1970.10488634}
}

@article{Riley2021Penalization,
  title = {Penalization and Shrinkage Methods Produced Unreliable Clinical Prediction Models Especially When Sample Size Was Small},
  author = {Riley, Richard D. and Snell, Kym I. E. and Martin, Glen P. and Whittle, Rebecca and Archer, Lucinda and Sperrin, Matthew and Collins, Gary S.},
  date = {2021},
  journaltitle = {Journal of Clinical Epidemiology},
  volume = {132},
  pages = {88--96},
  doi = {10.1016/j.jclinepi.2020.12.005}
}

@article{Rudin2019,
  title = {Stop Explaining Black Box Machine Learning Models for High Stakes Decisions and Use Interpretable Models Instead},
  author = {Rudin, Cynthia},
  date = {2019},
  journaltitle = {Nature Machine Intelligence},
  volume = {1},
  number = {5},
  pages = {206--215},
  doi = {10.1038/s42256-019-0048-x}
}

@article{Holte1993,
  title = {Very Simple Classification Rules Perform Well on Most Commonly Used Datasets},
  author = {Holte, Robert C.},
  date = {1993},
  journaltitle = {Machine Learning},
  volume = {11},
  number = {1},
  pages = {63--90},
  doi = {10.1023/A:1022631118932}
}

@article{Roberts2017,
  title = {Cross-Validation Strategies for Data with Temporal, Spatial, Hierarchical, or Phylogenetic Structure},
  author = {Roberts, David R. and Bahn, Volker and Ciuti, Simone and Boyce, Mark S. and Elith, Jane and Guillera-Arroita, Gurutzeta and Hauenstein, Severin and Lahoz-Monfort, José J. and Schröder, Boris and Thuiller, Wilfried and Warton, David I. and Wintle, Brendan A. and Hartig, Florian and Dormann, Carsten F.},
  date = {2017},
  journaltitle = {Ecography},
  volume = {40},
  number = {8},
  pages = {913--929},
  doi = {10.1111/ecog.02881}
}

@article{Kaufman2012,
  title = {Leakage in Data Mining: {{Formulation}}, Detection, and Avoidance},
  author = {Kaufman, Shachar and Rosset, Saharon and Perlich, Claudia and Stitelman, Ori},
  date = {2012},
  journaltitle = {ACM Transactions on Knowledge Discovery from Data},
  volume = {6},
  number = {4},
  pages = {1--21},
  doi = {10.1145/2382577.2382579}
}

@article{Kapoor2023,
  title = {Leakage and the Reproducibility Crisis in Machine-Learning-Based Science},
  author = {Kapoor, Sayash and Narayanan, Arvind},
  date = {2023},
  journaltitle = {Patterns},
  volume = {4},
  number = {9},
  pages = {100804},
  doi = {10.1016/j.patter.2023.100804}
}

@article{Ambroise2002,
  title = {Selection Bias in Gene Extraction on the Basis of Microarray Gene-Expression Data},
  author = {Ambroise, Christophe and McLachlan, Geoffrey J.},
  date = {2002},
  journaltitle = {Proceedings of the National Academy of Sciences},
  volume = {99},
  number = {10},
  pages = {6562--6566},
  doi = {10.1073/pnas.102102699}
}

@article{VarmaSimon2006,
  title = {Bias in Error Estimation When Using Cross-Validation for Model Selection},
  author = {Varma, Sudhir and Simon, Richard},
  date = {2006},
  journaltitle = {BMC Bioinformatics},
  volume = {7},
  pages = {91},
  doi = {10.1186/1471-2105-7-91}
}

@article{CawleyTalbot2010,
  title = {On Over-Fitting in Model Selection and Subsequent Selection Bias in Performance Evaluation},
  author = {Cawley, Gavin C. and Talbot, Nicola L. C.},
  date = {2010},
  journaltitle = {Journal of Machine Learning Research},
  volume = {11},
  pages = {2079--2107},
  url = {https://www.jmlr.org/papers/v11/cawley10a.html}
}

@article{HanleyMcNeil1982,
  title = {The Meaning and Use of the Area under a Receiver Operating Characteristic ({{ROC}}) Curve},
  author = {Hanley, James A. and McNeil, Barbara J.},
  date = {1982},
  journaltitle = {Radiology},
  volume = {143},
  number = {1},
  pages = {29--36},
  doi = {10.1148/radiology.143.1.7063747}
}

@article{Fawcett2006,
  title = {An Introduction to {{ROC}} Analysis},
  author = {Fawcett, Tom},
  date = {2006},
  journaltitle = {Pattern Recognition Letters},
  volume = {27},
  number = {8},
  pages = {861--874},
  doi = {10.1016/j.patrec.2005.10.010}
}

@article{Hand2006,
  title = {Classifier Technology and the Illusion of Progress},
  author = {Hand, David J.},
  date = {2006},
  journaltitle = {Statistical Science},
  volume = {21},
  number = {1},
  pages = {1--15},
  doi = {10.1214/088342306000000060}
}

@online{SklearnCrossValidation,
  title = {Cross-Validation: Evaluating Estimator Performance. Scikit-Learn 1.9.1 Documentation},
  author = {{scikit-learn developers}},
  url = {https://scikit-learn.org/stable/modules/cross_validation.html},
  urldate = {2026-09-27}
}

@online{SklearnGroupKFold,
  title = {{{GroupKFold}}. Scikit-Learn 1.9.1 Documentation},
  author = {{scikit-learn developers}},
  url = {https://scikit-learn.org/stable/modules/generated/sklearn.model_selection.GroupKFold.html},
  urldate = {2026-09-27}
}

@online{SklearnPitfalls,
  title = {Common Pitfalls and Recommended Practices. Scikit-Learn 1.9.1 Documentation},
  author = {{scikit-learn developers}},
  url = {https://scikit-learn.org/stable/common_pitfalls.html},
  urldate = {2026-09-27}
}

@online{SklearnDummy,
  title = {{{DummyRegressor}}. Scikit-Learn 1.9.1 Documentation},
  author = {{scikit-learn developers}},
  url = {https://scikit-learn.org/stable/modules/generated/sklearn.dummy.DummyRegressor.html},
  urldate = {2026-09-27}
}
```

Notas sobre las entradas: los autores, títulos, volúmenes y páginas de
todas las entradas se cotejaron con CrossRef el 2026-09-27. Roberts2017 (14
autores), RileyBMJ2020 (9 autores, van Smeden al final) y el subtítulo de
Kaufman2012 quedaron confirmados. Las páginas 1–15 de Hand2006 salen del
encabezado del PDF de arXiv, porque CrossRef y OpenAlex no las traen.
