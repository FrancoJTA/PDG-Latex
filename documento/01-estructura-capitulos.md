# Estructura de capítulos — fuente de verdad y referencias

## Fuente de verdad: el índice tentativo del perfil aprobado

`perfil/perfil.tex:410-495` ya trae un **ÍNDICE TENTATIVO** aprobado por el
tutor. Es el punto de partida obligatorio — no se inventa una estructura
nueva, se parte de esta y se ajusta solo si el avance real del proyecto lo
exige (y en ese caso, avisar al tutor, no decidirlo solo).

**Ajustado el 2026-09-16** por el alcance ampliado (`decisiones-tema.md`):
las secciones marcadas `[ampliación]` son nuevas, 3.x y 4.x se renumeraron y
el Cap. IV pasa a organizarse por incrementos. El orden de los incrementos es
tentativo. **Pendiente: avisar al tutor de este ajuste y reflejarlo en el
índice de `perfil.tex`** junto con los objetivos y la delimitación.

```
INTRODUCCIÓN

CAPÍTULO I. MARCO GENERAL
  1.1 Antecedentes
  1.2 Planteamiento del Problema
    1.2.1 Formulación del Problema
  1.3 Objetivos
    1.3.1 Objetivo General
    1.3.2 Objetivos Específicos
  1.4 Justificación (Técnica / Económica / Social)
  1.5 Metodología (Tipo / Método / Técnicas e Instrumentos / Población y Muestra)

CAPÍTULO II. MARCO TEÓRICO Y TECNOLÓGICO
  2.1 Sistemas ERP (definición, ERP en empresas de ingeniería, ERP en
      petróleo/gas/minería)
  2.2 Aprendizaje Automático (tipos, supervisado, Gradient Boosting/XGBoost,
      feature engineering)
  2.3 Ingeniería de Datos (ETL/ELT, arquitectura Medallion, calidad de datos)
  2.4 Analítica Predictiva (definición, en gestión de proyectos, predicción
      de desviaciones y costos)
  2.5 Gestión de Proyectos EPC (definición, certificaciones y control de
      avance, desviaciones presupuestarias/cronograma)
  2.6 Ingeniería de Software (proceso, metodología iterativa-incremental,
      arquitectura por capas)
  2.7 Stack de desarrollo (Python/ML, DuckDB y Polars, FastAPI, NestJS y
      Angular)
  2.8 Gestión de Identidad y Acceso (OAuth 2.0 / OpenID Connect, Keycloak)  [ampliación]
  2.9 Model Context Protocol (MCP)                                          [ampliación]
  2.10 Inteligencia de Negocios (Power BI)                                  [ampliación]

CAPÍTULO III. ANÁLISIS Y DISEÑO DEL SISTEMA PROPUESTO
  3.1 Análisis de Datos Históricos del ERP (exploración, variables
      predictoras, casos de uso predictivos)
  3.2 Análisis de Procesos del Portal Anterior (qué se migra al ERP)        [ampliación]
  3.3 Requerimientos del Sistema (funcionales / no funcionales)
  3.4 Diseño de la Arquitectura (módulo predictivo por capas, pipeline,
      modelos ML, API, dashboard + autenticación e integraciones MCP/BI)

CAPÍTULO IV. CONSTRUCCIÓN E IMPLEMENTACIÓN DEL SISTEMA (por incrementos)
  4.1 Incremento 1 — Procesos del portal anterior migrados al ERP           [ampliación]
  4.2 Incremento 2 — Autenticación con Keycloak/OAuth                       [ampliación]
  4.3 Incremento 3 — Pipeline de datos y entrenamiento de modelos
      (DuckDB+PostgreSQL, Polars, feature engineering; desviación en
      certificaciones, sobrecosto, retraso en cronograma)
  4.4 Incremento 4 — Microservicio FastAPI e integración con el ERP
      (endpoints NestJS, dashboard Angular)
  4.5 Incremento 5 — Integración con Power BI y MCP                         [ampliación]
  4.6 Evaluación y Validación (métricas, pruebas con usuarios clave)

CONCLUSIONES
RECOMENDACIONES
REFERENCIAS BIBLIOGRÁFICAS
ANEXOS
```

Esto ya es coherente con `referencias/norma-analisis.md` §6.2, que para ISI/TSV sugiere
Cap. I Marco Teórico, Cap. II Ingeniería del Proyecto, Cap. III Resultados —
el perfil aprobado abre un capítulo extra (Marco General separado del
Teórico) y separa Análisis/Diseño de Construcción, quedando en 4 capítulos
(dentro del rango 3–6 que permite la norma).

## Documentos de referencia usados solo como modelo de forma, NO de contenido

Ninguno de estos tres trata el tema de Franco (ERP ISI Mustang / módulo
predictivo). Sirven para ver **cómo se ve un capítulo terminado siguiendo la
norma**, no para copiar contenido ni estructura literal.

### `referencias/indice-proyecto-grado.docx`
Guía genérica de la carrera con **7 capítulos posibles** (Planteamiento →
Marco Teórico → Marco Metodológico → Requisitos → Diseño → Desarrollo →
Evaluación) y una lista larga de subsecciones posibles por capítulo, marcada
explícitamente como orientativa ("adaptar según el tema", "incluir solo si
corresponde"). Es el catálogo más completo de posibles subsecciones — útil
para revisar si al Capítulo III/IV del perfil le falta algo (p. ej.
factibilidad, consideraciones éticas, riesgos residuales), pero **no
reemplaza el índice de 4 capítulos ya aprobado**.

### `referencias/ejemplo-capitulos-1-2.docx` (texto en `ejemplo-capitulos-1-2.md`)

Ejemplo real y avanzado de otro postulante (Pedro Renato Escobar Ortuño,
tema: plataforma de historia clínica para una clínica). Sigue exactamente la
plantilla del INDICE genérico en sus Capítulos I y II (86 páginas). Útil
como referencia de:
- **tono y extensión** de cada subsección (p. ej. cuánto se escribe en
  "Antecedentes Tecnológicos" o en "Justificación Técnica"),
- cómo se arma un **Estado del Arte** con investigaciones
  internacionales/nacionales y síntesis de brecha,
- cómo se redacta un **Marco Legal y Normativo** cuando aplica (en el caso de
  Franco, revisar si hay normativa boliviana de protección de datos /
  ciberseguridad que aplique a un ERP con datos de proyectos EPC).

### `referencias/ejemplo-plantilla-capitulos.pdf`
Plantilla completamente anonimizada (título y datos en `XXXX`, 211 páginas)
de un "Sistema Web" con **4 capítulos** — la misma cantidad y casi los mismos
nombres que el perfil aprobado de Franco: Cap. I Marco General, Cap. II
Marco Teórico, **Cap. III Ingeniería del Proyecto**, Cap. IV Conclusiones y
Recomendaciones. Esta es la referencia estructural más cercana al caso de
Franco. Lo más útil:
- El Cap. III combina lo que el perfil de Franco separa en Cap. III
  (Análisis y Diseño) y Cap. IV (Construcción). Ahí organiza selección de
  herramientas → diseño (arquitectura, modelo de datos, C4, diagramas de
  secuencia) → **construcción por incrementos** (cada incremento con
  alcance, plan de trabajo, análisis funcional, diseño de solución,
  desarrollo, entrega/validación) → evaluación (pruebas funcionales,
  técnicas, de usuario).
- Ese patrón de **incrementos** encaja bien con los objetivos específicos del
  perfil de Franco, que ya están secuenciados de forma incremental
  (analizar datos → diseñar arquitectura → construir pipeline+modelos →
  integrar dashboard → evaluar). **Adoptado:** el Cap. IV del índice
  ajustado ya está organizado en incrementos 4.1–4.5 + evaluación 4.6, sin
  fusionar III y IV. Cada incremento puede seguir la sub-estructura de la
  plantilla (alcance → análisis → diseño → desarrollo → validación).
- Usa diagramas C4 (contexto/contenedores) para la arquitectura — coherente
  con la figura de arquitectura por capas que ya está en el perfil
  (`perfil/perfil.tex:249-312`, Medallion Bronze/Silver/Gold + capa de
  servicio/presentación).

## Regla general al usar estas referencias

Tomar de ellas **forma, nivel de detalle y redacción**, nunca contenido ni
citas. El contenido real sale de [[02-mapeo-fuentes]].
