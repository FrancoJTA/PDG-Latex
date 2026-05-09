# Fuentes y verificaciones pendientes para desarrollar el perfil

Este documento resume los puntos que deben investigarse, verificarse o aprobarse antes de considerar completo el perfil de proyecto de grado en `formato/main.tex`.

## Prioridad alta

### 1. Diagrama Ishikawa o árbol del problema

**Sección afectada:** §2 Antecedentes del Problema.

El texto actual describe el diagrama con tres ejes: procesamiento pasivo del contenido, homogeneización del proceso educativo y deterioro de la atención. Esta descripción debe verificarse contra el contenido real de `imagenes/ishikawa.png`.

**Qué investigar o revisar:**

- Leer todos los textos, causas y subcausas del diagrama real.
- Confirmar si los tres ejes nombrados existen con esos nombres.
- Verificar si falta alguna causa principal.
- Ajustar el párrafo para que coincida exactamente con la figura.

**Fuente principal:** `imagenes/ishikawa.png`.

### 2. Objeto de estudio

**Sección afectada:** §2.2 Objeto de Estudio.

El objeto de estudio fue definido como una combinación entre proceso de estudio y personalización educativa. Esta opción evita reducir el proyecto solo al sistema de software y mantiene el centro en el problema real del estudiante.

**Texto seleccionado:**

> El proceso de estudio autónomo de los estudiantes de último año de colegio en Santa Cruz de la Sierra, considerando su organización, adaptación al nivel individual, verificación de comprensión y consolidación del conocimiento mediante herramientas digitales adaptativas.

**Por qué se usa este enfoque:**

- Enfoca el problema en cómo estudian los estudiantes, no solo en cómo aprenden en abstracto.
- Conecta directamente con la solución adaptativa: ruta personalizada, dificultad progresiva, verificación de comprensión y repasos.
- Sigue siendo adecuado para Ingeniería de Sistemas porque permite desarrollar y validar una plataforma web.
- Evita que el objeto de estudio sea únicamente la aplicación, que corresponde mejor a la propuesta de solución.

**Pendiente:** validar la redacción final con el tutor y comprobar que coincida con la delimitación y el objetivo general.

### 3. Delimitación de la investigación

**Sección afectada:** §5 Delimitación de la Investigación.

La delimitación fue definida para la gestión 2026, desde abril hasta diciembre, manteniendo el foco en el desarrollo y validación funcional de una plataforma web adaptativa.

**Definición aplicada:**

- Temática: desarrollo de una plataforma web de aprendizaje adaptativo para personalizar el estudio autónomo mediante grafos de conocimiento, modelo de usuario, dificultad progresiva, verificación de comprensión y repasos automáticos.
- Espacial: Santa Cruz de la Sierra, Bolivia, con validación inicial en estudiantes del Colegio Cardenal Cushing.
- Temporal: gestión 2026, período abril-diciembre.

**Pendiente:** validar con el tutor si el Colegio Cardenal Cushing debe quedar nombrado formalmente o si conviene dejarlo como "una unidad educativa de Santa Cruz de la Sierra".

## Prioridad media

### 4. Instrumentos de investigación

**Sección afectada:** §7.3.2 Instrumentos.

Los instrumentos fueron creados a partir de las técnicas mencionadas, pero no están explícitos en el texto fuente.

**Instrumentos actuales:**

- Guías de entrevista semiestructurada.
- Cuestionarios de usabilidad.
- Fichas de revisión bibliográfica.
- Matrices de análisis comparativo.

**Qué investigar o definir:**

- Qué instrumentos se usarán realmente.
- Si habrá encuestas, entrevistas, pruebas de usuario, revisión documental o evaluación técnica.
- Si cada instrumento corresponde a una técnica declarada.

**Fuentes a consultar:** metodología del Capítulo I, guía institucional y plan de validación del sistema.

### 5. Población y muestra

**Sección afectada:** §7.4 Población y Muestra.

El texto fue reformulado desde la sección de fuentes de información. Se agregó el término "muestreo no probabilístico por conveniencia".

**Qué verificar:**

- Confirmar la población: estudiantes de último año de colegio en Santa Cruz de la Sierra.
- Confirmar la muestra: estudiantes del Colegio Cardenal Cushing.
- Definir cantidad estimada de participantes.
- Confirmar si corresponde usar muestreo no probabilístico por conveniencia.

**Fuentes a consultar:** metodología de investigación, acceso real a participantes y aprobación del tutor.

### 6. Cronograma

**Sección afectada:** §10 Cronograma.

El cronograma fue derivado en cuatro fases, pero no existe en el Capítulo I original.

**Fases actuales:**

- Marzo-mayo: grafo de conocimiento y modelo de usuario.
- Junio-julio: motor de dificultad progresiva.
- Agosto-septiembre: algoritmo de espaciado y retroalimentación.
- Octubre-diciembre: integración, pruebas y validación con usuarios.

**Qué confirmar:**

- Fechas reales del proyecto.
- Duración de cada fase.
- Entregables por fase.
- Si el cronograma debe representarse como tabla o diagrama de Gantt.

**Fuentes a consultar:** planificación académica, calendario institucional y alcance técnico real.

## Prioridad baja

### 7. Desarrollo del marco teórico

**Sección afectada:** §9 Marco Teórico.

El Marco Teórico del perfil fue desarrollado en `formato/main.tex` con subsecciones sobre ciencias cognitivas, aprendizaje adaptativo, grafos de conocimiento e ingeniería de software.

**Puntos desarrollados:**

- Teoría del procesamiento de la información.
- Curva del olvido y repetición espaciada.
- Aprendizaje adaptativo.
- Grafos de conocimiento.
- Modelos de usuario en sistemas educativos.
- Retroalimentación inmediata y tutoría inteligente.
- Ingeniería de software para plataformas web.

**Fuentes citadas en el perfil:** Atkinson, Ebbinghaus, Cepeda, Roediger, Sweller, Bloom, VanLehn, Corbett, Brusilovsky, Hogan, Chen, Sommerville y Pressman.

### 8. Referencias bibliográficas citadas

**Sección afectada:** §11 Referencias Bibliográficas.

El perfil ya cita fuentes adicionales dentro del Marco Teórico para que aparezcan en la bibliografía impresa.

**Citas incorporadas:**

- Ciencias cognitivas: `atkinson1968`, `ebbinghaus1913`, `cepeda2006`, `roediger2006`, `sweller1988`.
- Aprendizaje adaptativo: `bloom1984`, `vanlehn2011`, `corbett1994`, `brusilovsky2007`.
- Grafos de conocimiento: `hogan2021`, `chen2018`.
- Ingeniería de software: `sommerville2016`, `pressman2014`.

**Pendiente:** revisar si el tutor exige más desarrollo sobre arquitectura web, UX o accesibilidad en esta sección.

## Referencias bibliográficas sugeridas

Esta lista combina fuentes ya presentes en `referencias.bib` con fuentes adicionales que conviene revisar o agregar. Úsalas para respaldar el marco teórico, la comparación con plataformas existentes y la metodología técnica del sistema.

### Libros y capítulos base

- Atkinson, R. C., & Shiffrin, R. M. (1968). *Human memory: A proposed system and its control processes*. Útil para fundamentar el modelo de procesamiento de la información. Ya está en `referencias.bib` como `atkinson1968`.
- Ebbinghaus, H. (1913). *Memory: A Contribution to Experimental Psychology*. Útil para explicar la curva del olvido. Ya está en `referencias.bib` como `ebbinghaus1913`.
- Sommerville, I. (2016). *Software Engineering* (10th ed.). Útil para metodología de desarrollo, requerimientos y validación técnica. Ya está en `referencias.bib` como `sommerville2016`.
- Pressman, R. S., & Maxim, B. R. (2014). *Software Engineering: A Practitioner's Approach* (8th ed.). Útil para justificar desarrollo incremental, pruebas y documentación. Ya está en `referencias.bib` como `pressman2014`.
- Dunlosky, J. (2009). *Metacognition: A Textbook for Cognitive, Educational, Life Span and Applied Psychology*. Útil para ampliar metacognición, autorregulación y evaluación del propio aprendizaje.

### Artículos científicos

- Cepeda, N. J., Pashler, H., Vul, E., Wixted, J. T., & Rohrer, D. (2006). Distributed practice in verbal recall tasks: A review and quantitative synthesis. *Psychological Bulletin, 132*(3), 354-380. Útil para repetición espaciada. Ya está en `referencias.bib` como `cepeda2006`.
- Bloom, B. S. (1984). The 2 sigma problem: The search for methods of group instruction as effective as one-to-one tutoring. *Educational Researcher, 13*(6), 4-16. Útil para justificar la personalización frente a la enseñanza grupal. Ya está como `bloom1984`.
- VanLehn, K. (2011). The relative effectiveness of human tutoring, intelligent tutoring systems, and other tutoring systems. *Educational Psychologist, 46*(4), 197-221. Útil para tutoría inteligente y retroalimentación. Ya está como `vanlehn2011`.
- Corbett, A. T., & Anderson, J. R. (1994). Knowledge tracing: Modeling the acquisition of procedural knowledge. *User Modeling and User-Adapted Interaction, 4*(4), 253-278. Útil para modelo de usuario y seguimiento de dominio. Ya está como `corbett1994`.
- Brusilovsky, P., & Millán, E. (2007). User models for adaptive hypermedia and adaptive educational systems. En *The Adaptive Web*. Útil para aprendizaje adaptativo y modelos de usuario. Ya está como `brusilovsky2007`.
- Wang, S., et al. (2024). *A survey of knowledge graph approaches and applications in education*. Útil para justificar grafos de conocimiento en educación. Revisar y agregar a `referencias.bib`.
- Akindele, A. T., & Ojo, S. O. (2025). *Knowledge graphs for domain-specific teaching and learning: A systematic review of the construction models and evaluation methods*. Útil para construcción y evaluación de grafos educativos. Revisar y agregar si el tutor acepta fuentes recientes.

### Casos y plataformas comparables

- Khan Academy Help Center. *How do Khan Academy's Mastery levels work?* Útil para describir aprendizaje por dominio, niveles de dominio y seguimiento de progreso.
- Khan Academy Help Center. *What are Course and Unit Mastery?* Útil para explicar cómo una plataforma existente organiza progreso por curso/unidad.
- Anki Manual. *Background*. Útil para explicar active recall, repetición espaciada y revisión cerca del olvido.
- Duolingo Blog. *What is spaced repetition, and why is it good for learning?* Útil como caso aplicado de repetición espaciada y práctica personalizada.
- Duolingo Research. *Spaced Repetition Data*. Útil como caso de datos reales para algoritmos de memoria y predicción de recuerdo.
- Duolingo Blog. *How does Duolingo measure effectiveness?* Útil para comparar criterios de eficacia educativa, engagement y uso real.

### Páginas técnicas y documentación

- Brown, S. *The C4 model for visualising software architecture*. Útil para documentar arquitectura con diagramas de contexto, contenedores y componentes.
- Object Management Group. *Unified Modeling Language (UML)*. Útil para respaldar el uso de UML en análisis y diseño.
- OpenStax. *Metacognition*. Útil como fuente abierta para explicar autorregulación, conciencia del aprendizaje y estudio activo.
- OpenStax. *Psychology*. Útil como apoyo general para memoria, aprendizaje y procesos cognitivos.

### Ciencias cognitivas — recuperación y dificultades deseables

- Roediger, H. L., & Karpicke, J. D. (2006). Test-enhanced learning: Taking memory tests improves long-term retention. *Psychological Science, 17*(3), 249-255. DOI: 10.1111/j.1467-9280.2006.01693.x. Útil para justificar la verificación de comprensión activa (testing effect) frente a la relectura pasiva.
- Bjork, R. A. (1994). Memory and metamemory considerations in the training of human beings. En Metcalfe, J. & Shimamura, A. P. (Eds.), *Metacognition: Knowing about knowing* (pp. 185-205). MIT Press. Útil para el concepto de dificultades deseables (desirable difficulties) que fundamenta el motor de dificultad progresiva.
- Craik, F. I. M., & Lockhart, R. S. (1972). Levels of processing: A framework for memory research. *Journal of Verbal Learning and Verbal Behavior, 11*(6), 671-684. DOI: 10.1016/S0022-5371(72)80001-X. Útil para el argumento de que el procesamiento profundo genera mejor retención que el superficial.

### Ciencias cognitivas — carga cognitiva y aprendizaje multimedia

- Sweller, J. (1988). Cognitive load during problem solving: Effects on learning. *Cognitive Science, 12*(2), 257-285. DOI: 10.1207/s15516709cog1202_4. Útil para justificar por qué el sistema debe controlar la cantidad de información presentada simultáneamente.
- Mayer, R. E. (2009). *Multimedia Learning* (2nd ed.). Cambridge University Press. Útil para los principios de diseño de la interfaz del sistema: cómo presentar texto, gráficos y ejercicios sin saturar al estudiante.

### Algoritmos de repetición espaciada

- Wozniak, P. A. (1990). *Optimization of learning*. Tesis de grado, Universidad Técnica de Poznan. Útil para el algoritmo SM-2, que es la base del sistema de Anki y el punto de partida estándar para cualquier implementación de espaciado.
- Settles, B., & Meeder, B. (2016). A trainable spaced repetition model for language learning. En *Proceedings of the 54th Annual Meeting of the ACL* (pp. 1848-1858). DOI: 10.18653/v1/P16-1174. Útil para el modelo Half-Life Regression de Duolingo, que predice cuándo el estudiante olvidará una respuesta usando datos reales.

### Grafos de conocimiento

- Hogan, A., Blomqvist, E., Cochez, M., d'Amato, C., Melo, G., Gutierrez, C., ... & Zimmermann, A. (2021). Knowledge graphs. *ACM Computing Surveys, 54*(4), 1-37. DOI: 10.1145/3447772. Útil como referencia base para la definición formal y los tipos de grafos de conocimiento.
- Chen, P., Lu, Y., Zheng, V. W., & Pian, Y. (2018). KnowEdu: A system to construct knowledge graph for education. *IEEE Access, 6*, 31553-31563. DOI: 10.1109/ACCESS.2018.2839607. Útil como caso de implementación de grafo de conocimiento en un dominio educativo.
- Pan, J. Z., Razniewski, S., Kalo, J. C., Singhania, S., Chen, J., Dietze, S., ... & Tresp, V. (2024). Large language models and knowledge graphs: Opportunities and challenges. *Transactions on Graph Data and Knowledge, 1*(1). DOI: 10.4230/TGDK.1.1.2. Útil para justificar el uso de LLMs para la generación automática del grafo de conocimiento.

### Seguimiento del conocimiento y modelos de usuario avanzados

- Piech, C., Bassen, J., Huang, J., Ganguli, S., Sahami, M., Guibas, L., & Ngiam, J. (2015). Deep knowledge tracing. En *Advances in Neural Information Processing Systems 28* (NIPS 2015). Útil como extensión moderna de Corbett & Anderson 1994: utiliza redes neuronales recurrentes para modelar el estado de conocimiento del estudiante.
- Anderson, J. R., Corbett, A. T., Koedinger, K. R., & Pelletier, R. (1995). Cognitive tutors: Lessons learned. *Journal of the Learning Sciences, 4*(2), 167-207. DOI: 10.1207/s15327809jls0402_2. Útil como caso de referencia de un sistema tutor cognitivo completo basado en modelos de usuario.
- Woolf, B. P. (2009). *Building Intelligent Interactive Tutors: Student-centered Strategies for Revolutionizing E-learning*. Morgan Kaufmann. Útil como libro de referencia comprensivo sobre sistemas tutores inteligentes.

### Arquitectura de software

- Martin, R. C. (2017). *Clean Architecture: A Craftsman's Guide to Software Structure and Design*. Prentice Hall. Útil para justificar la separación de capas y la independencia de los módulos del sistema.
- Bass, L., Clements, P., & Kazman, R. (2021). *Software Architecture in Practice* (4th ed.). Addison-Wesley. Útil para decisiones de arquitectura, atributos de calidad y tácticas de diseño.
- Fielding, R. T. (2000). *Architectural Styles and the Design of Network-based Software Architectures* (Doctoral dissertation). University of California, Irvine. Útil para la definición formal de REST, que es el estilo de API que probablemente usará el sistema.
- Newman, S. (2015). *Building Microservices: Designing Fine-grained Systems*. O'Reilly. Útil si se evalúa una arquitectura de microservicios frente a monolítica.

### Experiencia de usuario

- Nielsen, J. (1994). *Usability Engineering*. Morgan Kaufmann. Útil para los principios heurísticos de usabilidad que guiarán el diseño de la interfaz.
- Norman, D. A. (2013). *The Design of Everyday Things* (Revised ed.). Basic Books. Útil para los principios de diseño centrado en el usuario y retroalimentación de la interfaz.

### Dónde usar estas fuentes en el perfil

- §1 Introducción: Khan Academy, Anki y Duolingo como plataformas comparables.
- §2 Antecedentes: fuentes sobre aprendizaje pasivo (Craik & Lockhart), memoria (Atkinson, Ebbinghaus), retroalimentación (Roediger & Karpicke) y personalización (Bloom).
- §5 Delimitación — Temática: Sweller para carga cognitiva, Brusilovsky para sistemas adaptativos.
- §7 Diseño Metodológico: Sommerville y Pressman para desarrollo incremental, pruebas y validación.
- §9 Marco Teórico — Ciencias cognitivas: Atkinson, Ebbinghaus, Cepeda, Bjork, Craik & Lockhart, Roediger & Karpicke, Sweller.
- §9 Marco Teórico — Aprendizaje adaptativo: Bloom, VanLehn, Corbett, Brusilovsky, Anderson et al., Woolf, Piech et al.
- §9 Marco Teórico — Grafos de conocimiento: Hogan et al., Chen et al., Pan et al., Wang et al., Akindele & Ojo.
- §9 Marco Teórico — Algoritmos de espaciado: Ebbinghaus, Cepeda, Wozniak, Settles & Meeder.
- §9 Marco Teórico — Ingeniería de software: Sommerville, Pressman, Martin, Bass et al., Fielding.
- §9 Marco Teórico — UX: Nielsen, Norman, W3C WCAG.
- §10 Cronograma: Pressman o Sommerville para justificar fases incrementales.
