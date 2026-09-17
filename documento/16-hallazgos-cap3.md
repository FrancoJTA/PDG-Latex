# Hallazgos al redactar el Capítulo III

Iniciado el 2026-09-17. Flujo acordado con Franco: redactar todo el Cap. III
(3.3 → 3.4 → 3.2 → 3.1), anotar acá los hallazgos de cada sección, arreglarlos
juntos y recién después pasar el agente `revisor`.

Tipos: **[DECIDIR]** necesita respuesta de Franco · **[FUENTE]** afirmación que
necesita cita (agente `investigador`) · **[AJUSTE]** cambio en otra sección ya
redactada · **[VERIFICAR]** comprobar en código o datos · **[NOTA]** registrado,
sin acción.

---

## 3.3 Requerimientos del sistema (`content/chapter-3/sec-03-requerimientos.tex`)

1. **[DECIDIR] Entrevista E-01 del anexo del perfil.** Tiene fecha (12/06/2026)
   y respuestas completas, pero las entrevistas no se hicieron y el Cap. I (1.5)
   dice que se aplican en la validación. Además afirma que las causas de
   desviación se registran, y el dump muestra `desvio`/`mitigacion` vacíos.
   ¿Fue real o un ejemplo del instrumento? No se usó como fuente en 3.3.
2. **[NOTA] RNF-06 (< 2 s por proyecto)** es un valor de diseño sin fuente; así
   figura en el texto. Se contrasta en 4.6.
3. **[NOTA] RF-24 (notificar al pasar a rojo)** es deseable y no estaba en el
   brief. Quitar si no se quiere.
4. **[NOTA]** Bloque 1 verificado en código de `main` (2026-09-17): faltan
   factura en la orden de compra, ejecutado de compras por factura, causa y
   mitigación en certificaciones y presupuesto a una fecha. D1 y D3 no aplican.

## Otras secciones afectadas por los datos de 3.1

5. **[AJUSTE] 2.2 (`sec-02-aprendizaje-automatico.tex`, párrafo inicial,
   párrafo sobre Grinsztajn/Shwartz-Ziv y último párrafo de feature
   engineering).** Dice "para cada proyecto cerrado" y "un vector de variables
   por proyecto". Decidido: la desviación en certificaciones se modela por
   certificación; sobrecosto y retraso por proyecto.
6. **[AJUSTE] 2.5 (`sec-05-gestion-proyectos-epc.tex`, último párrafo).**
   Define desviación en certificaciones como "lo certificado a una fecha frente
   a lo planificado". Alinear con la definición por certificación de 3.4.3.
7. **[AJUSTE] Cap. I (L18 y justificación técnica L143).** Hipótesis de causas
   documentadas: el dump muestra que no hay causas registradas. Puede quedar
   como hipótesis (3.1 la refuta), pero conviene suavizar.

---

## 3.4 Diseño de la arquitectura (`content/chapter-3/sec-04-arquitectura.tex`)

8. **[DECIDIR] Proyectos activos al momento del corte** (pendiente de
   [[14-traspaso-sesion]]). Arrancan en el ERP nuevo sin su historia previa.
   3.4 no lo resuelve. Propuesta: predecir solo con lo registrado en el ERP
   nuevo y marcar esos proyectos como "historia incompleta" en el tablero; o
   mantener en Silver una tabla manual código viejo ↔ centro de costo nuevo
   para sumar su historia del portal anterior.
9. **[DECIDIR] Lenguaje del servidor MCP** (SDK oficial en Python o en
   TypeScript). El texto no lo dice.
10. **[DECIDIR] Servidor y red:** ¿qué proxy inverso con TLS y qué dominio usa
    el servidor? ¿La API es alcanzable desde Internet? Si no, Power BI
    necesita puerta de enlace de datos local (el texto deja las dos opciones).
11. **[DECIDIR] Power BI con credencial de servicio** (cliente `powerbi`,
    credenciales de cliente) en lugar de conector personalizado con OAuth por
    persona. Consecuencia: el secreto del cliente queda configurado en Power
    Query / servicio Power BI. Confirmar.
12. **[DECIDIR] Parámetros de diseño sin fuente:** fechas de corte al 25/50/75 %
    del plazo; certificación evaluada 30 días antes de su fecha planificada;
    tres variables en la explicación; ejecución diaria; línea base de
    aceptación (clase mayoritaria / mediana). Confirmar o cambiar.
13. **[FUENTE] Intercambio de tokens en Keycloak** (servidor MCP → token del
    mismo usuario con audiencia `erp-api`). 2.8 no lo trata; necesita cita de
    la documentación de Keycloak (agente `investigador`).
14. **[FUENTE] Contribuciones por variable de XGBoost** (valores SHAP de
    árboles) para la explicación. 2.4 cita SHAP solo a través de un estudio;
    falta la fuente del mecanismo.
15. **[FUENTE] TLS como requisito de Keycloak fuera de desarrollo local.**
16. **[AJUSTE] 3.1 debe recalcular las etiquetas con las reglas finales**
    (cuadro de modelos de 3.4.3): certificación desviada = fecha real >
    planificada original + 10 % del plazo del proyecto, o monto < 90 % del
    planificado; retraso como % del plazo. La exploración usó > 30 días.
17. **[AJUSTE] 2.3 (`sec-03-ingenieria-de-datos.tex`, cuadro medallion y
    párrafo previo)** dice "tablas de características por proyecto"; ahora
    también por certificación.
18. **[VERIFICAR] Costo de servicios en el histórico** = horas × costo hora
    del cash flow (`CostoHH` de `gpre`). No se verificó que sea calculable;
    además solo ~30 % de las horas antes de 2020 tienen CC (H7). Resolver en
    3.1 si la variable se usa.
19. **[NOTA]** Figura 3.1: las cajas de la capa 1 quedan justas; pulir al final.
20. **[NOTA]** Verificado en código: el detalle del centro de costo ya tiene
    pestañas de presupuesto, tareas y bitácora; certificaciones con estados
    draft/submitted/registered/rejected/cancelled; roles por centro de costo
    en `user_cost_centers.role`; auth con Passport + `passport-jwt`.

---

## 3.2 Análisis de procesos del portal anterior (`content/chapter-3/sec-02-procesos-portal.tex`)

21. **[AJUSTE] RF-01 en 3.3 queda redundante.** Decía "reimplementar los
    procesos priorizados en 3.2", y 3.2 concluye que esos procesos son
    exactamente RF-02 a RF-05. Quitar RF-01 (y renumerar) o reformularlo.
22. **[VERIFICAR] Afirmaciones de estado no comprobadas línea a línea en el
    código:** horas de oficina y de campo equivalentes a HHC/PEMC; pago del
    anticipo de viáticos por Compras; listados de horas filtrables por persona
    (existe `userId` en la consulta de horas gestionadas); centros de estructura
    con el mismo presupuesto.
23. **[VERIFICAR] Defectos D4–D6** (revisión de RRHH que pisa la del
    responsable, horas trabadas al cerrar proyecto, motivo de rechazo que no se
    limpia). No afectan variables del modelo y 3.2.3 no los menciona. Las
    rendiciones tienen un solo `reviewed_by`/`review_comment`, así que D4 podría
    seguir. Confirmar con Franco si se nombran como limitación.
24. **[NOTA]** El manual del portal no documenta el módulo comercial
    (propuestas) ni facturación 2007–2011; no se incluyeron en el relevamiento.
25. **[NOTA]** 3.2 declara que la documentación técnica del ERP no se usó para
    el estado por estar desactualizada. Si el tutor pregunta, la evidencia es
    el código de `main` al 2026-09-17.

---

## 3.1 Análisis de datos históricos (`content/chapter-3/sec-01-datos-historicos.tex`)

Cifras recalculadas el 2026-09-17 con las reglas finales (sobre CC distintos:
el maestro tiene 7 códigos duplicados).

26. **[DECIDIR] Conjunto de certificaciones.** Todas (831 de 65 proyectos, 16 %
    desviadas) o solo proyectos iniciados desde jun-2013 (389 de 42 proyectos,
    29 %), donde la fecha original es observable. El texto presenta las dos
    cifras y usa 831 en el cuadro. Recomendación: entrenar con las 389 y
    declarar el sesgo del resto.
27. **[DECIDIR] Retraso con fecha real igual a la planificada.** En 28 de 60
    proyectos la última certificación real coincide exacto con la planificada
    original. ¿Plazo cumplido o fecha real cargada igual a la planificada?
    Franco puede saber cómo se cargaba. Hoy va como limitación.
28. **[VERIFICAR] 10 proyectos con sobrecosto > 100 %** (probables errores de
    moneda o de imputación). Revisar caso por caso antes de entrenar.
29. **[AJUSTE] 3.4, cuadro de correspondencias Silver:** dice que en el
    histórico el costo de servicios sale de horas × costo hora y las compras de
    `rq`. 3.1 toma el costo ejecutado de los asientos contables (`gpdir`),
    porque las horas antes de 2020 solo se asignan a CC en ~25–35 %. Alinear
    3.4 (y la variable "costo ejecutado acumulado") con `gpdir`.
30. **[AJUSTE] 3.3 RF-12** menciona "horas, compras y viáticos" en el modelo
    común; revisar coherencia con el punto anterior.
31. **[AJUSTE] Cap. I, justificación técnica (L143)** y 2.2 (L11): 3.1 ya dice
    explícitamente que las causas no existen y que la hipótesis se descarta.
    Suavizar Cap. I para que no quede contradicción fuerte (ver punto 7).
32. **[NOTA] Planillas Excel pendientes.** Al llegar: agregar fila al cuadro de
    fuentes, recalcular figura 3.1 y cuadro de casos de uso; si cubren 2019+,
    revisar H6 (granularidad) y la advertencia de tamaño.
33. **[NOTA] Umbral de 30 días de plazo mínimo** para el caso de retraso (se
    excluyen 7 proyectos con plazo planificado menor). Parámetro propio.

---

## Revisión contra la norma (2026-09-17)

Fuentes: `referencias/norma-analisis.md` (Norma DAAP-UNIVALLE 2019),
`referencias/guia-perfil-univalle.md`, `referencias/indice-proyecto-grado.docx`
(índice orientativo de la carrera) y `referencias/ejemplo-plantilla-capitulos.pdf`.
La norma no fija límite de páginas por capítulo; sí 3–6 capítulos (cumple: 4)
y máximo 4 niveles de subtítulo. El Cap. III ocupa ~35 páginas (80–114).

### Incumplimientos que afectan a todo el documento (clase / Cap. I–II también)

35. **[NORMA] Título de figura arriba del elemento.** La norma pide "número y
    título debajo del número, antes del elemento visual" y fuente debajo. Las
    figuras del Cap. I y las 4 del Cap. III tienen el `\caption` después del
    dibujo. Los cuadros sí lo tienen arriba.
36. **[NORMA] Fuente con año.** Formato: `Fuente: Elaboración propia, 2026.`
    El Cap. I cumple; el Cap. II y el Cap. III escriben "Elaboración propia."
    sin año (y "a partir de…" sin año).
37. **[NORMA] Tipos de elemento e índices separados.** La norma distingue
    Figura, Gráfico (datos numéricos representados), Tabla (valores numéricos
    exactos) y Cuadro (contenido textual), cada uno con su índice. La clase solo
    tiene Figura y Cuadro. En el Cap. III: la figura de proyectos por año es un
    **Gráfico**; el cuadro de casos de uso (conteos) y el de tablas del portal
    (filas) son **Tablas**. Requiere agregar los tipos a `univalle-perfil.cls`.
38. **[NORMA] Título del elemento en negrilla** (todo el título, no solo
    "Cuadro 3.1."). La clase pone en negrilla solo la etiqueta. Verificar con el
    tutor si lo exige.
39. **[NORMA] Lista de siglas** (opcional, recomendada): el Cap. III suma
    RF, RNF, OE, REQ, API, OIDC, PKCE, MCP, TLS, JSON, C4, SSO…

### Incumplimientos del Cap. III

40. **[NORMA] Subtítulos de cuarto nivel.** En 3.4.2 se usan rótulos en
    negrita dentro del párrafo (**Bronze.**, **Silver.**, **Gold.**, **Power
    BI.**, **Servidor MCP.**) y en 3.1.3 (**Desviación…**, **Sobrecosto.**,
    **Retraso…**). La norma admite 4 dígitos (`3.4.2.1 Capa bronze`, minúscula
    cursiva) o, más allá, letras/viñetas. Convertir a 4.º nivel o a "a., b., c.".
41. **[NORMA] Citas APA de las fuentes documentales.** Se usan sin referencia:
    el manual del portal (publicado en blogspot, 2020 → APA blog) y el
    relevamiento de requerimientos de la empresa (citado como "REQ", documento
    interno → APA informe institucional). Crear las dos entradas en el `.bib`
    (flujo Zotero) y citarlas; "REQ" pasa a ser `\parencite{…}` o se define en
    la lista de siglas.

### Recomendaciones del índice de la carrera no cubiertas (orientativas)

42. **[RECOMENDADO] Matriz de trazabilidad** objetivo → requerimiento →
    incremento (la guía lo pide explícitamente: "matriz que relacione problema,
    objetivos, requisitos, actividades, resultados e indicadores"; el ejemplo
    tiene "Trazabilidad de incrementos y requerimientos"). Hoy solo hay la
    columna Origen. Propuesta: un cuadro corto al final de 3.3.
43. **[RECOMENDADO] Requerimientos verificables.** Los RF no tienen criterio
    de aceptación ni actor (el ejemplo usa ficha por RF). Propuesta: matriz
    completa con actor y criterio en un apéndice ("Apéndice C. Matriz de
    requisitos" del índice de la carrera), sin alargar el capítulo.
44. **[RECOMENDADO] Proyecto de IA:** el índice pide "análisis de sesgos y
    limitaciones" y "consideraciones éticas y de privacidad" (incluye
    autorización institucional para usar los datos). Hoy están dispersos
    (sesgo pre-2013, RNF-03). Propuesta: un párrafo o subsección breve al final
    de 3.1.
45. **[RECOMENDADO] Diseño de datos e interfaces.** No hay modelo de datos de
    la base de predicciones ni prototipo del tablero. Propuesta: un cuadro con
    las tablas de la base de predicciones en 3.4.4; el prototipo puede ir en
    4.4 con capturas reales.
46. **[NOTA] Extranjerismos.** Sin regla en la norma. El Cap. II es
    inconsistente (`token` sin cursiva 30 veces; `pipeline` en cursiva 2 de 16).
    Decidir un criterio para todo el documento en la pasada de estilo.


---

## Aplicado el 2026-09-17: cumplimiento de la norma (PDF original)

Resueltos los puntos 35, 36, 37, 40 y 41; el 38 se descarta (error del resumen,
la norma no pide título en negrilla). Cambios:

- **Clase (`univalle-perfil.cls`):** separadores de capítulo y de sección no
  cuentan en la paginación (§2.7); contenido de cuadros y tablas a interlineado
  simple (§2.5.1); tipo **Tabla** (`\begin{tabla}`) con su índice
  `\listoftablas` y título arriba (§2.8); `\fuente{}` alineada a la izquierda,
  sin cursiva; punto tras el número en subtítulos de 2 y 3 dígitos, también en el
  índice (§2.6); índice de contenido titulado "ÍNDICE DE CONTENIDO"; entradas de
  los índices como "Figura 1.1. …", "Tabla 3.1. …", "Cuadro 2.1. …" (cuadro 4);
  nuevo `\caratula{}` sin entrada en el índice.
- **`main.tex`:** preliminares en el orden de la figura 2 (agradecimientos,
  resumen con palabras clave, abstract con keywords —los tres con texto
  pendiente—, índices de contenido, figuras, tablas y cuadros, lista de siglas y
  abreviaturas); una sola carátula "CONCLUSIONES Y RECOMENDACIONES" con las
  recomendaciones en hoja aparte (§1.2.3–1.2.4).
- **Capítulos:** título arriba en las 6 figuras (Cap. I y III); año en todas las
  fuentes ("Elaboración propia, 2026, en base a …"); tablas numéricas de 3.1
  pasadas a Tabla (fuentes del histórico, variables candidatas, casos de uso);
  rótulos en negrita o cursiva al inicio de párrafo convertidos a subtítulos de
  cuarto nivel (1.5.2.x y 1.5.3.x del Cap. I, 3.1.3.x y 3.4.2.x/3.4.7.x del Cap. III);
  ancho de un cuadro de 2.9 corregido.
- **Referencias:** `ISIMustang2020Manual` (blog
  https://manualportalbolivia.blogspot.com/) y `ISIMustang2026Requerimientos`
  (documento interno) agregadas a `documento.bib` y citadas en 3.2 y 3.3.
  **Importarlas en Zotero** desde `referencias/importar-zotero-cap3.bib`, o el
  auto-export las borra.

Pendientes que no se resuelven con código:
- Texto de agradecimientos, resumen, abstract y palabras clave.
- Apéndices: cuando se agreguen, numerar en romanos minúsculas, y el instrumento
  de entrevista va como **apéndice** (lo elabora el autor), no como anexo como en
  el perfil.
- APA: biblatex genera APA 7; los ejemplos de la norma son APA 6. La norma solo
  dice "APA": confirmar con el tutor.
