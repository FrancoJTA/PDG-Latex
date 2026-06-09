# TRABAJO DE GRADO

# PLATAFORMA WEB BASADA EN INTELIGENCIA

# ARTIFICIAL Y MODELOS PREDICTIVOS PARA EL

# MANTENIMIENTO PREDICTIVO DE

# TRANSFORMADORES ELÉCTRICOS: CASO ISI

# MUSTANG BOLIVIA SRL

# DANIELA ALEJANDRA MIRANDA RAMIREZ

# SANTA CRUZ DE LA SIERRA, 2025


# TRABAJO DE GRADO

# PLATAFORMA WEB BASADA EN INTELIGENCIA

# ARTIFICIAL Y MODELOS PREDICTIVOS PARA EL

# MANTENIMIENTO PREDICTIVO DE

# TRANSFORMADORES ELÉCTRICOS: CASO ISI

# MUSTANG BOLIVIA SRL

# DANIELA ALEJANDRA MIRANDA RAMIREZ

# TUTOR: ING. MARCO ANTONIO MIRABAL CONDARCO

# SANTA CRUZ DE LA SIERRA, 2025


**DEDICATORIA**

Este trabajo está dedicado a:

- A mi familia, por su apoyo incondicional y por
    haberme acompañado en una meta más y
    apoyarme en todo momento.
- A mis padres, Jheny Ramirez Gutierrez y
    Wilson Miranda Via, por ser mi mayor ejemplo
    de constancia, responsabilidad e inspiración.
    Su confianza, guía y apoyo constante, han sido
    un pilar fundamental en mi desarrollo
    profesional y personal a lo largo de la
    elaboración de este trabajo.



## ÍNDICE

**Pág.**

### RESUMEN EJECUTIVO ABSTRACT

### FICHA TÉCNICA



### CAPÍTULO 3. MARCO PRÁCTICO

### 3.1. DISEÑO METODOLÓGICO 122

3.1.1. Tipo y método de investigación 122
3.1.2. Técnicas e instrumentos de recolección de datos 123
3.2. Ingeniería del Proyecto 124
3.2.1. Analizar los datos operacionales de ISI Mustang y las necesidades de sus
clientes en el sector energético 124
3.2.1.1. Clasificación de las fuentes de datos operativos disponibles 124
3.2.1.2. Determinación los principales desafíos y necesidades de los clientes del
sector energético en relación con la gestión de datos 126
3.2.1.3. Selección de las variables en base a los requerimientos o necesidades del
cliente**.** 143
3.2.2. Diseñar un proceso de Extracción, Transformación y Carga (ETL) para
integrar datos históricos provenientes de AVEVA PI System que permita
estructurar y normalizar los datos operativos, garantizando su calidad para el
análisis predictivo 145
3.2.2.1. Recolectar los datos operativos desde la fuente de datos históricos del
transformador 148
3.2.2.2. Transformar los datos recolectados para el análisis 152
3.2.2.3. Cargar los datos procesados en una base de datos 174
3.2.3. Entrenar un modelo predictivo basado en Machine Learning que permita
anticipar fallos en los transformadores eléctricos 176
3.2.3.1. Selección del algoritmo de Machine Learning más adecuado para el análisis
predictivo de los datos operativos. 185
3.2.3.2. Ajuste del modelo con los datos operativos del transformador eléctrico 186
3.2.3.3. Evaluación del modelo para mejorar su precisión mediante métricas 189
3.2.4. Desarrollar una interfaz web interactiva con un dashboard que permita la
visualización en tiempo real de los datos clave del sector energético
integrando un modelo predictivo con Machine Learning. 192
3.2.4.1. Creación de una interfaz intuitiva y responsiva para la visualización de datos,
incluyendo métricas clave. 195
3.2.4.2. Implementación de APIs para la actualización automática de datos. 199
3.2.4.3. Integración del modelo predictivo en el Dashboard. 202

### 3


3.2.5. Evaluar la efectividad de la plataforma mediante pruebas con datos reales y
métricas de precisión de los modelos predictivos, asegurando su correcto
funcionamiento e integración con los sistemas existentes. 203
3.2.5.1. Realización de pruebas con datos históricos y en tiempo real para validar la
efectividad del modelo. 203
3.2.5.2. Comparación de los resultados obtenidos con el sistema actual de
monitoreo. 204
3.2.5.3. Análisis de las métricas de precisión y desempeño de la plataforma en
distintos escenarios. 206
3.3. ANÁLISIS DE VIABILIDAD 207
3.3.1. Viabilidad Técnica 207
3.3.1.1. Funcionalidad 208
3.3.1.2. Seguridad 208
3.3.1.3. Escalabilidad 209
3.3.2. Viabilidad Económica 209
3.3.2.1. Inversión Fija 210
3.3.2.2. Inversión Diferida 211
3.3.2.3. Inversión Total del Proyecto 214

**CAPÍTULO 4. CONCLUSIONES Y RECOMENDACIONES**

4.1. CONCLUSIONES 217
4.2. RECOMENDACIONES 219

**BIBLIOGRAFÍA**

**LISTA DE ACRÓNIMOS**

**GLOSARIO DE TÉRMINOS**

**ANEXOS**

### 4


## ÍNDICE DE FIGURAS






### ÍNDICE DE TABLAS



### ÍNDICE DE ECUACIONES

**Pág.**

Ecuación 1: Ecuación de inversión Total........................................................
Ecuación 2: Ecuación de obtención de Story
Point...........................................
Ecuación 3: Ecuación de obtención de la velocidad del
equipo...........................

### 12


### ÍNDICE DE ANEXOS

### ANEXO “A”: DATOS OPERATIVOS DEL TRANSFORMADOR ELÉCTRICO

### ANEXO “B”: ARQUITECTURA DOCUMENTACIÓN AVEVA PI SYSTEM

### ANEXO “C”: ENTREVISTA

### ANEXO “D”: REPORTE TR

### ANEXO “E”: FICHA TÉCNICA DEL TRANSFORMADOR

### ANEXO “F”: ANÁLISIS DE LAS VARIABLES DEL TRANSFORMADOR

### ANEXO “G”: TABLA DE HONORARIOS PROFESIONALES EN TECNOLOGÍAS DE

### LA INFORMACIÓN

### ANEXO “H”: DISEÑO DE BAJO NIVEL PRESENTADO POR LA EMPRESA

### 13


- 1.1. INTRODUCCIÓN CAPÍTULO 1. GENERALIDADES
- 1.2. ANTECEDENTES
- 1.3. PLANTEAMIENTO DEL PROBLEMA
- 1.3.1. Identificación del problema
- 1.3.2. Análisis causa efecto
- 1.3.3. Formulación del problema
- 1.4. OBJETIVOS
- 1.4.1. Objetivo general
- 1.4.2. Objetivos específicos
- 1.5. JUSTIFICACIÓN
- 1.5.1. Justificación social
- 1.5.2. Justificación económica
- 1.5.3. Justificación técnica
- 1.6. ALCANCES
- 1.6.1. Alcance temático
- 1.6.2. Alcance geográfico
- 1.6.3. Alcance temporal
- 2.1. ESQUEMA DEL MARCO TEÓRICO CAPíTULO 2. MARCO TEÓRICO
- 2.2. CONTENIDO DEL MARCO TEÓRICO
- 2.3. DESARROLLO DEL MARCO TEÓRICO
- 2.3.1. Metodología de la investigación
- 2.3.1.1. Enfoque Metodológico
   -
- 2.3.2. Inteligencia Artificial
- 2.3.2.1. Machine Learning.
- 2.3.2.2. Aplicación de la inteligencia artificial en el mantenimiento predictivo
- 2.3.3. Mantenimiento de transformadores eléctricos
- 2.3.3.1. Tipos de Mantenimiento
- 2.3.3.2. Componentes principales
- 2.3.3.3. Variables Operativas Clave
- 2.3.4. Análisis y Diseño de Sistemas
- 2.3.4.1. Técnicas de Recolección de Información
- 2.3.4.2. Diagramación UML
- 2.3.5. Estructura de Datos
- 2.3.5.1. Modelado de Datos
- 2.3.5.2. Base de Datos
- 2.3.5.3. Procesos ETL
- 2.3.5.4. Almacenamiento de Datos
- 2.3.6. Desarrollo Web
- 2.3.6.1. Lenguajes de Marcado y Estilo
- 2.3.6.2. Lenguajes de Programación
- 2.3.6.3. Frameworks de Desarrollo
- 2.3.6.4. API y Servicios Web
- 2.3.6.5. Seguridad
- 2.3.6.6. Despliegue
- 2.3.7. Ingeniería de software
- 2.3.7.1. Metodología de Desarrollo
- 2.3.7.2. Diseño de Sistemas
- 2.3.7.3. Orquestadores
- 2.3.7.4. Pruebas de Software
- 2.3.8. Preparación y evaluación de sistemas
- 2.3.8.1. Viabilidad Técnica
- 2.3.8.2. Viabilidad Económica
   -
- Figura 1: Logotipo de la empresa Pág.
- Figura 2: Diagrama de Ishikawa
- Figura 3: Ubicación geográfica de ISI Mustang Bolivia SRL
- Figura 4: Esquema de Metodología de la Investigación
- Figura 5: Esquema de Inteligencia Artificial
- Figura 6: Esquema de Inteligencia Artificial (continuación)
- Figura 7: Esquema de Mantenimiento de transformadores eléctricos
- Figura 8: Esquema de Análisis y Diseño de Sistemas
- Figura 9: Esquema de Estructura de Datos
- Figura 10: Esquema de Estructura de Datos (continuación)
- Figura 11: Esquema de Desarrollo Web
- Figura 12: Esquema de Ingeniería de Software
- Figura 13: Esquema de Preparación y evaluación de proyectos
- Figura 14: Diferentes tipos de algoritmos de Aprendizaje Automático.
- Figura 15: Clasificación de métodos de machine learning y aplicaciones
   - (por ejemplo, clasificación de spam) Figura 16: Un conjunto de entrenamiento etiquetado para el aprendizaje supervisado
- Figura 17: Series temporales anómalas, representación ilustrativa
- Figura 18: Esquema aprendizaje no supervisado
- Figura 19: Anomaly detection
- Figura 20: Flujo de trabajo de Machine Learning
- Figura 21: StandarScaler
      -
- Figura 22: Conjunto de datos
- Figura 23: Ejemplo de uso de pandas
- Figura 24: Gráfico lineal simple de la función seno usando matplotlib
- Figura 25: Seaborn: Visualización de datos estadísticos
- Figura 26: Diagrama de flujo de trabajo de scikit-learn
- Figura 27: Aplicaciones en la industria
- Figura 28: Mantenimiento predictivo usando Modelos de Machine Learning
- Figura 29: Diagrama de Clases
- Figura 30: Diagrama de Componentes
- Figura 31: Diagrama de Objetos
- Figura 32: Diagrama de Secuencias
- Figura 33: Diagrama de Estado
- Figura 34: Diagrama de Casos de Uso
- Figura 35: Diagrama de Actividad
- Figura 36: Conceptos del modelo entidad-relación
- Figura 37: Modelo de datos lógicos
- Figura 38: Modelo de datos físico
- Figura 39: Estructura de tabla para una tabla EMPLEADO
- Figura 40: Lenguaje de consulta para una tabla EMPLEADO
- Figura 41: Ejemplo de Sintaxis MySQL
- Figura 42: PostgreSQL Elephant Logo
- Figura 43: Estructura básica de bases de datos NoSQL
- Figura 44: Estructura MongoDB
- Figura 45: Patrón de diseño básico ETL
- Figura 46: Patrón de diseño ETL-P
- Figura 47: Patrón de diseño ETL-VP
- Figura 48: Arquitectura Medallion
- Figura 49: Data Lake
- Figura 50: Data Warehouse
- Figura 51: Ejemplo de esquema de estrella (star)
- Figura 52: Ejemplo de esquema de copo de nieve
   -
- Figura 53: Ejemplo de Esquema Galaxy
- Figura 54: Esquema de intérprete
- Figura 55: Esquema de compilador
- Figura 56: Logo Python
- Figura 57: JavaScript
- Figura 58: Esquema de compilador
- Figura 59: Ejemplo de lenguajes débilmente tipados
- Figura 60: Next.js: The Ultimate Guide to Building Modern Web Applications
- Figura 61: Logo angular
- Figura 62: Logo Vue.js
- Figura 63: Métodos HTTP Flask
- Figura 64: Métodos HTTP FastAPI
- Figura 65: Fases del modelo de la cascada
- Figura 66: Fases del modelo Scrum
- Figura 67: Fases del modelo XP
- Figura 68: Tablero Kanban
- Figura 69: Diagrama monolítico
- Figura 70: Diagrama microservicios
- Figura 71: BPMN Actual
- Figura 72: BPMN Actual (continuación)
- Figura 73: BPMN Propuesto
- Figura 74: BPMN Propuesto (continuación)
- Figura 75: Diagrama de casos de uso
- Figura 76: Tablero kanban
- Figura 77: Arquitectura Medallion
- Figura 78: Flujo de Comunicación con PI Web API
- Figura 79: Lista de variables obtenida
- Figura 80: Ejemplo de registro (tag = ventilador_14_mcb):
- Figura 81: Tabla resumen de los tags cargados
- Figura 82: Clasificación por frecuencia
- Figura 83: Análisis de la disponibilidad de datos por variable
   -
- Figura 84: Detalle de la frecuencia de muestreo
- Figura 85: Completitud básica
- Figura 86: Métricas principales de calidad
- Figura 87: Gráfica de calidad de datos (completitud)
- Figura 88: Gráfica de calidad de datos (continuidad)
- Figura 89: Gráfica de calidad de datos (diversidad)
- Figura 90: Gráfica de calidad de datos (Outliers y variabilidad)
- Figura 91: Gráfica de calidad de datos (Resumen de Problemas)
- Figura 92: Potencia aparente recibida desde PI Web API
- Figura 93: Resultado de la consolidación
- Figura 94: Estrategia de consolidación por tipo de variable
- Figura 95: Resultados de la imputación
- Figura 96: Estandarización
- Figura 97: Conversión de tipos y validación técnica
- Figura 98: Resultado del análisis de Valores Faltantes
- Figura 99: Resultado del tratamiento de valores faltantes
- Figura 100: Criterios técnicos y combinados
- Figura 101: Resultado de consolidación del dataset
- Figura 102: Dataset obtenido de la Capa Silver
- Figura 103: Distribución de voltaje (capa bronze)
- Figura 104: Distribución de voltaje (capa silver)
- Figura 105: Mapa de correlación
- Figura 106: Cálculo de gradientes térmicos
- Figura 107: Cálculo Inercia térmica y estrés acumulado
- Figura 108: Factores de Carga y utilización
- Figura 109: Indicadores de OLTC y estabilidad
- Figura 110: Índice compuesto de estrés eléctrico
- Figura 111: Etiqueta binaria y RUL
- Figura 112: Etiqueta multiclase (estado futuro)
- Figura 113: Etiquetas continuas de severidad y riesgo
- Figura 114: Preparación de los datos
   -
- Figura 115: División de los datos
- Figura 116: Hiperparámetros AE LSTM
- Figura 117: Hiperparámetros IF
- Figura 118: Evolución del error de entrenamiento y validación del AE-LSTM
- Figura 119: Curva ROC del AE-LSTM (ROC-AUC = 0.752
- Figura 120: Curva PR-AUC del AE-LSTM (PR-AUC = 0.374)
- Figura 121: Matriz de confusión AE-LSTM calibrado con F2
- Figura 122: Matriz de confusión del ensamble AE+IF
- Figura 123: Módulo de login
- Figura 124: Módulo de usuarios
- Figura 125: Módulo de reportes
- Figura 126: Figura Dashboard
- Figura 127: Endpoints
- Figura 128: Registro de los datos históricos
- Figura 129: Registro de los datos predichos
- Figura 130: Comparación de software
- Figura 131: Métricas evaluación en MLflow
- Figura 132: Resultados de la predicción
   -
- Tabla 1: Acciones a llevar a cabo Pág.
- Tabla 2: Contenido del marco teórico
- Tabla 3: Tipo y método de investigación
- Tabla 4: Componentes del sistema PI
- Tabla 5: Clasificación general de las variables disponibles
- Tabla 6: Comparación cuestionario vs entrevistas
- Tabla 7: Análisis de la entrevista
- Tabla 8: Caso de uso P01
- Tabla 9: Caso de uso P02
- Tabla 10:Caso de uso P03
- Tabla 11:Caso de uso P04
- Tabla 12: Caso de uso P05
- Tabla 13: Caso de uso P06
- Tabla 14: Caso de uso P07
- Tabla 15: Comparación de metodologías de ágiles
- Tabla 16: Criterios de evaluación
- Tabla 17: Tabla de variables
   -
- Tabla 18: Comparación de Lenguaje de Programación
- Tabla 19: Justificación de librerías de extracción
- Tabla 20: Funciones principales del script Bronze
- Tabla 21: Herramientas de transformación de datos
- Tabla 22: Tabla desafíos y estrategia de mitigación
- Tabla 23: Comparación bases de datos
- Tabla 24: Features térmicas
- Tabla 25: Features Eléctricas
- Tabla 26: Labels......................................................................................
- Tabla 27: Selección de algoritmo
- Tabla 28: Tabla comparativa de frameworks backend
- Tabla 29: Tabla comparativa de frameworks frontend
- Tabla 30: Vista del transformador
- Tabla 31: Módulos alertas
- Tabla 32: Endpoints autenticación
- Tabla 33: Endpoints alertas
- Tabla 34: Endpoints transformadores
- Tabla 35: Endpoints reportes
- Tabla 36: Endpoints predicciones
- Tabla 37: Inversión Fija
- Tabla 38: Estimación del Esfuerzo Funcional (Story Points)
- Tabla 39: Parámetros de COCOMO
- Tabla 40: Costo de Licencias y servicios
- Tabla 41: Infraestructura
- Tabla 42: Inversión Total
   -
-



### RESUMEN EJECUTIVO

El presente proyecto tiene como finalidad la implementación de una plataforma web
de mantenimiento predictivo para transformadores eléctricos en ISI Mustang Bolivia
SRL, utilizando Inteligencia Artificial (IA) y modelos de Machine Learning. Su
propósito principal es anticipar las necesidades de mantenimiento y optimizar la
gestión operativa mediante la detección temprana de fallos.

La solución se sustenta en una arquitectura de datos tipo Medallion (Bronze, Silver,
Gold), que permite capturar, transformar y gestionar información proveniente de
sistemas como AVEVA PI System, garantizando la calidad, trazabilidad y
disponibilidad de los datos. A partir de esta base sólida, se entrenan modelos
predictivos que analizan variables críticas, como la temperatura del punto caliente,
para identificar patrones de riesgo y generar predicciones confiables.

Se desarrollará un panel interactivo en la web que integrará los modelos predictivos
con datos en tiempo real, permitiendo a los usuarios acceder a indicadores clave de
rendimiento, generar alertas tempranas y apoyar la toma de decisiones. Esta
plataforma busca reducir las interrupciones no planificadas, mejorar la eficiencia y
optimizar la gestión del ciclo de vida de los transformadores. Con su implementación,
ISI Mustang Bolivia SRL refuerza su propuesta de valor y se posiciona como líder
regional en mantenimiento predictivo basado en IA para la transformación digital del
sector energético.

Palabras clave: Mantenimiento predictivo, Transformadores eléctricos, Inteligencia
Artificial, Machine Learning, Arquitectura Medallion.


### ABSTRACT

This project presents the development of a web-based predictive maintenance
platform for electrical transformers at ISI Mustang Bolivia SRL, leveraging Artificial
Intelligence (AI) and Machine Learning (ML) models. The main objective is to
anticipate maintenance needs and optimize operational management by detecting
early signs of potential failures.

The solution is built upon a Medallion data architecture (Bronze, Silver, Gold) that
enables the capture, transformation, and management of data from sources such as
AVEVA PI System, ensuring data quality, traceability, and availability. Based on this
structured data, predictive models are trained to analyze critical variables, such as
hot-spot temperature, in order to identify risk patterns and provide reliable forecasts.

An interactive web dashboard will integrate predictive models with real-time data,
enabling users to access key performance indicators, generate early warnings, and
support decision-making. This platform aims to reduce unplanned outages, improve
efficiency, and optimize transformer lifecycle management. By implementing it, ISI
Mustang Bolivia SRL strengthens its value proposition and positions itself as a
regional leader in AI-driven predictive maintenance for the energy sector’s digital
transformation.

Keywords: Predictive maintenance, Electrical transformers, Artificial Intelligence,
Machine Learning, Medallion architecture.



### FICHA TÉCNICA

**1. Título del proyecto**
    PLATAFORMA WEB BASADA EN INTELIGENCIA ARTIFICIAL Y MODELOS
    PREDICTIVOS PARA EL MANTENIMIENTO PREDICTIVO DE
    TRANSFORMADORES ELÉCTRICOS: CASO ISI MUSTANG BOLIVIA SRL.
**2. Objetivo**
    Desarrollar una plataforma web basada en Inteligencia Artificial y modelos
    predictivos que optimice el mantenimiento predictivo de los transformadores
    eléctricos en ISI Mustang Bolivia SRL, mediante la detección anticipada de fallos,
    el análisis inteligente de datos operativos y la automatización de la toma de
    decisiones estratégicas para mejorar la eficiencia y reducir costos operativos.
**3. Tipo de proyecto**
    Investigación aplicada: Investigación
    básica:
**4. Área de investigación**
    Ingeniería de Software y nuevas tecnologías.
**5. Línea de investigación**
    Integración de plataforma web con Inteligencia artificial con modelos predictivos
    para el mantenimiento predictivo en transformadores eléctricos.
**6. Carrera**
    Ingeniería de Sistemas
**7. Unidad académica**
    Unidad Académica Santa Cruz
**8. Periodo académico**
    I – 2025, II – 2025
**9. Gestión**
    2025
**10.Nombre del estudiante**
    Daniela Alejandra Miranda Ramirez
**11.Nombre del tutor**


Ing. Marco Antonio Condarco Mirabal



### 1. CAPÍTULO 1.

### GENERALIDADES

### 1.1. INTRODUCCIÓN

Hoy en día, la transformación digital y la inteligencia artificial son esenciales en la
optimización de procesos industriales y en la toma de decisiones estratégicas. El
mantenimiento de los transformadores eléctricos es esencial para garantizar la
eficiencia operativa y la reducción de costos dentro de la industria energética,
específicamente en la generación de energía eléctrica. Sin embargo, muchas
empresas del sector todavía dependen de enfoques reactivos y no aprovechan el
potencial que ofrecen las técnicas de análisis predictivo, como Machine Learning,
para no solo anticipar un fallo, sino también para mejorar la toma de decisiones
estratégicas.

ISI Mustang, empresa especializada en automatización y digitalización industrial
utiliza AVEVA PI System, una plataforma para la recolección, almacenamiento y
visualización de datos operativos en tiempo real (AVEVA, s. f.). Sin embargo, la falta
de modelos predictivos basados en Machine Learning resulta en un comportamiento
ineficaz que impide un mantenimiento predictivo, lo que genera resultados de fallas

# inesperadas y una generación de energía eléctrica menos eficiente.


```
Figura 1: Logotipo de la empresa
```
```
Fuente: ISI Mustang
```
Frente a esta situación, se propone el desarrollo de una plataforma web que utilice
inteligencia artificial y modelos de aprendizaje automático que permita realizar
mantenimiento predictivo sobre transformadores eléctricos. La solución se enfocará
en mejorar el mantenimiento predictivo de los transformadores eléctricos y optimizar
la toma de decisiones estratégicas en las plantas eléctricas. Para lograr esto, se
analizarán variables clave (Anexo A) como temperatura del punto caliente, gases
disueltos en aceite, posición del tap, voltaje, corriente, entre otras, con la finalidad de
optimizar el rendimiento y el mantenimiento del transformador eléctrico.

Este proyecto busca aprovechar tecnologías avanzadas como la inteligencia artificial
y los modelos predictivos basados en Machine Learning para realizar un análisis
predictivo sobre los transformadores eléctricos. Esto permitirá la detección temprana
de fallos y proporcionará un análisis basado en datos que facilite una gestión
eficiente del mantenimiento.

A lo largo del desarrollo del proyecto, se empleará técnicas de extracción,
transformación y carga de datos (ETL) para garantizar la calidad y estandarización
de los datos recopilados desde sistemas como PI System. Posteriormente, se
implementará un modelo predictivo para identificar patrones y generar un análisis
avanzado, ayudando a la toma de decisiones más precisa y efectiva. Los datos
procesados serán presentados a través de un dashboard interactivo, que permitirá la
visualización en tiempo real de los datos y facilitará la gestión operativa. Se validará
la efectividad de la plataforma mediante pruebas con datos reales, evaluando
métricas de precisión del modelo predictivo y su impacto en la reducción de costos
operativos.


Con el desarrollo de este trabajo, se busca potenciar la transformación digital de ISI
Mustang y ampliar su cartera de servicios a través de la integración de inteligencia
artificial y modelos predictivos, posicionando a la empresa como un referente en
tecnologías de análisis predictivo.

## 1.2. ANTECEDENTES

A nivel global, la automatización industrial y la implementación de modelos
predictivos han transformado las operaciones en varias industrias, en particular en el
ámbito energético. Las plataformas que incorporan tecnologías avanzadas de
análisis de datos en tiempo real han facilitado a las organizaciones no solo
incrementar la eficiencia operativa, sino también tomar decisiones estratégicas
apoyadas en información más precisa, lo cual es necesario para el crecimiento
sostenido de las empresas. Empresas líderes en Estados Unidos, Europa y Asia han
implementado tecnologías avanzadas como Big Data, Machine Learning e
Inteligencia Artificial IA para optimizar la generación, distribución y consumo de
energía.

Empresas como General Electric (GE), Siemens y Schneider Electric han sido
pioneras en la implementación de soluciones avanzadas de automatización y análisis
predictivo. Según Vijayalakshmi et al. (2023), estas compañías logran reducir hasta
un 40% los tiempos de inactividad mediante modelos predictivos basados en IA, lo
que impacta directamente en la rentabilidad de sus operaciones. Estas soluciones no
solo integran datos operacionales de distintas fuentes, sino que utilizan modelos de
aprendizaje automático para predecir fallos en equipos, optimizar la demanda de
recursos y mejorar la eficiencia de la operación, lo que resulta en un impacto directo
en la productividad y la rentabilidad de sus operaciones, esto en industrias del sector
energético, permite un monitoreo en tiempo real que es esencial para la gestión de
recursos.


En América Latina, la implementación de tecnologías digitales modernas en el sector
industrial ha avanzado progresivamente, particularmente en sectores como la
energía, el petróleo y la manufactura. Países como México y Brasil han sido pioneros
en la puesta en marcha de plataformas de automatización y análisis predictivo,
integrando datos operacionales y mejorar la toma de decisiones. Por ejemplo, en
Brasil, la Agencia Nacional de Energía Eléctrica (ANEEL) ha impulsado la
transformación digital de la red eléctrica mediante el uso de medidores inteligentes.
Como resalta Keyrus Insights (s.f.), este país ha conseguido disminuir un 15% las
pérdidas técnicas en la distribución de energía mediante la inteligencia artificial,
posicionándose como referente regional.

En Bolivia, aun es nueva la implementación de soluciones avanzadas de inteligencia
artificial en el mantenimiento de infraestructuras energética. Las empresas del sector
continúan usando sistemas tradicionales como SCADA y AVEVA PI System, los
cuales permiten la monitorización en tiempo real, pero carecen de capacidades
predictivas avanzadas.

Como empresa especializada en automatización industrial, ISI Mustang utiliza
AVEVA PI System para ofrecer a sus clientes soluciones de recolección,
almacenamiento y visualización de datos operativos en tiempo real, principalmente
en sectores como la energía, el petróleo y la industria. La plataforma AVEVA PI
System ha jugado un papel crucial en la oferta de soluciones de monitoreo,
permitiendo a ISI Mustang proporcionar a sus clientes datos en tiempo real acerca de
sus operaciones, simplificando la toma de decisiones basadas en información.

No obstante, a pesar de tener una sólida infraestructura, ISI Mustang todavía carece
de un sistema de análisis predictivo que posibilite la detección de fallos antes de que
sucedan y optimizar la eficiencia del mantenimiento predictivo de transformadores
eléctricos. Debido a que no se cuentan con herramientas avanzadas que permitan
integrar y analizar los datos en tiempo real para la predicción del mantenimiento.
Actualmente, los datos recopilados mediante AVEVA PI System se emplean


principalmente para supervisión, pero no se aprovechan de forma estratégica para
prever fallos y mejorar el mantenimiento por lo que limita la capacidad de la empresa
para ofrecer un mantenimiento optimizado.

## 1.3. PLANTEAMIENTO DEL PROBLEMA

El planteamiento del problema a llevarse a cabo en el siguiente proyecto de grado
consiste en la identificación, análisis causa – efecto y la formulación del problema.

## 1.3.1. Identificación del problema

En la actualidad, ISI Mustang y sus clientes del sector energético basan sus
decisiones en los datos proporcionados por la plataforma AVEVA PI System. Aunque
esta plataforma facilita la recopilación, almacenamiento y visualización de datos
operativos en tiempo real, no cuenta con herramientas de análisis predictivo que
posibiliten la identificación de fallos de forma anticipada. Como se observa en el
Anexo A, los datos actuales son utilizados principalmente para supervisión, pero no
incluyen un análisis predictivo que optimice la toma de decisiones y la planificación
del mantenimiento predictivo.

Las limitaciones de AVEVA PI System restringen el acceso a herramientas
avanzadas de análisis de datos, lo que impide el desarrollo e implementación de
estrategias predictivas. En consecuencia, la empresa depende de enfoques reactivos
en lugar de proactivos para la gestión del mantenimiento y la eficiencia del
transformador. Sin modelos predictivos que analicen patrones en los datos
operacionales y anticipen posibles fallos, se generan mantenimientos innecesarios o,
por el contrario, intervenciones tardías que no previenen fallos críticos.

ISI Mustang no aprovecha completamente los datos operacionales obtenidos, dado
que carece de herramientas analíticas avanzadas que conviertan esta información en
conocimiento accionable. Variables críticas como la eficiencia del generador y el


consumo de combustible son monitoreadas, pero no son analizadas de forma
predictiva.

La ausencia de un método predictivo también limita la capacidad de planificar
intervenciones y establecer mantenimientos en base a la situación actual de los
equipos. Esto aumenta la posibilidad de fallos inesperados los cuales pueden
resultar en costosas reparaciones o interrupciones en la producción de energía.

En conclusión, la falta de un modelo predictivo basado en Machine Learning
representa una limitación importante en el mantenimiento predictivo de los
transformadores eléctricos. La falta de tecnología adecuada, combinada con la
ausencia de herramientas avanzadas y la dependencia de decisiones reactivas,
impactan directamente en la eficiencia de los transformadores, aumentando los
costos operativos y reduciendo la capacidad para prever fallos críticos.

## 1.3.2. Análisis causa efecto

## Figura 2: Diagrama de Ishikawa

```
Fuente: Elaboración Propia
```

## 1.3.3. Formulación del problema

¿De qué forma puede una plataforma web basada en Inteligencia Artificial y modelos
predictivos mejorar la gestión del mantenimiento predictivo de los transformadores
eléctricos en ISI Mustang Bolivia SRL, optimizando la detección temprana de fallos,
la planificación de intervenciones y la eficiencia operativa?

## 1.4. OBJETIVOS

A continuación, se detalla el objetivo general, los objetivos específicos y las acciones
que se llevaran a cabo para la realización del presente proyecto de grado.

## 1.4.1. Objetivo general

Desarrollar una plataforma web basada en Inteligencia Artificial y modelos predictivos
que optimice el mantenimiento predictivo de los transformadores eléctricos en ISI
Mustang Bolivia SRL, mediante la detección anticipada de fallos, el análisis
inteligente de datos operativos y la automatización de la toma de decisiones
estratégicas para mejorar la eficiencia y reducir costos operativos.

## 1.4.2. Objetivos específicos

● Analizar los datos operacionales de ISI Mustang y las necesidades de sus
clientes en el sector energético.
● Diseñar un proceso de Extracción, Transformación y Carga (ETL) para
integrar datos históricos provenientes de AVEVA PI System que permita
estructurar y garantizar la calidad de los datos para el análisis predictivo.
● Entrenar un modelo predictivo basado en Machine Learning para anticipar
fallos en los transformadores eléctricos.


● Desarrollar una interfaz web interactiva con un dashboard que permita la
visualización en tiempo real de los datos clave del sector energético,
integrando un modelo predictivo con Machine Learning.
● Evaluar la efectividad de la plataforma mediante pruebas con datos reales y
métricas de precisión del modelo predictivo, asegurando su correcto
funcionamiento e integración con los sistemas existentes.

A continuación, se presentan las acciones que se llevarán a cabo para cumplir con
los objetivos planteados en este proyecto:

```
Tabla 1: Acciones a llevar a cabo
Objetivos específicos Acciones
```
```
Analizar los datos operacionales de ISI Mustang
y las necesidades de sus clientes en el sector
energético
```
- Clasificación de las fuentes de datos
    operativos disponibles.
- Determinación los principales desafíos y
    necesidades de los clientes del sector
    energético en relación con la gestión de
    datos.
- Selección de las variables en base a los
    requerimientos o necesidades del cliente.

```
Diseñar un proceso de Extracción,
Transformación y Carga (ETL) para integrar
datos históricos provenientes de AVEVA PI
System que permita estructurar y garantizar la
calidad de los datos para el análisis predictivo.
```
- Recolectar los datos operativos desde la
    fuente de datos.
- Transformar los datos recolectados para
    el análisis
- Cargar los datos procesados en una
    base de datos

```
Entrenar un modelo predictivo basado en
Machine Learning para anticipar fallos de los
transformadores eléctricos.
```
- Selección del algoritmo de Machine
    Learning más adecuado para el análisis
    predictivo de los datos operativos.
- Ajuste del modelo con los datos
    operativos del transformador eléctrico.


```
Fuente: Elaboración Propia
```
## 1.5. JUSTIFICACIÓN

El presente proyecto de grado presenta las siguientes justificaciones **:**

## 1.5.1. Justificación social

La implementación de esta plataforma consolidará a ISI Mustang como líder en
innovación tecnológica dentro del sector energético boliviano, proporcionando una
solución que no solo beneficiará a los clientes, sino también a la sociedad en
general.

```
Objetivos específicos Acciones
```
-^ Evaluación^ del^ modelo^ para^ mejorar^ su^
    precisión mediante métricas

```
Desarrollar una interfaz web interactiva con un
dashboard que permita la visualización en
tiempo real de los datos clave del sector
energético integrando un modelo predictivo con
Machine Learning.
```
- Creación de una interfaz intuitiva y
    responsiva para la visualización de
    datos incluyendo métricas clave
- Integración del modelo predictivo en el
    Dashboard.

```
Evaluar la efectividad de la plataforma mediante
pruebas con datos reales y métricas de precisión
de los modelos predictivos, asegurando su
correcto funcionamiento e integración con los
sistemas existentes.
```
- Realización de pruebas con datos
    históricos y en tiempo real para validar
    la efectividad del modelo.
- Comparación de los resultados
    obtenidos con el sistema actual de
    monitoreo.
- Análisis de las métricas de precisión y
    desempeño de la plataforma en
    distintos escenarios.


Al integrar modelos predictivos y análisis avanzado de datos, la plataforma permitirá
optimizar el mantenimiento predictivo de transformadores eléctricos, reduciendo
tiempos de inactividad lo que se resultará en un suministro eléctrico más estable
para la población. Además, al mejorar la eficiencia de las plantas eléctricas, esto
disminuirá el consumo de combustibles fósiles, reduciendo las emisiones de gases.
Esto no solo permitirá a ISI Mustang consolidar relaciones estratégicas con sus
clientes, sino también posicionarse como un referente en la transformación digital del
sector energético en Bolivia.

## 1.5.2. Justificación económica

La implementación de la plataforma de análisis predictivo basada en Inteligencia
artificial y modelos predictivos generarán beneficios económicos significativos para
ISI Mustang. Al proporcionar una solución tecnológica de alto valor agregado, la
empresa podrá expandir su cartera de clientes y diversificar su gama de servicios, lo
que resultará en un aumento de sus ingresos. Además, la automatización de
procesos de análisis y predicción reducirá la dependencia de soluciones externas,
permitiendo a ISI Mustang mejorar sus operaciones internas y reducir costos
relacionados con el mantenimiento predictivo de sus clientes del sector energético.

La plataforma también permitirá a ISI Mustang ofrecer un servicio diferenciado que
combine la recolección de datos con el análisis predictivo, posicionándose como un
líder en el mercado. Dentro del ámbito de la industria eléctrica esto generará
oportunidades para alianzas estratégicas a nuevas empresas dentro del sector
energético, creando así fuentes de ingresos extra, así mismo, la plataforma no solo
mejorará la rentabilidad de los clientes de ISI Mustang, sino que también fortalecerá
la competitividad de la empresa al proporcionar soluciones innovadoras y de alto
impacto.


## 1.5.3. Justificación técnica

La implementación de un sistema de inteligencia artificial con capacidades
predictivas permitirá a ISI Mustang y a sus clientes optimizar la gestión de recursos y
reducir los costos operativos en el sector de energía eléctrica. La implementación del
Machine Learning en el mantenimiento predictivo no solo incrementa la eficiencia
operativa, sino que también reduce los tiempos de inactividad y los costos asociados
a reparaciones no planificadas (Blog Tecno Buildings, s.f.).

Esta capacidad analítica no solo mejorará la eficiencia operativa, sino que también
proporcionará conocimientos accionables para identificar oportunidades de mejora y
minimizar riesgos, consolidando a ISI Mustang como un referente en innovación
tecnológica dentro del sector energético.

## 1.6. ALCANCES

## 1.6.1. Alcance temático

El presente trabajo comprende las siguientes áreas de estudio:

- Metodología de la Investigación
- Estructura de Datos
- Programación Avanzada
- Base de Datos
- Ingeniería de Software
- Ingeniería de Sistemas
- Modelación y Simulación de Sistemas
- Inteligencia Artificial


## 1.6.2. Alcance geográfico

El presente trabajo se desarrollará en las oficinas de la empresa ISI Mustang SRL
que se encuentran ubicados en el 4to. Anillo Centro Empresarial Torre Link en la
ciudad de Santa Cruz de la Sierra.

En la siguiente figura se muestra la ubicación geográfica de la oficina de la empresa
ISI Mustang SRL. en la ciudad de Santa Cruz de la Sierra.

## Figura 3: Ubicación geográfica de ISI Mustang Bolivia SRL

```
Fuente: Google Maps.
```
## 1.6.3. Alcance temporal

El alcance temporal de la elaboración de este trabajo es de dos semestres
académicos, comprendidos entre los meses de febrero hasta noviembre del año
2025, dando cumplimiento al calendario académico de la Escuela Militar de
Ingeniería.




### 2. CAPÍTULO 2.

### MARCO TEÓRICO

### 2.1. ESQUEMA DEL MARCO TEÓRICO

La siguiente sección aborda la sección teórica del presente proyecto de grado, con el
fin de establecer el marco teórico del proyecto.

## Figura 4: Esquema de Metodología de la Investigación

```
Fuente: Elaboración propia
```

## Figura 5: Esquema de Inteligencia Artificial

```
Fuente: Elaboración propia
```

## Figura 6: Esquema de Inteligencia Artificial (continuación)

```
Fuente: Elaboración propia
```

## Figura 7: Esquema de Mantenimiento de transformadores eléctricos

```
Fuente: Elaboración propia
```

## Figura 8: Esquema de Análisis y Diseño de Sistemas

```
Fuente: Elaboración propia
```
## Figura 9: Esquema de Estructura de Datos


```
Fuente: Elaboración propia
```
## Figura 10: Esquema de Estructura de Datos (continuación)

```
Fuente: Elaboración Propia
```

## Figura 11: Esquema de Desarrollo Web

```
Fuente: Elaboración propia
```

## Figura 12: Esquema de Ingeniería de Software

```
Fuente: Elaboración propia
```
## Figura 13: Esquema de Preparación y evaluación de proyectos

```
Fuente: Elaboración propia
```

## 2.2. CONTENIDO DEL MARCO TEÓRICO

## Tabla 2: Contenido del marco teórico

```
Objetivos específicos Acciones Fundamentación teórica
```
```
Analizar los datos
operacionales de ISI Mustang
y las necesidades de sus
clientes en el sector
termoeléctrico
```
- Clasificación de las fuentes de
    datos operativos disponibles.
- Determinación los principales
    desafíos y necesidades de los
    clientes del sector energético en
    relación con la gestión de datos.
- Selección de las variables en
    base a los requerimientos o
    necesidades del cliente.
       - Metodología de la
          investigación.
       - Ingeniería de Sistemas.
       - Estructura de Datos.

```
Diseñar un proceso de
Extracción, Transformación y
Carga (ETL) para integrar
datos históricos provenientes
de AVEVA PI System que
permita estructurar y
normalizar los datos
operativos, garantizando su
calidad para el análisis
predictivo.
```
- Recolectar los datos operativos
    desde la fuente de datos.
- Transformar los datos
    recolectados para el análisis
- Persistencia y almacenamiento
    de los datos procesados
       - Estructura de Datos.
       - Procesos y
          arquitecturas ETL

```
Entrenar un modelo
predictivo basado en
Machine Learning que
permita anticipar fallos en los
transformadores eléctricos.
```
- Selección de los algoritmos de
    Machine Learning más
    adecuados para el análisis
    predictivo de los datos
    operativos.
- Ajuste del modelo con los datos
    operativos de transformadores
    eléctricos
- Análisis del modelo para
    mejorar su precisión mediante
    métricas.
       - Inteligencia Artificial.
          ● Machine Learning
- Modelación y
Simulación de sistemas.


```
Fuente: Elaboración propia
```
## 2.3. DESARROLLO DEL MARCO TEÓRICO

## 2.3.1. Metodología de la investigación

"Conjunto de procesos sistemáticos, críticos y empíricos que se aplican al estudio de
un fenómeno o problema con el resultado (o el objetivo) de ampliar su conocimiento."
( 2014 , pág. 4). En las palabras de Sampieri, se refiere a la metodología de la

```
Objetivos específicos Acciones Fundamentación teórica
```
```
Desarrollar una interfaz web
interactiva con un dashboard
que permita la visualización
en tiempo real de los datos
clave del sector energético,
integrando un modelo
predictivo con Machine
Learning.
```
- Creación de una interfaz intuitiva
    y responsiva para la
    visualización de datos,
    incluyendo métricas clave.
- Integración de APIs para la
    actualización automática de
    datos.
- Integración del modelo predictivo
    en el Dashboard.
       - Ingeniería de software.
       - Programación
          avanzada.

```
Evaluar la efectividad de la
plataforma mediante pruebas
con datos reales y métricas de
precisión de los modelos
predictivos, asegurando su
correcto funcionamiento e
integración con los sistemas
existentes.
```
- Realización de pruebas con
    datos históricos y en tiempo real
    para validar la efectividad del
    modelo.
- Comparación de los resultados
    obtenidos con los sistemas
    tradicionales de monitoreo.
- Análisis de las métricas de
    precisión y desempeño de la
    plataforma en distintos
    escenarios.
       - Ingeniería de sistemas.
       - Ingeniería de software.


investigación como un enfoque para comprender y explicar fenómenos o problemas
con un objetivo específico.

## 2.3.1.1. Enfoque Metodológico

**a) Enfoque Descriptivo**

Según Sampieri, un estudio descriptivo busca especificar las propiedades, las
características y los perfiles de personas, grupos, comunidades, procesos, objetos o
cualquier otro fenómeno que se someta a un análisis. ( 2014 ). De acuerdo con lo
que dice Sampieri, un enfoque descriptivo debe basarse en recoger información que
permita una comprensión del problema.

**b) Investigación Aplicada**

De acuerdo con Sampieri, la investigación aplicada cumple como objetivo de resolver
problemas (Hernández-Sampieri, Collado, & Lucio, 2014 ). Debido a que no busca
ampliar la teoría, sino solucionar problemas con un proposito específico y práctico.

**c) Enfoque Cuantitativo**

Un enfoque cuantitativo, busca recolectar datos numéricos o exactos. Sus técnicas
son estandarizadas, sistemáticas y buscan obtener datos precisos. Con una
participación mayor en estadística o en ciencias exactas. Como indica Sampieri, “Se
miden las variables en un determinado contexto; se analizan las mediciones
obtenidas utilizando métodos estadísticos, y se extrae una serie de conclusiones”. (
2014 , pág. 4).

**d) Investigación Tecnológica**

El desarrollo tecnológico conducente a los avances y transformación de la realidad
mundial se da mediante la investigación, en ella, se direcciona hacia un enfoque por


la transformación, más que brindar una explicación teórica del fenómeno o problema
tratado; se parte del conocimiento del objeto, para luego proceder a intervenir en una
realidad particular lo que denominamos investigación tecnológica (García, 2018).

Por tanto, la investigación tecnología, busca la aplicación de conocimiento con una
utilidad en la realidad y con el fin de obtener la solución.

## 2.3.2. Inteligencia Artificial

La inteligencia artificial (IA) es un concepto complejo de definir, Russell y Norvig
señalan que algunos autores se centran en la fidelidad del comportamiento
humanos. Mientras otros autores se centran en la fidelidad al comportamiento
humano como criterio de inteligencia, otros autores proponen una perspectiva
basada más en la racionalidad, es decir, la capacidad de actuar correctamente según
las circunstancias. Así mismo, mencionan que hay quienes entienden la inteligencia
como un proceso interno de razonamiento y otros prefieren evaluarla a través del
comportamiento observable (Russell & Norvig, 2020, pág. 19).

Los autores distinguen entre cuatro enfoques históricos para definir la inteligencia
artificial:

● Sistemas que piensan como humanos: buscan modelar procesos cognitivos
(ej: redes neuronales inspiradas en la biología)
● Sistemas que actúan como humanos: buscan imitar el comportamiento
humano observable (ej: test de Turing)
● Sistemas que piensan racionalmente: se basan en el razonamiento lógico y
matemático.
● Sistemas que actúan racionalmente: se centran en agentes que toman
decisiones óptimas en entornos dinámicos.

En resumen, definen la IA como una disciplina que busca construir sistemas
inteligentes capaces de razonar, aprender, actuar y adaptarse. A través de estos


enfoques, se comprende que la IA no solo busca replicar el comportamiento humano,
sino también desarrollar métodos formales y eficientes para resolver problemas,
procesar información y tomar decisiones automáticas.

Por otro lado, Rouhiainen defina la IA como “la capacidad de las máquinas para usar
algoritmos, aprender de los datos y utilizar lo aprendido en la toma de decisiones tal
y como lo haría un ser humano”. Debido a que los dispositivos basados en IA no
necesitan descansar y pueden analizar grandes cantidades de información a la vez.
Tienen aplicaciones técnicas en casi todas las situaciones como: Reconocimiento de
imágenes estáticas, clasificación y etiquetado, mejoras del desempeño de la
estrategia algorítmica comercial, procesamiento eficiente y escalable de datos de
pacientes, mantenimiento predictivo, detección y clasificación de objetos, distribución
de contenido en las redes sociales, protección contra amenazas de seguridad
cibernética, entre otros. (Rouhiainen).

Según Tyagi, Tiwari y Soni (2024), la implementación de estrategias de
mantenimiento predictivo inteligente requiere de una articulación entre estas dos
capas: la IA proporciona la arquitectura cognitiva y de automatización, mientras que
el ML constituye el motor técnico que ejecuta la predicción, clasificación y
diagnóstico de fallos. En este sentido, la IA actúa como el sistema de control
inteligente que decide cuándo intervenir, mientras que el ML transforma los datos
operativos en conocimiento útil mediante el entrenamiento de modelos con
información histórica y en tiempo real.

## 2.3.2.1. Machine Learning.

Géron menciona que Machine Learning es la ciencia (y arte) de programar
computadoras para que puedan aprender de los datos. El aprendizaje automático es
una rama de la inteligencia artificial que se enfoca en el desarrollo de algoritmos
capaces de aprender a partir de datos. Una de las definiciones más clásicas es la
propuesta por Arthur Samuel (1959), quien lo describió como "el campo de estudio
que da a las computadoras la habilidad de aprender sin ser explícitamente


programadas". Posteriormente, una definición más técnica y orientada a la ingeniería
fue formulada por Tom Mitchell (1997): "Se dice que un programa de computadora
aprende de la experiencia E con respecto a alguna tarea T y una medida de
desempeño P, si su desempeño en T, medido por P, mejora con la experiencia E".

En esencia, el aprendizaje automático consiste simplemente en usar programas
informáticos y datos para encontrar relaciones entre los diferentes componentes de
un sistema y descubrir patrones que no eran videntes a primera vista. Esta
característica de usar datos para aprender sobre el sistema hace que el aprendizaje
automático sea interesante y diferente. El conocimiento específico del sistema no se
integra explícitamente en un programa de aprendizaje automático; el programa
extrae el conocimiento de los datos, según Kumar (2022).

En los últimos años, el aprendizaje automático ha cambiado por completo la forma
en que los sistemas entienden e interpretan los datos. A diferencia de los métodos
tradicionales, que dependen de instrucciones explícitas, los modelos de Machine
Learning (ML) aprenden a reconocer patrones y a tomar decisiones por sí mismos,
usando como base los datos que reciben constantemente.

Esta capacidad resulta especialmente útil en el mantenimiento predictivo, donde se
busca anticipar posibles fallas antes de que ocurran. En lugar de realizar revisiones
periódicas sin saber si realmente se necesitan, los modelos de ML analizan tanto los
datos históricos como los actuales para detectar cuándo un equipo está mostrando
señales de desgaste o comportamiento inusual.

Como señalan Tyagi, Tiwari y Soni (2024), este tipo de mantenimiento ofrece una
forma mucho más proactiva y eficiente de gestionar activos industriales,
especialmente en contextos donde detener una máquina puede significar grandes
pérdidas. Gracias a la inteligencia de estos modelos, es posible no solo detectar
patrones, sino también predecir el estado futuro de los componentes, lo que permite
tomar decisiones con anticipación.


En esencia, el objetivo es saber con precisión cuándo es necesario intervenir, de
modo que se pueda planificar el mantenimiento de forma estratégica: ni demasiado
tarde, ni antes de tiempo. Un aspecto clave para lograr esto es seleccionar el
algoritmo más adecuado, ya que el tipo de datos disponibles y las características del
equipo influyen directamente en qué modelo dará mejores resultados.

## Figura 14: Diferentes tipos de algoritmos de Aprendizaje Automático.

```
Fuente: (Castellón, 2024)
```

**a) Tipo de Aprendizaje**

Existe una gran cantidad de modelos de aprendizaje automático, estos pueden
organizarse en tres categorías: aprendizaje supervisado, aprendizaje no
supervisado, y aprendizaje por refuerzo.

## Figura 15: Clasificación de métodos de machine learning y aplicaciones

```
Fuente: (Kumar, 2022)
```
**1) Supervisado**

El aprendizaje supervisado se basa en datos etiquetados, donde el modelo aprende
a predecir una salida con base en ejemplos previos. Se usa en el análisis de datos
históricos de generación de energía para prever tendencias o fallos. En el
aprendizaje supervisado, los datos de entrenamiento que se introducen en el
algoritmo incluyen las soluciones deseadas, llamadas etiquetas. (Géron, 2019)


```
Figura 16: Un conjunto de entrenamiento etiquetado para el aprendizaje supervisado
(por ejemplo, clasificación de spam)
```
```
Fuente: (Géron, 2019)
```
Müller y Guido, afirman que el objetivo del modelo es aprender en función a las
entradas y este sea capaz de predecir la salida correcta para nuevos datos no vistos.
En el aprendizaje supervisado (Tyagi, Tiwari, & Soni, 2024) mencionan tanto ventajas
y desventajas de este tipo de aprendizaje. Entre algunas de estas resaltan:

- Alta precisión: los modelos supervisados, especialmente para problemas de

```
clasificación y regresión, pueden alcanzar una alta precisión en ciertas
tareas cuando se entrenan con una cantidad adecuada de datos etiquetados.
```
- Interpretabilidad: el razonamiento detrás de las predicciones puede ser fácil

de comprender dependiendo del método utilizado, especialmente para
modelos más simples como árboles de decisión o regresión lineal.
Entre las desventajas que mencionan:

- Dependencia de datos etiquetados: el costo y el tiempo necesarios para

```
recopilar y anotar datos etiquetados pueden limitar el uso del aprendizaje
supervisado en situaciones donde hay escasez de datos.
```
- Sobreajuste: los modelos excesivamente complejos pueden sobre ajustarse

```
(ajustarse demasiado al conjunto de entrenamiento) y tener un rendimiento
deficiente con datos no observados. Para reducir esto, es esencial una
cuidadosa selección de modelos y estrategias de regularización.
```

- Sesgo: si los modelos supervisados no abordan cuidadosamente los sesgos

```
heredados de los datos de entrenamiento, pueden producir resultados
injustos o sesgados.
```
- Modelos de caja negra: los modelos supervisados pueden producir

```
resultados injustos o sesgados si no se abordan adecuadamente los sesgos
inherentes a los datos de entrenamiento.
```
● Regresión:

La regresión se emplea cuando la variable objetivo es continua. El modelo busca
predecir un valor numérico a partir de una o varias variables independientes. Un
ejemplo clásico es la predicción de la temperatura, la demanda energética o el valor
futuro de una variable medida por sensores (Kumar, 2022).

De acuerdo con Tyagi, Tiwari, y Soni, la regresión es un método potente para crear
modelos capaces de pronosticar valores continuos. Aprende de datos etiquetados,
donde cada punto de datos tiene una entrada (variables independientes) y una salida
correspondiente (variable dependiente). Esta es una forma de aprendizaje
supervisado. El objetivo es enseñar al modelo a reconocer la correlación entre estas
variables y luego aplicar esa comprensión para pronosticar el resultado con datos
nuevos y no observados (2024).

● Clasificación:

Los modelos de clasificación asignan categorías a los datos, el objetivo es predecir
una etiqueta clase que es una opción entre una lista de posibilidades. La
clasificación a veces se divide en clasificación binaria, que es el caso especial de
distinguir entre exactamente dos clases que intenta responder a una pregunta de sí o
no y clasificación multiclase, que es la clasificación entre más de dos clases (Müller
& Guido, 2016).


Como menciona Tyagi, Tiwari, y Soni, la clasificación intenta categorizar un conjunto
desconocido de elementos en grupos más establecidos.

● Aplicaciones:

- Regresión logística (Logistic Regression): ideal para la clasificación binaria

```
(Sí/No), pero admite múltiples clases con ajustes.
```
- Máquinas de vectores de soporte (Support Vector Machines, SVM):

```
establece límites de decisión robustos entre clases; útil para datos con varias
dimensiones.
```
- Árboles de decisión (Decision Trees): fáciles de entender y eficaces con

```
diversos formatos de datos, pero si no se controlan, pueden sobreajustarse.
```
- K-vecinos más cercanos (K-Nearest Neighbors, KNN): ordena los puntos de

```
datos según los vecinos más cercanos del conjunto de entrenamiento; útil
para correlaciones no lineales.
```
- Bosque aleatorio (Random Forest): combina varios árboles de decisión para

```
minimizar el sobreajuste y aumentar la precisión.
```
- Regresión lineal (Linear Regression): basada en una relación lineal con las

```
variables de entrada, predice valores continuos. Fácil de entender y limitada
a interacciones lineales.
```
- Regresión polinómica (Polynomial Regression): captura interacciones no

```
lineales elevando los valores de las variables de entrada.
```
- Regresión con árboles de decisión (Decision Tree Regression): predice

```
valores continuos dividiendo la entrada según criterios predeterminados.
Interpretable, aunque a veces inestable.
```
- Regresión de vectores de soporte (Support Vector Regression, SVR):

```
predice valores continuos basándose en un margen; se clasifica de forma
similar a la SVM.
```
- Potenciación de gradiente (Gradient Boosting): combina varios aprendices

```
débiles para aumentar la precisión (p. ej., árboles de decisión).
```

- Series Temporales: Como resalta Kumar, “la mayoría de las variables de

proceso se comportan como señales dependientes del tiempo, lo que exige
la aplicación de modelos capaces de capturar su evolución temporal” (2022).
Este tipo de análisis permite la supervisión de procesos y mantenimiento predictivo
en plantas industriales lo cual es fundamental para predecir valores futuros de
variables críticas. Este tipo de análisis permite predecir valores futuros de variables
críticas lo cual es fundamental para la supervisión de procesos y el mantenimiento
predictivo en plantas industriales. Tal como indica Kumar, “la mayoría de las variables
de proceso se comportan como señales dependientes del tiempo, lo que exige la
aplicación de modelos capaces de capturar su evolución temporal” (2022).
Además, herramientas como Prophet o modelos estadísticos como ARIMA/SARIMA
son utilizadas con frecuencia en escenarios donde es importante modelar tendencia
y estacionalidad (2022). Estos modelos aprovechan las fortalezas de los métodos
estadísticos tradicionales y las técnicas modernas de aprendizaje automático para
mejorar la precisión de los pronósticos.

## Figura 17: Series temporales anómalas, representación ilustrativa

```
Fuente: (Kumar, 2022)
```
**2) No supervisado**


En el aprendizaje no supervisado, los datos de entrenamiento no están etiquetados,
es decir no se dividen en entradas y salidas. El objetivo principal es encontrar
patrones o relaciones ocultos sin contar con una etiqueta de salida definida. El
modelo puede utilizarse para asignar cualquier nueva muestra entrante a cualquiera
de los grupos. El aprendizaje no supervisado se utiliza a menudo junto con el
aprendizaje supervisado.

## Figura 18: Esquema aprendizaje no supervisado

```
Fuente: (Kumar, 2022)
```
Para Tyagi, Tiwari, y Soni, la máquina aprende nuevos patrones sin tener en cuenta
ninguna información o datos previos. Este tipo de aprendizaje es especialmente
adecuado para la agrupación, el proceso de clasificar datos en conjuntos de datos
relacionados. Mencionan beneficios clave, como:

- Rentable: no depende de datos etiquetados, cuya recopilación y anotación

```
podrían resultar costosas.
```
- Análisis exploratorio: revela estructuras y patrones ocultos en los datos,

```
generando resultados sorprendentes.
```
- Escalabilidad: gestiona eficazmente volúmenes considerables de datos sin

```
etiquetar.
```

● Clustering:

La agrupación en clústeres consiste en dividir el conjunto de datos en grupos,
llamados clústeres. El objetivo es dividir los datos de forma que los puntos dentro de
un mismo clúster sean muy similares y los puntos en clústeres diferentes sean
diferentes. De forma similar a los algoritmos de clasificación, los algoritmos de
agrupación en clústeres asignan (o predicen) un número a cada punto de datos,
indicando a qué clúster pertenece cada punto en particular. (Kumar, 2022)

Técnicas destacadas:

- K-Means Clustering: divide los datos en K grupos, minimizando la variación

```
interna. Muy útil para clasificar estados normales vs estados sospechosos.
```
- DBSCAN (Density-Based Spatial Clustering of Applications with Noise):

```
detecta agrupaciones de datos densos y considera como ruido los puntos
dispersos, ideal para detección de valores extremos.
```
- PCA (Análisis de Componentes Principales): técnica de reducción

```
dimensional que conserva la información más importante. Se utiliza también
como paso previo para clustering o visualización.
```
● Asociación

Se utilizan para descubrir relaciones frecuentes entre variables o eventos. En
mantenimiento, permite encontrar combinaciones de condiciones que preceden a
ciertos comportamientos o desviaciones. Entre alguno de los ejemplos se encuentra:
Apriori Algorithm y Frequent Pattern Growth

● Detección de anomalías

Es una tarea fundamental del aprendizaje automático, cuyo objetivo es identificar
patrones o eventos inusuales que se desvían significativamente del patrón general
de los datos, estas anomalías pueden representar fallos incipientes errores en la


recolección de datos y condiciones anómalas. El sistema se entrena con instancias
normales y al detectar una nueva instancia, puede determinar si parece normal o si
se trata de una anomalía. Géron define la detección de anomalías como el proceso
mediante el cual "el sistema es entrenado con ejemplos normales y luego se evalúa
su capacidad de identificar muestras que no encajan con el comportamiento
aprendido" (Géron, 2019).

Kumar profundiza en su aplicación industrial, explicando que técnicas multivariantes
como la distancia de Mahalanobis, SVDD (Support Vector Data Description) o el
análisis de componentes principales (PCA) permiten detectar condiciones anómalas
complejas incluso cuando no se dispone de etiquetas explícitas de fallos. Un caso
representativo es el proceso de Tenessee Eastman, en el cual el monitoreo dinámico
de sensores ha permitido detectar comportamientos anómalos antes de que las
variables salieran de sus rangos operativos, demostrando el valor de estas técnicas
en la predicción temprana de fallos. (2022)

## Figura 19: Anomaly detection

```
Fuente: (Géron, 2019)
```
- Isolation Forest: ideal para detectar valores atípicos en grandes volúmenes

```
de datos multivariables. Diseñada específicamente para la detección de
valores atípicos (outliers) y novedades. El modelo construye múltiples
árboles de aislamiento que separan progresivamente los datos mediante
reglas binarias. Las instancias que requieren menos divisiones para ser
```

```
aisladas suelen ser consideradas como anómalas, ya que están más cerca
de la raíz del árbol
```
- Z-Score Algorithm: identifica outliers mediante desviación estándar.
- PCA/ICA: también pueden utilizarse para descubrir componentes anómalos.
**3. Reforzado**

El aprendizaje reforzado entrena modelos mediante un sistema de recompensas. El
agente interactúa continuamente con el entorno para generar datos de
entrenamiento y “aprender” una estrategia óptima para completar una tarea, las
acciones decididas según la estrategia aprendida son tales que se maximizan las
recompensas a largo plazo (Kumar, 2022)

**b) Preprocesamiento de datos**

El preprocesamiento de datos constituye una fase crítica en el ciclo de vida de un
modelo de Machine Learning. Su propósito es convertir datos crudos en insumos
consistentes, limpios y estructurados, de manera que los algoritmos puedan detectar
patrones reales y generalizar correctamente.

La calidad de este proceso tiene un impacto directo en el desempeño del modelo, ya
que los algoritmos son altamente sensibles a ruido, valores faltantes, escalas
heterogéneas y distribuciones atípicas (Géron, 2019). En contextos industriales como
el mantenimiento predictivo (PdM) de transformadores eléctricos, donde los datos
provienen de sensores multivariados, ruidosos y con alta dependencia temporal, el
preprocesamiento adquiere un papel fundamental. (Géron, 2019).


## Figura 20: Flujo de trabajo de Machine Learning

```
Fuente: Datacamp
```
**1) Análisis Exploratorio de los Datos (EDA)**

El análisis exploratorio de datos (EDA) es utilizado por los científicos de datos para
analizar e investigar conjuntos de datos y resumir sus características principales, a
menudo empleando métodos de visualización de datos.

EDA ayuda a determinar la mejor manera de manipular las fuentes de datos para
obtener las respuestas que necesita, lo que facilita a los científicos de datos
descubrir patrones, detectar anomalías, probar una hipótesis o verificar suposiciones.

EDA se utiliza principalmente para ver lo que los datos pueden revelar más allá del
modelado formal o la tarea de prueba de hipótesis y proporciona una mejor
comprensión de las variables del conjunto de datos y las relaciones entre
ellas.facilitan histogramas, diagramas de dispersión y mapas de calor de
correlaciones.

**2) Limpieza y consistencia**

La limpieza busca garantizar que los datos reflejen condiciones físicas válidas,
evitando inconsistencias que distorsionen el aprendizaje.


● Eliminación de duplicados y registros corruptos.
● Validación de rangos técnicos (ej. tensión ≤ 500 kV, temperatura del aceite ≤
120 °C).
● Corrección o eliminación de valores atípicos imposibles.

```
3) Tratamiento de valores faltantes
```
```
Los valores nulos o ausentes son comunes en series de sensores industriales debido
a fallos de transmisión o mantenimiento de equipos.
```
```
● Interpolación temporal (lineal, spline) para variables continuas.
● Forward/Backward fill para estados discretos.
● Imputación estadística (media, mediana) en contextos con bajo porcentaje
de faltantes.
```
```
4) Escalado y normalización
```
```
Dado que los algoritmos son sensibles a la magnitud de las variables, es necesario
aplicar escalado o normalización para que todas contribuyan equitativamente al
entrenamiento (Kumar, 2022).
```
```
● StandardScaler: transforma las variables a media cero y desviación estándar
uno.
● RobustScaler: utiliza mediana y rango intercuartílico, siendo más robusto a
outliers.
● MinMaxScaler: normaliza en un rango fijo (ej. [0,1]).
```

## Figura 21: StandarScaler

```
Fuente: (Kumar, 2022)
```
**5) Extracción de características**

La extracción de características consiste en generar nuevas variables derivadas de
las originales, con el objetivo de representar mejor el comportamiento del sistema.
Kumar señala que esta técnica puede aplicarse sobre señales de sensores,
generando métricas como:

● Promedios móviles o medianas por ventana.
● Derivadas temporales de variables físicas (por ejemplo, tasa de cambio de
temperatura).
● Transformaciones estadísticas como desviación estándar o curtosis.

**6) Ingeniería de características (Feature engineering)**

La ingeniería de características se refiere a la transformación lógica, matemática o
estructural de variables para mejorar la representación del problema. Kumar enfatiza
que esta etapa requiere tanto conocimiento del proceso como comprensión del
modelo a emplear. Ejemplos incluyen:

● Crear razones o proporciones entre variables (ej. relación corriente/potencia
como indicador de eficiencia).


● Codificar variables categóricas mediante One-Hot Encoding (ej. modos de
operación: baja, media, alta carga).
● Aplicar transformaciones no lineales (log-transform, exponencial).

**c) Evaluación**

La evaluación de modelos es una fase central en el ciclo de Machine Learning, ya
que permite determinar si un algoritmo no solo se ajusta a los datos de
entrenamiento, sino que también generaliza correctamente a datos nuevos y
condiciones reales de operación.

● Error cuadrático medio (MSE): penaliza fuertemente los errores grandes;
adecuado cuando se busca precisión estricta.
● Raíz del error cuadrático medio (RMSE): mantiene la misma unidad de la
variable, por lo que resulta más interpretable.
● Error absoluto medio (MAE): menos sensible a valores atípicos, útil en señales
con ruido de sensores.
● Precisión (Precision): proporción de predicciones positivas correctas.
Importante cuando los falsos positivos tienen impacto económico.
● Sensibilidad o Recall: mide la capacidad del modelo de detectar fallos reales.
Es prioritaria en PdM, donde es preferible una falsa alarma antes que un fallo
no detectado.
● F1-Score: media armónica entre precisión y recall; útil en escenarios
desbalanceados.
● ROC-AUC: evalúa la capacidad de discriminación global del modelo.
● PR-AUC: más informativa en datasets desbalanceados, como los casos de
fallos poco frecuentes en transformadores.
● Cross-validation: La validación cruzada o cross-validation es una técnica usada
para estimar el rendimiento real del modelo y evitar que este ajustado
únicamente al conjunto de datos de entrenamiento. Kummar hace énfasis en
reservar una parte de los datos para la validación cruzada se denomina método


```
de reserva. Una buena regla general es mantener el 20 % de los datos en el
conjunto de prueba
```
## Figura 22: Conjunto de datos

```
Fuente: (Müller & Guido, 2016)
```
**d) Herramientas**

El desarrollo y aplicación de modelos de aprendizaje automático no solo requiere una
comprensión conceptual del algoritmo, sino también el uso de herramientas
tecnológicas adecuadas para su implementación práctica.

Según Müller y Guido (2016), gran parte del flujo de trabajo en Machine Learning se
apoya en la utilización de librerías que permiten preparar datos, entrenar modelos,
evaluarlos y visualizarlos de forma eficiente. A continuación, se presentan algunas de
las más relevantes:

● NumPy: Proporciona estructuras eficientes para trabajar con vectores,
matrices y funciones matemáticas. Es la base sobre la cual operan la
mayoría de los algoritmos de ML.
● Scipy: Es una colección de funciones para computación científica en Python.
Proporciona, entre otras funciones, rutinas avanzadas de álgebra lineal,
optimización de funciones matemáticas, procesamiento de señales,
funciones matemáticas especiales y distribuciones estadísticas. scikit-learn
se basa en la colección de funciones de SciPy para implementar sus
algoritmos.
La parte más importante de SciPy es scipy.sparse: este proporciona matrices
dispersas, que son otra representación que se utiliza para los datos en


scikitlearn. Las matrices dispersas se utilizan cuando se desea almacenar
una matriz 2D que contiene principalmente ceros:
● Pandas: Facilita la manipulación y análisis de datos tabulares, permitiendo
cargar, limpiar, filtrar y transformar datos de forma sencilla y estructurada.
Pandas ofrece una amplia gama de métodos para modificar y operar con
esta tabla; en particular, permite realizar consultas y uniones de tablas
similares a SQL. Pandas permite que cada columna tenga un tipo distinto
(por ejemplo, enteros, fechas, números de punto flotante y cadenas). Otra
valiosa herramienta de Pandas es su capacidad para procesar datos desde
una gran variedad de formatos de archivo y bases de datos, como SQL,
archivos de Excel y archivos de valores separados por comas (CSV), entre
otros usos.

## Figura 23: Ejemplo de uso de pandas

```
Fuente: (Müller & Guido, 2016)
```
● Matplotlib: Utilizadas para graficar los resultados, visualizar distribuciones de
datos, correlaciones y comportamiento de modelos. Proporciona funciones
para crear visualizaciones con calidad de publicación, como gráficos de
líneas, histogramas, diagramas de dispersión, etc. Visualizar los datos y los
diferentes aspectos del análisis puede proporcionar información importante.


## Figura 24: Gráfico lineal simple de la función seno usando matplotlib

```
Fuente: (Müller & Guido, 2016)
```
● Seaborn: Ofrece una variedad de potentes herramientas para la visualización
de datos, incluyendo gráficos de dispersión, gráficos de líneas, gráficos de
barras, mapas de calor, y muchos más. También permite realizar análisis
estadísticos avanzados, como análisis de regresión, gráficos de distribución
y gráficos categóricos.
Es una herramienta ideal para la visualización estadística. Se utiliza para
resumir datos en visualizaciones y distribución de datos.
Además, Seaborn está mejor integrado que Matplotlib para trabajar con data
frames de Pandas. Por último, es una extensión de Matplotlib para crear
bonitos gráficos con ayuda de Python a través de un conjunto de métodos
más sencillos.

## Figura 25: Seaborn: Visualización de datos estadísticos

```
Fuente: (Seaborn, 2024)
```

● Scikit-learn: Es la biblioteca más común para implementar modelos clásicos
de ML como regresión, árboles de decisión, SVM, clustering y evaluación
con métricas como precisión o AUC. Es una herramienta sencilla y eficiente
para el análisis predictivo de datos, es accesible para todos y reutilizables en
diversos contextos e incluye módulos esenciales para clasificación,
regresión, agrupamiento y reducción de dimensionalidad siendo desarrollada
con NumPy, SciPy y matplotlib.

## Figura 26: Diagrama de flujo de trabajo de scikit-learn

```
Fuente: (IBM, 2025)
```
● TensorFlow y Keras: Estas librerías ofrecen un entorno robusto para la
construcción, entrenamiento y despliegue de arquitecturas más avanzadas.
TensorFlow es una plataforma de código abierto desarrollada por Google para
construir y desplegar modelos de aprendizaje automático y redes neuronales a
gran escala. Su arquitectura flexible permite implementaciones tanto en
entornos locales como en la nube, y está diseñada para aprovechar
aceleradores como GPUs y TPUs. Por su parte, Keras actúa como una
interfaz de alto nivel sobre TensorFlow, facilitando la construcción de modelos
complejos con una sintaxis clara y accesible. El autor menciona que Keras


```
también permite construir modelos para tareas como: Clasificación multiclase
del estado del equipo (óptimo, aceptable, crítico), estimación de la vida útil
remanente (Remaining Useful Life, RUL) y el análisis de degradación
progresiva a través de entradas multivariables.
```
En resumen, estas herramientas permiten permite un análisis y una optimización en
el flujo de trabajo haciendo a este conjunto de herramientas no solo capaz del
entrenamiento de modelos de predicción, sino que también de la construcción de
pipelines reproducibles y la integración con APIs o dashboards y escalar soluciones
hacia entornos productivos reales.

## 2.3.2.2. Aplicación de la inteligencia artificial en el mantenimiento predictivo

La Inteligencia Artificial (IA), y en particular el aprendizaje automático (Machine
Learning, ML), se ha convertido en un componente clave para el desarrollo de
estrategias de mantenimiento predictivo (PdM) en sistemas industriales complejos. A
diferencia de los métodos tradicionales que se basan en mantenimientos preventivos
calendarizados o correctivos tras la falla, el mantenimiento predictivo utiliza modelos
que permiten anticipar fallos antes de que ocurran, lo cual es posible gracias a la
capacidad de la IA para identificar patrones ocultos en grandes volúmenes de datos
históricos y en tiempo real.

La IA ha transformado el funcionamiento del sector energético, especialmente en las
áreas de mantenimiento, eficiencia operativa y diagnóstico automatizado. Zhou et al.
(2022), citados por Agrawal y Sharma (2024) afirman que el mantenimiento
predictivo basado en IA es cada vez más adoptado en sistemas como turbinas
eólicas, transformadores y redes de distribución eléctrica. Por ejemplo, se ha
reportado que el PdM basado en IA puede extender la vida útil de turbinas eólicas
hasta en un 20% y reducir los costos de mantenimiento en un 30%.

Los algoritmos de IA aplicados a datos operacionales permiten detectar signos
tempranos de fallos en infraestructuras críticas, lo cual habilita sistemas de


diagnóstico que recomiendan intervenciones antes de que se produzcan averías
mayores (Agrawal & Sharma, 2024).

Por ejemplo, en aplicaciones de generadores termoeléctricos Kim, Park y Lee (2023)
proponen modelos de aprendizaje automático para optimizar el rendimiento de
generadores termoeléctricos, analizando variables como temperatura, presión,
vibración y consumo de combustible. Estos modelos permiten detectar condiciones
anómalas relacionadas con desgaste, fatiga térmica o desequilibrio mecánico,
anticipando fallos y reduciendo costos por paradas no programadas en un 25%. Este
enfoque es relevante para este proyecto, ya que permite definir variables críticas a
monitorear y seleccionar algoritmos adecuados.

Asimismo, Gichoya et al., citados por Malhotra y Bedi (2020), destacan la aplicación
de IA en el monitoreo adaptativo en tiempo real de generadores termoeléctricos
(TEGs), ajustando parámetros dinámicamente para mejorar la eficiencia energética
bajo condiciones cambiantes.

## Figura 27: Aplicaciones en la industria

```
Fuente: (Kumar, 2022)
```

En el área de transformadores eléctricos, Bakar et al. (2020) y Wang et al. (aplicaron
algoritmos de clasificación como Support Vector Machines (SVM), Random Forest y
Gradient Boosting para predecir fallas internas, utilizando variables como gases
disueltos (DGA), temperatura, humedad y comportamiento dieléctrico. Estos modelos
alcanzaron precisiones superiores al 90%, empleando métricas como precisión,
recall y F1-Score. Estos casos sirven como base para definir los indicadores de salud
de los equipos y para validar modelos predictivos con datos reales.

En consecuencia, los estudios y aplicaciones revisadas demuestran que la
inteligencia artificial es una herramienta efectiva para anticipar fallos, extender la vida
útil de los equipos y reducir costos de mantenimiento en el sector energético.

## 2.3.3. Mantenimiento de transformadores eléctricos

Un transformador de distribución también se conoce como un tipo típico de
transformador de aislamiento. Su función principal es convertir la alta tensión a una
tensión normal, como 240/120 V, los transformadores eléctricos son componentes
fundamentales en la transmisión y distribución de energía, ya que permiten adaptar
los niveles de tensión entre distintos puntos de una red eléctrica. El mantenimiento
de transformadores se clasifica generalmente en tres tipos: predictivo, correctivo y
preventivo, siendo este último el más avanzado tecnológicamente, al apoyarse en
técnicas de monitoreo de condición y análisis inteligente de datos para anticipar
fallas antes de que ocurran. (2022)

## 2.3.3.1. Tipos de Mantenimiento

**a) Predictivo**

El mantenimiento predictivo es un programa de mantenimiento preventivo basado en
la condición. En lugar de basarse en estadísticas de vida útil promedio industriales o
de planta (es decir, el tiempo medio hasta el fallo) para programar las actividades de
mantenimiento, el mantenimiento predictivo utiliza la monitorización directa del


estado mecánico, la eficiencia del sistema y otros indicadores para determinar el
tiempo medio real hasta el fallo o la pérdida de eficiencia de cada tren de máquinas y
sistema de la planta (Mobley).

Según Tyagi, a diferencia de los métodos reactivos convencionales, el
mantenimiento predictivo ofrece una estrategia preventiva que predice posibles fallas
en los equipos mediante el análisis de datos históricos. Es decir, el monitoreo en
tiempo real de parámetros operativos (temperatura, corriente, presencia de gases,
etc.) permite detectar fallas antes de que ocurran, reducir tiempos de inactividad y
minimizar costos por reparaciones mayores (Tyagi, Tiwari, & Soni, 2024).

**1. Rol de la IA en el mantenimiento predictivo**

La gestión de sistemas en la industria está siendo revolucionada por el
mantenimiento predictivo habilitado por inteligencia artificial. Los procedimientos
convencionales de mantenimiento suelen ser reactivos y pueden generar demoras,
costos elevados e ineficiencias. Esto se transforma mediante la inteligencia artificial,
que introduce modelos predictivos capaces de evaluar datos de sensores y
maquinaria para anticipar cuándo ocurrirá una falla en el sistema. Los algoritmos de
IA analizan datos históricos y actuales para identificar patrones que puedan indicar
problemas operativos. Gracias a esta capacidad de anticipación, los equipos de
mantenimiento pueden minimizar los tiempos de inactividad y reducir la probabilidad
de fallos catastróficos mediante la programación precisa de intervenciones,
optimizando los costos de mantenimiento y prolongando la vida útil de los equipos.
(Tyagi, Tiwari, & Soni, 2024).

Dentro del campo de la IA, el aprendizaje automático (Machine Learning) permite
desarrollar modelos capaces de analizar el comportamiento de variables como
temperatura, presión interna del aceite, actividad del OLTC, corriente y presencia de
gases. Estas variables, recolectadas de manera continua mediante sensores
conectados a sistemas SCADA o PI System, representan el insumo principal para


algoritmos que pueden anticipar fallos incipientes o estimar el estado de salud del
transformador.

## Figura 28: Mantenimiento predictivo usando Modelos de Machine Learning

```
Fuente: (Tyagi, Tiwari, & Soni, 2024)
```
Tiwari, Tyagi y Soni señalan aspectos clave del rol de la inteligencia artifical en el
mantenimiento predictivo, tales como:

● Análisis de datos y reconocimiento de patrones: La IA emplea algoritmos de
aprendizaje automático para analizar grandes volúmenes de datos históricos
y en tiempo real. Esto permite identificar tendencias, patrones y anomalías
que pueden estar asociadas con futuras fallas operativas.
● Modelado predictivo: Se crean modelos de predicción que estiman cuándo
es probable que ocurra una falla, en función de variables como señales de
sensores, historial operativo y condiciones ambientales. Estos modelos
ayudan a planificar acciones de mantenimiento con anticipación.


● Detección de anomalías: Mediante técnicas de detección de comportamiento
anómalo, la IA puede distinguir desviaciones del funcionamiento normal, lo
que permite intervenir antes de que una condición evolucione hacia una falla
crítica.
● Monitoreo en tiempo real: La IA permite el análisis continuo del estado de
salud del equipo a medida que se generan datos. Esta vigilancia activa
facilita la toma de decisiones inmediata y mejora la capacidad de respuesta
ante emergencias.
● Estimación de vida útil remanente (RUL): Mediante modelos de análisis
pronóstico, la IA estima cuánto tiempo puede seguir operando un equipo en
condiciones aceptables antes de requerir intervención.
● Aprendizaje adaptativo con nuevos datos: Los modelos de IA son capaces
de actualizarse a medida que se recopilan nuevos datos, volviéndose más
precisos y eficaces con el tiempo.
● Toma de decisiones automatizada: Con base en los resultados del modelo, el
sistema puede desencadenar tareas de mantenimiento, asignación de
recursos o alertas de forma automática.
● Reducción de falsos positivos: Los algoritmos pueden ajustarse para
minimizar falsas alarmas, asegurando que las acciones de mantenimiento
respondan a necesidades reales.
● Optimización de costos: Al enfocar los recursos en intervenciones
necesarias, la IA contribuye a reducir los costos operativos asociados al
mantenimiento excesivo o tardío. En conjunto, estos elementos refuerzan la
capacidad de los sistemas inteligentes para operar en entornos industriales
complejos, mejorando no solo la confiabilidad de los activos, sino también la
rentabilidad y eficiencia energética de la operación.

**b) Correctivo**

Intervenciones reactivas para reparar fallas después de que ocurren. Tiene
limitaciones de alto costo operacional por paradas no planificadas.


**c) Preventivo**

Consiste en inspecciones periódicas programadas con base en tiempo o uso. Incluye
pruebas físicas y eléctricas, análisis de aceite y revisión de componentes
mecánicos. Aunque reduce la probabilidad de fallas, puede conllevar
intervenciones innecesarias si no se basa en el estado real del equipo.

Ejemplos:

● Cambio de aceite en turbinas cada 5,000 horas.
● Limpieza anual de intercambiadores de calor.

Beneficios: Extiende la vida útil del equipo y previene fallas catastróficas.

## 2.3.3.2. Componentes principales

Los transformadores eléctricos están compuestos por diversos elementos cuya
integridad y funcionamiento afectan directamente su confiabilidad operativa. Los más
relevantes desde la perspectiva del mantenimiento predictivo son:

● Núcleo magnético: Responsable de transferir la energía mediante inducción
magnética. La presencia de corrientes parásitas puede generar
calentamiento excesivo.
● Devanados (primario/secundario/terciario): Convierten niveles de tensión
mediante el número de espiras; soportan esfuerzos térmicos y eléctricos.
Son los conductores enrollados que permiten la transformación de voltaje.
Pueden presentarse las fallas mediante la degradación del aislamiento


(envejecimiento térmico), deformaciones mecánicas por cortocircuitos,
descargas parciales/arcos (inter-espiras).
● Aceite dieléctrico: Sirve como aislante y refrigerante. Su deterioro produce
gases combustibles que se pueden detectar mediante análisis de gases
disueltos (DGA).
● OLTC (On Load Tap Changer): Permite ajustar la relación de transformación
bajo carga. Es una de las partes móviles más propensas a fallas mecánicas
o eléctricas.
● Sistema de enfriamiento: Incluye radiadores, ventiladores y bombas. Su mal
funcionamiento incrementa el riesgo de fallas térmicas.
● Relés y dispositivos de protección: Como el relé Buchholz, válvulas de
sobrepresión y sensores de temperatura. Su activación puede ser señal
temprana de una condición crítica.
● Conexión del transformador: Hay distintos tipos de configuraciones para la
conexión, creo que esto depende del propósito del transformador, pero el
nuestro parece que tiene conexión estrella-estrella, o sea todas sus fases
están conectadas a un neutro común, por eso tenemos conexiones
fase-neutro, pero también fase-fase. El cálculo para saber de fase-fase es
multiplicarlos.

Estos componentes están directamente relacionados con las variables monitoreadas
por el sistema PI, lo que permite su integración efectiva en modelos de
mantenimiento predictivo basados en IA.

## 2.3.3.3. Variables Operativas Clave

Basado en la literatura técnica (Tyagi et al., 2024; Brownlee, 2020; Kumar, 2023) y
estudios de caso reales de mantenimiento predictivo aplicado (ABB, Siemens), las
variables más relevantes para este tipo de análisis son:

● Temperaturas punto caliente (Hot-Spot) θH y top-oil θTO: Miden el estrés
térmico en el conductor y en el aceite, gobiernan el envejecimiento del


aislamiento (Arrhenius). Importan debido a que un θH alto acelera
exponencialmente el envejecimiento; la guía IEEE/IEC relaciona θH con el
factor de aceleración de envejecimiento y límites de carga. Existe señales de
falla cuando hay tendencias crecientes a carga constante, picos con OLTC
estable.
● DGA Gases disueltos y TDCG: Mide los productos gaseosos de fallas
eléctricas/térmicas en aceite y papel: H₂, CH₄, C₂H₆, C₂H₄, C₂H₂, CO, CO₂.
Es importante ya que mapea firma de fallas tales como fallas térmicas, arcos,
descargas parciales/mitas y degradación de celulosa
● Humedad en aceite/aislamiento (H₂O, %RS): Mide el contenido de agua
(ppm en aceite; % de saturación relativa), indicador crítico de rigidez
dieléctrica y vida. Es importante debido a si la humedad disminuye BDV,
acelera el envejecimiento
● Corrientes de carga por fase, factor de carga y desequilibrio: Miden la
exigencia térmica, el desequilibrio eleva pérdidas y temperaturas locales. Es
importante ya que logra identificar las cargas elevadas o desbalanceadas
incrementan θH y aceleran envejecimiento; relacionar con clase de
enfriamiento (p. ej., activación ONAF)
● OLTC posición, conteo y calidad de conmutación: Miden el uso y salud del
OLTC (desgaste de contactos); anomalías de conmutación. Importa debido a
que muestra series de conmutaciones anómalas o tiempos prolongados que
anticipan fallas, altas tasas de operación pueden reflejar desgaste mecánico
y riesgo de conmutación defectuosa.
● Alarmas históricas (relés, sobrepresión, Buchholz): Señales tempranas de
condiciones internas anómalas (acumulación de gas, flujo súbito de aceite).
Complemento para la verificación de eventos que preceden a fallas.

## 2.3.4. Análisis y Diseño de Sistemas

El análisis y diseño de sistemas permite identificar y modelar soluciones para
satisfacer necesidades específicas, busca según Kendall & Kendall comprender qué


necesitan los humanos para analizar la entrada o el flujo de datos de manera
sistemática, procesar o transformar los datos, almacenarlos y producir información
en el contexto de una organización específica (2018).

## 2.3.4.1. Técnicas de Recolección de Información

Elegir y aplicar los métodos de recolección y análisis de datos es esencial en todos
los tipos de evaluaciones. Esta síntesis presenta una visión general de las
cuestiones relacionadas con la elección y uso de métodos para las evaluaciones de
impacto, es decir, las evaluaciones que proporcionan información sobre los efectos a
largo plazo previstos y no previstos producidos por los programas o políticas
(Peersman, 2014).

**a) Entrevista**

Para Denzin y Lincoln (2005, pág. 643) la entrevista es “una conversación, es el arte
de realizar preguntas y escuchar respuestas”

En palabras de Sampieri ( 2014 ), “Se define como una reunión para conversar e
intercambiar información entre una persona (el entrevistador) y otra (el entrevistado)
u otras (entrevistados). En este último caso podría ser tal vez una pareja o un grupo
pequeño como una familia o un equipo de manufactura.” ( 2014 ).

“Las entrevistas se dividen en estructuradas, semiestructuradas y no estructuradas o
abiertas” dicen Ryen (2013); Grinnell y Unrau (2011). citados por Sampieri ( 2014 ,
pág. 403).

**1) Estructurada**

El entrevistador sigue una guía de preguntas estructuradas sin desviarse de estas
preguntas específicas, ya que el instrumento prescribe qué cuestiones se
preguntarán y en qué orden.


**2) Semiestructurada**

Aunque se basa en una guía de preguntas, el entrevistador tiene la libertad para
introducir preguntas adicionales para precisar conceptos u obtener más información.

**3) No Estructurada**

Las entrevistas abiertas se fundamentan en una guía general, donde el entrevistador
tiene toda la flexibilidad para manejarla. Por ejemplo: En su opinión, ¿qué tan útiles
son los manuales de usuario para la aplicación de contabilidad del sistema actual?

**b) Cuestionario**

En palabra de Torres, se define cuestionario como “un conjunto de preguntas sobre
los hechos o aspectos que interesan en una investigación y que son contestadas por
los encuestados. Se trata de un instrumento fundamental para la obtención de
datos.” (Torres).

**c) Observación**

A pesar de ser el método de recolección más sencillo y accesible de realizar, se debe
observar con rigurosidad detalles que puedan ser necesarios para la investigación.

Según Kendall & Kendall, al observar el entorno físico donde trabajan las personas
también podemos obtener muchos detalles sobre sus requerimientos humanos de
información (2018). Menciona los siguientes pasos consignando los acontecimientos
según algún esquema previsto:

● Primero definir los objetivos que se persiguen; determinar su unidad de
observación.
● Debe ser planificada, para que reúna los requisitos de validez y confiabilidad.
● Se debe preparar a los observadores.


**d) Revisión documental**

La revisión de documentos es una técnica de investigación que se utiliza para
recopilar datos secundarios, es decir, aquellos que han sido recolectados
previamente por otras personas, instituciones o investigadores. Esta técnica implica
examinar documentos oficiales, archivos físicos o electrónicos, y registros públicos
para extraer información relevante al objeto de estudio.

Según (Metodología de la investigación: Las rutas cuantitativa y cualitativa, 2018)
este método es particularmente útil cuando se desea analizar fenómenos sociales o
históricos utilizando fuentes ya existentes, como estadísticas gubernamentales,
informes policiales, expedientes hospitalarios, censos, bases de datos
institucionales, entre otros.

## 2.3.4.2. Diagramación UML

El lenguaje Unificado de Modelado (UML) se presenta como una forma de visualizar
o representar un sistema permitiendo representarlo por medio de algún tipo de
notación gráfica.

**a) Estructurales**

Los diagramas estructurales representan los componentes que forman un sistema y
la relación entre dichos componentes. Estos diagramas muestran los aspectos
estáticos de un sistema.

**1) Diagrama de Clases**

Revelan las clases de objeto en el sistema y las asociaciones entre estas clases.


## Figura 29: Diagrama de Clases

```
Fuente: (Sommerville, 2011)
```
Como menciona Sommerville, los diagramas de clase “pueden usarse cuando se
desarrolla un modelo de sistema orientado a objetos para mostrar las clases en un
sistema y las asociaciones entre dichas clases” (Sommerville, 2011).

Pueden ser presentados con diferentes niveles de detalle, en el ejemplo de la figura,
Sommervile hace referencia a que cada extremo de la asociación se registra con un
1, lo cual significa que hay una relación 1:1 entre objetos de dichas clases. Esto es,
cada paciente tiene exactamente un registro, y cada registro conserva información
precisa del paciente.

**2) Diagrama de componentes**

Según (Sommerville, 2011), “los componentes se implementan con frecuencia en
lenguajes orientados a objetos y, en algunos casos, el acceso a la interfaz
“proporciona” de un componente se realiza a través de solicitudes de método.”

Los diagramas de componentes cuentan con dos tipos de interfaces: una
“proporciona” y la otra “requiere”. En UML se representan mediante un círculo y un
semicírculo conectado al componente, respectivamente.


## Figura 30: Diagrama de Componentes

```
Fuente: (IONOS, s.f.)
```
**3) Diagrama de objetos**

Los diagramas de objetos ilustran objetos concretos con sus valores actuales de
atributos, y cómo se relacionan entre ellos en un estado particular del sistema. Útiles
para validar la estructura de clases y verificar cómo interactúan los objetos durante la
ejecución de un caso específico. Su aplicación más común se da durante las fases
de análisis y diseño, especialmente cuando se necesita ejemplificar la configuración
del sistema en un instante puntual.


## Figura 31: Diagrama de Objetos

```
Fuente: (Miro, s.f.)
```
**4) Diagrama de Paquetes**

El diagrama de paquetes permite organizar y agrupar elementos del modelo, como
clases o casos de uso, en unidades lógicas llamadas paquetes. Su objetivo principal
es mostrar la arquitectura modular del sistema, dependencias entre módulos, y
también facilitar la organización del código o del diseño.

Ayuda a entender la estructura general reduciendo el acoplamiento entre
componentes y mejorar la mantenibilidad, haciendo este diagrama fundamental en
sistemas complejos porque ofrece una vista de alto nivel.

**a) Comportamiento**


Los diagramas de comportamiento representan lo que ocurre dentro de un sistema.
Muestran cómo interactúan todos los componentes entre sí y con otros sistemas o
usuarios.

**1) Diagrama de secuencias**

Muestran las interacciones entre los actores y el sistema, y entre los componentes
del sistema, usado principalmente para modelar las interacciones entre los actores y
los objetos del sistema, así como las interacciones entre los objetos en sí.
(Sommerville, 2011).

Capturan la secuencia de mensajes intercambiados entre objetos y el orden en que
ocurren estas interacciones, mediante líneas verticales y flechas horizontales,
ofreciendo una visualización cronológica de las interacciones de objetos, brindando
perspectivas sobre el comportamiento dinámico y flujo de un sistema.

## Figura 32: Diagrama de Secuencias

```
Fuente: (Sommerville, 2011)
```
**2) Diagrama de estado**


Diagramas de estado, que explican cómo reacciona el sistema frente a eventos
internos y externos. (Sommerville).

## Figura 33: Diagrama de Estado

```
Fuente: (IONOS, Diagrama de estado UML: explicación y ejemplos, s.f.)
```
**3) Diagrama de Casos de Uso**

El conjunto de casos de uso representa todas las interacciones posibles que se
describirán en los requerimientos del sistema. Los actores en el proceso, que pueden
ser individuos u otros sistemas, se representan como figuras sencillas (2011).

Los diagramas de casos de uso cuentan con clases de interacciones las cuales son
representadas mediante una elipse con etiqueta, por ejemplo “Edita el registro”, cada
interacción se encuentra vinculada a un actor mediante una línea.


## Figura 34: Diagrama de Casos de Uso

```
Fuente: (Sommerville, 2011)
```
**4) Diagramas de actividad**

Muestran las actividades incluidas en un proceso o en el procesamiento de datos.
Utiliza modelos de flujo de datos y de control, en el encabezado del rectángulo
grande se escribe el título. El cuerpo contiene flechas y rectángulos que simbolizan
las acciones, los objetos y los flujos de datos o de control de la operación.


## Figura 35: Diagrama de Actividad

```
Fuente: (IONOS, Diagramas de actividades UML: explicación y ejemplos, s.f.)
```
## 2.3.5. Estructura de Datos

## 2.3.5.1. Modelado de Datos

**a) Conceptual**

El modelo conceptual es considerado como una herramienta que ayuda a
representar y comprender de manera grafica como está estructurado un sistema ya
que mediante los modelos conceptuales es posible construir una descripción de la
realidad fácil de entender. Según Marqués, los modelos conceptuales deben ser
buenas herramientas para representar la realidad.


## Figura 36: Conceptos del modelo entidad-relación

```
Fuente: Elaboración propia
```
En la figura se puede observar los conceptos del modelo entidad-relación, este
modelo es el modelo conceptual más usado permitiendo describir mediante gráficas
y elementos la relación de elementos claves entre entidades.

**b) Lógico**

“El objetivo del diseño lógico es obtener una representación que use, del modo más
eficiente posible, los recursos que el modelo de SGBD posee para estructurar los
datos y para modelar las restricciones (Marqués, 2010)”.

En este modelo se debe describir los datos de manera específica debido a que a
diferencia del modelo conceptual que solo busca describir la relación entre
entidades, este modelo se enfoca en la proporcionar la estructura detalladamente.
Se incluyen todas las entidades y relaciones entre ellos, todos los atributos y la clave
principal de cada entidad, así mismo, las claves foráneas o externas. En la siguiente
figura, se muestra un ejemplo de este modelo de datos lógicos (Tecnologías de
Información).


## Figura 37: Modelo de datos lógicos

```
Fuente: (Tecnologías de Información, s.f.)
```
**c) Físico**

El modelo físico tiene como propósito describir cómo se va a implementar
físicamente el esquema lógico obtenido en la fase anterior (2010).

En este punto, el modelo físico debe realizar diferentes pasos para el modelado,
tales como convertir entidades en tablas, definir las relaciones entre entidades en
claves externas y mantener las restricciones que deben tener, tal y como podemos
observar en la siguiente imagen:


## Figura 38: Modelo de datos físico

```
Fuente: (Tecnologías de Información)
```
## 2.3.5.2. Base de Datos

Pulido Romero et al. (2019) nos dice que “Una base de datos es una colección de
información organizada de tal modo que sea fácilmente accesible, gestionada y
actualizada” (pág. 18). Además, las bases de datos pueden ofrecer herramientas
avanzadas de búsqueda y análisis que permiten obtener datos relevantes de manera
eficiente. Esto facilita la toma de decisiones efectivas y la formulación de estrategias
empresariales bien fundamentadas, aprovechando la información disponible de una
mejor manera.

**a) Relacionales**

Según Meier & Kaufmann, el modelo relacional presenta la información en forma de
tabla, donde cada tabla es un conjunto de tuplas (o registros) del mismo tipo. Ver
todos los datos como conjuntos permite ofrecer opciones de consulta y manipulación
basadas en conjuntos. Es decir, que las bases de datos relacionales almacenas
datos de forma estructurada, donde se obtiene información de tablas conectadas
entre sí mediante su relación, obsérvese la estructura en la siguiente figura.


## Figura 39: Estructura de tabla para una tabla EMPLEADO

```
Fuente: (Meier & Kaufmann, 2019)
```
Como se explicó el modelo relacional permite ver los datos como conjuntos y se
tiene una manipulación basada en conjuntos. El principal lenguaje de consulta usado
para la manipulación de datos es denominado Lenguaje de Consulta Estructurado
(SQL) y siguen una estructura básica de consulta, algunas de estas expresiones son:
SELECT, FROM y WHERE, los cuales procesan la consulta y generan una tabla de
resultados. A modo de ejemplo, en la siguiente figura se muestra una consulta para
obtener los nombres de los empleados que viven en ‘Kent’

## Figura 40: Lenguaje de consulta para una tabla EMPLEADO

```
Fuente: (Meier & Kaufmann, 2019)
```

**1) MySQL**

MySQL es una de las bases de datos más conocidas en el mundo, siendo un
sistema de administración de bases de datos relacional capaz de almacenar una
gran cantidad de datos de gran variedad y así mismo tener la capacidad de
distribuirlos para cubrir las necesidades de cualquier tipo de organización. Utiliza el
lenguaje SQL, Gilfillan explica que este lenguaje permite crear bases de datos, así
como agregar, manipular y recuperar datos en función de criterios específicos (2003).

Como sistema de gestión de base de datos ofrece características como una
arquitectura cliente servidor, donde cada cliente puede realizar consultas a través del
sistema de registro. Además, es compatible con el lenguaje SQL lo que ofrece una
gran compatibilidad con varios motores de bases de datos. Permitiendo desde la
versión 5.0 la creación de vistas personalizadas.

OpenWebinars destaca que MySQL está basado en código abierto permite a

pequeñas empresas y desarrolladores disponer de una solución fiable y
estandarizada para sus aplicaciones. Por ejemplo, si se cuenta con un listado de
clientes, una tienda online con un catálogo de productos o incluso una gran selección
de contenidos multimedia disponible, MySQL ayuda a gestionarlo todo debida y
ordenadamente (2024).

Se utiliza las siguientes sentencias básicas en MySQL:

● SELECT es usada para consultar datos.
● DISTINCT Sirve para eliminar los duplicados de las consultas de datos.
● WHERE Es usada incluir las condiciones de los datos que queremos
consultar.
● AND y OR es usada para incluir 2 o más condiciones a una consulta.
● ORDER BY Es usada para ordenar los resultados de una consulta.
● INSERT Es usada para insertar datos.


● UPDATE Es usada actualizar o modificar datos ya existentes.
● DELETE Es usada borrar datos.

## Figura 41: Ejemplo de Sintaxis MySQL

```
Fuente: (OpenWebinars, ¿Qué es MySQL?, 2024)
```
**2) PostgreSQL**

PostgreSQL es una base de datos de código abierto conocida por su fiabilidad,

flexibilidad y soporte de estándares técnicos abiertos, soportan tanto datos
relacionales como no relacionales, por lo que la convierte en una de las bases de
datos relacionales más estables y compatibles actualmente.

IBM explica que PostgreSQL ofrece ventajas como rendimiento y escalabilidad,
debido a que en este sistema de base de datos la autenticación de datos y las
velocidades de lectura/escritura son esenciales soportando diferentes optimizaciones
de rendimiento. Además de ofrecer un soporte de lenguaje profundo, debido a su
compatibilidad con lenguajes como Python, Javascript, C/C++ y otros, lo que permite
a los desarrolladores realizar tareas de bases de datos en el lenguaje que dominan.
También por su continuidad del negocio, ya que se puede configurar para garantizar
una alta disponibilidad de servicios. Como ultima ventaja a destacar, pero no la
menos importante, es de código 100% abierto, es decir que ofrece beneficios a
empresas, mejores costos, mayor flexibilidad e innovación (2024).


## Figura 42: PostgreSQL Elephant Logo

```
Fuente: (Development, 2024)
```
**3) SQL Server**

Intelequia menciona que Microsoft SQL Server es uno de los principales sistemas de
gestión de bases de datos relacionales usado en entornos corporativos y en
aplicaciones empresariales. Su arquitectura está basada en el lenguaje
Transact-SQL para usarse _on-premise_ como en una modalidad en la nube,
facilitando la escalabilidad y disponibilidad de los datos (2024).

Destacando entre sus principales características:

● Modelado de base de datos relacional sin necesidad de complicaciones
debido a su interfaz visual que tiene.
● Alta disponibilidad, lo que permite procesos de conmutación más rápidos.
● Seguridad y cifrado de datos que cuenta hace que sea una de las principales
plataformas más segura.
● Compatibilidad con múltiples plataformas.

**b) No Relacionales**

Según menciona Meier, antes de que se introdujeran las bases de datos
relacionales, existían base de datos no relaciones, como las jerárquicas o las de tipo
red. Debido a la necesidad de representar componentes estructurales o maquinaria


ya que representarlas de forma relacional era demasiado complicado y resultaba
problemático. Se adopto el termino NoSQL a cualquier enfoque de datos no
relaciones y necesarias si el servicio web requiere alta disponibilidad

## Figura 43: Estructura básica de bases de datos NoSQL

```
Fuente: (Meier & Kaufmann, 2019)
```
Como se observa en la figura, la estructura básica de un sistema NoSQL utiliza un
almacenamiento distribuido masivo. Los datos son almacenados por pares de
clave-valor, columnas o familias de columnas, almacenes de documentos o grafos.

Meier explica que los sistemas de base de datos NoSQL cumplen los siguientes
requisitos:

● Modelo: El modelo de base de datos subyacente no es relacional.
● Al menos tres V: El sistema de base de datos incluye una gran cantidad de
datos (volumen), estructuras de datos flexibles (variedad) y procesamiento
en tiempo real (velocidad).
● Esquema: El sistema de gestión de bases de datos no está limitado por un
esquema de base de datos fijo.


● Arquitectura: La arquitectura de la base de datos admite aplicaciones web
distribuidas masivamente y escalamiento horizontal.
● Replicación: el sistema de gestión de bases de datos admite la replicación
de datos.
● Garantía de consistencia: según el teorema CAP, la consistencia se puede
garantizar con un retraso para priorizar la alta disponibilidad y la tolerancia a
la partición (2019).

**1) MongoDB**

MongoDB es una base de datos no relacional de código abierto esta orienta a
documentos en lugar de tablas y filas, almacena los datos en documentos flexibles
similares a los de formato JSON (value/key) y se utiliza para almacenar volúmenes
masivos de datos.

## Figura 44: Estructura MongoDB

```
Fuente: (MongoDB, 2024)
```
En la estructura que se muestra en la figura se observa la forma en la que los datos
son almacenados como colecciones o documentos que cuentan con una clave/valor.
Entre sus componentes debemos destacar “_id” ya que este es un identificador


único, considerado como la clave principal, este campo es obligatorio dentro de
MongoDB

Entre sus casos de uso se puede destacar la analítica en tiempo real y el almacén de
datos empresariales. Debido al nivel de escala de las empresas, MongoDB ofrece
una lectura y escritura bastante rápida y eficiente al analizar información en tiempo
real debido a la conversión de JSON y documentos similares a JSON en los que se
manda los datos. Al ser una solución confiable brinda beneficios como el equilibrio de
carga, considerando el nivel de escala de las empresas y la demanda de recursos
esto exige un nivel de confiabilidad y disponibilidad de los servicios, por lo que
MongoDB distribuye grandes conjuntos de datos en múltiples máquinas virtuales de
forma simultánea sin dejar a un lado su rendimiento. Entre sus mayores beneficios
se destaca las consultas de bases de datos ad hoc, MongoDB lo hace
extremadamente accesible ya que utilizan un lenguaje similar SQL. Esta
accesibilidad facilita la inserción, consulta, clasificación, actualización y exportación
de sus datos con métodos de ayuda comunes y comandos de shell simples. (IBM,
2024)

**2) Cassandra**

Apache Software Foundation explica que Cassandra es una base de datos
distribuida NoSQL de código abierto en la que confían miles de empresas por su
escalabilidad y alta disponibilidad sin comprometer el rendimiento. Su escalabilidad
lineal y su probada tolerancia a fallos en hardware estándar o infraestructura en la
nube la convierten en la plataforma perfecta para datos de misión crítica.
(Foundation, 2024)

Cassandra cuenta con su propio lenguaje de consulta SQL, llamado Cassandra
Query Language (CQL), aunque es parecido a SQL, CQL está enfocado en las
características específicas del gestor de base de datos.


Una de las principales ventajas de Cassandra es su escalabilidad horizontal y su
baja probabilidad de fallo, al tener una escalabilidad horizontal este puede aumentar
mediante nodos, en caso opuesto, se debe equipar el servidor con mayor capacidad
y rendimiento para operar. Ideal para trabajar con grandes volúmenes de datos.

## 2.3.5.3. Procesos ETL

El proceso ETL (extracción, transformación, Carga) es fundamental para la gestión
de datos, permitiendo convertir datos provenientes de diferentes fuentes de
información útil y de calidad para su posterior análisis y modelado

**a) Extracción**

En la fase de extracción, los datos sin procesar se copian o exportan desde la
ubicación de su origen. Los equipos de gestión de datos pueden extraer datos de
diversas fuentes. Los datos pueden ser estructurados o no estructurados. El objetivo
principal en esta etapa es acceder a la información relevante sin alterar su formato

IBM, nos menciona la siguiente fuente de datos:

● Servidores SQL o NoSQL
● Sistemas CRM y ERP
● Archivos sin formato
● Correo electrónico
● Páginas web

**b) Transformación**

En esta fase realizamos preparación de los datos sin procesar, aquí se transforman y
consolidan para su posterior análisis. Respecto a las tareas a llevar a cabo, IBM
menciona las siguientes:


● Eliminación de valores nulos, duplicados e inconsistentes
● Conversión de formatos (ej. Fechas, unidades de medida)
● Normalización de nombres de variables
● Cálculo de nuevas variables derivadas
● Validación y auditoria de la calidad de los datos

Esta etapa es crítica para garantizar que la información esté libre de errores y sea
consistente a lo largo de toda la base de datos, facilitando su integración y análisis
(McKinney, 2012).

**c) Carga**

En esta fase, los datos transformados se trasladan a una zona de almacenamiento.
IBM menciona que esta fase “Normalmente implica una carga inicial de todos los
datos, seguida de cargas periódicas de cambios incrementales de datos y, con
menos frecuencia, actualizaciones completas para borrar y reemplazar datos en el
almacén.

Para la mayoría de las organizaciones que utilizan ETL, el proceso es automatizado,
bien definido, continuo y por lotes. Normalmente, el ETL se realiza fuera de las horas
de trabajo, cuando el tráfico en los sistemas de origen y el almacén de datos es
mínimo” (IBM, 2024).

**d) Herramientas ETL**

Las herramientas ETL (Extract, Transform, Load) son soluciones tecnológicas
diseñadas para garantizar la calidad de los datos mediante la eliminación de
inconsistencias. Entre sus principales funciones destacan la limpieza y la validación
de datos, procesos que son fundamentales para asegurar la integridad y
confiabilidad de la información procesada.


Los procesos ETL manuales suelen consumir mucho tiempo y ser propensos a
errores humanos. En contraste, las herramientas ETL automatizan estas tareas,
permitiendo que los flujos de trabajo se completen con rapidez y precisión. Esto no
solo mejora la eficiencia operativa, sino que también reduce significativamente el
margen de error en el manejo de datos. Existen múltiples herramientas ETL, tanto
comerciales como de código abierto ofreciendo escalabilidad y flexibilidad. Ejemplo:

● Apache Airflow: orquestación y automatización de flujos ETL.
● Talend: Plataforma de integración de datos con interfaz grafica.
● Python (pandas, SQLAlchemy): Muy utilizado en entornos de ciencia de
datos industriales para tareas personalizadas.

**e) Patrones de diseño ETL**

**1) Patrón de diseño básico**

El patrón básico de ETL es el más tradicional y sencillo. Consiste en tres fases
secuenciales: la extracción de los datos desde las fuentes originales, su
transformación para adecuarlos a un formato y calidad aceptables, y finalmente su
carga en un sistema de almacenamiento o análisis. Este patrón es suficiente en
escenarios de baja complejidad, donde los datos son homogéneos y se actualizan de
forma periódica y predecible.


```
Figura 45: Patrón de diseño básico ETL
```
```
Fuente: Elaboración Propia
```
**2) Patrón de diseño ETL-P**

El patrón ETL-P surge como respuesta a la necesidad de manejar fuentes de datos
con conexiones poco confiables o con frecuencias de actualización irregulares. En
este esquema se introduce una capa de staging temporal (Persistent Staging Area,
PSA) donde los datos son primero almacenados de manera intermedia antes de ser
transformados y cargados definitivamente. Esto permite gestionar caídas de
conexión o retrasos en la llegada de datos sin comprometer el proceso completo.

## Figura 46: Patrón de diseño ETL-P

```
Fuente: Elaboración Propia
```
**3) Patrón de diseño ETL-VP**


El cual emplea una capa virtual de staging (Virtual Staging Area, VSA) para manejar
cargas asincrónicas de datos. Esto significa que, aunque las fuentes envíen datos en
momentos distintos y sin una sincronización clara, el sistema puede consolidarlos y
cargarlos de manera consistente y en intervalos predecibles.

```
Figura 47: Patrón de diseño ETL-VP
```
```
Fuente: Elaboración Propia
```
**4) Arquitectura Medallion (Bronze–Silver–Gold)**

Se ha consolidado como un diseño moderno y escalable para la gestión de datos en
entornos industriales y de ciencia de datos. Su propuesta es dividir el pipeline en tres
capas: la Bronze, donde se almacenan los datos crudos tal como provienen de la
fuente, sin modificaciones; la Silver, donde los datos ya han pasado por procesos de
limpieza, normalización y estandarización, garantizando su consistencia y calidad; y
la Gold, donde los datos se enriquecen mediante feature engineering y se organizan
en datasets listos para el análisis avanzado, el modelado de ML o la visualización en
dashboards.


```
Figura 48: Arquitectura Medallion
```
```
Fuente: Elaboración Propia
```
2.3.5.4. Almacenamiento de Datos

**a) Data Lake**

Un data lake o un lago de datos, es una forma de almacenar datos estructurados, no
estructurados, semiestructurados en volúmenes masivos de datos. Este sistema de
almacenamiento es flexible y escalable que almacena datos sin procesas de
múltiples fuentes en su formato original. Estos formatos sin procesar pueden ser
desde documentos de texto no estructurado, imágenes, canciones, videos, datos de
sensores. Las tecnológicas aplicadas en un Data Lake pueden abarcar bases de
datos relaciones y no relacionales, tales como PostgreSQL o Hadoop. Al tener ese
nivel de flexibilidad facilita la exploración, manipulación y transformación de datos
para satisfacer requisitos específicos de investigación o análisis, debido a que los
datos no pasan por un proceso que prolonga su análisis. (Lamer, Saint-Dizier, Paris,
& Chazard., 2024).


```
Figura 49: Data Lake
```
```
Fuente: (adservio, 2024)
```
**b) Data Warehouse**

Un Data Warehouse o almacén de datos es alimentado por un proceso ETL a
comparación de un Data Lake, por lo que tiene como objetivo seleccionar y extraer
datos relevantes. Donde el proceso ETL se encarga de refinar y procesar los datos,
con el fin de corregir cualquier información anormal o errónea, además de realizar la
actualización periódica con la nueva información registrada en la fuente de datos
original.

Para un Data Warehouse como una base relacional mencionan los autores Lamer,
Saint-Dizier, Paris, & Chazard que usa herramientas como PostgreSQL, Oracle, SQL
Server. Sin embargo, para una NoSQL herramientas como MongoDB, Cassandra o
Couchbase lo consideran interesante porque ofrece ventajas en el manejo de datos
no estructurados o semiestructurados.

Así mismo, señalan que el proceso ETL puede ser realizado con tecnologías como
Python, R o Java, junto con un programador como Apache Airflow para la ejecución
de scripts. Como resultado, el data Warehouse funciona como un repositorio
unificado, centralizado y normalizado (2024).


```
Figura 50: Data Warehouse
```
```
Fuente: (Mistral, 2023)
```
**1) Esquema de estrella**

De acuerdo con Valbuena, en el esquema de estrella, el centro de la estrella puede
tener una tabla de hechos y varias tablas de dimensiones asociadas. Se conoce
como esquema estelar ya que su estructura se asemeja a una estrella. El esquema
en estrella es el tipo más simple de esquema de Data Warehouse. (2020).

## Figura 51: Ejemplo de esquema de estrella (star)

```
Fuente: (Valbuena, 2020)
```

Las características del esquema de estrella son:

● Cada dimensión se representa mediante una única tabla de una dimensión.
● La tabla de dimensiones debe contener atributos, tal y como en la imagen.
● Se unen mediante una clave foránea la tabla de dimensiones y de hechos.
● No están conectados entre sí las tablas dimensiones.
● La tabla de hecho contiene clave y medida.

**2) Esquema de copo de nieve**

Valbuena explica que un esquema de copo de nieve es una extensión de un
esquema de estrella y agrega dimensiones adicionales. Se llama snowflake porque
su diagrama se asemeja a un copo de nieve. Las tablas de dimensiones
están normalizadas, lo que divide los datos en tablas adicionales.

## Figura 52: Ejemplo de esquema de copo de nieve

```
Fuente: (Valbuena, 2020)
```
Las principales características que se mencionan son:

● Usa un espacio de disco más pequeño.
● El rendimiento de la consulta disminuye debido a las múltiples tablas.


● Mas esfuerzos debido a que hay más tablas de búsquedas.

**3) Esquema de galaxia**

Como señala Valbuena, un esquema Galaxy contiene dos tablas de hechos que
comparten tablas de dimensiones. También se llama Fact Constellation Schema. El
esquema se ve como una colección de estrellas, de ahí el nombre Galaxy Schema.

## Figura 53: Ejemplo de Esquema Galaxy

```
Fuente: (Valbuena, 2020)
```
Entre sus características se encuentra:

● Las dimensiones del esquema se separan en función del nivel jerárquico.
● Útil para agregar tablas de hechos para una mejor comprensión.

**c) Data Mart**

Los Data Mart sirven como medio dedicado a transformar los datos en información
útil y significativa, en contraste con el Data Warehouse que consultar requiere más
tiempo debido al volumen de los datos y con el Datalake que los datos no están
fácilmente alineados con preguntas de investigación o análisis específicas. Los data


marts pueden almacenarse en forma de cubo de procesamiento analítico en línea,
ofreciendo una vista multidimensional de los datos según (Valbuena, 2020)

Ese tipo de estructura permite un análisis profundo permitiendo a los usuarios
explorar y navegar a través de diversas dimensiones, debido a la naturaleza de sus
datos generalmente se almacenan en bases de datos relacionales como
PostgreSQL, Oracle y SQL Server.

## 2.3.6. Desarrollo Web

## 2.3.6.1. Lenguajes de Marcado y Estilo

**a) CSS**

CSS es el lenguaje para estilizar documentos HTML, controlando colores, fuentes,
diseños y responsividad (2024).

● Separación de preocupaciones: Divide estructura (HTML) y presentación
(CSS).
● Cascada y especificidad: Las reglas se aplican en cascada según
prioridades.
● Flexibilidad: Permite diseños adaptables (responsive) con media queries
(@media screen and (max-width: 600px)).

**b) HTML**

HTML es el lenguaje estándar para crear estructuras de páginas web. Utiliza
etiquetas (<tag>) para definir elementos como encabezados, párrafos, imágenes y
enlaces

● Basado en marcado: Organiza el contenido mediante jerarquías de etiquetas
(ej. <html> → <body> → <p>).


● Semántica: Versiones modernas (HTML5) introducen etiquetas con
significado intrínseco (<header>, <article>, <footer>).
● Interoperabilidad: Compatible con todos los navegadores y dispositivos.

HTML solo define estructura, no diseño (requiere CSS para presentación) y no
maneja lógica dinámica (necesita integración con JavaScript o backend (W3C, n.d.)

**c) XML**

Lenguaje de marcado genérico para almacenar/transportar datos estructurados. A
diferencia de HTML, no tiene etiquetas predefinidas (IBM, 2022). Presenta
las siguientes características:

● Intercambio de datos entre sistemas (APIs, B2B).
● Almacenamiento jerárquico (ej. archivos de configuración).
● Base para otros lenguajes (SVG, RSS, XHTML).

## 2.3.6.2. Lenguajes de Programación

Downey, Elkner, & Meyers nos dan a conocer los tipos de lenguajes de
programación, mencionando las ventajas de lenguajes de alto nivel sobre lenguajes
de bajo nivel. “En primer lugar, la programación en lenguajes de alto nivel es mucho
más fácil; escribir programas en un lenguaje de alto nivel toma menos tiempo, los
programas son más cortos y más fáciles de leer, y es más probable que estos
programas sean correctos. En segundo lugar, los lenguajes de alto nivel son
portables, lo que significa que pueden ejecutarse en tipos diferentes de
computadores sin modificación alguna o con pocas modificaciones. Los programas


escritos en lenguajes de bajo nivel solo pueden ser ejecutarse en un tipo de
computador y deben reescribirse para ejecutarlos en otro.” (2002)

Existen dos tipos de programas que traducen lenguajes de alto nivel a bajo nivel,
estos son intérpretes y compiladores. Un intérprete lee y ejecuta un programa de alto
nivel, es decir que lleva a cabo lo que dice el programa traduciendo el programa
poco a poco leyendo y ejecutando cada comando.

## Figura 54: Esquema de intérprete

```
Fuente: (Valbuena, 2020)
```
En cambio, un compilador lee el programa y lo traduce todo al mismo tiempo, antes
de ejecutar cualquier de las instrucciones. En este caso llamado código fuente y el
programa traducido el código de objeto o el código ejecutable.

## Figura 55: Esquema de compilador

```
Fuente: (Valbuena, 2020)
```
**a) Python**

Python se considera como lenguaje interpretado porque los programas de Python se
ejecutan mediante un intérprete, siendo más flexible y portable. Una de las
características de Python es que tiene una sintaxis clara y sencilla, la característica
de tipado dinámico nos dice que no es necesario declarar el tipo de dato que va a
contener esa variable, sino que se va a determinar según el tipo de valor que se le
asigne y puede variar si se le asigna un valor de otro tipo. Además de ser altamente


tipado, es decir que no permite tratar una variable como si fuera de un tipo distinto al
que tiene si no que es necesario que primero se convierta la variable al nuevo tipo
previamente. Además, Python al ser multiplataforma está disponible en multitud de
plataformas, por lo que, si no usamos librerías específicas de cada plataforma, el
programa podría correr en todos los sistemas sin grandes cambios según (Duque,
2015).

Pyhton hoy en día se convirtió en una herramienta para el análisis de datos y
aprendizaje automático, según Coursera Pyhton es “considerado actualmente como
una herramienta básica en la ciencia de datos, permitiendo a los analistas de datos
utilizar este lenguaje para construir algoritmos de aprendizaje automático, manipular
y analizar datos y complementar otras tareas relacionadas con los datos.” (2023)

## Figura 56: Logo Python

```
Fuente: (Software, s.f.)
```
En el desarrollo web se utiliza Python más en aplicaciones de back-end, incluyendo
él envió de datos hacia y desde el servidor, procesamiento de datos y comunicación
con la base de datos ofreciendo diversos marcos de trabajo, los más utilizados son
Django, Flask.

La automatización o scripting de tareas repetitivas pueden ser automatizadas
mediante Python trabajando de una manera más eficiente, esto puede ir desde
tareas básicas como convertir un archivo pdf a csv hasta la automatización de
recolección de datos de una página web o redes sociales, entre las librerías más
utilizadas para automatización en Python se encuentra Selenium, BeautifulSoup, etc.


Por otro lado, el autor menciona como el análisis y aprendizaje automático ha
convertido a Python en una herramienta básica para la ciencia de datos, permitiendo
realizar cálculos estadísticos complejos, crear visualizaciones de datos, construir
algoritmos de aprendizaje automático, manipular y analizar datos, y completar otras
tareas relacionadas con los datos. (Coursera, 2023). Para la visualización de datos
Python cuenta con una amplia gama de visualizaciones, como histogramas, gráficos
circulares, graficas de líneas y barras, diagramas de caja, mapas de calor, etc. Así
mismo, cuenta con una serie de bibliotecas que permite a los codificadores escribir
programas para el análisis de datos y el aprendizaje automático de forma más rápida
y sencilla, como Keras y Tensorflow.

**b) JavaScript**

## Figura 57: JavaScript

```
Fuente: (Docs, MDN Web Docs)
```
Javascript es un lenguaje de programación que fue introducido como una forma de
agregar programas a páginas web, convirtiéndose en uno de los lenguajes más
adaptado por todos los navegadores web principales. Gracias a que hizo posible
interactuar directamente sin necesidad de recargar la página para cada acción.

Con el tiempo, no solo su adopción no solo fue en navegadores web menciona
Haverbeke también plataformas de base de datos tales como MongoDB y CouchDB,
usan JavaScript como su lenguaje de scripting y consultas. Varias plataformas para
programación de escritorio y servidores, más notablemente el proyecto Node.js
proporcionan un entorno para programar en JavaScript fuera del navegador. (2018)


Respecto al DOM o Modelo de Objetos del Documento es el cómo una página web
es representada en una estructura de árbol de datos. Según esta información,
(Haverbeke, 2018) afirma que “Es una estructura de datos que puedes leer o
modificar. Y actúa como una estructura en tiempo real: cuando se modifica, la página
en la pantalla es actualizada para reflejar los cambios”. Entonces se considera cada
elemento del documento como un nodo dentro de este árbol, permitiendo la
navegación en el contenido y las estructuras de las páginas web mediante
JavaScript, obsérvese en la figura la forma en que cada nodo tiene una propiedad
parentNode que apunta al modelo que pertenece, es decir, que permite acceder al
nodo padre de un elemento. También existe una propiedad children la cual devuelve
una colección de los nodos hijos de un elemento y los nextsibling y previousSibling
que permiten acceder a los nodos hermanos de un elemento

## Figura 58: Esquema de compilador

```
Fuente: (Haverbeke, 2018)
```
Javascript del lado del cliente consta de varias características o ventajas. (Mozilla)
listas varias de estas:

● Almacenar valores útiles dentro de variables. Como ejemplo, pedimos que se
ingrese un nuevo nombre y luego se almacena ese nombre en una variable
llamada name.


● Operaciones sobre fragmentos de texto (conocidas como "cadenas" (strings)
en programación). Como ejemplo, tomamos la cadena "Player1:" y la unimos
a la variable name para crear la etiqueta de texto completa, p. ej. ''Player1:
Chris".
● Ejecuta código en respuesta a ciertos eventos que ocurren en una página
web. Usamos un evento ‘click’ en nuestro ejemplo anterior para detectar
cuándo se hace clic en el botón y luego ejecutar el código que actualiza la
etiqueta de texto.

Sin embargo, lo que más resalta Mozilla es la funcionalidad construida sobre el
lenguaje Javascript de lado del cliente, resaltando el uso de Interfaces de
programación de aplicaciones (API) como conjuntos de bloques de construcción
listos para usar que permiten a un desarrollador implementar programas que de otro
modo serían difíciles o imposibles de implementar

**c) TypeScript**

Typescript es un lenguaje de programación moderno que permite crear aplicaciones
web robustas en JavaScript. TypeScript no requiere de ningún tipo de plugin, puesto
que lo que hace es generar código JavaScript que se ejecuta en cualquier
navegador, plataforma o sistema operativo (Ramos & Fuentes., 2016). TypeScript se
convirtió en una de las tecnologías más queridas debido a su tipado fuerte.

Es un transpilador, un compilador que se encarga de traducir las instrucciones de un
lenguaje a otro, según indica el autor también se lo llama pre-compilador ya que
intenta realizar funciones de un compilador y la de un traductor de instrucciones,
configurado en el archivo tsconfig.

(Ramos & Fuentes., 2016) Lista otras características importantes de este lenguaje de
programación con las cuales no cuenta JavaScript:

● Interfaces.


● Clases (Clases de verdad).
● Es fuertemente tipado.
● Debugging reducido.

TypeScript es un lenguaje que añade a JavaScript una capa de tipado estático, sin
embargo, todas estas características son simplemente para ayudar a JavaScript en
tiempo de diseño, debido a que TypeScript compila todo como JavaScript tradicional.
Al incluir un tipado estético no puede haber errores con los tipos de datos y se debe
definir el tipo de dato.

## Figura 59: Ejemplo de lenguajes débilmente tipados

```
Fuente: (Ramos & Fuentes., 2016)
```
**d) Go**

Go o Golang, es un lenguaje de programación de código abierto conocido por su uso
en servicios en la nube y red, desarrollo de aplicaciones web y otros. Go cuenta con
un tipado estático, explicito y está modelado a partir del lenguaje de programación C.
Gracias a su rápido inicio, su baja sobrecarga en tiempo de ejecución y su capacidad
para ejecutarse sin una máquina virtual (TechTarget, s.f.).

Go tiene varias características. (TechTarget, s.f.) menciona algunas de estas:


● Una biblioteca estándar: se basa en el uso de paquetes distribuidos y facilita
agregar y usar funcionalidad adicional en el código.
● La gestión de paquetes de código: permite administrar paquetes de código
externos y creados por el usuario, y posibilita la publicación de paquetes
mediante un pequeño conjunto de comandos.
● La tipificación estática: proporciona un sistema de tipos que garantiza las
conversiones y la compatibilidad, evitando al mismo tiempo los problemas
que surgen con los lenguajes tipados dinámicamente.
● El soporte para pruebas: incluye pruebas unitarias que se ejecutan en
paralelo con el código escrito y permiten la depuración y el control de
calidad.
● La independencia de la plataforma: aprovecha el diseño modular de Go para
permitir que su código se compile en casi cualquier plataforma.
● Un modelo de concurrencia: se basa en goroutines ligeros que se comportan
como hilos y un mecanismo de canal que facilita la comunicación entre ellos.
La sintaxis del código imita los patrones fundamentales comúnmente
utilizados en lenguajes dinámicos y prioriza las interfaces de composición
sobre la herencia. Esto permite a los desarrolladores escribir programas que
pueden realizar múltiples tareas simultáneamente.

## 2.3.6.3. Frameworks de Desarrollo

**a) Front-end**

**1. NextJs**

Para comprender Next.js empezaremos hablando acerca de React, es una biblioteca
de JavaScript para crear interfaces de usuario interactivas. nos referimos a que
React proporciona funciones útiles (API) para crear UI, pero deja en manos del
desarrollador dónde usar esas funciones en su aplicación. Por interfaces de usuario
(UI) nos referimos a los elementos que los usuarios ven y con los que interactúan en
la pantalla.


NextJs como es un marco React, diseñado para crear aplicaciones web completas
(cliente-servidor). Permite construir interfaces de usuario reutilizando componentes
de React y Next.js para funciones y optimizaciones adicionales. (Vercel)

En cuanto a las principales características de NextJS, (Vercel, Next.js
Documentation) nombra las siguientes:

● Enrutamiento: Un enrutador basado en un sistema de archivos creado sobre
componentes de servidor que admite diseños, enrutamiento anidado,
estados de carga, manejo de errores y más.
● Representación: Renderizado del lado del cliente y del servidor con
componentes de cliente y servidor. Optimizado con renderizado estático y
dinámico en el servidor con Next.js. Transmisión en entornos de ejecución de
Edge y Node.js.
● Obtención de datos: Obtención de datos simplificada con async/await en
componentes del servidor y una fetchAPI extendida para memorización de
solicitudes, almacenamiento en caché de datos y revalidación.
● Estilo: Compatibilidad con sus métodos de estilo preferidos, incluidos
módulos CSS, Tailwind CSS y CSS-in-JS.
● Optimizaciones: Optimizaciones de imágenes, fuentes y scripts para mejorar
los elementos web básicos y la experiencia del usuario de su aplicación.
● Mecanografiado: Soporte mejorado para TypeScript, con mejor verificación
de tipos y compilación más eficiente, así como un complemento TypeScript
personalizado y un verificador de tipos.

Next.js cuenta con un renderizado SSR o renderizado dinámico, proporciona
contenido actualizado en cada solicitud, lo que resulta beneficioso para páginas que
cambian con frecuencia. Al utilizar renderizado del lado del servidor, el HTML de la
página se genera en cada solicitud. Para utilizar la representación del lado del
servidor para una página, debe exportar una función asíncrona llamada


## Figura 60: Next.js: The Ultimate Guide to Building Modern Web Applications

```
Fuente: (Team A. , s.f.)
```
**2. Angular**

Es un framework de ingeniería de software de código abierto que se utiliza para crear
aplicaciones web de una sola página. Los desarrolladores también lo utilizan para
crear menús animados para páginas web HTML (Deyimar A., 2023a). Este
framework fue creado por ingenieros de Google y actualmente mantenido por esta
misma.

Angular sigue el paradigma de programación orientada a componentes, lo que
significa que las aplicaciones se construyen mediante la creación y combinación de
componentes reutilizables. Utiliza TypeScript, un superset de JavaScript que agrega
tipos estáticos a la sintaxis de JavaScript, lo que permite a los desarrolladores
detectar errores en tiempo de compilación y mejorar la mantenibilidad del código.

Este framework utiliza el DOM regular del navegador. Cuando ocurren cambios en
los datos que requieren múltiples actualizaciones en la misma página HTML, en lugar
de actualizar únicamente los componentes modificados, Angular volverá a renderizar
completamente toda la estructura de árbol de etiquetas HTML.


## Figura 61: Logo angular

```
Fuente: (LLC, s.f.)
```
Entre sus características Deyimar A. (2023) resalta las siguientes:

● Enlace bidireccional de datos: dado que la arquitectura de AngularJS enlaza
JavaScript y HTML, el código de ambos ya está sincronizado. Por lo tanto, el
framework ahorra mucho tiempo a los desarrolladores.
● Directivas: el marco amplía la funcionalidad de los archivos HTML con
directivas. Para habilitar las directivas, los desarrolladores agregan el prefijo
ng- a los atributos HTML.
● Estructura de código: AngularJS brinda plantillas; lo que te permite producir
aplicaciones con código limpio. No solo te ahorra tiempo, sino que también
facilita la modificación o reparación de las aplicaciones.
● Pruebas: el marco admite pruebas unitarias y de integración.
● Futuro brillante: el futuro de Angular es brillante debido a su funcionalidad y
popularidad. Su base de usuarios sigue creciendo y tiene una gran cantidad
de documentación en profundidad que se actualiza constantemente.
● Compatibilidad móvil y de escritorio: AngularJS puede ejecutarse en la
mayoría de los navegadores web. No solo en computadoras de escritorio,
sino también en dispositivos móviles.
● Angular presenta una curva de aprendizaje exigente, pues implica una sólida
comprensión de TypeScript, HTML y CSS por parte de los desarrolladores.


**3. Vue.js**

Vue.js es un framework open source de JavaScript, que nos permite la creación de
interfaces de usuario y aplicaciones de una sola página (single-page application o
SPA, en inglés), de una forma muy sencilla (Barragán, 2021). Vue.js se ha vuelto
cada vez más popular debido a su simplicidad y flexibilidad.

Una de las características más destacadas de Vue.js es su enfoque en la reactividad
y la facilidad de uso además de permitir a los desarrolladores crear componentes
reutilizables que pueden contener su propio estado y lógica. Como dice Barragán
(2021), “La aplicación reacciona al cambio de eventos modificando el DOM de
nuestra página, todo esto sin que sea necesaria la recarga de la página”. Es por esta
misma forma de funcionar el por qué Vue.js mejora la experiencia y usabilidad de los
usuarios al navegar por aplicaciones web desarrolladas con este framework.

Respecto a los componentes, Barragán (2021) afirma que:

Un componente Vue.js, es un elemento en el cual se encapsula código reutilizable.
Dentro de cada componente podemos encontrar fragmentos de código HTML,
JavaScript o CSS. Esta característica permite modular los proyectos, haciendo muy
fácil la escalabilidad de estos. Así mismo, si surge la necesidad, se puede
reemplazar un componente por otro de una forma muy simple, y en muy poco
tiempo.

## Figura 62: Logo Vue.js

```
Fuent e: (Team V. , s.f.)
```

Vue.js tiene una curva de aprendizaje asequible respecto a sus competidores
Angular y ReactJS, dado a que contiene una documentación bien estructurada con
ejemplos claros y concisos, además de utilizar una sintaxis de plantillas similar a
HTML, como dice Nowak (n.d.), “Because of its familiar templating syntax and use of
components, integrating or migrating existing projects to Vue is faster and smoother”
[Debido a su sintaxis familiar de plantillas y al uso de componentes, la integración o
migración de proyectos existentes a Vue es más rápida y fluida].

Aunque Vue.js no cuente con el apoyo de grandes compañías, si tiene el apoyo de
una de las comunidades de desarrolladores que más activas están actualmente.

**b) Backend**

**1. Flask**

Turing señala que Flask es un framework ligero de aplicaciones web basado en
Python, una interfaz de puerta de enlace de servidor web (WSGI). Es la
especificación de una interfaz común entre servidores y aplicaciones web. (Turing,
s.f.)

Flask es una herramienta ideal para principiantes, no tiene la necesidad de usar
bibliotecas lo que lo hace rápido de instalar y de utilizar. Se considera como un
“micro” Framework ideal para el desarrollo de aplicaciones web que siguen una
arquitectura MVC.

En cuanto a sus características, (Turing, s.f.) nombra las siguientes:

● Proporciona servidor de desarrollo y depurador.
● Marco ligero.
● Utiliza plantillas Jinja2.
● Tiene extensiones que ayudan a mejorar sus funcionalidades.
● Soporte integrado para pruebas unitarias.


● API ordenado.

Para comenzar a usar Flask, se usa el siguiente comando para la instalación en el
sistema ‘pip install flask’. Utiliza los métodos HTTP de la siguiente forma:

## Figura 63: Métodos HTTP Flask

```
Fuente: (Turing, s.f.)
```
Entre las ventajas que menciona Turing acerca de Flask, menciona que es fácil de
aprender, garantiza que en la aplicación no exista variables globales, ya que asigna
a cada solicitud su espacio de nombres por lo que ayuda a controlar la ubicación de
los objetos, facilitar la depuración y encontrar lo que necesitas al escribir código. No
limita su forma de trabajar ya que ofrece una lista de herramientas que se pueden
usar de acorde a las necesidades.

**2. NodeJS**

Node.js es un entorno de tiempo de ejecución de JavaScript, también de código
abierto, incluye todo lo que se necesita para ejecuta un programa hecho en
JavaScript. (OpenWebinars) menciona que “Este motor coge el código JavaScript y
lo convierte en un código de máquina más rápido. El código de máquina es un
código de nivel más bajo que la computadora puede ejecutar sin necesidad de
interpretarlo primero, ignorando la compilación y por lo tanto aumentando su
velocidad. “

Para leer o escribir realiza una solicitud HTTP, controlado por eventos que lo hace
ligero y eficiente frente aplicaciones en tiempo real. “Es una plataforma que no
dominará el mundo del desarrollo web, pero sí que satisface las necesidades de una
gran mayoría de programadores” (2024)


Node js se centra en manejar una gran cantidad de conexiones simultaneas con un
alto nivel de rendimiento, lo que equivale a una alta escalabilidad debido al siguiente
proceso: cuando existe una solicitud se genera un evento, el servidor lo procesa y si
la operación no fue exitosa, no espera hasta que se complete y en su lugar crea una
función de devolución de llamada así que nunca necesita crear más subprocesos

**3. FastAPI**

Según Turing, Flask se ha utilizado durante años y es uno de los frameworks de
Python más famosos para crear servicios REST. Como ya se mencionó, es fácil de
usar e implementar, y eficaz para crear microservicios. Sin embargo, Flask presenta
algunas desventajas, por lo que para compensarlas se creó el framework FastAPI.
(Turing, s.f.)

FastAPI ofrece un rendimiento al nivel de NodeJS y GO y tal como menciona su
nombre, es un framework web rápido y ligero. Además de gestionar solicitudes de
forma asíncrona, es decir que, no espera una respuesta inmediata por lo que puede
ejecutarse otra solicitud mientras espera la respuesta de otra. Utiliza el servidor
ASGI, especificando la creación web asíncrona basada en eventos y posee de
herramientas y librerías que las hacen fáciles de utilizar.

FastAPI cuenta con las siguientes características, según Turing:

● Considerado uno de los frameworks más rápidos de Python.
● La documentación es sencilla, directa y ofrece un gran soporte al editor.
● El estilo de codificación ayuda a reducir alrededor del 40% de los errores
inducidos.
● Compatible con estándares abiertos para API y esquemas JSON.
● Documentación API interactiva.


```
Para comenzar a usar FastAPI, se usan los siguientes comandos para la instalación
en el sistema ‘pip install fastapi’ y ‘pip install uvicorn’, respectivamente. Los métodos
HTTP que usa FastAPI son los siguientes comandos:
```
## Figura 64: Métodos HTTP FastAPI

```
Fuente: (Ramos & Fuentes., 2016)
FastAPI ofrece una validación de datos como una función integrada que simplifica y
permite declarar la validación e información adicional sobre los parámetros que
tienen. Los mensajes de error son presentados en formato JSON a comparación de
Flask que usa paginas HTML.
```
```
Turing resalta las ventajas de utilizar FastAPI, por lo que nombra las siguientes:
```
● FastAPI se centra en la fiabilidad, la seguridad y la simplicidad. Está
diseñado para crear APIs fácilmente y en un abrir y cerrar de ojos.
● FastAPI proporciona muchas funciones, incluidas solicitudes HTTP,
autenticación mediante OAuth, respuestas XML/JSON, cifrado SSL/TLS, etc.
Se administra a través de una interfaz web que le permite personalizar la
configuración de su cuenta de acuerdo con el comportamiento de la API.
● Las herramientas de monitorización integradas permiten supervisar el uso de
la API. Proporcionan alertas cuando se alcanzan umbrales críticos, como la
expiración de las marcas de tiempo de respuesta y el límite de solicitudes.
● El framework FastAPI se utiliza para crear API que dependen de Flask. Es
una extensión del framework de aplicaciones web que ofrece las
características esperadas de Flask, pero con funcionalidades adicionales.
● Se recomienda FastAPI si se desea utilizar un enfoque basado en un
conjunto de herramientas en lugar de crear la aplicación completa desde
cero o usar numerosos generadores de código repetitivo en línea. Incorpora
ideas de otras bibliotecas.


Turing resalta una característica importante de FastAPI, argumenta que ofrece una
serie de características y ventajas que lo convierten en una opción ideal para integrar
modelos de aprendizaje automático de manera eficiente. Empezando por que
FastAPI es compatible con bibliotecas esenciales para Machine Learning como
Keras, TensorFlow y Nifi. Además de que ofrece una flexibilidad clave que permite a
los desarrolladores agregar nuevas funciones a la API sin la necesidad de alterar el
código base o incluso de construir módulos desde cero.

## 2.3.6.4. API y Servicios Web

**a) Restful APIs**

APIs basadas en el estilo arquitectónico REST (Representational State Transfer),
que utiliza protocolo HTTP/HTTPS y sigue principios como:

● Stateless: Cada solicitud contiene toda la información necesaria.
● Recursos identificables: URLs descriptivas (ej: /api/users/1).
● Métodos HTTP estandarizado como: GET, POST, PUT/PATCH, DELETE.

**b) GraphQL**

Lenguaje de consulta desarrollado por Facebook (2015) que permite a los clientes
solicitar datos específicos en una sola petición.

● Esquema tipado: Define tipos de datos y relaciones (ej: type User { id: ID!,
name: String}).
● Queries bajo demanda: Evita over-fetching.
● Mutations y Subscriptions: Para operaciones de escritura y actualizaciones
en tiempo real.

**c) Websockets**


Protocolo de comunicación bidireccional y en tiempo real sobre una única conexión
TCP, cuenta con una comunicación full-duplex. Menciona ciertas aplicaciones típicas
como:

● Chats en vivo (WhatsApp, Slack).
● Actualizaciones financieras (bolsas de valores).
● Juegos multijugador online.

## 2.3.6.5. Seguridad

**a) JWT**

JWT usado para compartir información entre dos entidades, cliente (front-end) y un
(back-end). Contiene la información en un formato JSON y esta criptográficamente
firmado, así que terceros no llegan a modificar su contenido. Al no tener un estado,
no depende de un servidor ni una base de datos para almacenar tokens (2023).

**b) OAuth**

OAuth es un estándar abierto de autenticación que está basado en tokens y sigue un
flujo de autorización, por lo que espera un estado de autorización para obtener y
verificar los tokens. Cuenta con bibliotecas prácticamente en todos los lenguajes de
programación y facilita la provisión de opciones de programación como “iniciar sesión
con Google” (Frontegg, 2023).

## 2.3.6.6. Despliegue

**a) Docker**

Docker es una plataforma de código abierto que permite ejecutar aplicaciones en
contenedores. Los contenedores encapsulan todo lo necesario para ejecutar una


aplicación, incluyendo bibliotecas, herramientas y dependencias, lo que permite que
la aplicación se ejecute de la misma forma que se ejecutaría de manera local.

**b) CI/CD**

La integración continua (CI) son los cambios de código en un repositorio múltiples
veces al día, permitiendo la integración del trabajo en el repositorio, haciendo que las
actualizaciones lleguen más rápido a los usuarios. Una mayor colaboración entre
equipos ya que todos trabajan sobre una versión centralizada y actualizada del
código. Identificar y detectar errores en las primeras etapas del desarrollo, ahorra
tiempo y esfuerzo en la resolución de problemas.

De acuerdo con SDi, el despliegue continuo (CD) como menciona es la
“Automatización del proceso de implementación de código probado en entornos de
producción o preproducción. Con CD, los cambios aprobados en el código se
pueden implementar de manera rápida y segura, lo que garantiza actualizaciones
frecuentes y confiables en el software.” (SDi, s.f.).

## 2.3.7. Ingeniería de software

## 2.3.7.1. Metodología de Desarrollo

“La metodología para el desarrollo de software es un modo sistemático de realizar,
gestionar y administrar un proyecto para llevarlo a cabo con altas posibilidades de
éxito. Una metodología para el desarrollo de software comprende los procesos a
seguir sistemáticamente para idear, implementar y mantener un producto software
desde que surge la necesidad del producto hasta que cumplimos el objetivo por el
cual fue creado”.


La metodología de desarrollo es esencial para llevar las actividades del ciclo de vida
de desarrollo del proyecto de software de inicio a fin y obtener un producto que
cumpla con todos los objetivos planteados.

**a) Metodología Tradicional**

Para desarrollar un software dependemos de una metodología y una serie de pasos
y actividades a cumplir para el éxito de este. De acuerdo con Maida & Pacienzia, la
metodología tradicional se centra en la definición de roles, actividades, artefactos,
herramientas y notaciones para el modelado y documentación detallada. Resaltando
que este tipo de metodologías no se adaptan adecuadamente a los cambios, debido
a que en su metodología se debe contar con todo tipo de información al inicio del
desarrollo. (Maida & Pacienzia, 2015).

**1. Cascada**

El modelo de la cascada o también conocido como ciclo de vida clásico, sugiere un
desarrollo en fases secuenciales. Como dice Pressman, “sugiere un enfoque
sistemático y secuencial para el desarrollo del software, que comienza con la
especificación de los requerimientos por parte del cliente y avanza a través de
planeación, modelado, construcción y despliegue, para concluir con el apoyo del
software terminado” (Pressman, 2010).

## Figura 65: Fases del modelo de la cascada

```
Fuente: (Ramos & Fuentes., 2016)
```
**b) Metodología Ágil**


Una metodología ágil es caracterizada por su flexibilidad y su facilidad de adaptación
a cambios dentro de los requerimientos del cliente, volviendo el desarrollo
incremental y no secuencial a comparación de las metodologías tradicionales.

Pressman explica que “la adaptación continua logra muy poco si no hay avance.
Entonces, un proceso de software ágil debe adaptarse incrementalmente. Para lograr
la adaptación incremental, un equipo ágil requiere retroalimentación con el cliente (de
modo que sea posible hacer las adaptaciones apropiadas).” (Pressman, 2010).

En contraste, Maida y Pacienzia mencionan que la metodología ágil tiene como
objetivo esbozar los valores y principios de elaboración de un proyecto con el fin de
permitir a los equipos de desarrollo desarrollar sistemas rápido y con una respuesta
a los cambios del proyecto (2015).

**1. Scrum**

Scrum es un método de desarrollo ágil basado en el un proceso de análisis que
conlleva las siguientes actividades: análisis, diseño, evolución y entrega.

## Figura 66: Fases del modelo Scrum

```
Fuente: (Pressman, 2010)
```

En las fases del modelo Scrum existen acciones de desarrollo de patrones de
proceso: Retraso, Sprints, Reuniones Scrum y Demostraciones.

(Pressman, 2010) explica cada una de estas:

Retraso: Lista de prioridades de los requerimientos o características del proyecto que
dan al cliente un valor del negocio. Es posible agregar en cualquier momento otros
aspectos al retraso (ésta es la forma en la que se introducen los cambios). El gerente
del proyecto evalúa el retraso y actualiza las prioridades según se requiera.

Sprints: Consiste en unidades de trabajo que se necesitan para alcanzar un
requerimiento definido en el retraso que debe ajustarse en una caja de tiempo
predefinida (lo común son 30 días). Durante el sprint no se introducen cambios (por
ejemplo, aspectos del trabajo retrasado). Así, el sprint permite a los miembros del
equipo trabajar en un ambiente de corto plazo, pero estable.

Reuniones Scrum: Son reuniones breves (de 15 minutos, por lo general) que el
equipo Scrum efectúa a diario. Hay tres preguntas clave que se pide que respondan
todos los miembros del equipo:

● ¿Qué hiciste desde la última reunión del equipo?

● ¿Qué obstáculos estás encontrando?

● ¿Qué planeas hacer mientras llega la siguiente reunión del equipo?

Un líder del equipo, llamado maestro Scrum, dirige la junta y evalúa las respuestas
de cada persona.

Demostraciones preliminares: entregar el incremento de software al cliente de modo
que la funcionalidad que se haya implementado pueda demostrarse al cliente y éste
pueda evaluarla.


**2. Programación Extrema**

La programación extrema o XP está enfocado en la entrega exitosa de software de
calidad que se adapta a los requisitos cambiantes del usuario final. El proceso XP
usa un enfoque orientado a objetos es el enfoque de la programación extrema y se
desarrolla a lo largo de cuatro actividades: planeación, diseño, codificación y
pruebas.

## Figura 67: Fases del modelo XP

```
Fuente: (Pressman, 2010, pág. 62)
```
La Planeación es la fase en donde se entiende el contexto del negocio, se definen
los requerimientos del software que se quiere desarrollar “comienza escuchando
—actividad para recabar requerimientos que permite que los miembros técnicos del
equipo XP entiendan el contexto del negocio para el software y adquieran la
sensibilidad de la salida y características principales y funcionalidad que se
requieren—“ (Pressman, 2010). En esta fase se realiza las historias de usuario que
describen tanto las características y funcionalidades, a las cuales el cliente asigna un
valor de prioridad. Posteriormente son analizadas por los miembros del equipo XP
que evalúa cada historia y asigna un costo correspondiente a la historia, sin
embargo, si se estima que el tiempo de desarrollo supera las tres semanas, según


Pressman, “se pide al cliente que la descomponga en historias más chicas y de
nuevo se asigna un valor y costo.” (pág. 63).

El diseño el principio MS (mantenlo sencillo), señala Pressman que “Un diseño
sencillo siempre se prefiere sobre una representación más compleja. Además, el
diseño guía la implementación de una historia conforme se escribe: nada más y nada
menos” (Pressman, 2010, pág. 63). XP recomienda la creación de un prototipo de
una historia de usuario en el caso de que en su diseño se presente una situación
difícil o riesgosa, esto para revalidar las estimaciones originales y evitar riesgos.
Estos prototipos son llamados “soluciones en punta”. Además de seguir con una
estrategia de integración continua, esto con el fin de llegar a una solución que no
tenga problemas de compatibilidad de interfaces.

La codificación empieza con las pruebas unitarias de cada una de las historias, con
el fin de capacitar al desarrollador para centrase en lo que debe implementarse. XP
está basado en la programación por parejas. En palabras de Sommerville, “XP
recomienda que dos personas trabajen juntas en una estación de trabajo con el
objeto de crear código para una historia. Esto da un mecanismo para la solución de
problemas en tiempo real (es frecuente que dos cabezas piensen más que una) y
para el aseguramiento de la calidad también en tiempo real (el código se revisa
conforme se crea).”

En las pruebas, en esta fase las pruebas unitarias que se desarrollaron en la fase
anterior deben ser implementadas y automatizadas para que puedan ejecutarse una
y otra vez con facilidad. “Esto estimula una estrategia de pruebas de regresión
siempre que se modifique el código (lo que ocurre con frecuencia, dada la filosofía
del rediseño en XP” (Pressman, 2010).

**3. Kanban**

Una metodología que es implementada mediante tableros Kanban que se utilizan
para controlar y optimizar el flujo de trabajo en un proceso.


Según Bermejo, p. (2011, pág. 8), “El Kanban es un sistema de gestión donde se
produce exactamente aquella cantidad de trabajo que el sistema es capaz de
asumir”. Esto significa que el objetivo de Kanban es la de optimizar el flujo de
desarrollo de software, maximizando la eficiencia y eliminando cuellos de botellas en
el flujo de trabajo.

## Figura 68: Tablero Kanban

```
Fuente: Asana (Asana, s.f.)
```
Cada columna representa una etapa de trabajo, donde los estados más básicos que
se pueden presentar son: Trabajo pendiente (To do), en progreso (In progress) y
terminado (Done). Las tareas asignadas son representadas mediante tarjetas
visuales en el tablero, recorren cada columna dependiendo del estado en que se
encuentre el trabajo.

## 2.3.7.2. Diseño de Sistemas

**a) Modelado de Software**

**1) Monolítica**


En una aplicación monolítica o bajo una arquitectura monolítica, toda la lógica se
ejecuta en un único servidor de aplicaciones o un único programa que lo hace todo.
También se consideran aplicaciones monolíticas cuando existen múltiples servicios
de API que proporcionan la lógica de negocio, toda la capa de presentación es una
sola aplicación web grande, es decir la aplicación hace todo (Stephens, 2015).

## Figura 69: Diagrama monolítico

```
Fuente: Elaboración Propia
```
Para la implementación de una funcionalidad de negocio o mejora, un desarrollador
debe realizar cambios dentro de la misma aplicación y todos los desarrolladores que
realicen cambios deben integrarlos en la misma aplicación única. Los desarrolladores
de otros equipos pueden fácilmente afectar el trabajo de los otros, creando conflictos
que resultan en problemas. En la figura anterior, se visualiza cuatro equipos de
desarrollo independientes que trabajan en las áreas que se solapan de la aplicación,
por lo que dificulta saber quién está trabajando en qué pieza de la aplicación en
cualquier momento en el tiempo lo que afecta la calidad de código y por lo tanto la
calidad de la aplicación y la disponibilidad. Adicionalmente, cada vez es más difícil


para los equipos de desarrollo individuales hacer cambios sin afectar a otros equipos
con cambios incompatibles (Atchison, 2016).

**2) Microservicios**

Una arquitectura de microservicios es una aplicación distribuida donde todos los
módulos son microservicios. Según Wolf, una arquitectura de microservicios
promueve el desarrollo y despliegue de aplicaciones compuestas por unidades
independientes, autónomas, modulares y autocontenidas, lo cual difiere de la forma
tradicional o monolítico (2016).

Una de las ventajas de utilizar microservicios es la capacidad de publicar una
aplicación grande como un conjunto de pequeñas aplicaciones (microservicios) que
se pueden desarrollar, desplegar, escalar, manejar y visualizar de forma
independiente. Los microservicios permiten a las empresas gestionar las
aplicaciones de código base grande usando una metodología más práctica donde las
mejoras incrementales son ejecutadas por pequeños equipos en bases de código y
despliegues independientes. La agilidad, reducción de costes y la escalabilidad
granular, traen algunos retos de los sistemas distribuidos y las prácticas de gestión
de los equipos de desarrollo que deben ser considerados. (Villamizar, y otros, 2015)

## Figura 70: Diagrama microservicios

```
Fuente: Elaboración Propia
```

Un enfoque de microservicios provee de una serie de beneficios tales como:

● Intensa modularización. Básicamente, la arquitectura de microservicios
consiste en dividir una aplicación o sistema en partes más pequeñas. La
modularización facilita la automatización y proporciona un medio concreto de
abstracción. Los servicios modularizados son desplegables de forma
independiente y ayudan en la velocidad de la que se entrega del software
(Nadareishvili, Mitra, McLarty, & & Amundsen, 2016)
● Intercambiabilidad. Los microservicios se pueden reemplazar más fácilmente
que los módulos en un sistema monolítico. Si un nuevo servicio ofrece la
misma interfaz, puede reemplazar el microservicio existente, el cual puede
utilizar una base de código diferente e incluso diferentes tecnologías,
siempre y cuando presente la misma interfaz, lo que en un sistema
monolítico puede ser difícil o imposible de lograr. Esta necesidad de
reemplazar el código en el futuro, frecuentemente se descuida durante el
desarrollo de los sistemas de software (Wolff E. , 2016).
● Desarrollo sostenible. El desarrollo de software sostenible se debe gracias a
la intensa modularización y la fácil sustitución o intercambiabilidad ya que los
microservicios no están vinculados a una tecnología específica, lo que
permite la utilización de nuevas tecnologías apropiadas para cada problema,
evitando su caducidad o deterioro por la acción de su mantenimiento
correctivo, evolutivo o adaptativo (dependiendo de qué se quiere
perfeccionar).
● Entrega continua. Lo que hace especial la modularización, es que cada
microservicio puede ser desplegado de manera independiente.
Concretamente, los microservicios pueden ser, por ejemplo: contenedores
(Docker) en los que está instalado el software que constituye el microservicio
que forma parte de un sistema de software general, siendo alternativamente,
partes de una página HTML con llamadas JavaScript ó pueden ofrecer
servicios a través de REST, que pueden ser utilizados por otros
microservicios u otros sistemas externos o clientes móviles. Estos


```
microservicios pueden ofrecer una interfaz de usuario, o llamar a otros que
implementan la lógica de negocio (Wolff E. , 2017).
```
## 2.3.7.3. Orquestadores

En el desarrollo de sistemas inteligentes orientados al mantenimiento predictivo, es
fundamental que todos los componentes desde la recolección de datos hasta la
predicción y visualización trabajen de forma coordinada. Para lograrlo, se necesita un
mecanismo que asegure que cada paso se ejecute de manera ordenada, confiable y
automatizada. Esta tarea la realiza un elemento clave conocido como orquestador.

Un orquestador es una herramienta que se encarga de coordinar tareas, automatizar
flujos de trabajo y gestionar recursos entre distintos servicios, módulos o
microprocesos. En arquitecturas distribuidas o basadas en microservicios, un
orquestador permite que el sistema funcione correctamente sin necesidad de
intervención manual, facilitando tareas como:

● La ejecución programada de procesos (ej. cada 15 minutos).
● El seguimiento del flujo de datos (desde sensores hasta el modelo).
● El registro de eventos, resultados y errores.
● La sincronización entre el modelo de predicción y la interfaz del usuario.

Como señala Kumar (2022) ,en entornos industriales es crucial contar con sistemas
que realicen tareas automáticas de forma periódica, integrando predicciones
basadas en datos reales. En este sentido, el uso de orquestadores permite separar
la lógica del modelo predictivo de su ejecución programada, evitando así errores por
tareas manuales o mal sincronizadas.

Por lo que puede cumplir tareas como:

● Controla cuándo se ejecuta el modelo ML (por ejemplo, al llegar nuevos
datos o cada cierto tiempo).


● Se encarga de guardar los resultados generados por el modelo (fallo/no fallo,
probabilidad de fallo, estado del equipo).
● Permite que el dashboard web consulte esos resultados en tiempo real,
asegurando que la información esté actualizada.
● Todo esto ocurre de forma automatizada y trazable, eliminando la necesidad
de ejecutar manualmente cada componente del sistema.

**a) Orquestadores de flujos de trabajo, tareas y datos**

Estos orquestadores se utilizan para automatizar pipelines complejos, especialmente
en tareas como ETL, MLOps, Big Data, procesamiento por lotes y ejecución
secuencial de tareas con dependencias. Se integran muy bien con entornos de
ciencia de datos y Machine Learning.

● Apache Airflow. Plataforma basada en DAGs (grafos dirigidos acíclicos).
Permite definir tareas dependientes con programación y visualizar la
ejecución. Escalable, muy usado en Data Engineering. (Apache)
● Luigi (Spotify). Herramienta ligera para definir tareas que dependen de otras.
Útil para pipelines ETL simples.
● Prefect. Alternativa moderna a Airflow, escrita en Python, con flujo
declarativo y mayor facilidad de uso. Muy usada en flujos ML/ETL.
(Technologies)
● Dagster. Diseñada para construir flujos de datos reproducibles, con control
sobre entradas/salidas de cada tarea.
● Kubeflow. Pipelines Solución orientada a flujos de Machine Learning
desplegados sobre Kubernetes. Ideal para MLOps.
● Metaflow (Netflix). Framework centrado en trazabilidad y desarrollo de flujos
de ML de forma sencilla y reproducible.
● Argo Workflows. Herramienta nativa de Kubernetes para correr pipelines
declarativos sobre contenedores. Muy útil en entornos cloud-native.


**b) Orquestadores de Contenedores**

Este grupo está enfocado en la gestión de servicios desplegados en contenedores,
su escalabilidad, balanceo de carga, alta disponibilidad y recuperación ante fallos.
Son la base de muchas arquitecturas modernas basadas en microservicios.

● Kubernetes. Orquestador líder del mercado. Administra clústeres de
contenedores, servicios y escalamiento automático. (Kubernetes)
● Docker Swarm. Orquestador ligero incluido en Docker. Adecuado para
ambientes de prueba o pequeños clústeres.
● Nomad (HashiCorp). Alternativa a Kubernetes. Ligero, flexible y fácil de
integrar con Consul y Vault.

**c) Orquestadores de flujos de datos en tiempo real**

Especializados en movimiento y transformación de datos en tiempo real. Muy
utilizados en sistemas IoT, flujos de sensores, procesamiento continuo o
arquitecturas de eventos.

● Apache NiFi. Interfaz visual para diseñar flujos de datos. Gran control sobre
el routing y transformación. (NiFi)
● StreamSets. Plataforma ETL en tiempo real con interfaz amigable. Muy útil
para flujos continuos en streaming.

## 2.3.7.4. Pruebas de Software

**a) Unitarias**

Las pruebas unitarias o de componente consiste en la verificación de unidades del
software, es decir, el funcionamiento de cada unidad de código.


Indica que una unidad de código es considerada una unidad de programa, como una
función o método de una clase que es invocada desde fuera de la unidad y que
puede invocar otras unidades. Es por ello por lo que hay que probar cada unidad
funcione separada de las demás unidades de código. Generalmente se aplican
pruebas de caja blanca o se analizara el código para comprobar que cumple con las
especificaciones correspondientes del componente.

**b) Integración**

Aunque los componentes funcionen bien individualmente, puede darse el caso de
que al juntar los diferentes componentes del sistema ocurra errores que no teníamos
contemplados en un primer momento. Para llevar a cabo estas pruebas el autor, nos
muestra las siguientes estrategias para la prueba de integración.

● Integración descendente
● Integración ascendente
● Integración Ad hoc
● Integración del esqueleto

**c) Aceptación**

Las pruebas de aceptación son responsabilidad del cliente, en este punto es la única
parte de las pruebas en la que están involucrados. Se llevan a cabo antes de que el
programa se ponga en funcionamiento en real y tienen que satisfacer las
expectativas del cliente.

Como menciona, hay cuatro formas típicas de las pruebas de aceptación

● Pruebas de aceptación del contrato
● Pruebas de aceptación del usuario
● Pruebas operativas
● Pruebas alfa y beta


## 2.3.8. Preparación y evaluación de sistemas

La preparación y evaluación de proyectos es una etapa crítica en la gestión de
iniciativas tecnológicas y de software, ya que permite determinar la factibilidad,
sostenibilidad y conveniencia de ejecutar un proyecto antes de comprometer
recursos. Esta evaluación se realiza desde múltiples dimensiones: económica,
técnica, operativa, legal, ambiental y organizacional. En el contexto del desarrollo de
software, evaluar un proyecto implica analizar no solo los beneficios esperados y el
retorno de inversión, sino también los riesgos tecnológicos, los recursos humanos
requeridos, la infraestructura disponible y la compatibilidad con otros sistemas. Este
análisis permite una toma de decisiones más informada y estratégica, reduciendo la
probabilidad de fracaso o desviaciones significativas durante la implementación. A
continuación, se detallan dos de los aspectos más relevantes en este proceso: la
viabilidad económica y la viabilidad técnica.

## 2.3.8.1. Viabilidad Técnica

La viabilidad técnica analiza si el proyecto puede ser implementado con la tecnología
disponible, evaluando si existen los recursos técnicos, conocimientos, herramientas,
infraestructura y tiempo suficiente para desarrollar el sistema propuesto de manera
eficiente y funcional. Este análisis permite identificar posibles obstáculos antes de
comenzar, como:

Es una parte fundamental del proceso de desarrollo de software que se centra en
evaluar y comprender los aspectos técnicos relevantes para el éxito del proyecto.
Este análisis aborda cuestiones técnicas específicas que pueden afectar el diseño, la
implementación, la calidad y el mantenimiento del software.

Según palabras de (Sapag Chain et al., 2014), “Una de las conclusiones de este
estudio es que deberá definirse la función de producción que optimice el empleo de
los recursos disponibles en la producción del bien o servicio del proyecto. De aquí
podrá obtenerse la información de las necesidades de capital, mano de obra y


recursos materiales, tanto para la puesta en marcha como para la posterior
operación del proyecto” (pág. 32).

## 2.3.8.2. Viabilidad Económica

Para el cálculo de costo de inversión total de un proyecto, se debe sumar la inversión
fija e inversión diferida, siendo la inversión fija todos los costes de los materiales
tangibles, y la inversión diferida todos los costes del material no tangible. El costo de
inversión total de un proyecto se calcula con la siguiente formula:

```
Ecuación de Inversión Total
```
```
𝐼𝑇=𝐼𝐹+𝐼𝐷
(1)
```
```
Fuente: Elaboración propia
```
**a) Story Points**

Los Story points se utilizan para medir la complejidad y el esfuerzo de una tarea.
Algunos equipos prefieren usarlos para evaluar la complejidad, pero también pueden
servir para estimar el esfuerzo necesario para desarrollar un producto, considerando
factores como los riesgos y la incertidumbre. La fórmula que define un story point es
la siguiente:

```
Ecuación de obtención de Story Point
```
```
𝑆𝑡𝑜𝑟𝑦 𝑃𝑜𝑖𝑛𝑡=𝐸𝑠𝑓𝑢𝑒𝑟𝑧𝑜+𝐶𝑜𝑚𝑝𝑙𝑒𝑗𝑖𝑑𝑎𝑑+𝑅𝑖𝑒𝑠𝑔𝑜 (2)
```
```
Fuente: (Iglesias-Solano, 2011)
```
En palabras de Iglesias-Solano (2011), “Los Story Points indican el tamaño y la
complejidad dado un User Story con relación a otro story que son parte del proyecto.
Determinar el número de Story points en cada Story es subjetivo. Los Story points


permiten estimar esfuerzo sin tratar de estimar cuanto tiempo tomará”. Para calcular
el tiempo en que tarda en desarrollar un equipo de desarrollo el software, se suman
los story points y se dividen entre la velocidad del equipo:

```
Ecuación de obtención de la velocidad del equipo
```
```
𝑉𝑒𝑙𝑜𝑐𝑖𝑑𝑎𝑑 𝑑𝑒𝑙 𝑒𝑞𝑢𝑖𝑝𝑜= 𝑆𝑡𝐼𝑜𝑡𝑟𝑒𝑦𝑟𝑎^ 𝑃𝑐𝑜𝑖𝑖ó𝑛𝑛𝑡𝑠 (3)
```
```
Fuente: (Iglesias-Solano, 2011)
```
**b) Modelo COCOMO**

El modelo COCOMO (Constructive Cost Model) es una técnica de estimación de
costos diseñada específicamente para proyectos de software. Fue desarrollado por
Barry Boehm en los años 80 y, a lo largo del tiempo, ha evolucionado a COCOMO II,
adaptándose a metodologías modernas.

COCOMO permite estimar:

● El esfuerzo requerido (en persona-meses).
● El tiempo necesario para desarrollar el proyecto.
● El tamaño del software (en líneas de código o puntos de función).

Se basa en tres niveles de complejidad:

● Básico: se enfoca en proyectos pequeños y sin grandes variaciones
tecnológicas.
● Intermedio: considera factores como experiencia del equipo, complejidad del
producto, y herramientas utilizadas.
● Avanzado: incluye modelos de costos detallados con múltiples variables.



### 3. CAPÍTULO 3.

### MARCO PRÁCTICO

### 3.1. DISEÑO METODOLÓGICO

**3.1.1. Tipo y método de investigación**

En el presente Trabajo de grado se utiliza un nivel de investigación de acuerdo con la
metodología de investigación aplicada ya que busca generar una solución práctica
para un problema concreto dentro del contexto energético de ISI Mustang, orientada
a la investigación de campo, que seguirá las siguientes etapas que se muestra en la
siguiente tabla:

## Tabla 3: Tipo y método de investigación

```
Proceso metodológico Aplicación
```
```
Diagnóstico inicial
```
```
Identificación del entorno operativo mediante
entrevistas al personal técnico, revisión de
documentación interna y análisis de datos históricos en
PI System.
```
```
Recolección de datos
```
```
Extracción de variables operativas, categorización de
datos y levantamiento de requerimientos funcionales y
no funcionales mediante entrevistas semiestructuradas.
Desarrollo del modelo de Machine
Learning
Diseño del pipeline de datos (ETL: extracción,
transformación y carga), preprocesamiento, selección
```

```
de características, entrenamiento de modelos de
predicción y validación con los datos
```
```
Fuente: Elaboración Propia
```
**3.1.2. Técnicas e instrumentos de recolección de datos**

Las técnicas e instrumentos que se utilizaron para realizar la recolección de datos
estuvieron basadas en el origen de la información y los medios de recolección

● **Entrevistas semiestructuradas** , lo cual permitió tener una estructura de
preguntas previamente establecidas, así como la flexibilidad de agregar
preguntas adicionales que surgieron como necesarias durante el desarrollo
de la entrevista. Este enfoque facilito una comprensión más detallada y
contextual de los procesos investigados en ISI Mustang Bolivia SRL.
● **Observaciones Directas:** Se realizaron observaciones directas durante la
etapa de diagnóstico se realizó observación directa del funcionamiento del
sistema de monitoreo PI System, la visualización en tiempo real, y el proceso
actual de toma de decisiones en mantenimiento, lo cual permitió comprender
las limitaciones prácticas del entorno.
● **Revisión Documental:** Se realizó un análisis de la documentación técnica
disponible sobre la arquitectura actual de los transformadores eléctricos y así
mismo las variables del sistema PI System. Esto permitió identificar las
fuentes de datos operativos y comprender el comportamiento histórico de

```
Proceso metodológico Aplicación
```
```
Desarrollo de la plataforma web
```
```
Construcción de la plataforma web, integración del
modelo predictivo, carga de datos históricos y pruebas
funcionales en entorno controlado.
```
```
Validación y conclusiones
```
```
Evaluación del sistema mediante datos reales, análisis
de precisión del modelo, retroalimentación de usuarios y
redacción de resultados y recomendaciones finales.
```

```
variables críticas, complementando la información obtenida a través de la
entrevista y la observación realizada al sistema.
```
Como resultado de la aplicación de estas técnicas, se obtuvo información valiosa que
permitió identificar áreas de mejora en los procesos actuales y desarrollar un sistema
más eficiente y adaptado a las necesidades de la empresa.

**3.2. INGENIERÍA DEL PROYECTO**

En los siguientes puntos se presenta el desarrollo del proyecto de grado de acuerdo
con los objetivos

**3.2.1. Analizar los datos operacionales de ISI Mustang y las necesidades de
sus clientes en el sector energético**

**3.2.1.1.** Clasificación de las fuentes de datos operativos disponibles

La empresa ISI Mustang Bolivia SRL cuenta con una infraestructura de monitoreo
basada en PI System, que recopila, almacena y organiza datos operativos en tiempo
real y estáticos provenientes de los transformadores eléctricos.

La arquitectura del sistema PI se muestra en el anexo A, en ella se representa el flujo
de datos desde los sensores hasta su almacenamiento y visualización. La
clasificación de estas fuentes permite identificar el origen, tipo, frecuencia y utilidad
de los datos disponibles para el desarrollo del sistema de mantenimiento predictivo
basado en IA.

## Tabla 4: Componentes del sistema PI

```
Componente Función
```
```
Data Sources Sensoreshumedad,^ degases,^ campo: etc.^ temperatura, corriente,^ voltaje,^
```

```
PI Interface / Connector Recopila(SCADA,^ losRTUs,^ datos etc.)^ de los^ sensores^ y^ sistemas^ externos^
```
```
Componente Función
```
```
PI Data Archive Almacén principal de datos históricos y en tiempo real
```
```
AF Server (Asset Framework)
```
```
Organiza los datos en una jerarquía basada en activos (por
ejemplo, cada transformador) y permite asociar lógica de
análisis
```
```
Relational Database (SQL Server) Almacena datos estáticos y metadatos complementarios
```
```
PI Web API
```
```
Acceso a PI desde aplicaciones externas, en formatos
JSON/API, expone los datos de PI System a través de un
servicio RESTful
```
```
Visualization Suite Herramientascon PI Datalink,^ para etc.)^ mostrar datos^ y^ análisis^ (PI^ Vision,^ Excel^
```
```
Fuente: Elaboración propia
```
Para la clasificación de las fuentes de datos, se tomaron en cuenta el AF Server,
Data Archive y PI Web API como herramientas para identificar la clasificación de los
datos e información de estas que posteriormente serán importantes para la
recolección de los datos.

Se realizó mediante una técnica de recolección de información por observación
directa a la estructura de los transformadores eléctricos dentro de PI System y una
revisión documental a los manuales de PI System con el fin de categorizar los datos


operativos identificando y comprendiendo los tipos de datos que se encuentran, así
mismo recolectar información sobre el transformador se recolecto la ficha técnica del
transformador la cual puede verse en el anexo E. En el Anexo F se presenta una
tabla con la clasificación detallada de variables operativas disponibles, organizadas
por categoría, unidad, frecuencia estimada y observaciones si es que corresponde,
estas variables fueron obtenidas del entorno PI System de ISI Mustang identificadas
en el AF Server.

A continuación, se presenta un resumen de las categorías de las variables
disponibles en el entorno de PI System representando una organización preliminar
de los datos identificados

## Tabla 5: Clasificación general de las variables disponibles

```
Categoría Variables representativas
```
```
Temperatura y envejecimiento Temperaturaenvejecimiento^ punto caliente,^ Top^ Oil,^ tasa^
```
```
Corriente y voltaje Corriente LV, voltajes HV, potencia
```
```
Gases y DGA H₂, CH₄, C₂H₂, CO, gradientes
```
```
Humedad y condiciones del aceite Contenido de agua, actividad del agua
```
```
Estado operacional Posición de tap, motor OLTC, interruptores
Fuente : Elaboración Propia
```
**3.2.1.2.** Determinación los principales desafíos y necesidades de los clientes del
sector energético en relación con la gestión de datos

Para determinar los principales desafíos y necesidades de los clientes, se revisó
técnicas de recolección de datos tales como entrevistas, cuestionarios y encuestas.


Se realizó una comparación sobre los cuestionarios y las entrevistas como método
de recolección de información.

## Tabla 6: Comparación cuestionario vs entrevistas

```
Comparación Cuestionarios Entrevistas
```
```
Significado
```
```
El cuestionario implica un
formulario que consiste en una
serie de preguntas de
```
```
La entrevista es una
conversación formal entre el
entrevistador y el
```
```
Significado
```
```
Opción múltiple o preguntas
abiertas escritas o impresas,
que los participantes responden
```
```
Encuesta en la que los dos
participan en la sesión de
preguntas y respuestas
Comunicación Con muchas personas Uno a uno
Tiempo Menor Mayor
Identidad del participante Desconocido/Conocido Conocido
Formato Escrito Oral
```
```
Fuente: Elaboración propia
```
Tomando en cuenta las características del proyecto se optó por el uso de entrevista
como método de recolección de información sobre los principales desafíos y
necesidades de los clientes.

Para realizar la entrevista se redactó un documento con instrucciones y las
preguntas correspondientes, contemplando el mantenimiento actual de los
transformadores, el uso de los datos dentro del sistema y así mismo el
funcionamiento actual, así como las prioridades, una impresión de la entrevista se
encuentra en el ANEXO C

Se realizo la entrevista al gerente de proyecto del área de Operaciones el Ing. Juan
Carlos Gutierrez C. Quien proporciono toda la información necesaria con el objetivo
de ver el estado actual del mantenimiento de transformadores, el uso del sistema PI,
y las expectativas del personal sobre una solución basada en inteligencia artificial, en
el ANEXO C se muestran sus respuestas.


Adicional a la entrevista, la empresa proporciono documentación adicional como los
estándares bajo los cuales opera el transformador, ver Anexo D, que es el
documento del Reporte del transformador en cual se establecen los máximos y
mínimos en los cuales operan actualmente las variables dentro de PI System.

## Tabla 7: Análisis de la entrevista

```
Hallazgos Análisis Conclusión
```
```
Fallas frecuentes
```
```
El entrevistado expreso que los
fallos frecuentes son de
sobrecalentamiento,
degradación del aislamiento y
detección de anomalías
```
```
El modelo de machine Learning
se presenta como una solución
ante la predicción de estos
fallos
```
```
Toma de decisiones
```
```
El entrevistado expone que se
basan en rondas operativas,
reportes de alarmas,
evaluación visual y manual
```
```
Aplicar un análisis predictivo
sobre las variables mejorara la
toma de decisiones
```
```
Sistemas actuales
```
```
El entrevistado menciono que
se emplea AVEVA PI System
como adquisición y
visualización de los datos
```
```
Se aprovechará PI Web API y
Data Archive para alimentar el
sistema
```
```
Acceso y disponibilidad de
datos
```
```
El entrevistado menciono que
se cuenta con
aproximadamente a 9 meses
de datos, los cuales tienen
diferentes frecuencias
```
```
Se puede acceder a través de
los recursos que ofrecen el
sistema, es decir, mediante PI
Web API o el data archive
```
```
Expectativas
```
```
El entrevistado expreso que
requiere una interfaz visual
clara
```
```
El diseño de la plataforma debe
ser responsiva, visual e
interpretable para el usuario
final
Fuente: Elaboración propia
```
**a) Modelado de procesos de negocio**


**1) Diagrama de procesos actual**

## Figura 71: BPMN Actual

```
Fuente: Elaboración propia
```
## Figura 72: BPMN Actual (continuación)


```
Fuente: Elaboración Propia
```
**2) Diagrama de proceso propuesto**


## Figura 73: BPMN Propuesto

```
Fuente: Elaboración propia
```

## Figura 74: BPMN Propuesto (continuación)

```
Fuente: Elaboración propia
```
**b) Diagrama de Casos de Uso**

Con el desarrollo del Diagrama de Casos de uso del Sistema se permitió mostrar la
interacción de los actores con las funcionalidades del sistema.


## Figura 75: Diagrama de casos de uso

```
Fuente: Elaboración Propia
```

También se logró desarrollar las hojas de descripción de cada usuario detallando sus
casos de usos respectivos.

**1) Hoja de descripción de casos de uso:**

## Tabla 8: Caso de uso P01

```
Hoja de Descripción de Caso de Uso: Gestionar
usuario
```
```
Institución: ISI Mustang Bolivia SRL
```
```
Sistema: Plataforma Web
```
```
Actor: Administrador
```
```
Fecha: 18/05/2025
Elaborado por: Daniela Alejandra Miranda
Ramirez
Objetivo: El actor puede crear, editar o eliminar cuentas de usuarios en la plataforma.
```
```
Pre-Condiciones: El administrador debe haber iniciado sesión con permisos de administración
```
```
Flujo Principal:
```
1. Accede al módulo gestión de usuarios
2. Seleccionar opción (Crear/Editar/Eliminar)
3. Ingresar datos del usuario.
4. Confirmar acción

```
Excepciones: Ninguna
```
```
Post Condiciones: La base de datos de usuario se actualiza
```
```
Fuente: Elaboración Propia
```

**2) Hoja de descripción de casos de uso:**

## Tabla 9: Caso de uso P02

```
Hoja de Descripción de Caso de Uso: Administrar
Permisos
```
```
Institución: ISI Mustang Bolivia SRL
```
```
Sistema: Plataforma Web
```
```
Actor: Administrador
```
```
Fecha: 18/05/2025
```
```
Elaborado por: Daniela Alejandra Miranda
Ramirez
```
```
Objetivo: Asignar o restringir acceso a módulos a los actores del sistema (supervisor, técnico)
```
```
Pre-Condiciones: Existencia de usuario registrados
```
```
Flujo Principal:
```
1. Seleccionar usuario o rol
2. Habilitar/Deshabilitar acceso a módulos
3. Guardar configuración

```
Excepciones: Ninguna
```
```
Post Condiciones: La base de datos de usuario se actualiza
```
```
Fuente: Elaboración Propia
```

**3) Hoja de descripción de casos de uso**

## Tabla 10:Caso de uso P03

```
Hoja de Descripción de Caso de Uso: Visualizar
Dashboard
```
```
Institución: ISI Mustang Bolivia SRL
```
```
Sistema: Plataforma Web
```
```
Actor: Técnico
```
```
Fecha: 18/05/2025
```
```
Elaborado por: Daniela Alejandra Miranda
Ramirez
```
```
Objetivo: Monitorear variables críticas del transformador
```
```
Pre-Condiciones: Existencia de usuario registrados
```
```
Flujo Principal:
```
1. Iniciar sesión con usuario y contraseña
2. Acceder al dashboard
3. Filtrar por variables o rango de tiempo

```
Excepciones: Ninguna
```
```
Post Condiciones: El técnico visualiza el estado actual del transformador.
```
```
Fuente: Elaboración Propia
```

**4) Hoja de descripción de casos de uso:**

## Tabla 11:Caso de uso P04

```
Hoja de Descripción de Caso de Uso: Generar
Reporte
```
```
Institución: ISI Mustang Bolivia SRL
```
```
Sistema: Plataforma Web
```
```
Actor: Técnico
```
```
Fecha: 18/05/2025
```
```
Elaborado por: Daniela Alejandra Miranda
Ramirez
```
```
Objetivo: Exportar un documento técnico para mantenimiento (PDF/Excel).
```
```
Pre-Condiciones: Datos disponibles en el dashboard
```
```
Flujo Principal:
```
1. Hacer click en “Generar Reporte”
2. Seleccionar formato
3. Descargar Archivo

```
Excepciones: Ninguna
```
```
Post Condiciones: El reporte se guarda en el dispositivo del técnico
```
```
Fuente: Elaboración Propia
```

**5) Hoja de descripción de casos de uso:**

## Tabla 12: Caso de uso P05

```
Hoja de Descripción de Caso de Uso:
Confirmar/Rechazar alerta
```
```
Institución: ISI Mustang Bolivia SRL
```
```
Sistema: Plataforma Web
```
```
Actor: Técnico
```
```
Fecha: 18/05/2025
```
```
Elaborado por: Daniela Alejandra Miranda
Ramirez
```
```
Objetivo: El sistema detecta una condición crítica y notifica mediante una alerta, el usuario acepta o
rechaza
```
```
Pre-Condiciones: Alerta activa en el sistema
```
```
Flujo Principal:
```
1. Recibir notificación de alerta
2. Revisar datos históricos y contexto
3. Seleccionar confirmar o rechazar

```
Excepciones: Ninguna
```
```
Post Condiciones: Alarma registrada
```
```
Fuente: Elaboración Propia
```

**6) Hoja de descripción de casos de uso:**

## Tabla 13: Caso de uso P06

```
Hoja de Descripción de Caso de Uso: Programar
intervención
```
```
Institución: ISI Mustang Bolivia SRL
```
```
Sistema: Plataforma Web
```
```
Actor: Técnico
```
```
Fecha: 18/05/2025
```
```
Elaborado por: Daniela Alejandra Miranda
Ramirez
```
```
Objetivo: Asignar recursos y fecha de mantenimiento predictivo
```
```
Pre-Condiciones: Existencia de usuario registrados
```
```
Flujo Principal:
```
1. Iniciar sesión con usuario y contraseña
2. Acceder al dashboard
3. Filtrar por variables o rango de tiempo

```
Excepciones: Ninguna
```
```
Post Condiciones: El técnico visualiza el estado actual del transformador.
```
```
Fuente: Elaboración Propia
```

**7) Hoja de descripción de casos de uso:**

## Tabla 14: Caso de uso P07

```
Hoja de Descripción de Caso de Uso: Analizar
predicciones
```
```
Institución: ISI Mustang Bolivia SRL
```
```
Sistema: Plataforma Web
```
```
Actor: Supervisor
```
```
Fecha: 18/05/2025
```
```
Elaborado por: Daniela Alejandra
Miranda Ramirez
```
```
Objetivo: Evaluar predicciones de fallos generados por el modelo de IA
```
```
Pre-Condiciones: Datos históricos y alertas disponibles
```
```
Flujo Principal:
```
1. Accede al módulo de predicciones
2. Acceder al dashboard
3. Filtrar por variables o rango de tiempo

```
Excepciones: Ninguna
```
```
Post Condiciones: Ninguna
```
```
Fuente: Elaboración Propia
```

**c) Requerimientos Funcionales**

- RF01: Integrarse con PI Web API para obtener y visualizar datos de
    sensores en tiempo real.
- RF02: Generar alertas
automáticas ante condiciones anómalas.
- RF03: Notificar al usuario mediante alertas
visuales.
- RF04: Permitir exportación de reportes periódicos en formato PDF o Excel.
- RF05: Registrar y visualizar eventos pasados: alertas, mantenimientos, fallas.
- RF06: Gestionar usuarios con roles (técnico,
supervisor, administrador). admin, operador/técnico, visualizador/supervisor.
- RF07: Mostrar gráficos interactivos, tablas y visualización de alertas según
    criticidad.

**d) Requerimientos No funcionales**

- RNF01: El sistema debe tener una interfaz web intuitiva, adaptada a
    usuarios no expertos
- RNF02: La visualización debe usar lenguaje técnico estandarizado y
    colores contrastantes para criticidad.
- RNF03: El sistema debe permitir acceso seguro mediante autenticación por
    rol.


- RNF04: La interfaz debe ser responsiva, adaptable a dispositivos móviles y
    escritorio.

**e) Modelado de proceso de desarrollo**

Se realizo una comparación de distintos modelos de procesos para el desarrollo del
proyecto, a fin de seleccionar el modelo más adecuado.

## Tabla 15: Comparación de metodologías de ágiles

```
Criterios de
selección
```
```
Cascada
(Tradicional) Scrum^ (Agil)^ Kanban^ (Agil)^
```
```
Definición
```
```
Metodología
secuencial con fases
rígidas
```
```
Marco de trabajo ágil,
basado en sprint
iterativos con entregas
incrementales
```
```
Metodología ágil enfocado
en la visualización del flujo
de trabajo y mejora continua
```
```
Enfoque Secuencial y rígido Iterativo e incremental Flujo Continuo
```
```
Flexibilidad al
cambio Baja^ Alta^ Alta^
Retroalimentació
n del cliente
```
```
El cliente ve los
resultados al final
```
```
Reuniones diarias,
retrospectivas,
revisiones de sprint
```
```
Mejora continua,
observando cuellos de
botella y tiempos de entrega
Roles Jefe de Proyecto
```
```
Product Owner, Scrum
Máster, equipo de
desarrollo
```
```
Sin roles definido, equipo
autoorganizado con enfoque
en la gestión colaborativa
```
```
Ventajas
```
```
-Control total desde el
inicio
-Buena para proyectos
con requisitos fijos
```
```
-Flexibilidad al cambio
-Retroalimentación
rápida
-Entregas frecuentes
```
```
-Flujo visual
-Cambio inmediato de
prioridades
-Bajo costo de adopción
```
```
Desventaja
```
```
-Poco adaptable a
cambios
```
- Riesgo alto si el
diseño inicial falla

```
Requiere compromiso
del equipo
```
```
-Falta de estructura puede
afectar productos grandes
-No hay metas por sprint
```
```
Proceso de
trabajo
```
```
Lineal, una fase no
empieza hasta que la
anterior no termina
```
```
Cíclico e incremental
(sprint de 1-4 semanas)
```
```
Flujo continuo, tareas pasan
por columnas como “Por
hacer”, “En proceso” y
“Hecho”
```
```
Esfuerzo y
planificación
```
```
Alto al inicio
(documentación,
planificación
detallada)
```
```
Esfuerzo distribuido en
cada sprint, con
planificación y revisión
periódica
```
```
Bajo esfuerzo inicial,
planificación diaria o
semanal
```

```
Fuente: Elaboración Propia
```
Tomando en cuenta las características reflejadas en el cuadro anterior se optó por el
uso del Kanban como metodología de desarrollo, La idea detrás de este modelo es
el desarrollo de una implantación del sistema inicial, ya que se sigue un flujo continuo
y realiza una mejora continua dentro del proceso.

A continuación, se adjunta las actividades del proceso Kanban:

## Figura 76: Tablero kanban

```
Fuente: Elaboración Propia
```
**3.2.1.3.** Selección de las variables en base a los requerimientos o necesidades del
cliente**.**

Se identifico, analizo y selecciono las variables más relevantes del sistema PI de
monitoreo de transformadores eléctricos, considerando tanto la viabilidad técnica
como las necesidades específicas expresadas por el cliente en la entrevista. Se


cuenta con alrededor de más de 80 variables como puede verse en el Anexo A, las
cuales están seccionadas por categorías:

● Temperatura y envejecimiento
● Variables eléctricas (corriente, voltaje, potencia)
● Gases disueltos (DGA)
● Estado operativo y protección
● Condiciones del aceite y humedad
● Alarmas y eventos

En base a los siguientes criterios cada variable fue evaluada para su posterior
análisis en el modelo:

## Tabla 16: Criterios de evaluación

```
Criterio Descripción
```
```
Relevancia técnica
```
```
La variable está directamente asociada a fallas
comunes del transformador (sobrecarga,
envejecimiento, degradación dieléctrica)
```
```
Presencia normativa
```
```
Está incluida o referenciada por normas como
IEEE C57.91 o C57.104 como factor de
diagnóstico.
Calidad de datos Tienede gran^ buena cantidad^ frecuencia de datos^ de registro^ y^ presencia^
```
```
Preferencia del cliente Fueresponsables^ mencionada técnicos^ como decritica ISI Mustangpor^ los^
```
```
Fuente: Elaboración Propia
```
En base a la evaluación e importancia para el cliente, cada una de las variables con
las que cuenta el sistema fue evaluada en función de distintos factores, tales como
su disponibilidad, unidad de medida, frecuencia de muestreo de los datos, es decir
se eligieron variables con una frecuencia de adquisición adecuada. Las siguientes
variables en base a la entrevista realizada y en base a las necesidades de los
clientes son las más ideales debido a su relevancia técnica


## Tabla 17: Tabla de variables

```
Variable Categoría Justificación
```
```
Temperatura del punto caliente Térmica
```
```
Indicador principal de sobrecalentamiento del
devanado, medida crítica para evaluar la salud del
aislamiento del devanado. Si aumenta
considerablemente acelera el envejecimiento
térmico del papel aislante, reduciendo su vida útil.
Temperatura del aceite (Top Oil) Térmica Asociada a la degradación del aislamiento
```
```
Temperatura de Burbujeo Térmica Ayudafallos catastróficos,^ a^ prevenir^ descargas que causan^ parciales descargas^ y^ posibles internas^
```
```
Temperatura ambiente Térmica Esdel^ untransformador^ factor^ externo y determinar^ clave^ que^ afectael envejecimiento^ la^ refrigeración
```
```
Tap Position Eléctrica
```
```
Representa la posición del cambiador de
derivaciones (OLTC), Cambios frecuentes o
posiciones extremas pueden afectar las pérdidas, la
tensión interna y el calentamiento.
Temperatura del aceite OLTC Térmica Permiterefrigeración^ detectar del OLTCproblemas de^ contacto^ o^
```
```
Voltaje fase Eléctrica Identificación de anomalías en el suministro eléctrico
Potencia aparente Eléctrica Indicador del estrés operativo del transformador
```
```
Corriente de Carga Eléctrica Ayudaoperación^ a^ detectar fuera de^ sobrecargas rango y^ condiciones^ de^
```
```
Fuente: Elaboración Propia
```
**3.2.2. Diseñar un proceso de Extracción, Transformación y Carga (ETL) para
integrar datos históricos provenientes de AVEVA PI System que permita
estructurar y normalizar los datos operativos, garantizando su calidad
para el análisis predictivo**

En este apartado se describe el proceso de Extracción, Transformación y Carga
(ETL) necesario para integrar los datos históricos desde PI System con el fin de
preparar y garantizar su calidad para el desarrollo del modelo predictivo


Para realizar este proceso, se implementó una arquitectura Medallion con tres capas:
Bronze (ingestión cruda e incremental desde AVEVA PI System), Silver (curación y
normalización con reglas de dominio e imputación multivariante) y Gold (dataset final
orientado a modelado y consumo analítico).

## Figura 77: Arquitectura Medallion

```
Fuente: Elaboración Propia
```
En la figura anterior se puede observar el flujo de datos de arquitectura Medallion y
los procesos que sigue cada una de las capas (Capa Bronze, Capa Silver, Capa
Gold), este proceso garantizara la calidad de los datos para el análisis predictivo.


## Tabla 18: Comparación de Lenguaje de Programación

```
Criterio Python Go Typescript
```
```
Facilidad de
aprendizaje
```
```
Muy baja. Facilidad de
aprendizaje y uso
```
```
Media, sintaxis sencilla,
pero requiere entender
la concurrencia
```
```
Media. Más compleja
que JS por tipos, pero
con ventajas en
mantenibilidad
Rendimiento
```
```
Bueno en procesamiento
de datos, pero interpretado
(más lento en computo
intensivo)
```
```
Alto rendimiento gracias
a su compilador y
concurrencia eficiente
```
```
Bueno, aunque
depende del motor de
Node.js
```
```
Escalabilidad Buenacomo FastAPI^ con^ frameworks
```
```
Excelente, soporta
concurrencia y bajo
consumo de recursos
```
```
Moderada, adecuada
para microservicios, no
para procesamiento
masivo
Coste Gratuito,librerías amplio^ soporte^ de^ Gratuito Gratuito
Librerías para
ML y ETL
```
```
Cuenta con amplias
librerías como: Pandas,
scikit-learn, TensorFlow,
etc.
```
```
Básicas: no cuenta con
un ecosistema ML
robusto encoding/json
para ETL
```
```
No es lenguaje para
ML, pero puede usar
API para modelos vía
REST
Adecuación al
proyecto
```
```
Excelente para ML y ETL y
desarrollo web rápido
```
```
Ideal para sistemas
concurrentes, pero
menos maduro para ML
y ETL
```
```
Robusto para
ecosistemas web, pero
menos ágil para ML
```
```
Fuente: Elaboración Propia
```
Con base a las características mencionadas se optó por Python por su facilidad de
aprendizaje y así mismo por el soporte que tiene para análisis de datos y modelos de
Machine Learning, a pesar de que Go cuenta con una buena escalabilidad y
Typescript es muy popular en el ecosistema web, Python destaca por su facilidad de
aprendizaje, amplia comunidad, y excelente soporte para análisis de datos y Machine
Learning

En base a la tabla comparativa y las características mencionadas se optó por Python
como la opción más adecuada por su ecosistema de análisis de datos y ML, además
de contar con librerías robustas para todas las fases del proceso ETL y un tiempo de
implementación más corto en comparación de Go y Typescript.


**3.2.2.1.** Recolectar los datos operativos desde la fuente de datos históricos del
transformador

La primera capa inicial de la arquitectura Medallion, comienza por la capa Bronze en
la cual se implementa la ingestión cruda e incremental desde AVEVA PI System a
través de PI Web API para obtener de forma automatizada los datos históricos desde
el lugar en que se encuentran.

En esta fase se utilizó su interfaz PI Web API como punto de acceso a los datos de
PI System para la extracción de todas las señales del transformador WEG 40 MVA,
dado a su capacidad de PI Web API de exponer los registros a través de servicios
RESTful se realizó la recolección inicial abarcando el rango 2024-09-10 a
2025-08-28. El objetivo es consolidar el histórico tal cual llega desde la fuente (sin
limpiar ni transformar o si es necesario aplicar transformaciones mínimas) y
persistirlo en almacenamiento columnar (Parquet/Delta), particionado por tag y date,
para mantener una trazabilidad y reproceso posterior, ayudando a las etapas
posteriores, como la capa silver y capa gold.

Para la implementación del proceso de extracción se empleó un script desarrollado
en Python, dado su facilidad de integración con librerías de análisis de datos y el
consumo de APIs RESTful.

## Tabla 19: Justificación de librerías de extracción

```
Librerías Categoría Justificación
```
```
Requests y
request_ntlm Comunicación^ API^
```
```
Permiten realizar peticiones HTTP autenticadas
mediante NTLM, necesarias para conectarse de
forma segura al PI Web API.
```
```
Librerías Categoría Justificación
```

```
Pandas Análisisde datos^ y manipulación^
```
```
Facilita la transformación y estructuración de los
datos recibidos en formato JSON a estructuras
tabulares, optimizando la manipulación y exportación
posterior.
```
```
pyarrow, polars OptimizaciónRendimiento de^
```
```
Pyarrow permite procesar datos de forma eficiente en
formato columnar, y polars es una alternativa de alto
rendimiento a pandas que aprovecha pyarrow y
aceleran la manipulación de grandes volúmenes de
datos.
```
```
deltalake Almacenamientodatos de^
```
```
Proporciona una ingesta atómica y asegurar la
integridad de la Capa Bronze y permite operaciones
de append (añadir datos) de forma transaccional,
garantizando que el pipeline sea resiliente ante fallas.
```
```
datetime y time Manejo de Tiempo Sede lasutilizan consultas^ para^ el a^ manejola API de^ fechas^ y^ la^ optimización^
```
```
os y dotenv Gestiónconfiguraciones^ de^
```
```
Permite la configuración del script a través de
variables de entorno almacenadas en un archivo. env
manteniendo la seguridad de las credenciales y su
portabilidad
```
```
Fuente: Elaboración Propia
```
El script se estructura en funciones modulares:

## Tabla 20: Funciones principales del script Bronze

```
Función Descripción Endpoint / Proceso Resultado
```
```
obtener_webid(tag_name)
```
```
Consulta el
identificador único
(WebId) de un tag en
PI System.
```
```
GET /piwebapi/points?...
```
```
Devuelve
WebId
necesario para
lecturas
históricas.
```
```
generar_rangos_fechas(start,
end, delta_dias=15)
```
```
Genera ventanas de
extracción de 15 días
con solapamiento de
+1s.
```
```
Proceso interno
```
```
Lista de
intervalos de
fechas a
consultar.
```
```
Función Descripción Endpoint / Proceso Resultado
```

```
obtener_datos_hist(webid,
start, end, maxCount)
```
```
Extrae datos
históricos paginando
hasta completar el
rango.
```
```
GET
/piwebapi/streams/{webid}/r
ecorded
```
```
DataFrame
con
timestamp,
value.
leer_ultimo_timestamp(tag_alia
s)
```
```
Busca en Delta el
último timestamp
registrado para
reanudar.
```
```
Lectura en Delta
```
```
Permite
ingesta
incremental.
guardar_parquet(df, ruta)
```
```
Guarda en Parquet,
controlando
duplicados.
```
```
Proceso interno ArchivoParquet^ local.
```
```
guardar_bronze_delta(df,
tag_alias)
```
```
Escribe en Delta Lake
con
partition_by=["tag","da
te"].
```
```
Delta Lake API
```
```
Tabla
incremental
particionada.
YYYY-MM-D
D con
partition_by=[
"tag","date"]
extraer_datos_actualizados()
```
```
Orquesta el ciclo para
todos los tags
definidos.
```
```
Llamado en main.py
```
```
Actualiza
/data/capa_br
onze/readings
_v1.
Fuente: Elaboración Propia
```
Durante esta etapa de extracción se aplicaron estrategias de mitigación para los
siguientes aspectos:

● Paginación dinámica para superar la limitación de maxCount.
● Reanudación desde último timestamp para asegurar continuidad.
● Manejo de errores de red con control de excepciones.
● Protección de credenciales mediante variables de entorno (.env).

La siguiente gráfica representa el flujo de comunicación de la aplicación (script de
Python) con PI Web API:


## Figura 78: Flujo de Comunicación con PI Web API

```
Fuente: Elaboración Propia
```
La combinación de PI Web API, Python y las librerías seleccionadas permitió
implementar el proceso de extracción y un flujo de datos seguro y escalable,
garantizando la disponibilidad de la información para las siguientes etapas del
proceso. Como resultado, los registros se almacenan sin transformaciones
destructivas en una tabla Delta Lake, particionada por tag y date:

## Figura 79: Lista de variables obtenida

```
Fuente: Elaboración Propia
```
Cada fila incluye:


● timestamp (fecha-hora original, incluso si es inválida → NaT).
● value (numérico, NaN si no es convertible).
● value_text (representación textual original).
● value_bool (estado lógico si corresponde).
● tag (nombre corto de la variable).

## Figura 80: Ejemplo de registro (tag = ventilador_14_mcb):

```
Fuente: Elaboración Propia
```
Como resultado, se almacenaron 91 registros históricos entre 2024-09-10 y
2025-08-27, correspondientes a 91 variables constituyendo así la capa bronce como
la fuente de verdad cruda o la zona de aterrizaje donde se alojan los datos
provenientes de la fuente de datos.

**3.2.2.2.** Transformar los datos recolectados para el análisis

Este proceso se inició con un análisis exploratorio de datos (EDA) sobre las variables
con mayor volumen de registros provenientes de la capa Bronze. Este paso fue
fundamental para detectar problemas de calidad y justificar las estrategias de
trasformación aplicadas posteriormente.

Fuente y alcance. La lectura usa datos de Bronze (Delta Lake, readings_v1), período
2024-09-10 a 2025-08-27 (=351 días). Se analizaron 9 variables clave:

● temperatura_aceite
● temperatura_aceite_OLTC


● temperatura_ambiente
● temperatura_burbujeo
● temperatura_punto_caliente
● voltaje
● corriente_carga
● potencia_aparente
● tap_position

El proceso de desarrollo del analisis exploratorio de los datos de la capa bronce, la
metodología del EDA consto de cuatro pasos:

**1) Carga de variables desde bronce:**

● Se desarrolló la función cargar_tag_desde_bronze (tag, BRONZE_TABLE)
para extraer cada señal, limpiar timestamp (tz-aware, UTC), priorizar
value/value_text/value_bool, y devolver un DataFrame ordenado.
● Como resultado, se construyó un resumen por variable con registros, fechas
de inicio/fin, duración, nulos y estadísticos básicos.

## Figura 81: Tabla resumen de los tags cargados

_Fuente: Elaboración propia_
Esta tabla evidencia cuántos registros posee cada variable, el rango temporal
cubierto y la magnitud de los datos crudos. El volumen global de información


ascendió a más de 9,3 millones de registros, no obstante, la dispersión de datos de
cada uno de los tags fue notable: mientras corriente_carga y voltaje alcanzaron 5,2 y
3,7 millones de observaciones respectivamente, otras variables como
temperatura_aceite o tap_position no superaron los 20 mil registros.

Así mismo, podemos evidenciar el pct_nulos_%, este hallazgo evidencia las
variables con mayor proporción de valores faltantes, identificando candidatas a
imputación en el preprocesamiento de los datos, unificado en etapas posteriores.

**2) Análisis de frecuencias de muestreo**

● A partir de diferencias entre timestamps se calcularon intervalos (mediana,
media, min, max, desviación estándar) y se estimó la frecuencia de muestreo
(Hz).
● Con estos valores se clasificó cada variable en alta (>0.1 Hz), media
(0.01–0.1 Hz) o baja (≤0.01 Hz) frecuencia.

## Figura 82: Clasificación por frecuencia

```
Fuente: Elaboración Propia
```

## Figura 83: Análisis de la disponibilidad de datos por variable

```
Fuente: Elaboración propia
```
En términos de frecuencia de muestreo, se identificaron tres grupos. En alta
frecuencia se encuentran corriente_carga y voltaje, que generan un volumen
significativamente mayor de registros. En frecuencia media se ubica
potencia_aparente. Finalmente, la mayoría de las variables térmicas
(temperatura_aceite, temperatura_aceite_OLTC, temperatura_ambiente,
temperatura_burbujeo, temperatura_punto_caliente) y la posición de tap
(tap_position) operan en baja frecuencia


## Figura 84: Detalle de la frecuencia de muestreo

```
Fuente: Elaboración propia
```
Este escenario confirma la necesidad de establecer una frecuencia estándar de una
hora en la capa Silver para poder comparar y alinear estos tags con frecuencias tan
dispares.

**3) Evaluación integral de calidad**

Se ejecutó la función evaluar_calidad_datos(datos_por_tag, max_gap=1h),
obteniendo métricas de completitud, deduplicados, gaps temporales, diversidad,
outliers (IQR) y dispersión estadística.

## Figura 85: Completitud básica

```
Fuente: Elaboración Propia
```

## Figura 86: Métricas principales de calidad

```
Fuente: Elaboración Propia
```
Con respecto a la completitud de los datos, todas las variables presentaron valores
faltantes. tap_position fue la más afectada, con un 12,91% de registros nulos,
mientras que las variables térmicas tuvieron niveles de incompletitud entre 3% y 9%.
En contraste, las señales eléctricas corriente_carga y voltaje mostraron una
completitud prácticamente total.

## Figura 87: Gráfica de calidad de datos (completitud)

```
Fuente: Elaboración Propia
```

Estos resultados ponen en evidencia la necesidad de imputación diferenciada por
variable o tag, controlada en variables térmicas y de estado, y mínima en variables
eléctricas de alta frecuencia.

## Figura 88: Gráfica de calidad de datos (continuidad)

```
Fuente: Elaboración Propia
```
En la continuidad temporal, el análisis de gaps temporales >1 hora revela
discontinuidades frecuentes en varias señales térmicas (temperatura_aceite,
temperatura_burbujeo, temperatura_punto_caliente), alcanzando más de 2000
huecos en algunos casos. Aunque las señales eléctricas mantienen buena
continuidad, la existencia de estos vacíos justifica el uso de consolidación a
resolución horaria e interpolación específica para cada tipo de señal


## Figura 89: Gráfica de calidad de datos (diversidad)

```
Fuente: Elaboración Propia
```
La Figura 86 evidencia que la mayoría de las señales tienen alta diversidad de
valores (superior al 20 %), excepto tap_position, cuya diversidad es menor al 1 %.
Esto indica un sensor estancado o con discretización excesiva, lo que limita su
utilidad directa en el modelado predictivo y podría requerir un tratamiento especial.

## Figura 90: Gráfica de calidad de datos (Outliers y variabilidad)

```
Fuente: Elaboración Propia
```

El análisis de valores atípicos se observó que la mayoría de las variables se
mantenían dentro de rangos aceptables, con proporciones menores al 2%. La
excepción fue corriente_carga, que presentó un 5,22% de outliers (más de 270 mil
registros), lo que sugiere la necesidad de aplicar límites físicos en la capa Silver para
evitar distorsiones, sin eliminar posibles eventos de sobrecarga reales.

## Figura 91: Gráfica de calidad de datos (Resumen de Problemas)

```
Fuente: Elaboración Propia
```
En sintetiza los principales problemas de calidad identificados: datos nulos,
duplicados, gaps temporales y baja diversidad. Las variables con mayor cantidad de
incidencias son tap_position y las señales térmicas, confirmando la necesidad de
estrategias diferenciadas en Silver (interpolación, validación de rangos y posible
exclusión de sensores con baja diversidad).

En conjunto, el análisis exploratorio permitió concluir que los datos son
aprovechables para el mantenimiento predictivo, aunque presentan retos importantes
de heterogeneidad de frecuencias, valores faltantes en variables térmicas, gaps
temporales recurrentes y outliers en las corrientes de carga.


Estos hallazgos orientaron la definición de reglas específicas de transformación en
Silver: remuestreo horario, imputación diferenciada por tipo de señal, eliminación de
duplicados y control de outliers.

El preprocesamiento de los datos constituye un pilar esencial pues asegurar la
calidad y transformación de los datos para su posterior análisis en el modelo de
Machine Leaning. Para la implementación de la transformación de datos se
evaluaron diversas alternativas tecnológicas, considerando factores como facilidad
de uso, rendimientos, entre otros aspectos:

## Tabla 21: Herramientas de transformación de datos

```
Herramienta Ventajas Desventajas
```
```
Pandas (Python)
```
```
Puede transformar los datos a un
nivel más detallado, integración
perfecta con el ecosistema Python
y fácil de versionar
```
```
Uso intensivo de memoria en
grandes volúmenes de datos
```
```
NumPy Muynuméricas.^ eficiente en^ operaciones^ Menosdescriptivo^ amigable directo.^ para análisis^
```
```
Delta Lake
```
```
Garantiza versionado y
trazabilidad de los datos, soporta
consultas ACID y almacenamiento
eficiente.
```
```
Menos conocido que formatos
tradicionales (CSV/Parquet).
```
```
SQL puro (ej: PostgreSQL) Buena para datos tabulares
```
```
Complejo para operaciones de
series temporales y
transformación multivariable.
```
```
Talend Conectoresinterfaz visual.^ preconfigurados,
```
```
Menor flexibilidad para lógica
personalizada y dependencias
en infraestructura.
Fuente: Elaboración Propia
```
Tras un análisis comparativo, se seleccionó pandas, numpy y deltalake como la
tecnología a usar dado por su flexibilidad de manipulación, conversión numérica y
lectura y escritura en formato delta, convierte en la herramienta ideal. El proceso de
transformación es el siguiente:

**a) Limpieza y formateo de datos**


Se desarrollaron funciones modulares que reciben como entrada los datos
provenientes de Bronze y aplican reglas de limpieza específicas:

```
● Hard Clamping: variables como corriente_carga y potencia_aparente
presentaron valores extremos, claramente por encima de los rangos
operativos del equipo. Se aplicó un recorte conservador basado en límites
físicos (corriente: 0–1200 A; potencia: 0–50 MVA), reduciendo el impacto de
errores de medición sin eliminar posibles sobrecargas reales.
● Normalización de timestamp: los registros se estandarizaron Se convierte el
formato UTC + “Z” de la columna timestamp y se estandariza al formato
dd/mm/yyy HH:MM:SS para garantizar la uniformidad de los datos,
garantizando uniformidad y correcta alineación temporal.
● Estandarización de nombres de columnas: se homogenizaron a inglés, sin
acentos ni caracteres especiales (temperatura_aceite_value a
temp_oil_value), para asegurar consistencia en análisis posteriores.
```
## Figura 92: Potencia aparente recibida desde PI Web API

```
Fuente: Elaboración Propia
```

**b) Consolidación temporal y resampling**

Se alinearon las series en un rango temporal común y se unificaron a una frecuencia
de 1 hora. La estrategia de resampling varió según la naturaleza de la variable:

● Térmicas (temperatura_aceite, punto_caliente, ambiente, OLTC, burbujeo):
promedio horario con interpolación temporal.
● Eléctricas (corriente_carga, voltaje, potencia_aparente): promedio horario
simple.
● Mecánicas (tap_position): último valor reportado por hora con propagación
del valor previo en caso de ausencia.

Esto permitió obtener un dataset consolidado y comparable entre todas las variables
del transformador, en la siguiente imagen podemos observar el resultado del proceso
de consolidación de todas las variables, obteniendo un dataset de 8425x9 de
dimensión


## Figura 93: Resultado de la consolidación

```
Fuente: Elaboración Propia
```
**c) Tratamiento de valores faltantes**


## Figura 94: Estrategia de consolidación por tipo de variable

```
Fuente: Elaboración Propia
```
```
Se aplicaron técnicas de imputación diferenciadas para reducir la proporción de
celdas nulas:
```
● Térmicas: interpolación spline o temporal, aprovechando la inercia térmica
natural del equipo.
● Eléctricas: interpolación temporal para huecos cortos; en huecos extensos se
preservó el vacío para no generar información artificial.


● Mecánicas (tap_position): relleno hacia adelante y hacia atrás (forward fill,
backward fill), asumiendo que la posición se mantiene constante hasta un
nuevo cambio.

## Figura 95: Resultados de la imputación

```
Fuente : Elaboración Propia
El proceso de imputación quedó registrado en métricas de calidad, indicando el
número de valores faltantes originales y cuántos fueron efectivamente interpolados.
```
```
e) Estandarización
```
```
La estandarización de los nombres de las columnas, donde se realiza un mapeo de
cada una de las variables pasa de castellano a un inglés técnico, realizando una
limpieza general (minúscula, sin acentos, snake_case)
```
## Figura 96: Estandarización


```
Fuente: Elaboración Propia
```
**f) Validación y conversión de tipos**

Todas las variables fueron convertidas a formato numérico, aplicando filtros por
rango técnico definidos en el archivo de configuración:

● Temperaturas: 0–200 °C (según tipo).
● Corriente: 0–5000 A.
● Voltaje: hasta 50 kV.
● Potencia: hasta 100 MVA.
● Posición de tap: 0–20.

## Figura 97: Conversión de tipos y validación técnica

```
Fuente: Elaboración Propia
```
Los registros fuera de estos rangos fueron marcados como NaN, reforzando la
calidad del dataset final.


**g) Analizar y tratar valores faltantes del transformador**

Durante el análisis exploratorio de datos se identificó la presencia de valores
faltantes en la mayoría de las variables críticas del transformador, tales como la
temperatura de aceite, la temperatura ambiente y la corriente de carga. La
cuantificación de estos vacíos se realizó mediante la función
analizar_valores_faltantes_transformador, que permitió calcular el porcentaje de
registros ausentes y su distribución temporal.

Los resultados evidenciaron que, en algunos periodos, los gaps superaban las 12
horas consecutivas, especialmente en los registros, lo que representaba un riesgo
para la continuidad de las series temporales. Asimismo, en señales mecánicas como
la posición de TAP se observaron largos intervalos sin cambios, identificando 328
faltantes

## Figura 98: Resultado del análisis de Valores Faltantes

```
Fuente: Elaboración Propia
```

Esto ayuda a definir por ultimo las técnicas de imputación de valores faltantes y el
resultado de este tratamiento se refleja en la Figura 99, donde se observa la
interpolación aplicada a cada categoría, por ejemplo, interpolando 167 valores en
térmica. Gracias a estas técnicas, la completitud del dataset superó el 100%
obteniedo 0 valores faltantes.

## Figura 99: Resultado del tratamiento de valores faltantes

```
Fuente: Elaboración Propia
```
**h) Clasificación operacional**

Con base en criterios técnicos y combinados, cada registro fue clasificado en uno de
tres estados:

● NORMAL: dentro de rangos operativos.
● ALERTA: valores cercanos a umbrales de riesgo.
● CRÍTICO: condiciones severas o combinaciones anómalas (ej. sobrecarga
térmica, gradiente excesivo entre hot-spot y aceite).


## Figura 100: Criterios técnicos y combinados

```
Fuente: Elaboración Propia
```

**i) Consolidación del dataset:**

Una vez que cada variable fue limpiada y procesada individualmente, todas las
series de tiempo se unieron en un único conjunto de datos en formato ancho (wide),
particionado por año y mes.

## Figura 101: Resultado de consolidación del dataset

_Fuente: Elaboración propia_
Este formato, donde cada columna representa una característica (variable) y cada
fila un instante de tiempo, es el requisito fundamental para el siguiente paso: la
entrada al modelo de aprendizaje automático.

## Figura 102: Dataset obtenido de la Capa Silver

_Fuente: Elaboración Propia_
Al realizar una comparación de los resultados se verifica que todas las variables
cuentan ahora con la misma cantidad de muestras, lo cual confirma la aplicación
exitosa de las transformaciones. Este comportamiento refleja tanto la uniformidad
alcanzada en el dataset como la correcta alineación temporal a intervalos de 1 hora

En la siguiente tabla se demuestra que durante el desarrollo de la etapa de
transformación se identificaron los siguientes desafíos y limitaciones y como fueron
mitigadas.


## Tabla 22: Tabla desafíos y estrategia de mitigación

```
Desafío/Limitación Estrategia de mitigación
Formato inconsistente de timestamps Sedatetime,^ realizo convirtiendo^ una^ conversión el formato^ uniforme utc^ a un^ formato^
Heterogeneidad en la frecuencia de muestreo
```
```
Resampling uniforme a 1 hora, con reglas
diferenciadas por tipo de variable (mean,
interpolate, last+ffill).
Duplicados y valores nulos
```
```
Imputación diferenciada: spline/time para
térmicas, interpolación temporal para eléctricas,
forward/backward fill para mecánicas
Alineación de variables heterogéneas Secual^ resolvió es el timestamp^ mediante la^ creación^ de^ un^ índice^ el^
```
```
Fuente: Elaboración Propia
```
Realizando una comparación con la distribución de los datos de bronze y los datos
de silver, se puede visualizar como se trató la concentración de la información y los
valores atípicos fueron tratados para lograr un dataset más limpio para la siguiente
capa.

La Figura 101 muestra la distribución del voltaje en la capa Bronze, se observa una
dispersión amplia con valores aislados que se alejan del rango operativo normal, lo
que evidencia la presencia de valores atípicos y registros inconsistentes producto de
lecturas defectuosas o errores de censado.


## Figura 103: Distribución de voltaje (capa bronze)

```
Fuente: Elaboración Propia
```
En contraste, la Figura 104 representa la misma variable tras el proceso de
transformación en la capa Silver. Aquí la distribución adquiere una forma unimodal y
simétrica, centrada en torno a los 130 kV, valor coherente con las condiciones
nominales de operación del transformador. Esta comparación evidencia cómo las
etapas de limpieza, imputación y validación técnica redujeron la influencia de los
outliers y mejoraron la calidad estadística de los datos.

## Figura 104: Distribución de voltaje (capa silver)

```
Fuente: Elaboración Propia
```

**3.2.2.3.** Cargar los datos procesados en una base de datos

Una vez completada la transformación de limpieza, imputación y normalización de
los datos en la capa silver, el siguiente paso fue garantizar un mecanismo de
persistencia eficiente que garantiza la disponibilidad y almacenamiento de manera
eficiente, trazable y compatible con las fases posteriores de análisis y modelado.

Se decidió utilizar Delta Lake como formato de almacenamiento en la capa Silver, ya
que combina la rapidez del formato Parquet con características adicionales de
control de versiones y trazabilidad.

● El dataset resultante fue guardado en la ruta definida para Silver.
● Se aplicó particionamiento por año y mes en la columna timestamp, lo cual
facilita consultas históricas y reduce el tiempo de acceso a intervalos
específicos.
● Se validó la estandarización de timestamp en UTC antes de la escritura,
asegurando consistencia en todos los registros.

## Tabla 23: Comparación bases de datos

```
Tecnología Tipo Ventajas Adecuación al proyecto
```
```
PostgreSQL /
MySQL
```
```
Base de datos
relacional
(SQL)
```
- Madurez y confiabilidad. -
Amplio ecosistema y soporte de
consultas SQL.

```
Útil para metadatos o
dashboards, no para
históricos masivos de
sensores.
```
```
MongoDB
```
```
Base de datos
NoSQL
(documentos)
```
- Esquema flexible. - Buena
escalabilidad horizontal.
- Manejo sencillo de datos
semi-estructurados.

```
Alternativa secundaria, no
óptima para tu caso de uso.
```
```
Parquet
(archivos
planos)
```
```
Formato
columnar
```
- Excelente compresión y
velocidad de lectura.
- Soportado por múltiples
frameworks analíticos.

```
Adecuado como
almacenamiento base,
insuficiente para
gobernanza de datos.
```
```
Tecnología Tipo Ventajas Adecuación al Proyecto
```

```
Delta Lake
```
```
Formato
transaccional
sobre Parquet
```
- Transacciones ACID y control
de versiones. - Escalable a
volúmenes masivos (Big Data)
- Integración fluida con Spark,
pandas, PyArrow, DuckDB
- Unifica lo mejor de los Data
Lakes (flexibilidad) y Data
Warehouses (gobernanza y
calidad).

```
Óptimo para arquitecturas
tipo Medallion y proyectos
industriales con grandes
volúmenes de series
temporales.
```
```
Fuente: Elaboración Propia
```
Durante el diseño se consideraron alternativas como PostgreSQL, MongoDB o
archivos Parquet simples. Sin embargo, en pruebas reales se observaron
limitaciones de rendimiento o trazabilidad. En la práctica, Delta Lake resolvió estos
problemas, ya que permite manejar grandes volúmenes de datos sin pérdida de
rendimiento y asegura integridad de los registros gracias a su control transaccional.

Debido a que, en este proyecto se trabaja con millones de registros de sensores
industriales, delta lake cumple con:

● Garantiza que la consulta rápidamente por rangos temporales específicos y
los guarda de forma estructurada.
● Documenta automáticamente la evolución del dataset con metadatos, lo que
asegura trazabilidad en auditorías o futuras mejoras.
● Prepara el terreno para escalar a volúmenes aún mayores (Big Data) si más
adelante se integran nuevos equipos o periodos de monitoreo más largos.


**3.2.3. Entrenar un modelo predictivo basado en Machine Learning que
permita anticipar fallos en los transformadores eléctricos**

El propósito de este objetivo fue desarrollar un modelo predictivo capaz de anticipar
fallos en los transformadores eléctricos, utilizando como insumo los datos históricos
transformados en la capa Silver. El proceso incluyó la validación técnica de la
coherencia de los datos, la generación de características (features) térmicas y
eléctricas, la construcción de etiquetas de aprendizaje, la selección y entrenamiento
de algoritmos, y la evaluación mediante métricas apropiadas. Previo a la
construcción de características, se evaluó la calidad del dataset proveniente de
Silver. El mapa de correlación (Figura 103) evidenció alta multicolinealidad entre
variables térmicas y eléctricas. Este hallazgo motivó la creación de índices
compuestos como el thermal_stress_index y el electrical_stress_index, que sintetizan
la información reduciendo redundancia.

## Figura 105: Mapa de correlación

```
Fuente: Elaboración Propia
```

Se construyeron más de 30 características térmicas y eléctricas con fundamento en
la teoría de degradación de transformadores, normas IEEE/IEC y prácticas de
fabricante.

Features térmicas (Tabla 17): incluyen gradiente hot–oil, gradiente normalizado,
temp_rise respecto al ambiente, tasas y aceleraciones térmicas, eficiencia térmica,
ciclos semanales de sobrecalentamiento, índices compuestos de estrés térmico,
detección de anomalías por burbujeo y tendencia de formación de gases. Estas
variables reflejan directamente los procesos de envejecimiento térmico del
aislamiento.

## Tabla 24: Features térmicas

```
Categoría Feature Cómo se calcula Utilidad
```
```
Térmicas
```
```
gradient_hot_oil Diferenciacaliente y aceiteentre^ punto^
```
```
El gradiente térmico es
indicador clásico de
envejecimiento del papel
aislante.
gradient_normalized Normalizadoa aceite–ambiente^ respecto
```
```
Relación usada en guías
IEEE/IEC para evaluar
sobrecalentamiento.
temp_rise_hot,
temp_rise_oil
```
```
ΔT respecto a
ambiente
```
```
Permiten estimar eficiencia
de refrigeración del
transformador.
```
```
*_rate, *_accel,
*_rate_smooth
```
```
Derivadas 1ª y 2ª +
suavizado (aceite,
caliente, OLTC,
burbujeo, ambiente)
```
```
Capturan dinámica térmica
e inercia frente a cambios
de carga.
```
```
thermal_efficiency ΔcorrienteT^ aceite–ambiente /^ Relacionacon aumento^ carga térmico.^ eléctrica
```
```
thermal_loading_factor ΔrespectoT^ aceite–ambiente a nominal Estimadel límite^ cuán de diseño.cerca^ se está^
```
```
thermal_cycles_7d Conteosemanales^ de^ picos en aceite^
```
```
Ciclos térmicos repetitivos
generan fatiga mecánica en
aislamiento.
```

```
Categoría Feature Como se calcula Utilidad
thermal_stress_index Combinacaliente y^ punto gradiente^ Índiceestrés^ compuestotérmico acumulado.^ para^
```
```
overheating_trend Rolling24h de^ 30daceite^ –^ rolling^
```
```
Detecta tendencia de
sobrecalentamiento
prolongado.
bubbling_anomaly
```
```
Z-score de
temperatura de
burbujeo (7d)
```
```
Relacionado con formación
de gases disueltos (DGA).
```
```
gas_formation_trend Rollingburbujeo^ 30d –^ 7d^ de^ Indicadefectos^ evolución internos.^ de posibles^
```
Los gradientes térmicos constituyen uno de los indicadores más relevantes en el
diagnóstico de transformadores. El siguiente fragmento muestra cómo se calcularon
las diferencias entre punto caliente, aceite y ambiente:

## Figura 106: Cálculo de gradientes térmicos

```
Fuente: Elaboración Propia
```
Estos gradientes permiten identificar sobrecalentamientos relativos. El gradiente
normalizado ajusta la diferencia hot–oil en función de la temperatura ambiente, lo
que refleja la verdadera exigencia térmica sobre el aislamiento.

Además, se derivaron variables de inercia térmica y tendencias de
sobrecalentamiento, fundamentales para detectar estrés acumulado:


## Figura 107: Cálculo Inercia térmica y estrés acumulado

```
Fuente: Elaboración Propia
```
Aquí se observa cómo el índice de estrés térmico combina la temperatura máxima y
el gradiente, mientras que la tendencia de sobrecalentamiento captura incrementos
sostenidos en periodos largos, vinculados al envejecimiento acelerado del
aislamiento.

Por otro lado, las features eléctricas (Tabla 18): abarcan factores de carga y
sobrecarga, eficiencia y pérdidas, indicadores de OLTC (operaciones diarias,
desviación del tap central, posiciones extremas, inestabilidad), estabilidad eléctrica
(stability y transient), índices de estrés eléctrico y tendencias de degradación de
eficiencia. Estas variables capturan el impacto eléctrico y mecánico sobre el
transformador.

## Tabla 25: Features Eléctricas

```
Categoría Feature Cómo se calcula Utilidad
```
```
Eléctricas
```
```
load_factor_current Corrientenominal real^ /^ corriente^ Factorde corriente.^ de^ utilización
```
```
load_factor_power Potencianominal aparente^ real^ /^ Factorde potencia.^ de^ utilización
```
```
Fuente: Elaboración Propia
```

**Categoría Feature Cómo se calcula Utilidad**

**Eléctricas**

overload_indicator (^1) nominal^ si^ carga >^ 120%^
Detección de
sobrecargas que
aceleran degradación.
load_factor_current Corrientenominal real^ /^ corriente^ Factorde corriente.^ de^ utilización
load_factor_power Potencianominal aparente^ real^ /^ Factorde potencia.^ de^ utilización
overload_indicator (^1) nominal^ si^ carga >^ 120%^
Detección de
sobrecargas que
aceleran degradación.
efficiency_indicator S_medida / (√3·V·I)
Evalúa pérdidas y
eficiencia del
transformador.
power_factor_estimated P/S con FP estimado
Indicador del factor de
potencia de la
operación.
relative_losses 1 – eficiencia
Estima pérdidas
relativas (calor en
devanados).
tap_operations_1d/7d/30
d
Rolling sum de cambios
en OLTC
OLTC es componente
crítico; desgaste
depende de
operaciones.
tap_deviation_center Desviacióntap central (8.5)respecto a^
Monitorea estabilidad
de regulación de
tensión.
tap_extreme_position (^1) o^ si≥15)^ tap en^ extremos^ (≤2^
Operar en extremos
implica mayor estrés
eléctrico.
tap_instability Stdtap rolling^ de^ cambios^ de^ Mideregulador.^ inestabilidad del^
*_stability
Std/mean en ventana
24h (corriente, voltaje,
potencia)
Estabilidad relativa de
la variable.
*_transient Detecciónbruscos >2σ^ de cambios^ Capturaeléctricos^ transitorios anómalos.^
electrical_stress_index 0.6·factor0.4·(1–eficiencia)^ carga^ + Índiceestrés^ compuestoeléctrico. de^
suboptimal_operation
Baja carga (<0.3) o
sobrecarga (>1.1) o baja
eficiencia (<0.95)
Regímenes de
operación no
recomendados.
efficiency_degradation_tr
end
Rolling 30d – 24h de
eficiencia
Detección de
degradación
sostenida de
eficiencia.
_Fuente: Elaboración Propia_


Para caracterizar el comportamiento eléctrico, se calcularon indicadores de carga y
sobrecarga:

## Figura 108: Factores de Carga y utilización

```
Fuente: Elaboración Propia
```
Estos factores reflejan la utilización relativa respecto a la capacidad nominal. El
overload_indicator permite identificar periodos en los que la carga supera el 120 %
de lo nominal, lo que supone un riesgo de daño térmico y eléctrico.

Asimismo, se diseñaron indicadores de OLTC y estabilidad eléctrica, claves para
detectar maniobras excesivas y variabilidad en la operación:

## Figura 109: Indicadores de OLTC y estabilidad

```
Fuente: Elaboración Propia
```
Los primeros cálculos reflejan cuántas operaciones realiza el OLTC en ventanas
móviles, su desviación respecto al tap nominal y la inestabilidad en cambios rápidos.
Los indicadores de estabilidad (stability) permiten medir fluctuaciones anómalas en
corriente y voltaje, asociadas a transitorios o problemas en la red.

Finalmente, se construyeron índices compuestos, que resumen múltiples variables
en indicadores sintéticos de estrés:


## Figura 110: Índice compuesto de estrés eléctrico

```
Fuente: Elaboración Propia
```
Estos índices integran la intensidad de carga y la eficiencia, generando un valor que
resume el nivel de exigencia eléctrica. El flag suboptimal_operation marca
condiciones de operación fuera del rango ideal, útiles como predictores de riesgo.

Etiquetado predictivo: En la capa Gold se construyeron distintas etiquetas
predictivas. Estas etiquetas se diseñaron con un horizonte de predicción de (30
días):

## Tabla 26: Labels......................................................................................

```
Categoría Feature Cómo se calcula Utilidad
```
```
Etiquetas
```
```
falla_30d Binaria:de 30 días^1 si falla^ dentro^ Objetivomodelo predictivo.^ principal^ del
```
```
estado_futuro Normalsegún RUL^ /^ Alerta /^ Crítico^ Multiclasede estado.^ para^ clasificación^
```
```
rul_dias Horas 24 hasta^ evento^ /^ Remaining Useful Life.
severidad_futura %consumido^ progresivo de^ RUL^ Indicadorseveridad.^ continuo de^
```
```
dias_proximo_event
o
```
```
Tiempo hasta próximo
evento crítico
```
```
Para series temporales con
múltiples fallas.
```
```
Categoría Feature Como se calcula Utilidad
```

```
Etiquetas
```
```
proximidad_evento Funciónde proximidad^ exponencial Escalaeventos.^ de urgencia^ frente^ a^
```
```
riesgo_acumulativo
```
```
Suma normalizada de
influencias
exponenciales de
eventos
```
```
Mide acumulación de riesgo
por historial cercano.
```
```
Fuente: Elaboración Propia
```
**a) Etiqueta Binaria y RUL:**

Se generó la etiqueta falla_30d, que marca con valor 1 a los registros que preceden
a un evento crítico dentro de los siguientes 30 días, y 0 en caso contrario.
Paralelamente, se calculó la vida útil remanente (rul_dias), que decrece linealmente
hasta 0 conforme se acerca el evento.

## Figura 111: Etiqueta binaria y RUL

```
Fuente: Elaboración Propia
```
Este esquema evita fuga de información, pues las etiquetas se calculan únicamente
mirando hacia adelante en el horizonte de 30 días. rul_dias representa la estimación
de días restantes antes de un fallo, fundamental para estrategias de reemplazo y
priorización de activos.


**b) Etiqueta multiclase (estado futuro):** A partir de rul_dias se construyó
una etiqueta multiclase (estado_futuro) que clasifica cada instante en:

● NORMAL: vida útil > 15 días,
● ALERTA: entre 7 y 15 días,
● CRÍTICO: ≤ 7 días.

## Figura 112: Etiqueta multiclase (estado futuro)

_Fuente: Elaboración Propia_
Esta clasificación escalonada traduce la cercanía a fallos en niveles de riesgo
operacional, facilitando la interpretación por parte de ingenieros y operadores.

**c) Etiquetas continuas de severidad y riesgo:** Además, se
construyeron indicadores continuos de urgencia y riesgo acumulado, útiles para
umbralización flexible **:**

● severidad_futura: porcentaje de urgencia (0–100 %) dentro del horizonte de
30 días.
● proximidad_evento: función exponencial de la cercanía temporal a un
evento.
● riesgo_acumulativo: suma de influencias gaussianas en torno a eventos
críticos, normalizada.


```
Figura 113: Etiquetas continuas de severidad y riesgo
```
_Fuente: Elaboración Propia_
Estas variables permiten modelar la severidad como un continuo y no solo como
clases discretas. De esta forma, se pueden calibrar alarmas más sensibles o
conservadoras según la criticidad del activo.

**3.2.3.1.** Selección del algoritmo de Machine Learning más adecuado para el análisis
predictivo de los datos operativos.

Para la elaboración de este objetivo se consideraron alternativas supervisadas como
RandomForest y XGBoost, que son de uso común en series tabulares y problemas
de clasificación. Sin embargo, dada la naturaleza altamente desbalanceada del
dataset y la escasez de ejemplos positivos de fallos críticos, estos algoritmos no
ofrecían una solución práctica en este caso. Por ello, se priorizaron enfoques no
supervisados y secuenciales (AE-LSTM e Isolation Forest), que demostraron un
mejor ajuste al problema y constituyen la base del modelo final.

## Tabla 27: Selección de algoritmo

```
Algoritmo Pros Contras Decisión
```
```
RandomForest Robusto, interpretable Requieretrain todas^ las^ clases^ en^ Descartado
```
```
XGBoost Muy preciso en tabular Sensibleriesgo de^ al sobreajuste^ desbalance severo^ y^ Descartado
```
```
Autoencoder
LSTM
```
```
Aprende patrón normal,
útil en series Necesita^ tuning^ de^ arquitectura^ Seleccionado^
```

```
Isolation Forest Simple,outliers rápido,^ robusto^ a^ Sensiblecontaminación^ a^ parámetros de^ Seleccionado
```
```
Ensamble AE+IF Complementatemporales y tabulares^ señales^ Mayorimplementación^ complejidad de^ Seleccionado
```
```
Fuente: Elaboración Propia
```
AE-LSTM (Autoencoder basado en LSTM): capaz de aprender patrones de
normalidad en secuencias de 24 horas y detectar anomalías por error de
reconstrucción.

Isolation Forest: eficiente en alta dimensión, aísla observaciones atípicas sin requerir
balance de clases.

Ensamble AE+IF: integración de ambos enfoques, combinando 60% del puntaje de
AE y 40% de IF priorizando el AE-LSTM (𝛼=0.6). Esta integración permite
aprovechar la sensibilidad temporal del AE y la robustez geométrica del IF,
mejorando la cobertura de anomalías.

**3.2.3.2.** Ajuste del modelo con los datos operativos del transformador eléctrico

El ajuste consistió en preparar los datos de la capa Gold, entrenar los modelos
seleccionados y calibrar umbrales de decisión.

**a) Preparación de datos**

**1) Preparación de datos**

● Exclusión de columnas con fuga (estado_futuro, falla_30d, etc.).
● Imputación de valores nulos con la mediana.
● Escalado con StandardScaler (fit en train, transform en valid).
● Construcción de secuencias de 24 horas para el AE-LSTM.


**2) Variables de entrada (features):**

● Se seleccionaron únicamente variables numéricas.
● Se excluyeron columnas con fuga de información (falla_30d, rul_dias,
severidad_futura, etc.).
● Se eliminaron columnas constantes y aquellas con más del 30% de valores
nulos.
● Valores faltantes restantes fueron imputados con la mediana.

## Figura 114: Preparación de los datos

_Fuente: Elaboración Propia_
Este filtrado aseguró que las variables de entrada no contuvieran información
derivada del futuro y que fueran consistentes para el modelado.

**b) División temporal de los datos**

Para preservar la secuencia temporal y evitar fuga de información, se realizó un split
cronológico 80/20:

```
● Train (80 % inicial): utilizado para escalar variables y entrenar modelos.
● Valid (20 % final): utilizado para ajustar umbrales y evaluar desempeño.
```

```
Figura 115: División de los datos
```
```
Fuente: Elaboración Propia
```
**c) Configuración de hiperparámetros**

En esta etapa se definieron los parámetros clave de los modelos seleccionados, los
cuales determinan la forma en que procesan la información y la sensibilidad para la
detección de anomalías. Para el AE-LSTM se

configuró una arquitectura secuencial con dos capas LSTM y mecanismos de
regularización para evitar sobreajuste. El Isolation Forest fue ajustado con 400
árboles y una tasa de contaminación del 10 %, lo que permite equilibrar la detección
de valores atípicos sin generar exceso de falsos positivos. Finalmente, se diseñó un
ensamble híbrido que combina ambos modelos ponderando un 60 % del puntaje del
AE-LSTM y un 40 % del Isolation Forest, junto con una política de suavizado 3/5 que
refuerza la estabilidad de las alertas.”

**1) Autoencoder LSTM**


```
Figura 116: Hiperparámetros AE LSTM
```
```
Fuente: Elaboración Propia
```
**2) Isolation Forest**

## Figura 117: Hiperparámetros IF

```
Fuente: Elaboración Propia
```
**3) Ensamble AE+IF**

● α = 0.6 (peso AE-LSTM), 0.4 (IF).
● Política de suavizado: k=3, m=5

**3.2.3.3.** Evaluación del modelo para mejorar su precisión mediante métricas

La evaluación del modelo se realizó utilizando el 20 % final del dataset, asegurando
una validación temporal sin fuga de información. Dado el fuerte desbalance entre
clases (mayoría de estados normales frente a pocos eventos críticos), se priorizaron
métricas robustas como el ROC-AUC, PR-AUC, Recall, Precisión y F1,
complementadas con matrices de confusión para distintos umbrales.


```
Figura 118: Evolución del error de entrenamiento y validación del AE-LSTM
Fuente: Elaboración Propia
```
Metricas Globales: Las curvas ROC y PR (Figuras 119 y 120) evidencian un
desempeño aceptable del AE-LSTM, con valores de ROC-AUC = 0.752 y PR-AUC =
0.374. Estos resultados confirman que el modelo es capaz de capturar patrones
anómalos incluso en un escenario con fuerte desbalance de clases.

## Figura 119: Curva ROC del AE-LSTM (ROC-AUC = 0.752

```
Fuente: Elaboración Propia
```

```
Figura 120: Curva PR-AUC del AE-LSTM (PR-AUC = 0.374)
```
```
Fuente: Elaboración Propia
```
Matriz de confusión: La Figura 121 presenta la matriz de confusión bajo el umbral F2,
optimizado para priorizar el recall en la clase NO-NORMAL. El modelo alcanzó recall
= 99.1 %, con una precisión de 32.3 %.

## Figura 121: Matriz de confusión AE-LSTM calibrado con F2

```
Fuente:
Elaboración
Propia
El ensamble integró los
puntajes del AE-LSTM
y el Isolation Forest con
una ponderación α=0.6
y 0.4 respectivamente,
junto con una política
de suavizado 3/5.
```

Matriz de confusión (umbral F2): La Figura 122 resume el desempeño del modelo
ensamble, alcanzando un recall = 100 % en NO-NORMAL y un mejor balance global
respecto a los modelos individuales, con F2=0.701 y F1≈0.485.

## Figura 122: Matriz de confusión del ensamble AE+IF

_Fuente: Elaboración Propia_
El análisis de las curvas de entrenamiento y validación del AE-LSTM muestra que no
existe sobreajuste significativo, ya que ambas pérdidas convergen de manera
estable y sin divergencias crecientes. Tampoco se observa un underfitting global,
dado que los valores de ROC-AUC y PR-AUC superan con claridad lo esperado por
un clasificador aleatorio. En consecuencia, el modelo puede considerarse
adecuadamente generalizado y robusto para su implementación.


**3.2.4. Desarrollar una interfaz web interactiva con un dashboard que permita
la visualización en tiempo real de los datos clave del sector energético
integrando un modelo predictivo con Machine Learning.**

Este objetivo se centra en la construcción de la capa de presentación de la
plataforma, integrando la información procesada por el pipeline Medallón y las
predicciones generadas en la capa Gold dentro de un dashboard interactivo
accesible vía web.

## Tabla 28: Tabla comparativa de frameworks backend

```
Criterio FastAPI (Python) Node.js (JavaScript) Flask (Python)
```
```
Rendimiento
```
```
Muy alto gracias a
ASGI y uso de
uvicorn/Starlette.
Maneja gran número
de peticiones
concurrentes de forma
eficiente.
```
```
Alto, orientado a I/O no
bloqueante gracias al motor
V8 y el modelo event-loop.
```
```
Medio-alto,
rendimiento menor
que FastAPI en
alta concurrencia
debido a WSGI
tradicional.
```
```
Compatibilidad con
ML/IA
```
```
Cuenta con un
ecosistema Python que
facilita la integración
directa con librerías de
datos y ML (pandas,
scikit-learn, XGBoost,
MLflow).
```
```
Menos natural para ML ya
que requiere microservicios
adicionales en Python o
librerías JS menos maduras
para ML.
```
```
Compatible, pero
con menos
herramientas
modernas de
tipado y validación
que FastAPI.
```
```
Documentación
automática
```
```
Integrada, genera docs
interactivas (Swagger
UI, ReDoc) de forma
automática sin
configuración extra.
```
```
Necesita configuración
manual con
Swagger/OpenAPI.
```
```
No integrada por
defecto, requiere
librerías
adicionales.
```
```
Facilidad de
desarrollo
```
```
Alta, especialmente
para equipos
familiarizados con
Python y ciencia de
datos. Sintaxis clara y
moderna.
```
```
Alta para equipos con
experiencia en
JavaScript/TypeScript; curva
de aprendizaje más
pronunciada si se requiere
ML.
```
```
Alta simplicidad,
pero menos
herramientas
modernas que
FastAPI.
```
```
Integración con
ETL y pipelines
```
```
Muy sencilla, al estar
en el mismo lenguaje
que el ETL (Python).
Permite importar
módulos directamente.
```
```
Requiere comunicación vía
API o colas de mensajes
con procesos Python.
```
```
Sencilla
integración, pero
menos optimizada
para alto
rendimiento
asincrónico.
```

```
Curva de
aprendizaje
```
```
Rápida para
desarrolladores con
experiencia en Python.
```
```
Rápida para desarrolladores
con experiencia en JS/TS.
```
```
Muy rápida, incluso
para principiantes
en Python.
Comunidad y
soporte
```
```
Creciente, con fuerte
adopción en proyectos
de IA y microservicios.
```
```
Muy grande y madura,
orientada a web y APIs.
```
```
Grande, con
muchos años en
producción y alta
estabilidad.
Elaboración propia
```
Debido a las características con las que cuenta FastAPI se escogió esta tecnología
debido a su fácil integración y su ecosistema dentro de Python.

## Tabla 29: Tabla comparativa de frameworks frontend

```
Criterio Next.js (React) Angular (TypeScript) Vue.js (JavaScript)
```
```
Rendimiento
```
```
Muy alto, soporta
Server-Side Rendering
(SSR), Static Site
Generation (SSG) e
Incremental Static
Regeneration (ISR),
optimizando carga inicial
y SEO.
```
```
Alto, pero con mayor
sobrecarga inicial por su
arquitectura más pesada.
```
```
Alto, aunque depende
más de optimizaciones
manuales para lograr
el rendimiento de
Next.js.
```
```
Arquitectura y
escalabilidad
```
```
Flexible ya que permite
SSR, SSG o cliente puro
según la página.
Escalable para
dashboards con datos
dinámicos y tiempo real.
```
```
Muy estructurado y
robusto, excelente para
grandes equipos, pero
más complejo de adaptar
a cambios rápidos.
```
```
Ligero y flexible, bueno
para proyectos
medianos; menos
robusto que Angular o
Next.js en arquitectura
compleja.
```
```
Integración con
APIs
```
```
Excelente, integración
directa con REST y
GraphQL, soporte nativo
para fetch y librerías
como SWR/React Query
para manejo de estado y
datos asincrónicos.
```
```
Muy buena, pero requiere
más configuración inicial
para manejar GraphQL o
estrategias avanzadas de
caché.
```
```
Muy buena con
librerías como Axios o
Vue Apollo, requiere
configuración manual
para manejo de datos
avanzado.
```
```
Ecosistema y
comunidad
```
```
Muy grande, respaldado
por Vercel y la comunidad
React. Gran cantidad de
librerías y ejemplos,
especialmente en
dashboards y
aplicaciones de datos.
```
```
Amplia comunidad,
especialmente en
corporativos y grandes
sistemas empresariales.
```
```
Comunidad activa y
creciente, muy popular
en proyectos pequeños
y medianos.
```

```
Curva de
aprendizaje
```
```
Moderada si se conoce
React; fácil transición
para desarrolladores web
con experiencia previa en
JS/TS.
```
```
Más pronunciada,
requiere aprender la
arquitectura completa
(módulos, inyección de
dependencias, servicios).
```
```
Suave, sintaxis intuitiva
y simple para
principiantes.
```
```
Soporte para
visualización
de datos
```
```
Muy alto, integración
fluida con librerías de
gráficos como Recharts,
Chart.js, D3.js y
componentes reutilizables
para UI industrial.
```
```
Muy alto, buenas
integraciones, aunque
más configuración y
código boilerplate.
```
```
Alto, integraciones
disponibles, pero
menos variedad que en
React/Next.js.
```
```
Integración con
el backend
FastAPI
```
```
Directa y eficiente
mediante llamadas
fetch/axios, fácil manejo
de autenticación JWT y
refresco de tokens.
```
```
Posible, pero con mayor
boilerplate y configuración
de servicios.
```
```
Sencilla, pero requiere
decidir manualmente
estrategias de
autenticación y
refresco de tokens.
Elaboración propia
```
La solución implementa un backend en FastAPI para servir datos históricos,
predicciones y alertas, y un frontend en Next.js que ofrece no solo visualizaciones
dinámicas y herramientas de gestión sino también un rendimiento y flexibilidad,
renderizado del lado del cliente, ideal para el dashboard que requieren tanto tiempos
de carga rápidos como datos actualizados en tiempo real. La elección de tecnologías
respondió a la necesidad de un entorno rápido, escalable y compatible con los
módulos de ETL y el modelo predictivo desarrollado en la arquitectura Medallion.

**3.2.4.1.** Creación de una interfaz intuitiva y responsiva para la visualización de datos,
incluyendo métricas clave.

La creación de una interfaz en la que los usuarios pudieran visualizar de forma clara
y rápida la información relevante de los transformadores eléctricos se diseñó e
implemento una interfaz web basada en Next.js como framework principal,
complementado con Tailwind CSS para estilos responsivos y shadcn/ui para
componentes reutilizables y consistentes.

La visualización de datos se realizó con Recharts, permitiendo superponer en un
mismo gráfico las series históricas y las predicciones generadas por el modelo de
Machine Learning.


En base a la definición de los requerimientos funciones y visuales, se realizó la
creación de diferentes módulos para la plataforma web, con la implementación de
componentes reutilizables para las vistas, tablas y gráficos

La interfaz está dividida en varias secciones:

**a) Módulo de Login**

Se implementó un sistema de autenticación con manejo de sesión y protección de
rutas. El middleware de autenticación controla el acceso según el rol del usuario.

## Figura 123: Módulo de login

```
Fuente: Elaboración Propia
```
**b) Vista del transformador**

La cual muestra un gráfico con los datos históricos y predicciones, indicadores clave
tales como el ultimo registro, ultima predicción y estado actual del transformador


```
Tabla 30: Vista del transformador
```
_Fuente: Elaboración propia_
**c) Módulo de alertas**

El cual muestra las alertas en base a un límite de alerta establecido, con filtros de
criticidad, donde el usuario puede marcar como visto y programar una intervención
en base al análisis.

## Tabla 31: Módulos alertas

```
Fuente: Elaboración Propia
```

**d) Módulo de usuarios**

Permite la gestión de usuario con roles de administrador y visualizador. Incluye
diálogos modales para creación, edición y restablecimiento de contraseñas, el
privilegio a este módulo es solo por el administrador.

## Figura 124: Módulo de usuarios

```
Fuente: Elaboración Propia
```
```
e) Módulo de reportes
```
```
Facilita la generación y descarga de reportes en formatos CSV y PDF. El PDF incluye
gráficos generados con matplotlib y embebidos en el documento mediante
ReportLab, ofreciendo un informe visualmente atractivo y listo para entregar.
```

```
Figura 125: Módulo de reportes
```
```
Fuente: Elaboración propia
```
El sistema de navegación incluye un menú lateral (sidebar) y un encabezado
(navbar) dinámicos. Una de las principales ventajas de haber desarrollado esta
interfaz con Next.js y React es su modularidad ya que cada componente puede
reutilizarse o actualizarse sin afectar el resto del sistema.


```
Figura 126: Figura Dashboard
```
```
Fuente: Elaboración Propia
```
3.2.4.2. Implementación de APIs para la actualización automática de datos.

Para que la interfaz pudiera interactuar con la base de datos y con el modelo
predictivo, se implementó un conjunto de endpoints RESTful en el backend
desarrollado con FastAPI. Estos endpoints permitieron la autenticación de usuarios,
la consulta de datos históricos, la visualización de predicciones, la gestión de alertas
y la generación de reportes.

A continuación, se presenta la tabla con los endpoints documentados, organizados
por módulo funcional.

## Tabla 32: Endpoints autenticación

```
Método Endpoint Body / Parámetros Descripción funcional Usointerfaz^ en^ la
```

**POST** /api/v1/auth/login

```
{ "username":
"usuario", "password":
"clave" }
```
```
Autentica al usuario y
devuelve un token JWT
para acceso
autorizado.
```
```
Formulario de
inicio de sesión.
```
**POST** /api/v1/auth/refresh {"token_refresh"^ "refresh_token": } Renuevaantes de queel^ token expire.^ JWT

```
Mantener sesión
activa sin que el
usuario vuelva a
iniciar sesión.
```
**GET** /api/v1/auth/me Header:Bearer <token>^ Authorization: Devuelveusuario autenticado.^ los^ datos^ del

```
Mostrar nombre y
rol en el navbar,
validar permisos.
```
**GET** /api/v1/users Header: Authorization Listaregistrados.^ de^ usuarios

```
Vista de
administración de
usuarios.
```
**POST** /api/v1/users

```
{ "username": "...",
"email": "...", "role":
"admin/viewer",
"password": "..." }
```
```
Crea un nuevo usuario
en el sistema.
```
```
Modal “Crear
usuario” en
/dashboard/users.
```
**PATCH** /api/v1/users/{id} Campos(ej. { "role":^ a^ actualizar "viewer" })^ Modificausuario. datos^ de^ un^ Modalusuario”.^ “Editar

**POST** /api/v1/users/reset-password {"new_password":^ "id":^ 1,^ "..." } Restablececontraseña^ della^ usuario.

```
Botón “Reset
Password” en la
tabla de usuarios.
```
```
Fuente: Elaboración Propia
```
## Tabla 33: Endpoints alertas

```
Método Endpoint Body / Parámetros Descripción funcional Usointerfaz^ en^ la
```
**GET** /api/v1/alerts

```
Query:
transformer_id, from,
to, status
```
```
Devuelve lista de
alertas.
```
```
Tabla de alertas
en vista de
transformador.
```

```
POST /api/v1/alerts/from-predictions
```
```
{ "transformer_id": 1,
"threshold_warning":
100,
"threshold_critical":
110, "window_days":
3 }
```
```
Genera alertas a partir
de predicciones
existentes.
```
```
Administración
de alertas
(futuro módulo
de políticas).
```
```
PATCH /api/v1/alerts/{id}/ack — Marca“vista/atendida”.^ una^ alerta como^
```
```
Botón “Marcar
como visto” en
la tabla de
alertas.
Fuente: Elaboración Propia
```
## Tabla 36: Endpoints predicciones

```
Método Endpoint Body / Parámetros Descripción funcional Usointerfaz^ en^ la
```
```
GET /api/v1/transformers —
```
```
Devuelve la lista de
transformadores
registrados.
```
```
Lista
desplegable de
selección en el
dashboard y
reportes.
```
```
GET /api/v1/transformers/{id}/overview Query:metrics[]^ from, to,^
```
```
Devuelve KPIs,
histórico, predicciones
y alertas del
transformador.
```
```
Vista principal
del dashboard
por
transformador.
```
```
GET /api/v1/silver Query:metrics[]^ from, to,^
```
```
Obtiene datos
históricos de la capa
Silver.
```
```
Gráfico histórico
en el
dashboard.
```
```
Fuente: Elaboración Propia
```
## Tabla 35: Endpoints reportes

```
Método Endpoint Body / Parámetros Descripciónfuncional Uso en la interfaz
```
```
GET /api/v1/reports/csv
```
```
Query:
transformer_id, from,
to, metrics[],
include_predictions,
include_alerts
```
```
Genera un archivo
CSV con los datos
solicitados.
```
```
Botón “Descargar
CSV” en
/dashboard/reportes
.
```

```
GET /api/v1/reports/pdf Mismosque CSV^ parámetros
```
```
Genera un archivo
PDF con datos y
gráfico embebido.
```
```
Botón “Descargar
PDF” en
/dashboard/reportes
.
Fuente: Elaboración Propia
```
**3.2.4.3.** Integración del modelo predictivo en el Dashboard.

La última fase del desarrollo del frontend consistió en incorporar, de forma funcional y
visualmente, las predicciones generadas por el modelo de machine Learning en el
dashboard de la plataforma web, convirtiendo los datos en información predictiva útil
para la toma de decisiones de mantenimiento.

La integración se realizó siguiendo un flujo bidireccional entre el backend (FastAPI) y
el frontend (Next.js).

Las predicciones se generan en la capa gold del pipeline mediante el script
inference_push.py, estos endpoints se envían a través del endpoint.

```
Figura 127: Endpoints
```
```
Fuente: Elaboración Propia
```
POST: En el backend se insertan en la tabla predictions y se validan con los
metadatos del transformador correspondiente.

GET: El backend devuelve un JSON con la serie temporal de predicciones, alineada
con las marcas de tiempo y transformador especificados.


```
Tabla 36: Endpoints predicciones
Método Endpoint Body / Parámetros Descripciónfuncional Uso en la interfaz
```
```
GET /api/v1/predictions
```
```
Query:
transformer_id, from,
to
```
```
Lista
predicciones
históricas.
```
```
Gráfico overlay
histórico +
predicciones.
```
```
POST /api/v1/predictions/batch
```
```
Lista de predicciones
generadas ([{
"timestamp": "...",
"y_hat": ... }, ...])
```
```
Inserta en bloque
las predicciones
generadas en la
capa Gold.
```
```
Proceso backend de
inference_push.py,
no visible al usuario.
```
```
Fuente: Elaboración Propia
```
Posteriormente, el renderizado del dashboard en la vista /dashboard/transformers/[id]
utilizando para superponer en un mismo gráfico

**3.2.5. Evaluar la efectividad de la plataforma mediante pruebas con datos
reales y métricas de precisión de los modelos predictivos, asegurando
su correcto funcionamiento e integración con los sistemas existentes.**

**3.2.5.1.** Realización de pruebas con datos históricos y en tiempo real para validar la
efectividad del modelo.

## Figura 128: Registro de los datos históricos


```
Fuente: Elaboración Propia
```
```
Figura 129: Registro de los datos predichos
```
```
Fuente: Elaboración Propia
```
**3.2.5.2.** Comparación de los resultados obtenidos con el sistema actual de
monitoreo.

En base a los resultados obtenidos con el dashboard de pi System y los resultados
del dashboard,


```
Figura 130: Comparación de software
```
```
Fuente: PI System
```
Sistema de monitoreo tradicional: Utiliza umbrales estáticos (ej., alerta si la
temperatura supera los 110°C).

Sistema predictivo: Genera alertas en función de las predicciones del modelo
entrenado, con mayor capacidad de anticipación para la detección de anomalías en
base a una ventana de 24 pasos (ajustable).

El PI System reacciona a la superación de umbrales, mientras que el modelo
predictivo anticipa tendencias de sobrecarga o deterioro antes de alcanzar valores
críticos.

El modelo ofrece métricas cuantitativas de desempeño (ej. ROC-AUC ~0.85, F2
~0.78), inexistentes en el sistema actual.

El dashboard propuesto permite aplicabilidad, se muestran las variables que
contribuyeron a la anomalía, lo cual otorga al operador un entendimiento más
profundo del evento.


**3.2.5.3.** Análisis de las métricas de precisión y desempeño de la plataforma en
distintos escenarios.

Para el proceso de evaluación de las métricas de precisión, se usó MLflow para
monitorear el rendimiento del modelo en base a cada uno de los parámetros.

```
Figura 131: Métricas evaluación en MLflow
```
```
Fuente: Elaboración Propia
```
```
Figura 132: Resultados de la predicción
```
```
Fuente: Elaboración Propia
```

```
Figura 133: Vista del dashboard
```
```
Fuente: Elaboración Propia
```
Tras realizar el ajuste y entrenamiento del modelo se procedió a la evaluación
técnica para verificar su precisión, robustez y capacidad predictiva. Por lo que se
seleccionaron métricas de evaluación:

3.3. **ANÁLISIS DE VIABILIDAD**

**3.3.1. Viabilidad Técnica**

Este análisis evaluará si el proyecto es tecnológicamente factible, considerando los
recursos, la infraestructura y la tecnología necesaria para su ejecución. A diferencia
del proyecto de comercio electrónico, nos centraremos en los desafíos específicos
de la ciencia de datos, la ingeniería de datos y el mantenimiento predictivo.


**3.3.1.1.** Funcionalidad

La funcionalidad de la plataforma se ha diseñado para optimizar el mantenimiento de
transformadores eléctricos a través de la inteligencia artificial y el análisis de datos.
Sus herramientas y características principales incluyen:

Ingesta de Datos en Tiempo Real: La plataforma se conectará directamente a AVEVA
PI System para recolectar datos operativos de los transformadores, como
temperatura, voltaje y otros parámetros críticos. Este proceso de Extracción,
Transformación y Carga (ETL) estructurará y garantizará la calidad de los datos para
el análisis predictivo.

Análisis Predictivo Avanzado: Se entrenará un modelo de Machine Learning para
anticipar fallos en los transformadores eléctricos. Este modelo analizará los datos
operativos y generará predicciones y alertas tempranas, permitiendo una transición
del mantenimiento reactivo al predictivo.

Gestión Inteligente de Activos: La plataforma permitirá al personal de ISI Mustang y a
sus clientes acceder a un análisis detallado de los datos históricos, las predicciones
del modelo y recomendaciones de acciones, lo cual facilitará la automatización de
decisiones estratégicas.

**3.3.1.2.** Seguridad

La seguridad es un pilar fundamental del proyecto, especialmente considerando que
se manejarán datos operativos y estratégicos. Se implementarán medidas de
seguridad para proteger la plataforma contra accesos no autorizados y garantizar la
confidencialidad de los datos. Estas medidas incluyen:

Conexiones Seguras: Se utilizarán conexiones HTTPS entre el cliente, el servidor y
la base de datos para cifrar la información en tránsito.


Gestión de Autenticación: Se implementará la autenticación de usuarios para
asegurar que solo el personal autorizado pueda acceder a la plataforma.

Control de Acceso Basado en Roles (RBAC): Se definirán roles con permisos
específicos para restringir el acceso a funcionalidades y datos.

Cifrado de Datos: Las credenciales y otros datos sensibles se cifrarán antes de ser
almacenados en la base de datos para cumplir con los estándares de seguridad.

**3.3.1.3.** Escalabilidad

La plataforma se ha concebido para crecer a medida que la empresa se expanda. Su
diseño permite manejar volúmenes de datos y un número de usuarios crecientes sin
comprometer el rendimiento.

Arquitectura Datalakehouse (Medallion): Esta arquitectura es la base de la
escalabilidad de datos. La estructura de capas (Bronze, Silver, Gold) asegura un
procesamiento eficiente de los datos, desde su ingesta hasta su visualización en el
dashboard.

Computación Distribuida: El uso de frameworks como Apache Spark permitirá
procesar grandes volúmenes de datos históricos y en tiempo real de manera
eficiente.

Servicios en la Nube: Se emplearán servicios de la nube que se ajustan
automáticamente a la demanda de tráfico, asegurando un uso eficiente de los
recursos.


**3.3.2. Viabilidad Económica**

La inversión fija se refiere a los activos a largo plazo necesarios para el desarrollo y
operación de la plataforma. Para este proyecto, el principal activo tangible es el
equipo de computación especializado para el desarrollo.

## Tabla 37: Inversión Fija

Computadora de Desarrollo: Un equipo con especificaciones adecuadas (procesador
potente, alta RAM, etc.) es esencial para el entrenamiento de modelos de Machine
Learning y el procesamiento de grandes volúmenes de datos. Se estima una
inversión de aproximadamente 15000 Bs

## Tabla 42: Inversión Total

```
Detalle Componente mínimo recomendado Precio (bs.)
CPU 12 núcleos (ej. Ryzen 9 5900X / i7-12700F) 2.900,00
```
```
Placa madre Chipset B550/B660 con M.2 NVMe 1.100,00
RAM 64 GB DDR4 3200 MHz (2×32 GB) 1.100,00
SSD NVMe 1 TB PCIe 3.0/4.0 650,00
SSD/SATA 2 TB para datasets 850,00
```
```
GPU (opcional, apoyo) RTX 3060 12 GB 3.800,00
Fuente 750 W 80+ Gold 650,00
```
```
Case Mid-tower con buen airflow 450,00
Refrigeración Air cooler torre 300,00
```
```
UPS 1200 VA 1.100,00
Monitor 24" FHD 900,00
```

```
Periféricos Teclado, mouse, cables 500,00
Backup externo HDD 2 TB 700,00
```
```
TOTAL (Bs.) 15.000,00^
```
**3.3.2.2.** Inversión Diferida

La inversión diferida corresponde a los costos recurrentes que la empresa deberá
asumir para mantener y operar la plataforma de manera continua. Estos costos
incluyen la mano de obra, la infraestructura de la nube y el mantenimiento

**a) Costo Desarrollo del Proyecto**

El costo de desarrollo del software se estima a través de una metodología híbrida
que combina el enfoque ágil de Story Points (SP) con el formalismo del Modelo
COCOMO.

La base de la estimación es la cuantificación de la complejidad de los requerimientos
funcionales y no funcionales del proyecto en Story Points (SP). Se utiliza la escala de
Fibonacci modificada para asignar los SP, reflejando el esfuerzo, la complejidad y el
riesgo de cada componente clave

## Tabla 38: Estimación del Esfuerzo Funcional (Story Points)

**Épica Justificación del Esfuerzo y Complejidad** (^) **AsignadosSP**^
Análisis de Datos y
Necesidades
Esfuerzo de investigación, levantamiento de requisitos y
validación de variables de PI System. 5
Proceso ETL
Alta complejidad (15 SP): Incluye la conexión con PI Web
API, el desarrollo de la lógica de limpieza y transformación
y la gestión de la persistencia de grandes volúmenes de
datos
15
Entrenamiento del
Modelo ML
Máxima complejidad (23 SP): Diseño y entrenamiento del
modelo, feature engineering 23


```
Interfaz Web
(Dashboard)
```
```
Alto esfuerzo Full-Stack (13 SP): Desarrollo del frontend
interactivo (Next.js), backend (FastAPI) 13
```
```
Evaluación y Pruebas Validaciónefectividad^ de del^ métricas sistema.^ de IA^ y^ documentación^ de^ la^5
TOTAL DE STORY
POINTS (SP) Complejidad^ Total^ del^ Proyecto^61 SP^
Fuente: Elaboración Propia
```
El total de 61SP se traduce a una estimación monetaria de la mano de obra,
justificada con el esfuerzo real del proyecto (10 PM) y el modelo COCOMO II.

Para el análisis de estimación de costos, se considerará el sueldo de un ingeniero de
sistemas junior asumiendo que cobra un sueldo de Bs8 400 mensuales o Bs35 por
hora por 30 días (Según la Tabla de Honorarios profesionales en Tecnologías de la
Información publicada por la Sociedad de Ingenieros de Bolivia en el anexo H,
aprobada en 2022). Asumiendo que trabaja 30 días al mes con una jornada de 8
horas diarias, el ingeniero acumula un total de 240 horas por mes. El costo por hora
siendo Bs35. Incluye el salario base del Ingeniero Junior (Bs8.400,00) más las
cargas sociales, beneficios y gastos operacionales de la empresa.

## Tabla 39: Parámetros de COCOMO

```
Parámetro Valor Justificación en el Proyecto
Esfuerzo Real del
Desarrollo 10 persona-Meses^ (PM)^
```
```
El proyecto fue desarrollado por un
ingeniero individual en 10 meses.
Costo Integral por
PM Bs14.000,00^
```
```
Costo estimado de la mano de obra,
incluyendo el salario baseBs8.400,00
más cargas sociales y gastos
operacionales
Tamaño Base
(KLOC) 15.25^ KLOC^
```
```
Conversión de la complejidad: $61 x250
LOC/SP
Modo COCOMO Semi-Separado (A=3.0, B=1.12)
```
```
Apropiado para proyectos con
complejidad significativa en bases de
datos e integración de sistemas.
```

EI costo se obtiene multiplicando el Esfuerzo Real por el Costo Integral por
Persona-Mes.

```
𝐶𝑜𝑠𝑡𝑜 𝑑𝑒 𝐷𝑒𝑠𝑎𝑟𝑟𝑜𝑙𝑙𝑜 𝑑𝑒 𝑆𝑜𝑓𝑡𝑤𝑎𝑟𝑒 = 𝐸𝑠𝑓𝑢𝑒𝑟𝑧𝑜 𝑅𝑒𝑎𝑙 (𝑃𝑀) 𝑥 𝐶𝑜𝑠𝑡𝑜 𝐼𝑛𝑡𝑒𝑔𝑟𝑎𝑙 𝑝𝑜𝑟 𝑃𝑀
```
El costo total de desarrollo del proyecto sería Bs140.000,00

```
𝐶𝑜𝑠𝑡𝑜 𝑑𝑒 𝐷𝑒𝑠𝑎𝑟𝑟𝑜𝑙𝑙𝑜 = 10 𝑃𝑀 𝑥 𝐵𝑠 14. 000 ,00/𝑃𝑀 = 𝐵𝑠 140. 000 , 𝑂𝑂
```
Para el Modelo COCOMO, la eficiencia del desarrollo es un punto clave por lo que el
esfuerzo teórico base (PM Base), aplicando la fórmula de COCOMO II al tamaño de
15.25 KLOC se obtiene un esfuerzo teórico de 58.14 Persona-Meses

La productividad real considerando como base que el proyecto se desarrolló en
10 PM

```
𝐹𝑎𝑐𝑡𝑜𝑟 𝑑𝑒 𝑃𝑟𝑜𝑑𝑢𝑐𝑡𝑖𝑣𝑖𝑑𝑎𝑑 (𝐸𝑀) = 10 𝑃𝑀 𝑅𝑒𝑎𝑙/58. 14 𝑃𝑀 𝐵𝑎𝑠𝑒 = 0. 172
```
Este factor 0.172 se justifica por la especialización en Python, el uso de frameworks
de desarrollo rápido (FastAPI, Next.js) y el dominio tecnológico del ingeniero.

## Tabla 40: Costo de Licencias y servicios

```
Tabla 40: Costo de Licencias y servicios
Software / servicio Descripción Precio (bs.)
PostgreSQL Motor de base de datos (open source) 0,00
Certificación AVEVA PI
System 1 ingeniero^ (curso+examen,^ único^ pago)^ 8.316,00^
Luz y agua 700 Bs/mes → 8.400,00 Bs/año 8.400,00
Mesa de cambios Evolutivos/soporte: 3.000 Bs/mes 36.000,00
```

```
TOTAL, Licencias y
Servicios (Año 1) 45.979,20^
```
```
Fuente: Elaboración Propia
```
La certificación AVEVA se exige para que el mantenimiento lo ejecute personal
acreditado en PI System.

**c) Infraestructura y Hosting en la Nube**

La infraestructura es el componente de mayor costo debido a la necesidad de una
arquitectura moderna de datalakehouse.

## Tabla 41: Infraestructura

```
Concepto Detalle Precio (bs.)
Dominio Compra inicial (online) – año 1 34,95
Hosting VPS Contabo 20 USD/mes → 1.663,20 Bs/año 1.663,20
IP pública 5 USD/mes → 415,80 Bs/año 415,80
Internet Conectividad local 250 Bs/mes → 3.000 Bs/año 3.000,00
IA de apoyo Copiloto 20 USD/mes → 1.663,20 Bs/año 1.663,20
Electricidad/agua 700 Bs/mes → 8.400 Bs/año 8.400,00
TOTAL (Bs.) Año 1 15.177,15
```
```
Fuente: Elaboración Propia
```

**3.3.2.3.** Inversión Total del Proyecto

Tras realizar el cálculo de los costos de inversión fija y diferida del proyecto, se
procedió a determinar la inversión total. A continuación, se presentan dichos costos
de manera detallada en la siguiente tabla.

```
Tabla 42: Inversión Total
Descripción Importe (bs.)
```
```
Total Inversión Fija (F1) 15.000,00
```
```
Total Desarrollo de Proyecto 140.000,00
```
```
Descripción Importe (bs.)
Total Licencias y Servicios (D1) 45.979,20
Total Dominio y Hosting (D2) 15.177,15
```
```
Total Fija + Diferida 216.156,35
```
```
Imprevistos (5%) 10.807,82
INVERSIÓN TOTAL (Bs.) 226.964,17
```
```
Fuente: Elaboración Propia
```


### 4. CAPÍTULO 4.

### CONCLUSIONES Y RECOMENDACIONES

### 4.1. CONCLUSIONES

El desarrollo de la plataforma validó de manera integral la factibilidad de aplicar
arquitecturas modernas de datos y modelos de inteligencia artificial al mantenimiento
predictivo de transformadores eléctricos en ISI Mustang Bolivia SRL.

A través de entrevistas con el personal técnico de ISI Mustang Bolivia SRL se
identificó el problema central relacionado con la ausencia de mecanismos predictivos
en el mantenimiento de transformadores. Se reconocieron los componentes clave del
sistema en particular, AVEVA PI System y PI Web API como fuentes principales de
datos y se determinaron las variables críticas para el análisis, como temperaturas,
corrientes y tensiones. Este levantamiento de requisitos permitió fundamentar el
diseño del pipeline de datos y del modelo predictivo.

El análisis exploratorio de datos (EDA) evidenció la presencia de valores faltantes,
ruido y distribuciones heterogéneas entre transformadores, lo que justificó la
necesidad de procesos de limpieza y estandarización. Este diagnóstico inicial
permitió comprender las limitaciones de los datos y establecer las bases para la
definición del proceso ETL y la posterior construcción del modelo.

Se implementó un proceso de extracción robusto y modular, con gestión segura de
credenciales, que garantizó la captura confiable de datos desde el PI System hacia la


capa Bronze. La adopción de la arquitectura Medallion demostró ser una decisión
acertada: la capa Bronze consolidó datos crudos en formato inmutable, la capa Silver
aplicó limpieza, imputación y tratamiento de valores atípicos, y la capa Gold generó
un dataset optimizado para consumo analítico. Este enfoque aseguró trazabilidad,
gobernanza de datos y bases sólidas para el modelado. Esta estructura no solo
asegura integridad y eficiencia, sino que también facilita la escalabilidad futura del
sistema.

El preprocesamiento de los datos, que incluyó imputación de valores faltantes,
normalización y codificación temporal, fue fundamental para homogenizar las
variables de entrada. A ello se sumó un proceso de feature engineering donde se
construyeron variables térmicas y eléctricas, además de atributos derivados de
ventanas móviles, lo que enriqueció la representación del comportamiento de los
transformadores. El modelo ensamble entre un autoencoder LSTM y un Isolation
Forest, ajustado bajo la métrica F2, logró un recall del 100 % en la clase
NO-NORMAL, asegurando que ningún fallo potencial quedara sin detectar. Esto
validó que tanto el preprocesamiento como la ingeniería de características fueron
determinantes en el rendimiento final del modelo.

La construcción de una interfaz responsiva e interactiva permitió la visualización en
tiempo real de datos operativos y predicciones del modelo. El dashboard, conectado
mediante APIs REST, facilitó el monitoreo continuo, desplegando métricas clave y
alertas tempranas a través de indicadores gráficos de fácil interpretación. La
integración del modelo predictivo en la plataforma garantizó que la información
analítica se transformara en un insumo práctico para la toma de decisiones.

Las pruebas con datos históricos y simulaciones en tiempo real confirmaron la
efectividad del pipeline completo. La comparación con el sistema de monitoreo actual
evidenció un análisis y toma de decisiones predictivo.

En síntesis, el proyecto alcanzó los objetivos planteados, demostrando que la
combinación de arquitecturas modernas de datos (Medallion), el aprendizaje


automático y visualización interactiva puede aplicarse de manera efectiva al
mantenimiento predictivo de transformadores. Esto constituye una innovación
tecnológica con impacto directo en la eficiencia operativa, la reducción de costos y la
confiabilidad del sistema eléctrico.

4.2. **RECOMENDACIONES**

Se recomienda mantener un proceso continuo de levantamiento y actualización de
requisitos en coordinación con el cliente, ya que las necesidades pueden evolucionar
conforme se utilice la plataforma en producción. Asimismo, se sugiere extender el
análisis de variables incorporando fuentes externas (por ejemplo, condiciones
ambientales) que podrían enriquecer el modelo predictivo.

Es importante considerar realizar pruebas constantes de rendimiento del ETL: medir
periódicamente el tiempo de ejecución de cada etapa del pipeline para detectar
cuellos de botella en alguno de los procesos y optimizar consultas en la base de
datos o en Delta Lake.

Se sugiere evaluar algoritmos adicionales de detección de anomalías, incluyendo
arquitecturas basadas en transformers o ensembles híbridos. En escenarios con
suficientes datos etiquetados, se recomienda explorar modelos supervisados como
XGBoost. Además, resulta esencial evolucionar hacia un enfoque de MLOps que
incorpore el versionado sistemático de modelos y artefactos, el monitoreo de
métricas clave la automatización parcial de reentrenamientos para mitigar riesgos de
data drift y concept drift.

Integración con sistemas externos de gestión de personal que vincule el dashboard
con plataformas de mantenimiento utilizadas por la empresa, de manera que las
alertas generadas puedan convertirse directamente en órdenes de trabajo o tickets
de mantenimiento.


Es importante realizar pruebas de escalabilidad en entornos de producción con
múltiples transformadores en paralelo. Asimismo, se recomienda consolidar la
solución bajo un esquema de mlops operativo, que contemple integración continua
(CI/CD) para los pipelines de datos y modelos, monitorización del rendimiento en
línea y despliegue controlado de nuevas versiones del modelo predictivo. Esto
asegurará la sostenibilidad y confiabilidad del sistema a largo plazo.



### BIBLIOGRAFÍA

Abadi, M. e. (2016). TensorFlow: Large-Scale Machine Learning on Heterogeneous
Distributed Systems. Retrieved from TensorFlow.

adservio. (2024). _data-lake-and-its-benefits-in-data-management_. Retrieved from
adservio:
https://www.adservio.fr/post/data-lake-and-its-benefits-in-data-management

Agrawal, S., & Sharma, P. (2024). Predictive maintenance using artificial intelligence
in critical infrastructure. _International Journal of Engineering, Business and
Management, VIII_ (3), 1-8. Retrieved from
https://aipublications.com/uploads/issue_files/1IJEBM-SEP20242-Predictive.p
df

Apache. (2023). _Apache Software Foundation._ Retrieved from Apache Airflow
Documentation: https://airflow.apache.org

Asana. (n.d.). _What is Kanban_. Retrieved from Asana:
https://asana.com/es/resources/what-is-kanban

Atchison, L. (2016). _Architecting for Scale: High Availability for Your Growing
Applications._ O’Reilly Media, Inc.

AVEVA. (n.d.). _AVEVA PI SYSTEM_. Retrieved from AVEVA:
https://www.aveva.com/es-es/products/aveva-pi-system

Bishop, C. M. (2006). _Pattern Recognition and Machine Learning._ Springer.

Castellón, N. (2024). _Machine learning algorithms: los algoritmos predictivos pueden
anticipar fallos antes de que sucedan, optimizando así el mantenimiento y
reduciendo tiempos de inactividad [Post]._ Retrieved from LinkedIn.:


```
https://www.linkedin.com/posts/naren-castellon-1541b8101_machine-learning-
algorithms-los-algoritmos-activity-7256495304617734144-FkjD
```
Coursera. (2023, Diciembre 15). _¿Qué es Python? Guía para principiantes sobre el
uso de Python_. Retrieved from Coursera:
https://www.coursera.org/mx/articles/what-is-python-used-for-a-beginners-guid
e-to-using-python

Datision. (2023, 12 19). _¿Cómo la IA revoluciona el mantenimiento predictivo en la
Industria 4.0?_ Retrieved from Datision:
https://datision.com/blog/como-la-inteligencia-artificial-revoluciona-el-manteni
miento-predictivo-en-la-industria-4-0/

Development, G. P. (2024). _PostgreSQL_. Retrieved from PostgreSQL: The world’s
most advanced open source database: https://www.postgresql.org/

Docs, M. W. (2024). _CSS Basics_. Retrieved from MND:
https://developer.mozilla.org/en-US/docs/Web/CSS

Docs, M. W. (n.d.). _MDN Web Docs._ Retrieved from JavaScript:
https://developer.mozilla.org/es/docs/Web/JavaScript

Downey, A., Elkner, J., & Meyers., C. (2002). _Aprenda a pensar como un
programador con Python._ Green Tea Press.

Duque, R. G. (2015). _Python para todos_ (Primera ed.). Otros. Retrieved from
https://www.ingebook.com/ib/NPcd/IB_BooksVis?cod_primaria=1000187&codi
go_libro=7167

Foundation, A. S. (2024). _Apache Cassandra: A scalable NoSQL database_. Retrieved
from Apache Cassandra: https://cassandra.apache.org/_/index.html


Frontegg. (2023, Septiembre 8). _OAuth vs. JWT: What Is the Difference? Can You
Use Them Together?_ Retrieved from Frontegg:
https://frontegg.com/blog/oauth-vs-jwt

García, F. (2018). _La investigación tecnológica._ Mexico: Editorial Limusa.

Géron, A. (2019). _Hands-On Machine Learning with Scikit-Learn, Keras, and
TensorFlow.._ O’Reilly Media.

Gichoya, D., & Walji, M. (2020). _Implementing artificial intelligence in thermoelectric
generators: A review. International Journal of Scientific Research in
Engineering and Technology._ Retrieved from Implementing artificial intelligence
in thermoelectric generators: A review. International Journal of Scientific
Research in Engineering and Technology:
https://ijsret.com/wp-content/uploads/2020/11/IJSRET_V6_issue6_817.pdf

Gilfillan, I. (2003). _La Biblia de MySQL._ Anaya Multimedia.

Goodfellow, I., Bengio, Y., & Courville, A. (2016). _Deep Learning.._ MIT Press.

Hastie, T., Tibshirani, R., & Friedman, J. (2009). _The Elements of Statistical Learning:
Data Mining, Inference, and Prediction._ Springer.

Haverbeke, M. (2018). _Eloquent JavaScript: Una introducción moderna a la
programación_ (Tercera ed.). Retrieved from
https://eloquentjs-es.thedojo.mx/Eloquent_JavaScript.pdf

Hernández-Sampieri, R., Collado, C. F., & Lucio, M. d. ( 2014 ). _Metodología de la
Investigación_ (Sexta ed.). McGraw-Hill Education.

IBM. (2022). _XML for Data Architects_. Retrieved from IBM: https://www.ibm.com/docs


IBM. (2024). _ETL_. Retrieved from IBM: https://www.ibm.com/mx-es/topics/etl

IBM. (2024). _PostgreSQL: Una base de datos de código abierto avanzada_. Retrieved
from ¿Qué es PostgreSQL?: https://www.ibm.com/mx-es/topics/postgresql

IBM. (2024). _Qué es y cómo funciona. IBM_. Retrieved from MongoDB:
https://www.ibm.com/mx-es/topics/mongodb

IBM. (2025). _¿Qué es Scikit-Learn (Sklearn)?_ Retrieved from IBM :
https://www.ibm.com/think/topics/scikit-learn#Components+of+scikit-learn

Idrees., H. (2024, Octubre 22). _K-Means vs. DBSCAN: Clustering Algorithms for
Grouping Data._ Retrieved from Medium:
https://medium.com/@hassaanidrees7/k-means-vs-dbscan-clustering-algorith
ms-for-grouping-data-a4969034cfcc

Intelequia. (2024). _Intelequia._ Retrieved from ¿Qué es Microsoft SQL Server y para
qué sirve?:
https://intelequia.com/es/blog/post/qu%C3%A9-es-microsoft-sql-server-y-para-
qu%C3%A9-sirve

IONOS. (n.d.). _Diagrama de componentes: ¿qué es y para qué sirve?_ Retrieved from
IONOS Digital Guide:
https://www.ionos.com/es-us/digitalguide/paginas-web/desarrollo-web/diagram
a-de-componentes/

IONOS. (n.d.). _Diagrama de estado UML: explicación y ejemplos_. Retrieved from
IONOS Digital Guide.:
https://www.ionos.com/es-us/digitalguide/paginas-web/desarrollo-web/diagram
a-de-estado-uml/


IONOS. (n.d.). _Diagramas de actividades UML: explicación y ejemplos_. Retrieved
from IONOS Digital Guide.:
https://www.ionos.com/es-us/digitalguide/paginas-web/desarrollo-web/diagram
as-de-actividades-uml/

Kendall, K. E., & Kendall, J. E. (2018). _Análisis y Diseño de Sistemas_ (Octava ed.).
Prentice Hal.

Keyrus. (n.d.). _Modelos predictivos y el sector energético._ Retrieved from Keyrus:
https://keyrus.com/sp/es/insights/modelos-predictivos-y-el-sector-energetico

Kim, D., Park, J., & Lee, S. (2023). Machine learning-based optimization of
segmented thermoelectric power generators. _Applied Energy_ , 121850.
Retrieved from
https://www.sciencedirect.com/science/article/pii/S0306261923015805

Kubernetes. (2023). _Kubernetes.io_. Retrieved from Concepts Overview.:
https://kubernetes.io/docs/concepts/overview/

Kumar, V. (2022). _Machine Learning in Python for Process Systems Engineering._
Elsevier.

Lamer, A., Saint-Dizier, C., Paris, N., & Chazard., E. (2024). Data Lake, Data
Warehouse, Datamart, and Feature Store: Their Contributions to the Complete
Data Reuse Pipeline. _JMIR Medical Informatics., XII_.
doi:https://doi.org/10.2196/54590

Lincoln, N. K. (2005). _The Sage Handbook of Qualitative Research._ SAGE
Publications.

LLC, G. (n.d.). _Angular: The modern web developer's platform_. Retrieved from
Angular: The modern web developer's platform: https://angular.dev/


Maida, E. G., & Pacienzia, J. (2015). _Metodologías de desarrollo de software._
Retrieved from Repositorio Institucional UCA.:
https://repositorio.uca.edu.ar/bitstream/123456789/522/1/metodologias-desarr
ollo-software.pdf

Malhotra, A. Ñ., & Bedi, R. (2020). Implementing Artificial Intelligence in
Thermoelectric Generators: A Review of Data Science Applications in
Enhancing Efficiency and Security. _International Journal of Scientific Research
& Engineering Trends, VI|_ (6), 3742–3747. Retrieved from
https://ijsret.com/wp-content/uploads/2020/11/IJSRET_V6_issue6_817.pdf

Marqués, M. (2010). _Bases de datos._ Universitat Jaume I.

McKinney, W. (2012). _Python for Data Analysis: Data Wrangling with Pandas,
NumPy, and IPython.._ O’Reilly Media.

Meier, A., & Kaufmann, M. (2019). _SQL & NoSQL Databases: Models, Languages,
Consistency Options and Architectures for Big Data Management._ Springer
Vieweg.

Miro. (n.d.). _¿Qué es un diagrama de objetos UML?_ Retrieved from Miro:
https://miro.com/es/diagrama/que-es-diagrama-objetos-uml/

Mistral. (2023). _Definición de arquitectura Data Warehouse._ Retrieved from Mistral
BS.: https://www.mistralbs.com/blog/definicion-arquitectura-data-warehouse/

Mobley, R. K. (2002). _An Introduction to Predictive Maintenance._
Butterworth-Heinemann.

MongoDB. (2024). _What is MongoDB?_ Retrieved from MongoDB:
https://www.mongodb.com/es/company/what-is-mongodb


Mozilla. (n.d.). _¿Qué es JavaScript?_ Retrieved from MDN Web Docs:
https://developer.mozilla.org/es/docs/Learn_web_development/Core/Scripting/
What_is_JavaScript

Müller, A. C., & Guido, S. (2016). _Introduction to Machine Learning with Python._
O’Reilly Media.

Nadareishvili, I., Mitra, R., McLarty, M., & & Amundsen, M. (2016). _Microservice
Architecture: Aligning Principles, Practices, and Culture._ O’Reilly Media, Inc.

NiFi, A. (2024). _Apache NiFi_. Retrieved from Documentation Overview.:
https://nifi.apache.org/docs.html

OpenWebinars. (2024). _¿Qué es MySQL?_ Retrieved from OpenWebinars:
https://openwebinars.net/blog/que-es-mysql/

OpenWebinars. (2024). _What is nodejs_. Retrieved from OpenWebinars:
https://openwebinars.net/blog/que-es-nodejs/

Peersman, G. (2014). _Sinopsis: Métodos de recolección y análisis de datos en la
evaluación de impacto: Síntesis metodológica - Sinopsis de la evaluación de
impacto n° 10._ Methodological Briefs.

Pickl.AI. (2024). _AI in Time Series Forecasting: Transforming Predictive Analytics._.
Retrieved from Pickl.AI: https://www.pickl.ai/blog/ai-time-series-forecasting/

Plan de Recuperación, T. y.-G. (2023). _¿Qué es la Inteligencia Artificial?_. Retrieved
from Plan de Recuperación, Transformación y Resiliencia - Gobierno de
España.:
https://planderecuperacion.gob.es/noticias/que-es-inteligencia-artificial-ia-prtr

Pressman, R. S. (2010). _Ingeniería del software: Un enfoque práctico._ McGraw-Hill.


Ramos, E. V., & Fuentes., P. H.-M. (2016). _Introducción a TypeScript._ Retrieved from
https://blog.educalix.com/wp-content/uploads/2023/03/Manual-TypeScript.pdf

Rouhiainen, L. (2018). _Inteligencia artificial: 101 cosas que debes saber hoy sobre
nuestro futuro._ Alienta Editorial.

Russell, S., & Norvig, P. (2020). _Artificial Intelligence: A Modern Approach_ (Cuarta
ed.). Pearson.

SDi. (n.d.). _Docker y CI/CD_. Retrieved from SDi:
https://www.sdi.es/tecnologias/docker-y-ci-cd/

Seaborn. (2024). _Seaborn Pydata_. Retrieved from Seaborn:
https://seaborn.pydata.org/

Software, F. P. (n.d.). _Python 3 documentation_. Retrieved from Python 3
documentation: https://docs.python.org/3/

Solis-Mora, V. S., & Gruezo-Valencia, D. F. (n.d.). _La Inteligencia Artificial (IA) al
servicio de la eficiencia energética en el Ecuador._ Retrieved from La
Inteligencia Artificial (IA) al servicio de la eficiencia energética en el Ecuador.:
Universidad Luis Vargas Torres.

Sommerville, I. (2011). _Ingeniería de Software_ (Novena ed.). Pearson.

Stephens, R. (2015). _Beginning software engineering._ John Wiley & Sons.

Sutton, R. S., & Barto, A. G. (2018). _Reinforcement Learning: An Introduction._ MIT
Press.

Team, A. (n.d.). _Alt Team_. Retrieved from What is Next.js? The React Framework for
Production: https://alt-team.com/blogs/what-is-next-js/


Team, V. (n.d.). _Introduction to Vue.js_. Retrieved from Vue.js:
https://vuejs.org/guide/introduction

Technologies, P. (2023). _Prefect Technologies_. Retrieved from Prefect documentation:
https://docs.prefect.io

TechTarget. (n.d.). _Go-programming-language_. Retrieved from TechTarget:
https://www.techtarget.com/searchitoperations/definition/Go-programming-lang
uage

Tecnobuildings. (n.d.). _Tecnobuilding_. Retrieved from Tecnobuildings

_Tecnologías de Información_. (n.d.). Retrieved from Modelos de datos:
https://www.tecnologias-informacion.com/modelos-datos.html

Torres, M. (n.d.). _Métodos de recolección de datos para una investigación._ Retrieved
from Universidad de Guadalajara:
https://biblioteca.udgvirtual.udg.mx/jspui/bitstream/123456789/2817/1/M%C3%
A9todos%20de%20recolecci%C3%B3n%20de%20datos%20para%20una%20
investigaci%C3%B3n.pdf

Turing. (s.f.). _FastAPI vs Flask: A detailed comparison_. Retrieved from Turing Blog.:
https://www.turing.com/kb/fastapi-vs-flask-a-detailed-comparison

Tyagi, A. K., Tiwari, S., & Soni, G. (2024). _Data Analytics and Artificial Intelligence for
Predictive Maintenance in Smart Manufacturing._ CRC Press.

Valbuena, D. F. (2020, Abril 3). Esquemas en Data Warehousing. _Data Management_.
Retrieved from
https://datamanagement.es/2020/04/03/esquemas-data-warehousing/

Vercel. (n.d.). _Next.js Documentation._ Retrieved from Vercel: https://nextjs.org/docs


Vercel. (n.d.). _React Foundations: What is React and Next.js?_ Retrieved from Next.js:
https://nextjs.org/learn/react-foundations/what-is-react-and-nextjs

Vijayalakshmi, S., Lather, S., Balusamy, B., & Dhanaraj, R. K. (2023). _AI-powered IoT
in the energy industry: Digital technology and sustainable energy systems._
Springer.

Villamizar, M., Garces, O., Castro, H., Verano, M., Salamanca, L., Casallas, R., & &
Gil, S. (2015). Evaluating the monolithic and the microservice architecture
pattern to deploy web applications in the cloud. _Computing Colombian
Conference (10CCC), 2015 10th_ , (pp. 583–590).

W3C. (n.d.). _HTML Standard_. Retrieved from W3C: https://html.spec.whatwg.org/

Wohlwend, B. (2023, julio 23). _Decision Tree, Random Forest, and XGBoost: An
Exploration into the Heart of Machine Learning._ Retrieved from Medium:
https://medium.com/@brandon93.w/decision-tree-random-forest-and-xgboost-
an-exploration-into-the-heart-of-machine-learning-90dc212f4948

Wolff, E. (2016). _Microservices: Flexible Software Architectures._ CreateSpace
Independent Publishing Platform.

Wolff, E. (2017). _A Practical Guide to Continuous Delivery._ Addison-Wesley
Professional.



### LISTA DE ACRÓNIMOS

### API

```
Application Programming Interface
```
**AE-LSTM** Autoencoder de Memoria a Corto y Largo Plazo

**DGA** Análisis de Gases Disueltos (Dissolved Gas Analysis)

**ETL** Extracción, Transformación y Carga

**EDA** Análisis Exploratorio de Datos (Exploratory Data
Analysis)

**IA** Inteligencia Artificial

**IF** Isolation Forest (Algoritmo de Machine Learning)

**JWT** JSON Web Token

**ML** Machine Learning (Aprendizaje Automático)

**NOSQL** Non-structured Query Lenguage

**OLTC** Conmutador de Tomas bajo Carga (On-Load Tap
Changer

**PI System** AVEVA PI System (Plataforma de recolección de datos)

**PI Web API** Interfaz de Programación Web PI System

**RUL** Vida Útil Remanente (Remaining Useful Life


**SRL** Sociedad de Responsabilidad Limitada

**SQL** Structured Query Lenguage



### GLOSARIO DE TÉRMINOS

### API:

Conjunto de definiciones y protocolos
que permiten la comunicación entre
diferentes sistemas o aplicaciones.

**Arquitectura Medallion:**

**Feature Engineering:**

Un patrón de diseño de datos
estructurado en capas (Bronze, Silver,
Gold) para mejorar la calidad y la

```
gobernanza del dato, desde la ingesta
cruda (Bronze) hasta los datos listos para
el consumo y análisis (Gold).
```
```
Proceso de creación de nuevas variables
(características) a partir de los datos
existentes. En el proyecto, incluye la
construcción de métricas como gradientes
térmicos y factores de carga para
enriquecer el modelo predictivo.
```
**Machine Learning:**
Rama de la inteligencia artificial que se
enfoca en el desarrollo de algoritmos que
pueden aprender y hacer predicciones a
partir de datos sin intervención humana
directa.

**Mantenimiento Predictivo:**

**Modelo de aprendizaje supervisado:**

```
Estrategia de mantenimiento que utiliza
técnicas de análisis predictivo para
anticipar fallos en los equipos antes de
```

que ocurran, mejorando la disponibilidad y
reduciendo los costos de mantenimiento.

```
Tipo de modelo de Machine Learning en el
que el sistema es entrenado utilizando
datos etiquetados, es decir, datos que ya
contienen la respuesta correcta.
```
**Modelo de aprendizaje no supervisado:**

**PI System:**

```
Un tipo de inteligencia artificial que
identifica patrones y estructuras en datos
sin etiquetar, sin necesidad de supervisión
humana ni de etiquetas predefinido.
```
```
Plataforma utilizada para la recolección y
análisis de datos operacionales en tiempo
real. Es fundamental para el monitoreo de
variables clave de los transformadores
eléctricos y otros equipos industriales.
```
### `


### `


### ANEXO “A”: DATOS OPERATIVOS DE UN TRANSFORMADOR ELÉCTRICO

### `


### `


### `


### `


### `


### `


### ANEXO B. ARQUITECTURA DOCUMENTACIÓN AVEVA PI SYSTEM

### `


### `


### ANEXO C. ENTREVISTA

### `


### `


### `


### `


### `


### ANEXO D. REPORTE TR01

### `


### ANEXO E. FICHA TÉCNICA DEL TRANSFORMADOR

### `


### ANEXO F. ANÁLISIS DE LAS VARIABLES DEL TRANSFORMADOR

### `


### `


### `


### `


### `


### `


### ANEXO G. TABLA DE HONORARIOS PROFESIONALES EN TECNOLOGÍAS DE

### LA INFORMACIÓN

### `


### `


### `


### `


### `


### `


### ANEXO H. DISEÑO DE BAJO NIVEL PRESENTADO POR LA EMPRESA

### `


### `


### `


