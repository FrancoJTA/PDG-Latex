# Observaciones del perfil — Revisión completa

> Revisión doble: 1ª pasada (estructura/formato/bibliografía) + 2ª pasada profunda comparando con los perfiles de referencia FAB y VTO.
> **VTO (Omar Velasco) tiene el mismo tutor que Franco: Ing. Rolando Lara Sanchez** → es la referencia más confiable del criterio del tutor.

---

## ✅ Confirmado correcto

- **Introducción**: cumple el objetivo del formato ("enamorar al lector"), 3 párrafos con citas, cierra presentando el trabajo (~1 página).
- **Objetivo General**: tiene los 4 elementos requeridos — Qué / Cómo / Dónde / Para qué.
- **Verbos Bloom (OE)**: Analizar → Diseñar → Construir → Evaluar son correctos. **VTO (mismo tutor) usa "Construir" también** (su secuencia es Analizar→Diseñar→Implementar→Construir→Realizar), y FAB cierra en "Evaluar" igual que Franco. La secuencia de Franco está bien alineada.
- **Justificación**: técnica / económica / social — coincide exactamente con la estructura de ambos perfiles de referencia.
- **Antecedentes**: tiene contexto, Ishikawa, FODA, Planteamiento, Formulación y Objeto de Estudio.
- **Diseño Metodológico**: tipo, método, técnicas, instrumentos, población y muestra completos.
- **Población y muestra por técnica**: bien planteada (datos + entrevista), igual que el enfoque multi-técnica de las referencias.
- **Marco Teórico**: 5 áreas redactadas con citas — formato adecuado para un perfil.
- **Bibliografía**: más limpia y consistente que las referencias (biblatex APA). 9 entradas, todas citadas.

---

## ⚠️ Pendiente de corrección

> Resueltos los hallazgos 1–9 (ver sección "✅ Resueltos"). Queda solo el detalle de anexos.

**10. Índice de Anexos en el frontmatter** *(detalle ya conocido — depende de los anexos)*
Ambas referencias tienen Índice de Anexos. Franco tiene `\listoffigures` y `\listoftables`. Agregar cuando los anexos estén listos.

---

## ❓ Preguntas para validar con la empresa (ISI Mustang)

*Confirmar estos datos con la empresa para sustentar las afirmaciones del perfil. Cada punto indica qué afirmación del documento valida.*

### Empresa y contexto
- ¿Año exacto de fundación o años de operación? (el perfil afirma **"más de 25 años"**)
- ¿Sectores exactos en los que opera? (el perfil menciona gas, petróleo, energía y minería; en algunas partes también **construcción** — confirmar si aplica para unificar el texto)
- ¿Los proyectos son efectivamente de tipo **EPC** (ingeniería, provisión y construcción)? ¿Qué proporción de la operación?
- ¿La sede es únicamente Santa Cruz de la Sierra o hay más sedes?

### ERP y datos históricos
- ¿En qué **año entró en operación el ERP**? (para confirmar "más de diez años de datos")
- ¿Cuántos años de datos históricos están realmente disponibles y utilizables?
- Confirmar el stack del ERP: **Angular + NestJS + PostgreSQL**.
- ¿Qué módulos están **activos y poblados**? (proyectos, certificaciones, recursos humanos, horas, requisiciones, compras)
- **Volumen aproximado de datos:** ¿cuántos proyectos históricos? ¿cuántas certificaciones? ¿cuántos registros en los módulos relevantes? (clave para evaluar viabilidad de ML)

### Datos para los modelos (lo más crítico)
- **Certificaciones:** ¿existe el campo de desviación (monto estimado vs. certificado) y su **causa documentada**? ¿Qué porcentaje de registros tiene la causa llena? (el perfil lo presenta como el "dato etiquetado" central)
- **Sobrecostos:** ¿hay líneas de presupuesto vs. ejecución real por proyecto?
- **Retrasos:** ¿hay fecha planificada vs. fecha real de cierre de proyectos?
- ¿Existen **datasets externos** (CSV/Parquet) o solo se usará el ERP? (la arquitectura los menciona)
- **Calidad de datos:** ¿qué tan completos y consistentes están estos campos? ¿hay vacíos o periodos sin registro?

### Personas (entrevistas y validación)
- ¿Cuántos usuarios tiene el ERP realmente? (el perfil asume **~20 usuarios**)
- ¿Existen los roles mencionados y cuántos de cada uno? (**jefe de proyecto, certificador, administrador del sistema**)
- ¿Quiénes serían los **5–8 usuarios clave** disponibles para las entrevistas y la validación?

### Acceso, autorización y tiempos
- ¿Se **autoriza el acceso (lectura)** a la base de datos del ERP para el proyecto? (sustenta "acceso directo a la base de datos")
- ¿Hay restricciones de **confidencialidad** sobre qué datos se pueden usar o mostrar en el documento?
- ¿Quién es el **contacto técnico** (DBA / responsable de TI) para gestionar el acceso?
- ¿Hay una **ventana de tiempo** preferida por la empresa para entrevistas y validación?

---

## ✅ Resueltos

### Revisión del tutor (Ing. Rolando Lara Sanchez)
- **(Título / nombre del ERP)**: el tutor preguntó si el ERP se llama igual que la empresa. Aclarado en el Planteamiento: *"un ERP propio, denominado igualmente ISI Mustang"*.
- **(Planteamiento — qué es EPC)**: el tutor observó que se usaba "proyectos EPC" sin explicar su significado ni las actividades de la empresa. Agregada la definición en el Planteamiento (Engineering, Procurement and Construction: diseño de ingeniería, procura y construcción para gas, petróleo, minería y energía) y qué gestiona el ERP.
- **(Formulación del problema)**: el tutor pidió no formularla midiendo el módulo (la solución), sino partiendo del problema central. Reformulada a la variante centrada en el problema: *"¿Cómo aprovechar los datos históricos del ERP ISI Mustang para anticipar desviaciones y riesgos en los proyectos de ingeniería EPC de la empresa?"* (reemplaza el anterior "¿En qué medida un módulo… permite…?").
- **(Objetivos específicos — doble verbo)**: el tutor señaló que OE1, OE2 y OE3 tenían dos verbos en infinitivo (ambiguos). Reformulados a un solo verbo de acción cada uno, con las acciones secundarias convertidas en sustantivos: OE1 "Analizar… para la identificación… y la definición…"; OE2 "Diseñar… incluyendo la selección de los modelos…"; OE3 "Construir el módulo predictivo, comprendiendo el pipeline… y el entrenamiento…". OE4 (Integrar) y OE5 (Evaluar) ya tenían un solo verbo.

### Segunda revisión completa (hallazgos 1–9)
- **(1) Numeración de figuras y cuadros**: agregado `\counterwithin{figure}{section}` y `\counterwithin{table}{section}` al preámbulo. Ahora figuras 2.1, 2.2, 6.1, 6.2, 6.3 y cuadros 2.1, 10.1 — se reinicia por sección.
- **(2) Marco Teórico vs Índice Tentativo**: agregada la subsección redactada "Ingeniería de Software" (modelo iterativo e incremental + arquitectura por capas) y cambiado "cinco áreas"→"seis áreas" con "ingeniería de software" en la lista introductoria.
- **(3) Referencias cruzadas**: agregadas referencias `\ref` en el texto al Ishikawa (Figura 2.1) y al FODA (Cuadro 2.1) tras el Planteamiento, y al Árbol (Figura 2.2) en su párrafo introductorio.
- **(4) "Datasets externos" vs Delimitación**: renombrado a "Datos complementarios (CSV/Parquet)" en la figura de arquitectura y en el párrafo explicativo, eliminando la colisión con la delimitación temática.
- **(5) "Construcción" como sector**: unificado en Justificación Social → "los hidrocarburos, la energía y la minería".
- **(6) Comentario TODO residual**: eliminado de la Justificación.
- **(7) Repetición casi literal**: reformulada la mención de "39 estudios…" en el Marco Teórico (Analítica Predictiva) para evitar la repetición con Antecedentes.
- **(8) Alineación OG / Formulación**: añadido "EPC" al Objetivo General ("proyectos de ingeniería EPC").
- **(9) Objeto de Estudio**: reformulado como proceso → "El proceso de gestión y control de desviaciones y riesgos en los proyectos de ingeniería de ISI Mustang, a partir de los datos históricos registrados en su ERP".

### Primera revisión
- **Marco Teórico más granular (índice tentativo)**: agregada el área "2.5 Ingeniería de Software" (proceso de desarrollo, metodología iterativa e incremental, arquitectura por capas); el stack pasó a 2.6. Alineado con la granularidad de VTO.
- **Indicadores de validación concretos**: agregada la técnica "Pruebas de los modelos predictivos" con métricas nombradas (clasificación: exactitud, precisión, sensibilidad, F1, matriz de confusión; regresión: RMSE, MAE, R²) y validación cruzada, más su instrumento.
- **Cuadro de Técnicas e Instrumentos (estilo VTO)**: *descartado por decisión del usuario* — se mantiene en prosa.
- **Antecedentes — trabajos comparables**: agregado un párrafo con 3 trabajos concretos (Kumar et al. 2026, Morales et al. 2025, Zhang et al. 2025) con su aporte y limitación, más un párrafo de cierre con la doble brecha (sin integración a ERP + sin precedente local). Estilo VTO.
- **Cronograma**: agregado como Cuadro 10.2 — Gantt de celdas sombreadas, abril–agosto 2026, 10 actividades alineadas con los 5 OE más perfil, tribunal, documento final y defensa. (Si la aprobación del perfil se atrasa, basta correr los meses.)
- **Propuesta de Solución — texto explicativo**: agregados 2 párrafos que describen la arquitectura por capas y el flujo de la solución, con referencias cruzadas a ambas figuras.
- **Propuesta de Solución — diagrama de arquitectura**: dibujado en TikZ (horizontal, 6 capas, grupos Módulo predictivo / Integración ERP, código de colores y leyenda; componentes existentes con contorno naranja). Figura 6.3.
- **Árbol del Problema**: agregado como subsección 2.2 (dibujado en TikZ, nativo en el PDF). 4 efectos arriba, problema central y 4 causas abajo que mapean 1:1 con las categorías del Ishikawa (Datos, Sistema, Procesos, Modelos). Se quitó la causa "analista de datos" para alinear con el Ishikawa de 4 categorías (Personas descartada).
- **Objetivos Específicos (4 → 5)**: el OE3 ("Construir el módulo con interfaces") se desdobló en "Construir el pipeline y entrenar los modelos" (OE3) + "Integrar el módulo y dashboard al ERP" (OE4); "Evaluar" pasó a OE5. Secuencia: Analizar → Diseñar → Construir → Integrar → Evaluar.
- **Formulación del Problema**: reformulada a "¿En qué medida un módulo de inteligencia predictiva basado en los datos históricos del ERP ISI Mustang permite anticipar desviaciones y riesgos en la gestión de proyectos de ingeniería EPC de la empresa?" — más específica, medible y alineada con el OG y el patrón de VTO.
- **Alcance "correlacional"**: reemplazado por esquema de tres niveles por fases (exploratorio → descriptivo → correlacional), alineado con el patrón de VTO.
- **Enfoque mixto**: declarado al inicio del Método de Investigación (datos cuantitativos + entrevistas cualitativas).
- **Período de validez (Delimitación Temporal)**: agregada frase sobre vigencia y reentrenamiento periódico por *model drift*.
- **Ishikawa (causa en Personas)**: corregido en la imagen → "No existe un perfil de analista de datos en el equipo".

---

## 🔧 Corrección a la revisión anterior

- La nota previa "VTO y FAB usan *Implementar* en lugar de *Construir*" era **inexacta**. VTO usa **ambos** verbos (Diseñar→Implementar→Construir→Realizar). El verbo "Construir" de Franco **no requiere cambio.** Punto descartado.

---

## 📌 Notas de referencia

### Anexo de vínculo con la empresa (refinado)
VTO (mismo tutor) usó **"Evidencia de Contrato de Trabajo"** como anexo de vínculo con la empresa (con páginas confidenciales omitidas). Esto confirma que el tutor acepta como prueba del vínculo **o** una carta de autorización **o** evidencia del contrato laboral de Franco con ISI Mustang. Cualquiera de las dos sirve.

### Anexos pendientes de contenido
- Carta de autorización de ISI Mustang **o** evidencia de contrato laboral (pendiente de gestionar).
- Guía de entrevista semiestructurada (pendiente de redactar — jefes de proyecto y certificadores).

### Verbos Bloom — nota preventiva
Si el tutor observa que "Evaluar" (nivel 5) va después de "Construir" (nivel 6), la justificación es la secuencia SDLC (Analizar→Diseñar→Construir→Evaluar), con respaldo académico consolidado. Además FAB (perfil aprobado) cierra igual en "Evaluar".

### Stack tecnológico confirmado (referencia)
- ERP existente: Angular + NestJS + PostgreSQL (no se modifica)
- Módulo nuevo: DuckDB → Polars → Scikit-learn/XGBoost → FastAPI → NestJS → Angular dashboard
