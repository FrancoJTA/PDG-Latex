<!-- Conversión automática de ejemplo-capitulos-1-2.docx (solo texto; tablas aplanadas a párrafos, sin figuras). Referencia de FORMA y tono, no de contenido. -->

UNIVERSIDAD PRIVADA DEL VALLEFACULTAD DE INFORMÁTICA Y ELECTRÓNICA     CARRERA DE LICENCIATURA EN INGENIERÍA DE SISTEMAS INFORMÁTICOS UNIVERSIDAD PRIVADA DEL VALLEFACULTAD DE INFORMÁTICA Y ELECTRÓNICA     CARRERA DE LICENCIATURA EN INGENIERÍA DE SISTEMAS INFORMÁTICOS

UNIVERSIDAD PRIVADA DEL VALLE

FACULTAD DE INFORMÁTICA Y ELECTRÓNICA

CARRERA DE LICENCIATURA EN INGENIERÍA DE SISTEMAS INFORMÁTICOS

UNIVERSIDAD PRIVADA DEL VALLE

FACULTAD DE INFORMÁTICA Y ELECTRÓNICA

CARRERA DE LICENCIATURA EN INGENIERÍA DE SISTEMAS INFORMÁTICOS

PLATAFORMA WEB PARA LA GESTIÓN DE HISTORIA CLÍNICA, CONSULTAS E INTERNACIONES EN LA CLÍNICA SAN SALVADOR

PROYECTO DE GRADO PARA OPTARAL TÍTULO DE LICENCIATURA EN INGENIERÍA DE SISTEMAS

POSTULANTE: PEDRO RENATO ESCOBAR ORTUÑO

TUTOR: ING. ROMEL SOLIZ VARGAS

Santa Cruz – Bolivia

2026

DEDICATORIA

[Este espacio está reservado para tu dedicatoria personal. A continuación se propone un texto de referencia que puedes conservar, modificar o reemplazar por completo.]

A mis padres, por sostener con su esfuerzo diario cada etapa de mi formación y por enseñarme que la constancia vale más que el talento. Su ejemplo de trabajo y de integridad es la base sobre la que se apoya este logro.

A quienes acompañaron de cerca las jornadas largas y las decisiones difíciles de estos años, por la paciencia y la confianza que nunca faltaron.

AGRADECIMIENTOS

[Este espacio está reservado para tus agradecimientos. A continuación se propone un texto de referencia que puedes ajustar libremente.]

A la Universidad Privada del Valle y al plantel docente de la Carrera de Ingeniería de Sistemas Informáticos, por la formación técnica y el criterio profesional transmitidos a lo largo de la carrera.

Al Ing. Romel Soliz Vargas, tutor del presente proyecto, por la orientación metodológica y las observaciones que dieron forma y rigor a este trabajo.

A la Clínica San Salvador de Santa Cruz de la Sierra, por abrir sus puertas al relevamiento de información y por la disposición de su personal médico y administrativo para compartir el funcionamiento real de sus procesos.

A mis compañeros de carrera, por el apoyo técnico mutuo y por hacer más llevaderos los semestres más exigentes.

GRACIAS

RESUMEN

La Clínica San Salvador, una clínica privada mediana de Santa Cruz de la Sierra, lleva su historia clínica en papel: entre 70.000 y 80.000 expedientes en sobres manila para atender a entre 15 y 30 pacientes por día con 10 a 12 médicos en tres turnos. De ahí salen cuatro problemas documentados. El expediente no siempre está cuando se lo necesita, y un vaciado interno encontró cerca de cien historias duplicadas por extravío del original. La consulta externa no deja rastro de quién hizo qué entre turnos. La internación se sigue de forma verbal en el relevo. Y el diagnóstico, escrito a mano en texto libre, no se puede explotar: el reporte de morbilidad que la clínica envía al Sistema Nacional de Información en Salud, codificado en CIE-10, se arma revisando sobres uno por uno.

El proyecto propone una plataforma web de uso interno que trata el expediente como un documento con validez legal. Integra consulta externa, historia clínica e internaciones con control de acceso por roles que respeta el secreto médico de la Ley N° 3131, y aplica las reglas de la gestión documental: el episodio cerrado no se modifica, las correcciones van por adenda, cada acceso queda en una bitácora inalterable y el original se conserva.

El componente tecnológico emergente estructura el contenido clínico. Un modelo de lenguaje preentrenado en español médico, ajustado sobre un corpus anotado con CIE-10, reconoce las menciones de enfermedad y propone el código con un valor de confianza para que el profesional lo confirme. De ahí salen el reporte de morbilidad automático, la búsqueda por diagnóstico y la estadística del establecimiento. Todo corre en el servidor de la clínica. La validación se hará con usuarios reales, midiendo la exactitud de la codificación contra un conjunto codificado a mano.

Palabras clave: Historia Clínica Electrónica, Gestión Documental Clínica, Codificación Automática CIE-10, Procesamiento de Lenguaje Natural Clínico, Reconocimiento de Escritura Manuscrita, Secreto Médico.

ABSTRACT

Clínica San Salvador, a mid-sized private clinic in Santa Cruz de la Sierra, keeps its medical records on paper: between 70,000 and 80,000 files in manila envelopes, serving 15 to 30 patients a day with 10 to 12 physicians over three shifts. Four documented problems follow. The record is not always there when needed, and an internal audit found close to a hundred duplicate files created after the original went missing. Outpatient care leaves no trace of who did what across shifts. Inpatient follow-up is handed over verbally. And the diagnosis, handwritten in free text, cannot be exploited: the morbidity report the clinic submits to the National Health Information System, coded in ICD-10, is compiled by going through envelopes one at a time.

The project proposes an internal web platform that treats the record as a legally valid document. It integrates outpatient care, medical records and inpatient admissions under role-based access control that respects the medical confidentiality of Law No. 3131, and applies records-management rules: a closed episode cannot be edited, corrections go through addenda, every access is logged in an unalterable audit trail, and the original is preserved.

The emerging technology component structures clinical content. A language model pretrained on Spanish medical text and fine-tuned on an ICD-10 annotated corpus identifies disease mentions and proposes the code with a confidence value for the professional to confirm. From that follow the automatic morbidity report, search by diagnosis and facility-level statistics. Everything runs on the clinic’s own server. Validation will be carried out with real users, measuring coding accuracy against a manually coded reference set.

Keywords: Electronic Health Record, Clinical Records Management, Automatic ICD-10 Coding, Clinical Natural Language Processing, Handwritten Text Recognition, Medical Confidentiality.

ÍNDICE DE CONTENIDO

INTRODUCCIÓN

CAPÍTULO I

PLANTEAMIENTO DEL PROBLEMA

1.1.ANTECEDENTES3

1.1.1.ANTECEDENTES INSTITUCIONALES3

1.1.2.ANTECEDENTES TECNOLÓGICOS3

1.1.3.ANTECEDENTES INVESTIGATIVOS4

1.2.DESCRIPCIÓN DE LA SITUACIÓN PROBLEMÁTICA5

1.2.1.DESCRIPCIÓN DEL CONTEXTO5

1.2.2.ACTORES INVOLUCRADOS5

1.2.3.PROCESOS ACTUALES5

1.2.4.RECURSOS TECNOLÓGICOS ACTUALES6

1.2.5.PROBLEMAS IDENTIFICADOS6

1.3.FORMULACIÓN DEL PROBLEMA10

1.4.SISTEMATIZACIÓN DEL PROBLEMA10

1.5.OBJETIVOS10

1.5.1.OBJETIVO GENERAL10

1.5.2.OBJETIVOS ESPECÍFICOS11

1.6.JUSTIFICACIÓN11

1.6.1.JUSTIFICACIÓN TÉCNICA11

1.6.2.JUSTIFICACIÓN ECONÓMICA12

1.6.3.JUSTIFICACIÓN SOCIAL13

1.6.4.JUSTIFICACIÓN ACADÉMICA13

1.7.ALCANCES Y LIMITACIONES14

1.7.1.ALCANCE FUNCIONAL14

1.7.2.ALCANCE TECNOLÓGICO16

1.7.3.ALCANCE INSTITUCIONAL16

1.7.4.LIMITACIONES16

1.8.DELIMITACIÓN DEL PROYECTO17

1.8.1.DELIMITACIÓN TEMPORAL17

1.8.2.DELIMITACIÓN ESPACIAL17

1.8.3.DELIMITACIÓN TEMÁTICA17

1.8.4.DELIMITACIÓN TECNOLÓGICA17

CAPÍTULO II

MARCO TEÓRICO Y REFERENCIAL

2.1.FUNDAMENTOS DE INGENIERÍA DE SISTEMAS18

2.1.1.SISTEMAS Y TEORÍA GENERAL DE SISTEMAS18

2.1.2.INGENIERÍA DE SISTEMAS18

2.1.3.SISTEMAS DE INFORMACIÓN18

2.1.4.CALIDAD DEL SOFTWARE20

2.2.FUNDAMENTOS DEL ÁREA ESPECÍFICA21

2.2.1.SISTEMAS DE INFORMACIÓN EN SALUD21

2.2.1.1.Concepto y características21

2.2.1.2.La salud digital como política pública22

2.2.1.3.Tipología de los sistemas de información en salud23

2.2.1.4.La historia clínica electrónica23

2.2.1.5.Interoperabilidad y estándares de intercambio24

2.2.1.6.Modelos de información clínica: FHIR y openEHR25

2.2.1.7.Modelos de madurez de la historia clínica electrónica26

2.2.1.8.Adopción en países de ingresos medios27

2.2.1.9.Limitaciones del soporte físico27

2.2.2.GESTIÓN DOCUMENTAL Y EXPEDIENTE CLÍNICO28

2.2.2.1.Fundamentos de la gestión de documentos de archivo28

2.2.2.2.Características del documento de archivo29

2.2.2.3.Metadatos y ciclo de vida del documento29

2.2.2.4.Gestión de contenido empresarial30

2.2.2.5.Garantías del expediente clínico con valor probatorio31

2.2.2.6.Integridad verificable mediante encadenamiento criptográfico32

2.2.2.7.Firma digital y valor probatorio del documento electrónico en Bolivia34

2.2.2.8.Conservación, respaldo y equivalencias con la norma técnica35

2.2.3.PROCESAMIENTO DE LENGUAJE NATURAL CLÍNICO36

2.2.3.1.Definición y particularidades del lenguaje clínico36

2.2.3.2.La arquitectura Transformer y las representaciones contextuales37

2.2.3.3.Preentrenamiento y ajuste38

2.2.3.4.Reconocimiento de entidades nombradas39

2.2.3.5.Detección de negación y especulación40

2.2.3.6.Normalización de entidades41

2.2.3.7.Modelos de lenguaje en español clínico42

2.2.3.8.Aprendizaje por transferencia y ajuste fino43

2.2.3.9.Modelos de lenguaje de gran escala en el dominio clínico44

2.2.3.10.Extracción y clasificación frente a generación45

2.2.3.11.Métricas de evaluación en extracción y clasificación46

2.2.3.12.Confianza, calibración y umbrales de decisión47

2.2.3.13.Desidentificación de texto clínico48

2.2.4.TERMINOLOGÍAS CLÍNICAS Y CODIFICACIÓN AUTOMÁTICA49

2.2.4.1.Vocabularios controlados en salud49

2.2.4.2.La Clasificación Internacional de Enfermedades50

2.2.4.3.La codificación clínica como proceso51

2.2.4.4.Enfoques de codificación automática52

2.2.4.5.El corpus CodiEsp53

2.2.4.6.Arquitecturas de referencia para la clasificación multietiqueta53

2.2.4.7.Confirmación profesional y usos del dato codificado55

2.2.5.RECONOCIMIENTO DE ESCRITURA MANUSCRITA56

2.2.5.1.Captura, preprocesamiento y segmentación56

2.2.5.2.Fundamentos del reconocimiento de escritura56

2.2.5.3.Arquitectura y métricas58

2.2.5.4.Alcance del componente en el proyecto60

2.2.6.SEGURIDAD DE LA INFORMACIÓN EN SALUD61

2.2.6.1.Principios y marco de referencia61

2.2.6.2.Control de acceso basado en roles61

2.2.6.3.Autenticación y autorización62

2.2.6.4.Auditoría, no repudio y protección de datos63

2.2.6.5.Riesgos de aplicaciones web: el marco OWASP Top 1064

2.2.6.6.Protección de datos en tránsito y en reposo66

2.2.6.7.Privacidad desde el diseño66

2.3.TECNOLOGÍAS RELACIONADAS CON LA SOLUCIÓN67

2.3.1.ARQUITECTURA DE SOFTWARE67

2.3.2.LENGUAJES DE PROGRAMACIÓN69

2.3.3.MARCOS DE TRABAJO Y BIBLIOTECAS69

2.3.4.SISTEMA GESTOR DE BASE DE DATOS70

2.3.5.MODELOS DE APRENDIZAJE AUTOMÁTICO Y DESPLIEGUE71

2.4.METODOLOGÍAS Y MODELOS DE DESARROLLO73

2.4.1.METODOLOGÍAS TRADICIONALES73

2.4.2.METODOLOGÍAS ÁGILES E ITERATIVAS73

2.4.3.METODOLOGÍA SELECCIONADA74

2.5.MODELOS, ESTÁNDARES Y BUENAS PRÁCTICAS75

2.6.ESTADO DEL ARTE76

2.6.1.INVESTIGACIONES INTERNACIONALES77

2.6.2.INVESTIGACIONES Y EXPERIENCIAS NACIONALES79

2.6.3.SOLUCIONES TECNOLÓGICAS SIMILARES79

2.6.4.SÍNTESIS DEL ESTADO DEL ARTE80

2.7.MARCO CONCEPTUAL80

2.8.MARCO LEGAL Y NORMATIVO82

2.8.1.CONSTITUCIÓN POLÍTICA DEL ESTADO, ARTÍCULO 13082

2.8.2.LEY N° 3131 DEL EJERCICIO PROFESIONAL MÉDICO83

2.8.3.DECRETO SUPREMO N° 2856283

2.8.4.LEY N° 164 DE TELECOMUNICACIONES Y TIC84

2.8.5.NORMA TÉCNICA PARA EL MANEJO DEL EXPEDIENTE CLÍNICO84

2.8.6.LEY N° 1080 DE CIUDADANÍA DIGITAL85

2.8.7.NORMATIVA DEL SISTEMA NACIONAL DE INFORMACIÓN EN SALUD85

2.8.8.REFERENCIAS NORMATIVAS INTERNACIONALES86

2.8.9.SÍNTESIS: DEL ORDENAMIENTO A LAS DECISIONES DE DISEÑO86

REFERENCIAS BIBLIOGRÁFICAS

ÍNDICE DE FIGURAS

Figura 1.1. Diagrama de Ishikawa6

Figura 1.2. Árbol del problema9

Figura 1.3. Diagrama de la solución planteada15

ÍNDICE DE TABLAS

La presente versión del documento no registra tablas de datos numéricos; la información cualitativa se presenta en cuadros, cuyo índice figura a continuación.

ÍNDICE DE CUADROS

Cuadro 2.1. Tipología de sistemas de información en salud y alcance del proyecto23

Cuadro 2.2. Características del documento de archivo y su implementación en el sistema29

Cuadro 2.3. Garantías documentales del expediente clínico electrónico32

Cuadro 2.4. Vocabularios controlados en salud y su uso en el proyecto49

Cuadro 2.5. Matriz de acceso por rol en el sistema propuesto62

Cuadro 2.6. Riesgos OWASP Top 10:2021 y controles adoptados65

Cuadro 2.7. Comparación de patrones arquitectónicos68

Cuadro 2.8. Normas y estándares adoptados en el proyecto75

Cuadro 2.9. Trabajos relacionados y su relación con el proyecto76

Cuadro 2.10. Correspondencia entre exigencia normativa y decisión de diseño86

LISTA DE SIGLAS Y ABREVIATURAS

ADSIB: Agencia para el Desarrollo de la Sociedad de la Información en Bolivia

API: Application Programming Interface (interfaz de programación de aplicaciones)

ATT: Autoridad de Regulación y Fiscalización de Telecomunicaciones y Transportes

CER: Character Error Rate (tasa de error a nivel de carácter)

CIE-10: Clasificación Internacional de Enfermedades, décima revisión

CIE-11: Clasificación Internacional de Enfermedades, undécima revisión

CNN: Convolutional Neural Network (red neuronal convolucional)

CPE: Constitución Política del Estado

CTC: Connectionist Temporal Classification (clasificación temporal conexionista)

ECM: Enterprise Content Management (gestión de contenido empresarial)

EMRAM: Electronic Medical Record Adoption Model (modelo de adopción de historia clínica electrónica)

FHIR: Fast Healthcare Interoperability Resources (estándar de intercambio de información clínica)

HCE: Historia Clínica Electrónica

HCEU: Historia Clínica Electrónica Unificada

HTR: Handwritten Text Recognition (reconocimiento de escritura manuscrita)

JSON: JavaScript Object Notation (formato de intercambio de datos)

JWT: JSON Web Token (token web en formato JSON)

LSTM: Long Short-Term Memory (memoria a corto y largo plazo, tipo de red recurrente)

NER: Named Entity Recognition (reconocimiento de entidades nombradas)

OMS: Organización Mundial de la Salud

ONNX: Open Neural Network Exchange (formato abierto de intercambio de modelos)

OPS: Organización Panamericana de la Salud

ORM: Object-Relational Mapping (mapeo objeto-relacional)

OWASP: Open Worldwide Application Security Project

PLN: Procesamiento de Lenguaje Natural

RBAC: Role-Based Access Control (control de acceso basado en roles)

REST: Representational State Transfer (estilo de arquitectura para servicios web)

SIS: Sistema de Información en Salud

SNIS: Sistema Nacional de Información en Salud

SQL: Structured Query Language (lenguaje de consultas estructurado)

SUS: System Usability Scale (escala de usabilidad del sistema)

TIC: Tecnologías de la Información y Comunicación

TLS: Transport Layer Security (protocolo de seguridad de la capa de transporte)

UML: Unified Modeling Language (lenguaje unificado de modelado)

UX: User Experience (experiencia de usuario)

ViT: Vision Transformer

WER: Word Error Rate (tasa de error a nivel de palabra)

## INTRODUCCIÓN

En cualquier establecimiento de salud, la historia clínica es el documento que hace posible que un médico sepa lo que otro hizo antes. Cuando ese documento está en papel, guardado en un sobre dentro de un archivo que crece todos los días, encontrarlo a tiempo se vuelve un problema en sí mismo. La Clínica San Salvador, un establecimiento privado de mediana escala de Santa Cruz de la Sierra, trabaja de esa manera desde su fundación y hoy administra entre 70.000 y 80.000 expedientes físicos.

Las consecuencias son conocidas por su personal. Hay consultas en las que el expediente no aparece y el médico atiende sin antecedentes; hay pacientes con dos historias clínicas porque la primera se extravió y se abrió otra; y hay cambios de turno en internación que dependen de lo que una enfermera le cuenta a la siguiente. A eso se suma algo menos visible: como el diagnóstico se escribe a mano y en texto libre, la clínica no puede saber cuántos casos de dengue atendió en febrero sin revisar los sobres uno por uno. Y ese conteo no es opcional, porque el Sistema Nacional de Información en Salud exige reportarlo codificado según la Clasificación Internacional de Enfermedades.

El propósito de este proyecto es desarrollar una plataforma web de uso interno que resuelva esas cuatro situaciones. La plataforma administra el expediente como un documento con validez legal, es decir, con reglas que impiden alterar lo ya registrado y que dejan rastro de cada acceso; integra los procesos de consulta externa, historia clínica e internación; y agrega un componente que lee el texto que escribe el médico, identifica las menciones de enfermedad y propone el código CIE-10 que les corresponde, para que el profesional lo confirme con un clic en lugar de buscarlo en un catálogo.

El alcance se limita a la Clínica San Salvador y a los tres procesos mencionados. Quedan fuera la facturación, la integración con seguros y cualquier acceso externo de pacientes. El componente de inteligencia artificial se restringe deliberadamente a tareas de extracción y clasificación; no genera texto clínico, por razones que se explican en el capítulo II.

Metodológicamente, el trabajo es una investigación aplicada con enfoque mixto. Se relevan los procesos actuales mediante entrevistas, observación y análisis de los formularios en uso; se construye la solución por incrementos; y se la valida con usuarios reales midiendo, entre otras cosas, la exactitud de la codificación automática frente a un conjunto codificado a mano por personal de la clínica.

Se espera obtener una plataforma operativa en los tres procesos, un expediente único por paciente que elimine la duplicación, un registro auditable de cada acción, y un reporte de morbilidad que se genere a partir de los datos en lugar de reconstruirse revisando papel. Se espera también un resultado medido sobre qué tan bien funciona un modelo de lenguaje en español clínico sobre las notas reales de un establecimiento boliviano, que es un dato que hoy no existe.

Esta versión del documento comprende los dos primeros capítulos. El primero plantea el problema: antecedentes, descripción de la situación, formulación, objetivos, justificación y alcance. El segundo reúne el marco teórico y referencial, desde los sistemas de información en salud hasta el marco legal boliviano, pasando por la gestión documental, el procesamiento de lenguaje natural clínico y las terminologías médicas. Los capítulos siguientes, en desarrollo, abordarán el marco metodológico, el análisis y diseño de la solución y su validación.

CAPÍTULO I

PLANTEAMIENTO DEL PROBLEMA

### ANTECEDENTES

#### ANTECEDENTES INSTITUCIONALES

La Clínica San Salvador es un establecimiento privado de salud ubicado en la ciudad de Santa Cruz de la Sierra. Opera con cinco consultorios activos y un equipo de entre 10 y 12 médicos distribuidos en tres turnos, y atiende entre 15 y 30 pacientes por día, con picos en febrero y marzo asociados a los brotes de dengue y chikungunya. Mantiene además un promedio de 5 a 10 pacientes internados de forma simultánea.

Toda su gestión documental clínica se realiza en papel. Cada paciente tiene un sobre manila identificado con un código correlativo, y el archivo completo se estima entre 70.000 y 80.000 expedientes. El único sistema informático en uso registra el código del paciente y sus datos de filiación básicos; no contiene información clínica. Cuando un paciente llega, recepción busca el sobre en el archivo, lo entrega al consultorio y lo vuelve a archivar al terminar la consulta.

Hace algunos años la propia clínica hizo un vaciado interno de datos y encontró alrededor de 100 historias clínicas duplicadas: pacientes con dos códigos y dos sobres distintos, normalmente porque el primero no se encontró en su momento y se abrió uno nuevo. Ese hallazgo fue lo que motivó al establecimiento a buscar una solución informática, y es el origen directo de este trabajo.

#### ANTECEDENTES TECNOLÓGICOS

La historia clínica electrónica no es una novedad. En los países de ingresos altos su adopción es amplia y hay evidencia de que mejora la seguridad en la medicación y la coordinación entre profesionales, aunque con resultados que varían bastante según cómo esté diseñado cada sistema (Li et al., 2022). En América Latina el panorama es desigual: los grandes hospitales y las redes públicas de Chile, Colombia o Brasil tienen sistemas consolidados, mientras que las clínicas privadas medianas suelen seguir en papel, frenadas por el costo de las licencias comerciales, por la infraestructura que exigen y por el problema de qué hacer con décadas de archivo manuscrito.

En Bolivia, el antecedente local más cercano es el de la Clínica Foianini, también en Santa Cruz de la Sierra, que implementó una historia clínica electrónica unificada y consolidó una base de datos con más de diez años de información (Saluddigital, 2025). Ese caso demuestra que es viable hacerlo en el mismo contexto regulatorio y geográfico; pero se trata de un establecimiento mucho más grande, con capacidad de inversión y equipo técnico propio, lo que deja abierta la pregunta de cómo hacerlo en una clínica de la escala de San Salvador.

Un rasgo común de las soluciones disponibles, tanto comerciales como las implementadas localmente, es que se detienen en la digitalización: reemplazan el sobre por una pantalla, pero el diagnóstico sigue siendo texto libre. Eso resuelve la disponibilidad del expediente y deja intacto el problema de explotar su contenido. No se ha identificado ninguna experiencia en el país que incorpore procesamiento de lenguaje natural en español clínico para estructurar el contenido registrado y vincularlo a la clasificación de enfermedades vigente.

#### ANTECEDENTES INVESTIGATIVOS

Desde el lado de la investigación, el problema de asignar automáticamente códigos de la Clasificación Internacional de Enfermedades a partir de texto clínico tiene una trayectoria larga, sobre todo en inglés. Para el español, el punto de inflexión fue la tarea compartida CodiEsp de CLEF eHealth 2020, en la que un equipo del Barcelona Supercomputing Center publicó un corpus de mil casos clínicos anotados manualmente con códigos de diagnóstico y procedimiento, incluyendo el fragmento de texto que sustenta cada código (Miranda-Escalada et al., 2020). Ese recurso permitió que la investigación en codificación automática en español tuviera por primera vez un punto de comparación común.

Poco después, el mismo grupo publicó los primeros modelos de lenguaje entrenados desde cero sobre texto biomédico y clínico en español (Carrino et al., 2022). Uno de ellos, bsc-bio-ehr-es, fue preentrenado con más de mil millones de palabras de literatura biomédica y con un corpus de historias clínicas reales, y está disponible con licencia abierta. Para un proyecto como este, eso significa que no hay que construir el modelo: hay que adaptarlo.

También existe evidencia reciente sobre lo que no conviene hacer. Williams et al. (2025) evaluaron modelos de lenguaje de gran escala generando resúmenes de encuentros de urgencias sobre cien visitas reales, y encontraron que el 42% de los resúmenes contenía información inventada y el 47% omitía datos clínicamente relevantes. Ese resultado pesó en la decisión de este proyecto de usar modelos de lenguaje únicamente para extraer y clasificar, nunca para redactar.

Por último, en el terreno del reconocimiento de escritura manuscrita, Romein et al. (2025) muestran que adaptar un motor preentrenado a un conjunto de documentos específico mediante ajuste fino es la vía habitual, y que la cantidad de ejemplos necesaria es manejable. Esto es relevante porque la clínica dispone de decenas de miles de formularios manuscritos que deben incorporarse de alguna manera al sistema nuevo.

### DESCRIPCIÓN DE LA SITUACIÓN PROBLEMÁTICA

#### DESCRIPCIÓN DEL CONTEXTO

La clínica atiende consulta externa en cinco consultorios y mantiene un área de internación con capacidad para alrededor de diez pacientes. El personal se distribuye en tres turnos, de modo que un mismo paciente internado puede ser visto por tres médicos distintos en un día y ser atendido por otras tantas enfermeras. Recepción funciona como puerta de entrada de todos los procesos: registra la llegada, busca el expediente y coordina con el consultorio.

El archivo físico ocupa un ambiente propio y está ordenado por código correlativo. Los expedientes más antiguos tienen décadas y muestran deterioro. La búsqueda es manual: se localiza el número, se extrae el sobre y se lleva al consultorio. Al final del día los sobres usados vuelven al archivo, aunque no siempre el mismo día ni al mismo lugar.

#### ACTORES INVOLUCRADOS

Cuatro grupos de personas intervienen en la gestión de la historia clínica. El personal de recepción, unas tres personas, registra pacientes, busca y archiva expedientes, y coordina las citas con especialistas a llamado. El personal de enfermería, alrededor de cinco personas, toma signos vitales en consulta externa y lleva el control de medicación y evolución en internación. Los médicos, entre 10 y 12, registran diagnósticos, indicaciones y recetas, y deciden las internaciones y las altas. Por último, uno o dos administradores supervisan la operación y son quienes, cuando toca, arman el reporte de morbilidad para el Sistema Nacional de Información en Salud.

El paciente es el beneficiario final, pero no interactúa con el sistema propuesto; su relación con el expediente es indirecta, a través de la atención que recibe y de los documentos que se le entregan, como la receta.

#### PROCESOS ACTUALES

En consulta externa, el paciente llega, recepción lo identifica por nombre o por código y busca su sobre. Si lo encuentra, lo pasa al consultorio; si no, el médico atiende sin antecedentes y en muchos casos se abre un expediente nuevo. Enfermería toma los signos vitales y los anota en una hoja que se agrega al sobre. El médico escribe motivo de consulta, exploración, diagnóstico e indicaciones en el formulario preimpreso, redacta la receta en un talonario aparte y la entrega al paciente. La receta no siempre queda copiada en el expediente. Al terminar, el sobre vuelve a recepción para su archivo.

En internación, el médico decide el ingreso y se abre una hoja de evolución. Cada turno registra en esa hoja los controles y la medicación administrada, pero el estado general del paciente, las indicaciones vigentes y la fecha estimada de alta se transmiten sobre todo de forma verbal en el cambio de turno. La hoja de internación se guarda separada del expediente principal y se une a él al alta, cuando se une.

El reporte de morbilidad se prepara periódicamente. Alguien del área administrativa recorre los expedientes del período, lee el diagnóstico manuscrito de cada consulta, lo interpreta y le asigna un código CIE-10 buscándolo en el catálogo. El resultado es una planilla que se envía al SNIS. No queda registro de qué texto originó cada código, así que una revisión posterior tendría que rehacer todo el trabajo.

#### RECURSOS TECNOLÓGICOS ACTUALES

La clínica cuenta con computadoras en recepción y en administración, conectividad a internet y una red local básica. Los consultorios no tienen equipo informático dedicado a la atención. El sistema en uso es una aplicación sencilla de registro de pacientes que asigna el código correlativo y guarda datos de filiación; no maneja información clínica ni se conecta con nada más. No existe servidor propio ni personal técnico permanente, aunque hay disposición a incorporar un equipo servidor de propósito general para alojar la solución.

#### PROBLEMAS IDENTIFICADOS

De la descripción anterior se desprenden cuatro problemas, que se muestran en el diagrama de Ishikawa de la Figura 1.1 agrupados por su origen.

Figura 1.1. Diagrama de Ishikawa

Fuente: Elaboración propia, 2026.

El primero es la disponibilidad del expediente. Recepción dedica unos diez minutos por paciente a buscar y archivar el sobre; con 15 a 30 pacientes diarios, eso representa entre dos horas y media y cinco horas al día de una tarea que no aporta nada a la atención. Y cuando la búsqueda falla, el efecto es peor que la demora: el médico atiende a ciegas y se genera un duplicado.

El segundo es la trazabilidad de la consulta externa. Con médicos que rotan por turno, la continuidad depende de que lo que escribió uno sea legible y esté disponible para el siguiente. La caligrafía varía, no hay un formato uniforme, y las recetas se pierden. La información existe, pero está dispersa y no se puede reconstruir el recorrido de un paciente sin esfuerzo.

El tercero es el seguimiento de las internaciones. Con cinco a diez internados y tres turnos, la transmisión verbal en el relevo es un punto de pérdida de información recurrente, y las hojas de internación separadas del expediente principal impiden que médico y enfermería compartan una misma vista del paciente.

El cuarto es de otra naturaleza: no tiene que ver con el soporte sino con el formato del dato. Aunque se resolvieran los tres anteriores, el diagnóstico seguiría siendo texto libre, escrito de forma distinta por cada médico y sin relación con ningún vocabulario controlado. El establecimiento no puede contar casos, agrupar diagnósticos equivalentes ni producir el reporte de morbilidad sin hacerlo a mano. Es un problema de cumplimiento normativo y también de gestión: la clínica no conoce su propio perfil de morbilidad.

Los cuatro problemas se encadenan. La búsqueda manual explica los duplicados; los duplicados fragmentan el historial y agravan la falta de trazabilidad; y esa falta de trazabilidad, sumada al diagnóstico sin estructurar, es lo que hace inviable cualquier explotación agregada de la información. El árbol de problemas de la Figura 1.2 resume causas y efectos. Una solución que sólo digitalizara el archivo resolvería el primero y dejaría los otros tres como están.

Figura 1.2. Árbol del problema

Fuente: Elaboración propia, 2026.

### FORMULACIÓN DEL PROBLEMA

¿Cómo mejorar la gestión de historia clínica, consultas e internaciones en la Clínica San Salvador de Santa Cruz de la Sierra durante la gestión 2026, mediante el desarrollo de un sistema web de gestión documental clínica que incorpore la estructuración automática del contenido registrado en texto libre y su codificación conforme a la Clasificación Internacional de Enfermedades?

### SISTEMATIZACIÓN DEL PROBLEMA

¿Cuáles son las características del proceso actual de gestión de historia clínica, consulta externa e internación en la Clínica San Salvador, y en qué puntos concretos se producen la pérdida de disponibilidad, la falta de trazabilidad y la duplicación de expedientes?

¿Qué requisitos funcionales y no funcionales debe cumplir una plataforma web para sustituir ese proceso, considerando la estructura mínima de la historia clínica que fija el Decreto Supremo N° 28562 y el principio de secreto médico de la Ley N° 3131?

¿Qué arquitectura de software permite integrar un núcleo de gestión clínica con servicios de procesamiento de lenguaje natural y de reconocimiento de escritura, sin que estos últimos afecten la operación cotidiana del establecimiento?

¿Qué garantías debe ofrecer el sistema para que el expediente electrónico conserve el valor probatorio que la norma reconoce al documento en papel?

¿Con qué exactitud puede un modelo de lenguaje preentrenado en español clínico, ajustado sobre un corpus anotado con códigos CIE-10, proponer el código correspondiente a los diagnósticos redactados por los médicos de la clínica?

¿En qué medida la plataforma desarrollada mejora los indicadores del proceso —tiempo de localización del expediente, duplicación, tiempo de preparación del reporte de morbilidad— respecto de la situación inicial?

### OBJETIVOS

#### OBJETIVO GENERAL

Desarrollar una plataforma web para la gestión de historia clínica, consultas e internaciones en la Clínica San Salvador de Santa Cruz de la Sierra, con el fin de mejorar la disponibilidad oportuna de la información clínica, la trazabilidad del proceso de atención y la explotación del contenido clínico registrado mediante su estructuración y codificación automática, durante la gestión 2026.

#### OBJETIVOS ESPECÍFICOS

Diagnosticar el proceso actual de gestión de historia clínica, consulta externa e internaciones de la Clínica San Salvador mediante entrevistas semiestructuradas, observación directa y análisis documental, para identificar los requisitos funcionales y no funcionales de la plataforma.

Diseñar la arquitectura del sistema bajo el patrón de monolito modular con servicios de procesamiento desacoplados, incluyendo el modelo de datos conforme al Decreto Supremo N° 28562, el esquema de control de acceso por roles, los mecanismos de integridad y trazabilidad documental, y los prototipos de interfaz.

Construir los módulos de consulta externa, historia clínica e internaciones, con control de acceso por roles conforme al principio de secreto médico de la Ley N° 3131, empleando FastAPI y PostgreSQL en el servidor y Next.js en el cliente, bajo un enfoque iterativo e incremental.

Desarrollar el servicio de estructuración automática del contenido clínico mediante el ajuste fino de un modelo de lenguaje preentrenado en español médico, para el reconocimiento de menciones de enfermedad y su vinculación a códigos CIE-10, e incorporar el archivo histórico en papel al expediente electrónico mediante reconocimiento de escritura con validación humana obligatoria.

Validar la plataforma con usuarios reales de la clínica mediante pruebas funcionales y no funcionales, midiendo la exactitud de la codificación automática frente a un conjunto codificado manualmente y el cumplimiento de los requisitos establecidos.

### JUSTIFICACIÓN

#### JUSTIFICACIÓN TÉCNICA

La solución se apoya en una arquitectura de monolito modular con servicios de procesamiento separados. Se eligió porque la clínica no tiene personal técnico para operar un sistema distribuido, y porque un solo proceso desplegable es más fácil de respaldar y de mantener. Al mismo tiempo, las inferencias de los modelos de lenguaje y de reconocimiento de escritura tardan segundos o minutos y consumirían recursos que la atención necesita, así que corren en procesos aparte y se comunican con el núcleo de forma asíncrona. Si uno de esos servicios se cae, la consulta sigue; lo que se pierde es una función complementaria, no el registro.

El expediente se trata como un documento con valor probatorio y no como una tabla más. Un episodio cerrado no se puede editar; las correcciones se agregan como adendas con autor y fecha; nada se borra físicamente; y cada lectura y escritura queda en una bitácora que ni el administrador puede modificar, con encadenamiento criptográfico entre asientos para que cualquier alteración posterior sea detectable. Estas reglas no son un adorno: son lo que permite que el expediente electrónico sirva en un peritaje igual que servía el de papel.

El aporte técnico principal está en el componente de codificación. Se toma un modelo de lenguaje preentrenado en español clínico, disponible con licencia abierta, y se lo ajusta sobre un corpus público anotado con códigos CIE-10, para que reconozca en la nota del médico las menciones de enfermedad y proponga el código. El modelo no escribe nada: señala un fragmento y sugiere una etiqueta. Un componente que extrae y clasifica puede equivocarse al señalar, pero no puede afirmar algo que no estaba en el texto. Esa diferencia es la que hace aceptable usar inteligencia artificial sobre un documento médico.

El reconocimiento de escritura manuscrita se limita a los campos de indexación del archivo histórico: código, nombre, fecha y línea de diagnóstico. Son campos cortos, en posiciones fijas del formulario, y se pueden verificar contra el padrón de pacientes. Transcribir el texto clínico completo con estas técnicas produciría errores imposibles de detectar automáticamente, y por eso se descartó.

Todo el procesamiento se ejecuta en el servidor de la clínica. Ningún dato clínico sale a un servicio externo. Es una decisión de arquitectura que responde directamente a la Ley N° 3131 y que además evita depender de proveedores y de acuerdos de confidencialidad con terceros.

#### JUSTIFICACIÓN ECONÓMICA

El costo más visible del sistema actual es el tiempo del personal. Las dos horas y media a cinco horas diarias que recepción dedica a buscar y archivar sobres equivalen a entre un tercio y dos tercios de una jornada completa, todos los días, para una tarea que la plataforma elimina. A eso se agrega el tiempo administrativo de preparar el reporte de morbilidad expediente por expediente, y el costo menos cuantificable de las cien historias duplicadas: consultas hechas sin antecedentes, estudios repetidos, decisiones tomadas con información parcial.

El costo de la solución, en cambio, es bajo. La clínica ya tiene computadoras y conectividad; hace falta un servidor de propósito general, sin unidad de procesamiento gráfico dedicada, porque los modelos elegidos son codificadores de tamaño moderado. Las tecnologías —FastAPI, PostgreSQL, Next.js, el modelo bsc-bio-ehr-es y el corpus CodiEsp— son de código abierto con licencias permisivas. Una solución comercial equivalente de historia clínica electrónica puede superar los cinco mil dólares anuales en licencias, un costo que el desarrollo propio elimina.

Hay un tercer beneficio económico, indirecto: al tener los diagnósticos codificados, la clínica puede conocer la distribución de sus atenciones y planificar insumos y personal en función de datos y no de intuición, algo que hoy no es posible.

#### JUSTIFICACIÓN SOCIAL

Los primeros beneficiados son los pacientes de la clínica. Un expediente único y siempre disponible significa que el médico que los atiende conoce sus antecedentes, sus alergias y sus tratamientos previos, y que el cambio de turno en internación no depende de la memoria de nadie. Para pacientes con enfermedades crónicas, que vuelven periódicamente, la continuidad del expediente es una condición de calidad de la atención.

Los segundos son los alrededor de veinte usuarios internos del sistema —médicos, enfermeras, recepción y administración— cuyo trabajo diario se libera de una carga documental que hoy consume horas y genera fricción entre turnos.

A nivel sectorial, el proyecto deja un antecedente para otras clínicas privadas medianas de Santa Cruz de la Sierra que enfrentan la misma barrera de adopción. Mostrar que es posible digitalizar la gestión clínica, incluido el archivo manuscrito, sobre infraestructura existente y con herramientas abiertas, reduce la percepción de costo y complejidad que frena esa transición.

#### JUSTIFICACIÓN ACADÉMICA

El proyecto integra varias competencias de la Ingeniería de Sistemas Informáticos sobre un caso real. Desde la ingeniería de software, recorre el ciclo completo: relevamiento de requisitos, diseño de arquitectura, construcción y validación con usuarios, con la particularidad de que muchas decisiones de diseño responden a exigencias legales y no sólo técnicas. Desde las bases de datos, exige derivar un modelo relacional a partir de un decreto supremo y garantizar la integridad de un registro con valor probatorio. Desde la inteligencia artificial aplicada, requiere seleccionar y ajustar un modelo preentrenado, evaluarlo con métricas adecuadas e interpretar sus límites. Y desde la seguridad de la información, obliga a traducir el secreto médico en controles concretos.

Aporta además un criterio de diseño que va más allá del caso: limitar el uso de modelos de lenguaje a extracción y clasificación cuando el documento sobre el que operan tiene consecuencias jurídicas. Es un criterio fundamentado en evidencia publicada y aplicable a otros dominios.

### ALCANCES Y LIMITACIONES

#### ALCANCE FUNCIONAL

La plataforma cubre tres procesos. El módulo de consulta externa gestiona el ciclo completo de la atención ambulatoria, desde el registro de llegada hasta el cierre del episodio con diagnóstico, indicaciones y receta, dejando cada acción registrada con su autor y su hora. El módulo de historia clínica consolida el expediente único del paciente y muestra en una sola vista todas sus atenciones previas. El módulo de internaciones administra el seguimiento de los pacientes hospitalizados: evolución, indicaciones vigentes, medicación administrada y alta. Un panel administrativo completa el conjunto, con gestión de usuarios y roles, indicadores de operación y consulta de la bitácora de auditoría.

Sobre ese núcleo trabajan dos servicios de procesamiento. El primero, y central para el aporte del trabajo, lee el texto clínico de cada episodio cerrado, localiza las menciones de enfermedad y propone para cada una su código CIE-10 acompañado del fragmento que lo sustenta y de un valor de confianza. El médico confirma o corrige, y ambas cosas quedan guardadas. De esa codificación salen el reporte de morbilidad para el SNIS, la búsqueda clínica que entiende sinónimos y abreviaturas, y la explotación estadística del expediente. El segundo servicio aplica reconocimiento de escritura sobre los formularios históricos escaneados para extraer sus campos de indexación y hacerlos localizables, siempre con validación humana y conservando la imagen original vinculada al registro. La Figura 1.3 muestra la organización general de la solución.

Figura 1.3. Diagrama de la solución planteada

Fuente: Elaboración propia, 2026.

#### ALCANCE TECNOLÓGICO

El servidor se desarrolla en Python con FastAPI y persiste en PostgreSQL; el cliente es una aplicación web en Next.js. Los servicios de procesamiento usan el modelo bsc-bio-ehr-es ajustado sobre el corpus CodiEsp para la codificación, y un modelo de reconocimiento de escritura basado en transformadores visuales para la indexación del archivo. Todo se aloja en un servidor de la propia clínica; no se utilizan servicios en la nube ni interfaces externas de inteligencia artificial.

#### ALCANCE INSTITUCIONAL

El sistema se implementa y valida únicamente en la Clínica San Salvador de Santa Cruz de la Sierra, con su personal como usuarios. No se contempla el despliegue en otras sedes ni la generalización de los resultados a otros establecimientos, aunque la experiencia queda documentada para que pueda replicarse.

#### LIMITACIONES

Quedan fuera del alcance la facturación, la integración con seguros médicos, el acceso externo de los pacientes a su expediente, la gestión de imágenes diagnósticas y la de laboratorio. Son módulos que corresponden a otras categorías de sistema y cuya inclusión excedería el período de ejecución.

El componente de inteligencia artificial no genera texto clínico. La decisión se toma a partir de la evidencia sobre alucinaciones en resúmenes clínicos automáticos citada en los antecedentes, y se sostiene en el capítulo II.

El reconocimiento de escritura se limita a los campos de indexación del archivo, y su alcance definitivo depende del resultado de una prueba empírica sobre formularios reales de la clínica. Si el rendimiento no lo justifica, el archivo histórico se incorpora como imagen con indexación manual, sin afectar el resto del sistema.

El modelo de lenguaje fue preentrenado mayoritariamente sobre texto de origen español, y el corpus de ajuste procede de casos clínicos de literatura, no de formularios de consulta boliviana. Es esperable una distancia entre ese material y las notas reales de la clínica, que el ajuste sobre datos propios irá reduciendo con el uso.

El estudio se realiza sobre un único establecimiento y sin grupo de control. La comparación entre la situación inicial y la posterior a la intervención se interpreta como evidencia de mejora del proceso intervenido, no como demostración de causalidad generalizable.

### DELIMITACIÓN DEL PROYECTO

#### DELIMITACIÓN TEMPORAL

El trabajo se desarrolla durante la gestión 2026, entre marzo y noviembre. Los datos corresponden al período de operación actual de la clínica, y los formularios físicos empleados para la prueba de reconocimiento de escritura son los disponibles en el archivo durante la ejecución.

#### DELIMITACIÓN ESPACIAL

El relevamiento de requisitos y las pruebas de validación se realizan en las instalaciones de la Clínica San Salvador, en la ciudad de Santa Cruz de la Sierra, Bolivia.

#### DELIMITACIÓN TEMÁTICA

El proyecto se sitúa en la intersección de tres campos: los sistemas de información en salud, en particular la historia clínica electrónica; la gestión documental aplicada al expediente clínico; y el procesamiento de lenguaje natural en español clínico, con foco en el reconocimiento de entidades y su vinculación a la Clasificación Internacional de Enfermedades. Incluye, de forma acotada, el reconocimiento de escritura manuscrita para la migración del archivo. En lo normativo considera la Ley N° 3131, el Decreto Supremo N° 28562, el artículo 130 de la Constitución Política del Estado, la Ley N° 164 y la normativa del Sistema Nacional de Información en Salud.

#### DELIMITACIÓN TECNOLÓGICA

Se trabaja con software de código abierto y licencia permisiva: FastAPI, PostgreSQL y Next.js para la plataforma; el modelo bsc-bio-ehr-es y el corpus CodiEsp para la codificación; y una arquitectura de transformador visual con pérdida CTC para el reconocimiento de escritura. El despliegue es local, en un servidor de propósito general sin unidad de procesamiento gráfico dedicada.

CAPÍTULO II

MARCO TEÓRICO Y REFERENCIAL

Este capítulo reúne los conceptos, las técnicas y las normas en que se apoya el proyecto. Está organizado según el orden en que esos elementos intervienen en la solución. Se parte de los fundamentos generales de la ingeniería de sistemas; se pasa a los campos específicos del trabajo, que son los sistemas de información en salud, la gestión documental, el procesamiento de lenguaje natural clínico, las terminologías médicas y el reconocimiento de escritura; se describen después las tecnologías y la metodología de desarrollo elegidas, los estándares que se adoptan y el estado del arte; y se cierra con un marco conceptual breve y con el marco legal boliviano que condiciona todo lo anterior.

### FUNDAMENTOS DE INGENIERÍA DE SISTEMAS

#### SISTEMAS Y TEORÍA GENERAL DE SISTEMAS

Un sistema es un conjunto de elementos que interactúan entre sí para cumplir un propósito, dentro de un límite que lo separa de su entorno. La teoría general de sistemas, formulada por Bertalanffy a mediados del siglo XX, propuso estudiar ese tipo de organización de manera transversal a las disciplinas, observando que las propiedades relevantes de un sistema no están en sus partes aisladas sino en cómo se relacionan. De ahí se derivan nociones que siguen siendo útiles para describir cualquier sistema de información: entrada, proceso, salida, retroalimentación y entorno.

Vista así, una clínica es un sistema abierto. Recibe pacientes, produce atenciones, y genera como subproducto un registro de lo que hizo. Ese registro es a su vez la entrada de la siguiente atención del mismo paciente, y también la entrada de procesos externos como el reporte epidemiológico. Cuando el registro falla, falla la retroalimentación, y el sistema pierde la capacidad de aprender de su propia operación. El problema que se plantea en este trabajo puede leerse, en esos términos, como una falla de retroalimentación.

La formulación original de esta teoría se debe a Bertalanffy (1968), que la presentó como una reacción contra el método analítico clásico, el de descomponer un fenómeno en partes y estudiarlas por separado. Su argumento fue que hay propiedades que sólo aparecen cuando las partes están juntas y organizadas, y que esas propiedades son las que interesan cuando se estudia un organismo, una empresa o una sociedad. Introdujo además la distinción entre sistemas cerrados, que no intercambian nada con su entorno, y sistemas abiertos, que reciben entradas, las transforman y devuelven salidas, y que se mantienen precisamente gracias a ese intercambio.

Para un ingeniero de sistemas, lo útil de esa distinción es que obliga a mirar los límites. Dónde termina el sistema que se está diseñando y dónde empieza su entorno es una decisión, no un dato, y de esa decisión depende qué entradas se aceptan y qué salidas se prometen. En este proyecto, el límite del sistema encierra a la clínica y sus procesos de atención; el Sistema Nacional de Información en Salud queda afuera, como destino de una salida, y los pacientes quedan afuera también, como origen de las entradas. Trazar ese límite fue lo que permitió excluir el acceso externo de pacientes sin que el alcance se sintiera incompleto.

#### INGENIERÍA DE SISTEMAS

La ingeniería de sistemas es la disciplina que se ocupa de concebir, diseñar, construir y operar sistemas complejos de forma que cumplan su propósito dentro de restricciones de costo, tiempo y calidad. Su rasgo distintivo es el enfoque en el conjunto: no basta con que cada componente funcione, sino que deben hacerlo juntos, y las decisiones sobre uno afectan a los demás. En sistemas que involucran software, esta perspectiva se concreta en el ciclo de vida del desarrollo, que va desde la identificación de una necesidad hasta el retiro del sistema, pasando por la especificación, el diseño, la construcción, la verificación y el mantenimiento.

En este proyecto la perspectiva de conjunto es determinante por dos razones. La primera es que la solución tiene componentes de naturaleza muy distinta —una aplicación web transaccional y dos servicios de inferencia con modelos de aprendizaje automático— que deben convivir sin estorbarse. La segunda es que buena parte de los requisitos no vienen de los usuarios sino de normas legales, y hay que incorporarlos desde el diseño y no como parche posterior.

Sommerville (2016) describe el proceso de software como un conjunto de actividades que siempre están presentes, aunque el orden y el peso de cada una cambie según el modelo: la especificación, que define qué debe hacer el sistema y bajo qué restricciones; el diseño y la implementación, que lo construyen; la validación, que comprueba que hace lo que se especificó; y la evolución, que lo adapta cuando las necesidades cambian. El mismo autor distingue los procesos dirigidos por plan, en los que las actividades se planifican por adelantado y se mide el avance contra ese plan, de los procesos ágiles, en los que la planificación es incremental y el sistema se ajusta a medida que cambian los requisitos. Ninguno de los dos es mejor en abstracto; la elección depende de cuánto se conozcan los requisitos al empezar y de cuánto cueste equivocarse.

En la práctica de un proyecto como este, los dos procesos conviven. Hay partes que se conocen bien desde el inicio y que conviene planificar —la estructura de la historia clínica la fija un decreto, y no va a cambiar durante el desarrollo— y hay partes que sólo se descubren usando el sistema, como el orden en que un médico prefiere registrar una consulta. La metodología de desarrollo del proyecto combina ambos: planifica lo que está fijado por norma y deja abierto a la iteración lo que depende del uso.

#### SISTEMAS DE INFORMACIÓN

Un sistema de información es la combinación de personas, procesos, datos y tecnología que una organización emplea para capturar, almacenar, procesar y distribuir la información que necesita para operar y decidir. Los cuatro elementos importan por igual. Es habitual que un proyecto atienda sólo la tecnología y deje intactos los procesos; el resultado suele ser un sistema que reproduce en pantalla las mismas deficiencias que tenía en papel.

Los sistemas de información se clasifican de muchas maneras. Una distinción útil aquí es la que separa los sistemas transaccionales, que registran las operaciones cotidianas, de los sistemas de apoyo a la gestión, que explotan esos registros para producir indicadores y reportes. La plataforma propuesta es principalmente lo primero, pero uno de sus objetivos es habilitar lo segundo: que del registro transaccional de cada consulta pueda derivarse, sin trabajo adicional, el perfil de morbilidad del establecimiento.

#### CALIDAD DEL SOFTWARE

Para hablar de la calidad de un sistema de software se necesita un vocabulario compartido. El más extendido es el de la norma ISO/IEC 25010, que descompone la calidad del producto en características como la adecuación funcional, la eficiencia de desempeño, la compatibilidad, la usabilidad, la fiabilidad, la seguridad, la mantenibilidad y la portabilidad. No todas pesan igual en todos los proyectos. En una plataforma clínica, la fiabilidad y la seguridad tienen prioridad sobre la portabilidad, y la usabilidad tiene una exigencia particular: el sistema debe adaptarse al ritmo de una consulta, no al revés.

La versión vigente de la norma es ISO/IEC 25010:2023, que revisó la de 2011 en varios puntos relevantes para este trabajo. Incorporó la seguridad física, entendida como la capacidad del producto de no causar daño a personas o bienes, como característica de primer nivel, con lo que el modelo pasó a tener nueve características. Renombró la usabilidad como capacidad de interacción, para subrayar que se trata de una propiedad de la relación entre el producto y sus usuarios, y le agregó la inclusividad y la autodescripción como subcaracterísticas. Renombró la portabilidad como flexibilidad y le sumó la escalabilidad. Y añadió la resistencia como subcaracterística de la seguridad de la información, para cubrir la capacidad de mantener la operación bajo ataque. Son cambios de énfasis más que de fondo, pero dan un vocabulario más preciso para lo que un sistema clínico tiene que garantizar.

Este vocabulario es el que se usará más adelante para definir los criterios de evaluación de la solución, y se retoma en 2.3 al fundamentar las decisiones de arquitectura.

De las nueve características del modelo, la capacidad de interacción es la más difícil de medir sin sesgo, porque depende de la percepción del usuario y no de una propiedad del código. El instrumento más usado para hacerlo es la escala de usabilidad del sistema, conocida como SUS por su sigla en inglés, que Brooke (1996) diseñó, en sus propias palabras, como una herramienta «rápida y sucia» (p. 189) para obtener una medida global después de una sesión de uso. Son diez afirmaciones que alternan sentido positivo y negativo, cada una puntuada de uno a cinco, y el procedimiento de cálculo las convierte en un número entre cero y cien. No mide qué falla ni por qué; mide cuánto le costó a la persona usar el sistema, y lo hace con una consistencia que treinta años de uso han confirmado.

Para este proyecto la escala tiene dos ventajas prácticas. Se responde en menos de cinco minutos, lo que importa cuando los encuestados son médicos entre consulta y consulta. Y tiene valores de referencia acumulados: por convención, un puntaje cercano a 68 se considera promedio, y valores por encima de 80 indican una aceptación alta. Eso permite interpretar el resultado sin necesidad de un grupo de comparación, que en una clínica de este tamaño no existe. Por eso se adopta como instrumento cuantitativo de la evaluación de usabilidad, complementado con la observación directa, que registra lo que la escala no captura.

### FUNDAMENTOS DEL ÁREA ESPECÍFICA

#### SISTEMAS DE INFORMACIÓN EN SALUD

##### Concepto y características

Los sistemas de información en salud son los que recopilan, almacenan, procesan y distribuyen información clínica y administrativa en establecimientos y redes de salud. La Organización Mundial de la Salud los considera una de las bases de cualquier sistema sanitario, y en 2020 publicó el paquete técnico SCORE, que define cinco intervenciones para fortalecer los datos de salud de un país: estudiar la población y sus riesgos, registrar nacimientos y defunciones, optimizar los datos de los servicios, evaluar los avances y sus causas, y habilitar el uso de los datos para decidir (Organización Mundial de la Salud, 2020).

Un sistema de información clínico tiene tres particularidades que no comparte con un sistema administrativo cualquiera. La información tiene que estar disponible en el momento exacto de la atención; si no está, no se produce una demora sino una decisión tomada con datos incompletos. Los datos son sensibles y están sujetos a obligaciones de confidencialidad más estrictas que en cualquier otro dominio. Y el registro es longitudinal: cada atención se suma a las anteriores y el conjunto debe conservar su integridad a lo largo de toda la vida del paciente. Podría agregarse una cuarta, de orden práctico: un sistema clínico no puede caerse durante una consulta, porque el médico tendría que improvisar un registro paralelo que después alguien tendría que reconciliar.

##### La salud digital como política pública

La digitalización de la información en salud dejó de ser un asunto técnico de cada establecimiento y pasó a ser política pública. La Organización Mundial de la Salud adoptó en 2020 una estrategia mundial de salud digital, publicada en 2021, cuyo propósito declarado es fortalecer los sistemas de salud mediante tecnologías digitales, con objetivos de gobernanza, inversión, interoperabilidad y protección de datos, y con la intención expresa de que sirva también a los Estados con acceso limitado a esas tecnologías (Organización Mundial de la Salud, 2021). En 2025 la Asamblea Mundial de la Salud extendió su vigencia hasta 2027.

En las Américas, la Organización Panamericana de la Salud desarrolla desde hace años la iniciativa de Sistemas de Información para la Salud, conocida por su sigla en inglés IS4H, que define un modelo de madurez de cinco niveles para evaluar la gestión de datos, la tecnología, la gobernanza y la innovación de los sistemas de información de un país, y que se ha aplicado en análisis nacionales como los de Chile y Panamá (Organización Panamericana de la Salud, 2024). La misma organización publicó en 2023 una caja de herramientas para la transformación digital del sector salud, orientada a que los países pasen de sistemas fragmentados a sistemas interoperables con datos abiertos y uso ético de la información (Organización Panamericana de la Salud, 2023).

Para un proyecto de alcance institucional, estos marcos importan por dos razones. La primera es que fijan la dirección en que se mueve el sector: hacia la interoperabilidad y hacia el dato estructurado, no hacia el expediente escaneado. Un sistema que hoy guarde el diagnóstico en texto libre va a quedar fuera de esa dirección más pronto que tarde. La segunda es que el reporte al Sistema Nacional de Información en Salud, que hoy la clínica cumple a mano, es la forma concreta en que un establecimiento privado participa de esos sistemas nacionales de información; hacerlo bien es contribuir a que el nivel de madurez del país suba.

##### Tipología de los sistemas de información en salud

Bajo el nombre genérico de sistema de información en salud conviven productos de propósito muy distinto, y confundirlos es una fuente frecuente de imprecisión al plantear un proyecto. El Cuadro 2.1 resume los tipos más habituales y ubica el presente trabajo entre ellos.

Cuadro 2.1. Tipología de sistemas de información en salud y alcance del proyecto

Tipo

Alcance

Objeto principal

En este proyecto

HIS — Sistema de información hospitalaria

Todo el establecimiento

Integra la gestión clínica, administrativa y financiera

Parcial: sólo lo clínico

HCE / EHR — Historia clínica electrónica

Institucional o entre instituciones

Registro longitudinal del paciente

Sí, en ámbito institucional

PHR — Registro personal de salud

Paciente

Registro bajo control del propio paciente

No; el acceso externo está excluido

RIS / PACS

Servicio de imagenología

Gestión y archivo de estudios de imagen

No

LIS — Sistema de laboratorio

Servicio de laboratorio

Solicitudes y resultados de análisis

No

Sistema de vigilancia epidemiológica

Nacional o regional

Notificación agregada de morbilidad y hechos vitales

Como destino del reporte al SNIS

Fuente: Elaboración propia, 2026.

La plataforma propuesta es una historia clínica electrónica de alcance institucional, con módulos de gestión asistencial limitados a consulta externa e internación. No aborda imágenes, laboratorio ni facturación, que son sistemas distintos y que habría que integrar más adelante.

##### La historia clínica electrónica

La historia clínica electrónica es el registro digital, longitudinal, de la información de salud de un paciente, generado a lo largo de sus encuentros con el sistema sanitario. Lo que la distingue de un expediente escaneado es que organiza los datos en campos discretos que se pueden consultar: permite buscar por criterio clínico, que varios profesionales lean el mismo expediente a la vez, y explotar la información de forma agregada.

Esa distinción, entre digitalizar y estructurar, es la idea central de este trabajo y conviene detenerse en ella. Un expediente escaneado resuelve el problema de la disponibilidad: ya no se extravía y se puede abrir desde cualquier puesto. Pero su contenido sigue siendo opaco para el sistema, que no puede buscar un diagnóstico, contar casos ni armar un reporte. Lo que convierte un repositorio de documentos en una historia clínica electrónica es que exista, junto al texto, un dato codificado sobre el que el sistema pueda operar.

Funcionalmente, una historia clínica electrónica completa suele ofrecer identificación unívoca del paciente, registro del encuentro con sus secciones habituales, gestión de órdenes e indicaciones, una vista longitudinal navegable, algún grado de apoyo a la decisión y explotación secundaria de la información. Este proyecto implementa las cuatro primeras por completo, la última en la medida que habilita la codificación automática, y deja el apoyo a la decisión fuera del alcance.

La evidencia sobre el impacto de estos sistemas es amplia y en general favorable. Una revisión sistemática reciente sobre países de ingresos altos encontró que la interoperabilidad de la historia clínica electrónica mejora la seguridad de la medicación, reduce los eventos adversos y disminuye costos, aunque con una heterogeneidad considerable entre estudios que los autores atribuyen a las diferencias de diseño de cada intervención (Li et al., 2022). La advertencia es pertinente: el beneficio no viene con la instalación sino con la adecuación del sistema al flujo de trabajo real. Un sistema que obliga al médico a registrar en un orden ajeno al de su práctica termina llenándose al final del día, y entonces el dato resultante puede ser peor que el del papel.

En Bolivia, la Ley N° 3131 define la historia clínica como el conjunto de documentos generados en el proceso asistencial y no restringe el soporte, lo que da validez al registro electrónico; el Decreto Supremo N° 28562 detalla la estructura mínima para consulta externa e internación. Ambas normas se desarrollan en la sección 2.8 y son la base del modelo de datos.

##### Interoperabilidad y estándares de intercambio

La interoperabilidad es la capacidad de dos sistemas de intercambiar información y de usar la que reciben. Se distinguen tres niveles: técnico, cuando los sistemas pueden transmitirse datos; sintáctico, cuando el receptor entiende la estructura del mensaje; y semántico, cuando el significado se conserva, lo que sólo ocurre si ambos usan el mismo vocabulario.

En salud, la familia de estándares HL7 es la referencia. La versión 2, basada en mensajes delimitados, sigue siendo la más desplegada por razones históricas; CDA introdujo el documento clínico estructurado en XML; y FHIR es la especificación actual: define el contenido clínico como recursos —paciente, encuentro, condición, observación— y su intercambio por interfaces REST, muy cerca de cómo se construye hoy cualquier aplicación web. Su versión R5 publica más de ciento cincuenta recursos (HL7 International, 2023). Para imágenes, el estándar es DICOM.

Un mensaje FHIR bien formado que transporte el texto «paciente diabético» es sintácticamente interoperable pero no semánticamente; el mismo mensaje con el código CIE-10 correspondiente sí lo es. Por eso la interoperabilidad semántica no se resuelve con un formato sino con terminologías compartidas, que se tratan en 2.2.4.

Este proyecto no implementa intercambio con sistemas externos, porque la clínica no participa de ninguna red de interoperabilidad y el alcance es institucional. Se toman de todos modos dos decisiones pensando en esa posibilidad: el modelo de datos se organiza en entidades equivalentes a los recursos FHIR más usados, y el diagnóstico se guarda codificado y no sólo como texto. Sin ese código, cualquier intento futuro de intercambio obligaría a recodificar todo el histórico.

##### Modelos de información clínica: FHIR y openEHR

Cuando se diseña la estructura de datos de una historia clínica hay dos tradiciones de referencia, y conviene entender ambas antes de elegir. La primera es openEHR, que nace de la propuesta de modelado en dos niveles de Beale (2002). La idea es separar lo que cambia poco de lo que cambia mucho: un modelo de referencia pequeño y estable, con clases genéricas como composición, sección, observación, evaluación, instrucción y acción, y por encima de él los arquetipos, que son definiciones de conceptos clínicos concretos —presión arterial, diagnóstico, alergia— expresadas como restricciones sobre esas clases. Los arquetipos los definen los clínicos, no los programadores, y el software los interpreta sin necesidad de cambiar su código cuando aparece un concepto nuevo. Es una solución elegante al problema de que el conocimiento clínico evoluciona más rápido que el software.

La segunda tradición es la de HL7 FHIR, ya descrita en 2.2.1.5, que no separa niveles sino que define directamente un conjunto de recursos con estructura fija —paciente, encuentro, condición, observación, procedimiento— pensados para intercambiarse por interfaces web. FHIR es menos expresivo que openEHR para modelar el detalle clínico y mucho más simple de implementar; por eso se ha convertido en el estándar de intercambio y openEHR ha quedado como estándar de persistencia en los sistemas que lo adoptan.

Este proyecto no implementa ninguno de los dos de forma completa, y la razón es de proporción. Un motor de arquetipos openEHR es un proyecto en sí mismo y no aporta nada a una clínica cuyo problema es que no tiene expediente electrónico en absoluto. Lo que sí se toma es el vocabulario y la separación de conceptos: el modelo de datos distingue paciente, encuentro y condición con el sentido que FHIR les da, y la estructura del episodio separa lo observado de lo evaluado y de lo indicado, que es la distinción central del modelo de referencia de openEHR. Esa alineación cuesta poco al diseñar y facilita cualquier intercambio futuro: exportar un encuentro como recurso FHIR es una transformación directa si el modelo ya nombra las cosas igual.

##### Modelos de madurez de la historia clínica electrónica

Decir que un establecimiento «tiene historia clínica electrónica» dice poco, porque entre un sistema que sólo registra la admisión y otro que sostiene toda la atención sin papel hay una distancia enorme. Para ordenar esa distancia se usan modelos de madurez, y el más extendido es el modelo de adopción de historia clínica electrónica de la sociedad HIMSS, conocido como EMRAM, que clasifica a los hospitales en ocho etapas, de la cero a la siete. En la etapa cero no hay sistemas departamentales de laboratorio, farmacia ni imagen; en las intermedias aparecen el repositorio clínico centralizado, la documentación de enfermería, la prescripción electrónica y el apoyo a la decisión; en la siete el papel ha desaparecido de la atención y los datos se usan para mejorar resultados. El modelo fue revisado en 2022 para orientarlo a resultados y no sólo a funcionalidades instaladas (HIMSS, 2022).

El modelo se diseñó para hospitales de países con alta inversión y no se aplica literalmente a una clínica mediana boliviana. Sirve, sin embargo, para dos cosas. La primera es ubicar el punto de partida sin adornos: la Clínica San Salvador está en la etapa cero. La segunda es fijar una meta realista. Lo que este proyecto construye —expediente único electrónico, documentación de consulta e internación, control de acceso y auditoría— corresponde a las etapas iniciales e intermedias del modelo, no a las superiores. No se pretende llegar a la prescripción electrónica ni al apoyo a la decisión clínica; se pretende que el expediente exista, sea confiable y se pueda explotar. Nombrar la meta en esos términos evita prometer más de lo que se puede entregar y da un vocabulario compartido con quien conozca el modelo.

Hay una diferencia de énfasis que conviene dejar dicha. Los modelos de madurez miden funcionalidad instalada; no miden si la información registrada tiene valor probatorio ni si está estructurada de modo que se pueda contar. Un hospital puede estar en una etapa alta con diagnósticos en texto libre y sin garantías de integridad sobre el registro. Este proyecto pone esas dos cosas en el centro desde el primer día, aunque en el modelo no cuenten como etapas.

##### Adopción en países de ingresos medios

La evidencia sobre adopción de historia clínica electrónica fuera de los países de ingresos altos muestra un patrón distinto del que describen Li et al. (2022). Bostan et al. (2024) revisaron trece estudios sobre implementación de sistemas de código abierto en países de ingresos bajos y medios-bajos, y organizaron las barreras en tres grupos: socioambientales, como la conectividad intermitente, la falta de energía estable o la escasez de personal capacitado; tecnológicas, como la adaptación del sistema al flujo local y a los formularios en uso; y organizacionales, como la resistencia al cambio, la ausencia de liderazgo institucional y la falta de presupuesto para mantenimiento. Su conclusión principal es que la mayoría de los proyectos se concentra en las barreras tecnológicas y descuida las otras dos, que son las que suelen hacer fracasar la implementación.

Bolivia es un país de ingreso medio, y la Clínica San Salvador tiene resueltas algunas de esas barreras —hay conectividad, hay energía, hay equipos— y no otras. No tiene personal técnico permanente, no tiene experiencia previa con sistemas clínicos, y el cambio de trabajar en papel a trabajar en pantalla va a exigir capacitación y acompañamiento. Esa lectura explica varias decisiones del proyecto: un solo proceso desplegable que se pueda respaldar y reiniciar sin conocimientos especializados, formularios en pantalla que reproduzcan la estructura de los formularios en papel, y una fase de validación con usuarios reales que no se limite a comprobar que el software funciona sino que mida si se usa.

##### Limitaciones del soporte físico

Shortliffe y Cimino (2014) señalan que la historia clínica en papel tiene limitaciones estructurales en la disponibilidad, en la coordinación entre profesionales y en la prevención del extravío. No son fallas de disciplina del personal; son consecuencias de un soporte que admite un lector a la vez, no tiene respaldo y depende de una búsqueda manual cuyo costo crece con el tamaño del archivo.

Cada una de esas limitaciones se traduce en un requisito. Que el soporte sea exclusivo obliga a la transmisión verbal entre turnos; que no haya respaldo hace que el deterioro sea pérdida definitiva; que la recuperación sea manual hace que el tiempo de búsqueda importe; y que no haya trazabilidad impide saber quién consultó un expediente, lo que en un dominio regido por el secreto médico es grave. Fernández Marín y González Tolmo (2022) documentan los mismos efectos —duplicidad, demoras, dificultad de seguimiento— en otro contexto, y son exactamente los que la Clínica San Salvador cuantificó en su vaciado interno.

Hay una limitación más que suele pasar desapercibida: el dato en papel no se puede explotar. Un establecimiento obligado a reportar morbilidad tiene que destinar a alguien a leer expediente por expediente. El costo de esa opacidad no se ve en la atención individual, sino en que la clínica no puede conocerse a sí misma.

Y hay una limitación propia de quien decide cambiar: el archivo histórico. Un establecimiento que digitaliza hereda decenas de miles de expedientes manuscritos que no se pueden transcribir a mano. Las soluciones comerciales suelen ignorar este problema porque asumen que se empieza de cero. Es lo que motiva el componente de reconocimiento de escritura que se describe en 2.2.5.

#### GESTIÓN DOCUMENTAL Y EXPEDIENTE CLÍNICO

##### Fundamentos de la gestión de documentos de archivo

La gestión de documentos de archivo es la disciplina que controla la creación, recepción, mantenimiento, uso y disposición de los documentos que una organización produce en el ejercicio de su actividad. La norma ISO 15489-1 (2016) fija sus conceptos y principios, y define el documento de archivo con una doble naturaleza: es evidencia de una actividad y es, a la vez, un activo de información.

Esa doble naturaleza es la que separa la gestión documental del simple almacenamiento. Un archivo en una carpeta compartida sirve para consultar, pero no prueba nada: no hay garantía de que no se haya alterado ni de quién lo creó. La historia clínica es a la vez una herramienta de atención y un documento que puede terminar en un peritaje o en un proceso de responsabilidad profesional, y tiene que servir para las dos cosas.

La idea de mirar el expediente desde esta disciplina surgió de una recomendación recibida durante la orientación del trabajo, en el sentido de examinar las plataformas de gestión documental de código abierto. Lo que se hizo con esa recomendación se explica en 2.2.2.4.

##### Características del documento de archivo

Para que un documento valga como evidencia, la norma le exige cuatro características. Autenticidad: que sea lo que dice ser, creado por quien dice y cuando dice. Fiabilidad: que su contenido represente de forma completa y exacta el hecho que documenta. Integridad: que esté completo y no se haya alterado sin autorización ni sin dejar constancia. Y disponibilidad: que se pueda localizar, recuperar e interpretar durante todo su período de conservación, lo que incluye que su formato siga siendo legible.

Cada una de estas características corresponde a un mecanismo concreto en el sistema propuesto, como muestra el Cuadro 2.2. En un expediente electrónico la autenticidad exige que el autor y la hora los ponga el servidor y no el usuario; la fiabilidad se favorece cuando el registro es parte del flujo de atención y no una tarea posterior; la integridad impone las reglas de inmutabilidad que se ven en 2.2.2.5; y la disponibilidad es lo que el soporte físico peor resuelve y lo primero que el proyecto atiende.

Cuadro 2.2. Características del documento de archivo y su implementación en el sistema

Característica

Qué exige la norma ISO 15489-1

Cómo lo resuelve el sistema

Autenticidad

El documento es lo que declara ser y fue creado por quien declara

Autoría y hora asignadas por el servidor, no editables por el usuario

Fiabilidad

El contenido representa de forma completa y exacta el hecho documentado

Registro integrado al flujo de atención; campos obligatorios según el DS 28562

Integridad

Completo y sin alteraciones no registradas

Episodio cerrado inmutable, corrección por adenda, encadenamiento criptográfico

Disponibilidad

Localizable, recuperable e interpretable durante su conservación

Acceso concurrente, búsqueda por criterio clínico, respaldo periódico

Fuente: Elaboración propia, 2026.

##### Metadatos y ciclo de vida del documento

La norma añade algo que a veces se pasa por alto: esas cuatro propiedades no las tiene el documento solo, sino el documento junto con sus metadatos, es decir, los datos que describen su contexto, su contenido, su estructura y lo que se hizo con él a lo largo del tiempo. Un sistema de gestión documental es, en el fondo, un sistema que obliga a capturar esos metadatos en el momento de la creación y que impide modificarlos después.

En el expediente clínico, los metadatos mínimos de cada asiento son el paciente, el episodio, el tipo de asiento, el autor, el rol con el que actuó, la fecha y hora, el estado —borrador, cerrado, rectificado— y, cuando corresponda, el vínculo con el asiento que corrige o con la imagen del documento original. Son exactamente los datos que permiten responder la pregunta de cualquier auditoría: quién registró qué y cuándo.

El ciclo de vida del documento describe las fases desde su creación hasta su disposición final. Aquí se distinguen cuatro: captura, cuando el asiento se crea; uso activo, mientras el expediente se consulta y crece; conservación, cuando ya no recibe atenciones pero debe mantenerse íntegro; y disposición, la decisión final una vez vencido el plazo. En muchos ámbitos la disposición incluye la destrucción; en el clínico, el plazo legal de conservación es largo y el sistema tiene que impedir la eliminación durante ese tiempo. Por eso en el diseño propuesto ningún registro clínico se borra físicamente: las bajas se resuelven como cambios de estado que conservan el dato.

##### Gestión de contenido empresarial

En software, la gestión documental se concreta en las plataformas de gestión de contenido empresarial, conocidas por su sigla en inglés, ECM. Ofrecen un repositorio con control de versiones, un modelo de metadatos extensible, control de acceso, auditoría, flujos de trabajo, políticas de retención y búsqueda sobre contenido y metadatos. Alfresco es la referencia de código abierto más difundida, y la han adoptado administraciones públicas y entidades del sector salud para sus repositorios documentales.

Este proyecto adopta la disciplina de esas plataformas, pero no se construye sobre ellas. Vale la pena explicar por qué, porque es una decisión de diseño y no una preferencia.

La primera razón es de adecuación. Un ECM gestiona documentos genéricos y su modelo de datos es, a propósito, indiferente al contenido: para la plataforma, una historia clínica y un contrato son objetos del mismo tipo que se distinguen sólo por sus metadatos. Pero una historia clínica tiene una estructura fijada por norma, su contenido debe poder explotarse estadísticamente, y su ciclo de vida sigue reglas asistenciales —apertura de episodio, evolución, cierre, adenda, alta— que un gestor genérico no modela y que habría que reimplementar encima.

La segunda razón es académica: construir sobre Alfresco convertiría el trabajo en un ejercicio de configuración de un producto ajeno, y el aporte se desplazaría del diseño del sistema a la parametrización. La tercera es práctica: Alfresco vive en un ecosistema Java con requisitos de infraestructura que exceden tanto la experiencia previa del postulante como la capacidad operativa de la clínica.

La forma breve de decirlo es que un ECM gestiona documentos y una historia clínica necesita datos. El sistema toma las garantías documentales del ECM —inmutabilidad, versionado, trazabilidad, retención, conservación del original— y las aplica sobre un modelo de datos clínico específico.

##### Garantías del expediente clínico con valor probatorio

Llevar esos principios al expediente electrónico se traduce en un conjunto de reglas que el sistema debe hacer cumplir por construcción, no por buena voluntad del usuario. Una regla que depende de la disciplina de quien registra no es una garantía, y en una auditoría no se puede alegar como tal.

Inmutabilidad del registro cerrado. Cuando el médico cierra un episodio, su contenido ya no se puede editar. Es la condición que sostiene el valor probatorio: un registro que se puede reescribir no documenta lo que pasó sino lo que conviene decir que pasó. El sistema distingue explícitamente el estado de borrador, editable y visible sólo para su autor, del estado cerrado, y el paso de uno a otro es un acto deliberado.

Corrección por adenda. Un expediente que conserva un error sin poder corregirlo es tan problemático como uno alterable. La práctica documental resuelve esto registrando la enmienda como un asiento nuevo, vinculado al original, con autor, fecha y motivo, que se muestra junto al original sin reemplazarlo. Así se conserva tanto el dato equivocado como su corrección, que es lo que hace falta para reconstruir una decisión clínica: importa no sólo cuál era el dato correcto sino cuál era el dato disponible cuando se decidió.

Bitácora de auditoría de sólo anexado. Cada lectura y cada escritura genera un asiento con usuario, rol, operación, expediente e instante. Ese registro no lo puede modificar ni borrar ningún rol, tampoco el administrador. Se incluyen las lecturas y no sólo las escrituras porque, bajo el secreto médico, acceder indebidamente a un expediente ya es la infracción, aunque no se toque nada.

Conservación del original. Cuando un documento en papel entra al expediente electrónico, su imagen se conserva íntegra y vinculada al registro que se derive de ella. La transcripción, sea manual o asistida por un modelo, no reemplaza al original: lo indexa. Si hay discrepancia, manda la imagen. Esta regla es la que hace aceptable el reconocimiento automático de escritura: el peor caso de un error de transcripción es una dificultad para encontrar el expediente, nunca la pérdida del dato.

Retención. La norma boliviana fija plazos de conservación, y el sistema impide eliminar registros dentro de ellos. En el diseño no hay borrado físico de registros clínicos.

Separación entre el poder administrativo y el contenido clínico. El administrador gestiona usuarios, roles y parámetros, pero no puede leer, alterar ni suprimir asientos clínicos ni entradas de auditoría. Sin esta separación, el propio mecanismo de control quedaría en manos de un rol capaz de eludirlo, y las reglas anteriores serían nominales. El Cuadro 2.3 resume las seis garantías y su implementación.

Cuadro 2.3. Garantías documentales del expediente clínico electrónico

Garantía

Regla

Implementación

Inmutabilidad

El episodio cerrado no se modifica

Estados borrador y cerrado; transición explícita e irreversible

Corrección por adenda

La enmienda es un asiento nuevo vinculado al original

Entidad adenda con autor, fecha, motivo y referencia al asiento corregido

Auditoría de sólo anexado

Toda lectura y escritura queda asentada y no se altera

Tabla de auditoría sin operaciones de actualización ni borrado

Conservación del original

La imagen digitalizada se conserva y prevalece

Entidad documento digitalizado vinculada al episodio

Retención

Nada se elimina dentro del plazo legal

Baja lógica por estado; sin borrado físico

Separación de poderes

Administración no alcanza al contenido clínico

Permisos del rol administrador acotados a usuarios y parámetros

Fuente: Elaboración propia, 2026.

##### Integridad verificable mediante encadenamiento criptográfico

Todo lo anterior descansa sobre una premisa: que las reglas del sistema no se puedan esquivar. Pero alguien con acceso directo al motor de base de datos podría, en principio, modificar un registro sin pasar por la aplicación. El mecanismo que permite detectar esa manipulación es el encadenamiento criptográfico de la bitácora.

Una función de resumen criptográfico transforma una entrada de cualquier longitud en una salida de longitud fija. Es determinista —la misma entrada produce siempre el mismo resumen— y es computacionalmente inviable construir otra entrada que produzca el mismo resultado. En consecuencia, cambiar un solo carácter del contenido cambia el resumen por completo.

El encadenamiento aplica esto de forma acumulativa: cada asiento de la bitácora guarda, entre sus campos, el resumen del asiento anterior, y su propio resumen se calcula sobre su contenido más ese valor. Así, el resumen de cada entrada depende de toda la historia previa. Alterar un asiento intermedio invalida su resumen y, en cadena, el de todos los posteriores. Una verificación periódica recorre la cadena y señala el punto exacto de cualquier manipulación.

Hay que ser preciso sobre lo que esto garantiza. El encadenamiento no impide la alteración; la hace detectable. Tampoco protege contra alguien que recalcule toda la cadena desde el punto alterado, cosa que sólo se previene publicando periódicamente el resumen de cabecera en un soporte independiente. Para una clínica privada, donde el riesgo real no es un ataque sofisticado sino la modificación oportunista de un registro comprometedor, la detectabilidad es una garantía proporcionada.

La función de resumen que usa el sistema es SHA-256, una de las especificadas en el estándar federal estadounidense de funciones hash seguras (National Institute of Standards and Technology, 2015). Produce una salida de 256 bits, es decir, 64 caracteres hexadecimales, y satisface las tres propiedades que hacen útil a una función de este tipo: dado un resumen, es inviable encontrar una entrada que lo produzca; dada una entrada, es inviable encontrar otra distinta con el mismo resumen; y es inviable encontrar dos entradas cualesquiera que colisionen. Se eligió por ser la más ampliamente implementada, porque está disponible en la biblioteca estándar de cualquier lenguaje y porque no hay ataques prácticos conocidos contra ella. Si algún día los hubiera, el diseño permite cambiar la función y recalcular la cadena desde el origen, guardando el nombre del algoritmo en cada asiento.

El encadenamiento de 2.2.2.6 es la forma más simple de una estructura que la literatura conoce con otros nombres. Si en lugar de una cadena lineal los resúmenes se organizan en un árbol, de modo que cada nodo resume a sus hijos, se obtiene un árbol de Merkle, que permite verificar que un asiento pertenece al conjunto sin recorrerlo entero. Y si la cadena se replica entre varias partes que no confían unas en otras y se acuerda por consenso qué bloque sigue, se obtiene una cadena de bloques. Este proyecto se detiene en la cadena lineal por una razón que vale la pena escribir, porque la pregunta aparece siempre: la cadena de bloques resuelve el problema de la confianza entre partes independientes, y aquí hay una sola parte, la clínica, custodiando su propio registro. Lo que hace falta es detectar la alteración, no distribuir la custodia, y para eso la cadena lineal basta y cuesta una fracción.

Lo que la cadena no da por sí sola es una prueba de cuándo se hizo cada asiento que sea independiente del reloj del servidor. Para eso existe el sellado de tiempo, normalizado en el protocolo TSP (Adams et al., 2001): una autoridad externa recibe un resumen, le adjunta la hora y firma el conjunto, y esa firma acredita que el contenido existía en ese momento. No se implementa en esta versión, porque exige contratar una autoridad de sellado y porque el valor probatorio que la clínica necesita hoy se sostiene en la cadena más la bitácora. Pero el diseño lo deja previsto: basta sellar periódicamente el resumen del último asiento para que toda la cadena anterior quede anclada en el tiempo, y ese punto de extensión está documentado en el diseño.

##### Firma digital y valor probatorio del documento electrónico en Bolivia

La pregunta que cualquier abogado hace sobre un expediente electrónico es si lo que dice vale ante un tribunal. En Bolivia la respuesta la da la Ley N° 164 de 2011, que reconoce validez jurídica al documento digital y a la firma digital, y su reglamento, el Decreto Supremo N° 1793 de 2013, que organiza la infraestructura para que esa firma exista (Estado Plurinacional de Bolivia, 2013). El decreto distingue la firma digital, basada en un certificado emitido por una entidad certificadora acreditada, de la firma electrónica en sentido amplio, que es cualquier mecanismo de identificación acordado entre las partes. Sólo la primera tiene la presunción de validez equivalente a la firma manuscrita. La entidad certificadora pública es la Agencia para el Desarrollo de la Sociedad de la Información en Bolivia, ADSIB, y la Autoridad de Regulación y Fiscalización de Telecomunicaciones y Transportes actúa como entidad certificadora raíz.

El proyecto no incorpora certificados de ADSIB en esta versión, y la decisión tiene tres razones. La primera es de costo y logística: cada médico necesitaría tramitar un certificado personal y renovarlo, y la clínica no tiene hoy un proceso para eso. La segunda es de alcance: la validez probatoria que la clínica necesita en su operación cotidiana —auditorías médicas, reclamos, peritajes— se ha sostenido históricamente en el expediente en papel con firma manuscrita, y un expediente electrónico con autenticación individual, bitácora inalterable y original conservado ofrece garantías de autoría e integridad que el papel no tiene. La tercera es de diseño: la firma digital se aplica sobre un resumen del documento, y el sistema ya calcula ese resumen por cada asiento. Incorporar la firma es agregar un paso al cierre del episodio, no rediseñar el modelo.

Lo que sí hace el sistema es no cerrar la puerta. La firma electrónica en sentido amplio del decreto —usuario individual, credencial personal, registro de la acción— es lo que el sistema implementa, y es suficiente para que el registro se atribuya a su autor. Si la clínica decide más adelante que quiere la presunción plena de la firma digital, el punto de inserción existe y está documentado. Esta forma de proceder, construir la base verificable primero y dejar la firma certificada como extensión, es la que corresponde a un establecimiento que hoy no tiene ninguna de las dos.

##### Conservación, respaldo y equivalencias con la norma técnica

La norma que rige el expediente clínico en Bolivia es la Norma Técnica para el Manejo del Expediente Clínico, aprobada por Resolución Ministerial N° 0090 del 26 de febrero de 2008 (Ministerio de Salud y Deportes, 2008). Define el expediente como el conjunto documental básico del proceso de atención, enumera su contenido general y específico, y fija reglas sobre su custodia, sobre la calidad del registro y sobre el acceso del paciente. Fue escrita para el papel: habla de folios, de foliación correlativa, de firma y sello en cada hoja. Un expediente electrónico tiene que dar equivalentes de cada una de esas cosas, y conviene decir cuáles son.

La foliación correlativa se convierte en la secuencia inalterable de asientos del episodio. La firma y el sello en cada hoja se convierten en la atribución de cada asiento a un usuario autenticado. La custodia bajo responsabilidad del establecimiento se convierte en el servidor propio, el control de acceso y la bitácora. Y la entrega de copia al paciente, que el artículo 23 de la norma establece como un derecho que no se puede negar, se convierte en una función de exportación del expediente completo a un formato legible y firmado, con registro de quién la solicitó y quién la autorizó. Ese derecho, además, lo ha reforzado el Tribunal Constitucional Plurinacional al establecer que el médico debe entregar el historial actualizado en interés del paciente (Sentencia Constitucional Plurinacional 0575/2016-S3).

La conservación en el tiempo es el punto donde el soporte electrónico exige más disciplina que el papel, porque un archivo digital que nadie respalda se pierde entero en un solo evento. La regla operativa que se adopta es la conocida como tres-dos-uno: al menos tres copias de los datos, en dos tipos de soporte distintos, y una de ellas fuera del establecimiento. En la práctica de una clínica mediana esto se traduce en copias automáticas diarias de la base de datos y de los documentos adjuntos, cifradas antes de salir del servidor, con una copia en un disco externo que se rota semanalmente y otra en un sitio físico distinto de la clínica. Una copia que nunca se ha restaurado no es una copia, así que el procedimiento incluye una prueba de restauración periódica sobre un servidor de prueba, con registro de resultado.

Hay una segunda dimensión de la conservación que suele olvidarse: que el formato siga siendo legible dentro de veinte años. Por eso el sistema guarda el contenido clínico en estructuras de base de datos documentadas y exportables a formatos abiertos —texto plano, JSON, PDF— y no en formatos propietarios de ninguna herramienta. La imagen del formulario original en papel se conserva como archivo gráfico estándar junto a su transcripción, de modo que si algún día el sistema se reemplaza, lo que se migra es un conjunto de archivos legibles y no una base de datos que sólo un programa entiende.

#### PROCESAMIENTO DE LENGUAJE NATURAL CLÍNICO

##### Definición y particularidades del lenguaje clínico

El procesamiento de lenguaje natural es el campo que estudia cómo hacer que una computadora analice, interprete o produzca lenguaje humano. Su aplicación a la medicina responde a un hecho simple: la mayor parte de la información clínica —motivo de consulta, exploración, evolución, diagnóstico— se escribe en texto libre, porque así es como piensan y trabajan los médicos, y ese formato es inaccesible para el procesamiento automático.

No se trata de un defecto que haya que corregir obligando al médico a elegir de listas desplegables. El texto libre existe porque la clínica necesita matices: «dolor abdominal que cede con la ingesta» y «dolor abdominal que se agrava con la ingesta» llevan a diagnósticos distintos, y ningún catálogo de opciones captura esa diferencia con la misma economía. El procesamiento de lenguaje natural clínico es precisamente el conjunto de técnicas que permite tener las dos cosas: el texto que el médico quiere escribir y el dato estructurado que el sistema necesita.

El lenguaje clínico tiene rasgos propios que explican por qué los modelos de propósito general rinden mal sobre él. Es telegráfico: «afebril, tolera vía oral, abdomen blando depresible». Está lleno de abreviaturas no normalizadas cuyo significado depende de la especialidad y a veces del médico. Mezcla el término técnico con el coloquial para la misma cosa. Niega y especula todo el tiempo, de modo que buena parte de lo escrito afirma que algo no está o que quizá esté. Y tiene más errores de tipeo que un texto editado, porque se escribe con presión de tiempo. En español se suman dos condiciones más: hay muchos menos recursos —corpus, modelos, catálogos— que en inglés, y hay variación regional en el léxico coloquial y en los nombres de procedimientos y medicamentos.

##### La arquitectura Transformer y las representaciones contextuales

Antes del Transformer, la arquitectura dominante para secuencias fue la red recurrente, y en particular la memoria a corto y largo plazo, LSTM, que Hochreiter y Schmidhuber (1997) diseñaron para resolver un problema concreto: que las redes recurrentes simples olvidaban lo que habían visto unas decenas de pasos atrás, porque el gradiente que las entrena se desvanecía al propagarse hacia el pasado. La LSTM introduce una celda de memoria con compuertas que deciden qué guardar, qué olvidar y qué emitir, y con eso consigue retener información a lo largo de secuencias mucho más largas. Durante casi dos décadas fue la base de casi todo el procesamiento de lenguaje y del reconocimiento de escritura.

Su limitación es estructural: procesa la secuencia paso a paso, cada estado depende del anterior, y eso impide paralelizar el entrenamiento y hace que la información lejana llegue atenuada aunque no se pierda. El mecanismo de atención se propuso primero como complemento de la LSTM, para que el modelo pudiera mirar directamente cualquier posición de la entrada, y el Transformer fue el paso de prescindir de la recurrencia y quedarse sólo con la atención. La LSTM no desapareció: sigue siendo competitiva en tareas con secuencias cortas y pocos datos, y en el reconocimiento de escritura la arquitectura de referencia durante años fue una LSTM bidireccional sobre las columnas de la imagen, como se verá en 2.2.5.

La arquitectura que domina el campo desde 2017 es el Transformer (Vaswani et al., 2017). Su aporte fue prescindir de la recurrencia —procesar el texto de izquierda a derecha manteniendo un estado interno— y basar todo el modelado en un mecanismo de atención. Para cada elemento de la secuencia, el modelo calcula qué información necesita, qué información ofrece cada uno de los demás elementos, y combina la de los más relevantes. Hacerlo en varios subespacios a la vez, lo que se llama atención multi-cabezal, le permite atender a distintos tipos de relación simultáneamente. Como la atención por sí sola no sabe de orden, se agregan codificaciones posicionales, y el bloque completo se apila en capas.

Para texto clínico esto tiene una ventaja concreta. En una nota, la negación puede estar lejos del término que niega: «se descartan, tras la evaluación complementaria y el interrogatorio dirigido, signos de irritación peritoneal». Una arquitectura que pierda capacidad de relación con la distancia fallaría sistemáticamente en casos así; el Transformer relaciona elementos distantes con costo constante.

Antes de que el modelo procese un texto, hay que partirlo en unidades. Si esas unidades son palabras enteras, el vocabulario tiene que ser cerrado y cualquier término nuevo se pierde; en texto clínico, lleno de términos raros, abreviaturas y errores, la pérdida sería enorme. Los modelos actuales usan tokenización en subpalabras: descomponen los términos infrecuentes en fragmentos que sí están en el vocabulario. «Colecistectomía» se representa como una secuencia de fragmentos, y el modelo conserva la información morfológica que comparte con «colecistitis» o «apendicectomía». Para el vocabulario médico, que se construye sobre raíces, prefijos y sufijos grecolatinos de significado sistemático, esto es especialmente valioso.

El resultado del procesamiento no es una etiqueta sino una representación contextual: un vector para cada unidad que codifica su significado en ese contexto. «Cuadro» en «cuadro clínico compatible con neumonía» tiene una representación distinta que en cualquier otro uso. Esa capacidad de desambiguar es lo que sostiene el rendimiento de estos modelos sobre texto clínico.

La idea de dividir las palabras en subunidades para manejar vocabularios abiertos la formalizaron Sennrich et al. (2016) con la codificación por pares de bytes, un algoritmo de compresión adaptado para aprender del corpus qué secuencias de caracteres aparecen juntas con más frecuencia y usarlas como unidades. Lo propusieron para traducción automática, pero es el mecanismo que, con variantes, usan hoy todos los modelos de lenguaje basados en Transformer, incluido el que emplea este trabajo.

##### Preentrenamiento y ajuste

Sobre esa arquitectura se construyó el paradigma que hace viable este proyecto: preentrenar primero, ajustar después. Devlin et al. (2019) propusieron con BERT entrenar un codificador bidireccional sobre enormes volúmenes de texto sin etiquetar, ocultando al azar algunas unidades y entrenando al modelo para adivinarlas por el contexto de ambos lados. Lo que resulta es un modelo que aprendió representaciones generales del lenguaje sin haber sido entrenado para ninguna tarea concreta. Después se le agrega una capa de salida y se lo entrena brevemente sobre un conjunto etiquetado de la tarea que interese.

Liu et al. (2019) mostraron con RoBERTa que buena parte del margen de mejora estaba en cómo se entrenaba y no en la arquitectura: más datos, secuencias más largas, enmascaramiento dinámico. RoBERTa conserva la arquitectura de BERT y la supera, y es la base de la mayoría de los modelos de dominio publicados después, incluido el que usa este trabajo.

La razón por la que este paradigma importa es económica. Preentrenar exige datos y cómputo que un trabajo de grado no tiene; ajustar exige miles de ejemplos etiquetados y unas horas de cómputo convencional. Como ya existen modelos preentrenados públicos para el español biomédico, el proyecto puede partir de lo que ellos aprendieron y concentrarse en la especialización.

##### Reconocimiento de entidades nombradas

El reconocimiento de entidades nombradas, NER por sus siglas en inglés, es la tarea de localizar en un texto los fragmentos que designan algo de interés y asignarles una categoría. En el dominio clínico, esas entidades son enfermedades, síntomas, procedimientos, medicamentos, dosis, vías de administración o partes del cuerpo. Es el primer paso de cualquier intento de estructurar el expediente.

Se plantea como un problema de etiquetado de secuencias: a cada unidad del texto se le asigna una etiqueta que dice si empieza una entidad, si continúa una ya empezada o si está fuera de todas, junto con la categoría. Este esquema, conocido como BIO, permite representar entidades de cualquier longitud con fronteras precisas. Sobre un modelo preentrenado, implementarlo consiste en agregar una capa de clasificación sobre la representación de cada unidad y ajustar el conjunto.

Las dificultades propias del texto clínico son tres. Las fronteras son ambiguas: en «insuficiencia cardíaca congestiva descompensada» no es obvio cuánto del sintagma es la entidad codificable. Hay anidación, cuando una entidad contiene otra, como una parte del cuerpo dentro del nombre de un procedimiento. Y hay discontinuidad, cuando los fragmentos de una entidad no son contiguos: en «dolor y distensión abdominal», la segunda entidad se arma con dos pedazos separados.

Lo importante para este proyecto es que el NER es una tarea verificable. Su salida no es un texto nuevo, sino un conjunto de posiciones dentro del texto original. Eso permite mostrarle al médico exactamente qué fragmento sustenta cada entidad detectada, y es la base de la distinción que se desarrolla en 2.2.3.10.

Además de CodiEsp, el mismo grupo del Barcelona Supercomputing Center organizó en los años siguientes una serie de tareas compartidas que construyeron, entre todas, la infraestructura de evaluación del procesamiento de lenguaje natural clínico en español. DisTEMIST, en 2022, publicó mil casos clínicos anotados a mano con menciones de enfermedad, vinculadas a conceptos de SNOMED CT, y fue el primer esfuerzo comunitario para evaluar la detección y normalización de enfermedades en español (Miranda-Escalada et al., 2022). MedProcNER, en 2023, hizo lo mismo para procedimientos clínicos sobre la misma colección de documentos, de modo que ambos corpus se pueden usar juntos (Lima-López et al., 2023). Los sistemas que compitieron en esas tareas —en su mayoría codificadores tipo BERT ajustados para etiquetado de secuencias, combinados con diccionarios y recuperación por similitud para la normalización— establecieron lo que hoy se considera el estado del arte para español.

Esto tiene una consecuencia práctica para este proyecto: los tres corpus, CodiEsp, DisTEMIST y MedProcNER, comparten la misma familia de documentos y el mismo estilo de anotación, y pueden combinarse para el ajuste fino del reconocedor de entidades, aunque la vinculación final se haga contra la CIE-10 y no contra SNOMED CT.

##### Detección de negación y especulación

Una parte considerable de lo que se escribe en una nota clínica afirma que algo no está, o que quizá esté. «No refiere alergias medicamentosas», «se descarta proceso infeccioso», «probable cuadro viral». Un extractor ingenuo registraría alergias, infección y cuadro viral como diagnósticos afirmados, y el expediente resultante sería falso.

La distinción tiene tres valores. Una mención puede estar afirmada, negada o especulada. Conviene además distinguir el sujeto, porque los antecedentes familiares mencionan enfermedades que son de otra persona. Computacionalmente, el problema consiste en identificar la marca que introduce la negación o la duda, el ámbito de texto sobre el que actúa, y la entidad afectada. No se resuelve con una lista de palabras negativas, porque el alcance de una negación en español puede extenderse de forma no trivial y cortarse en una conjunción adversativa.

Para español clínico, el recurso de referencia es el corpus NUBes, que anota negación e incertidumbre sobre casi treinta mil oraciones de historias clínicas anonimizadas; sus autores lo presentan como el mayor corpus disponible para negación en español y el primero que anota también las marcas y ámbitos de especulación (Lima-López et al., 2020). Su existencia permite atacar el problema con el mismo esquema de preentrenamiento y ajuste que el reconocimiento de entidades.

En el sistema propuesto esto no es un refinamiento opcional. Una mención negada o especulada no genera propuesta de codificación, o la genera marcada como tal, y en ningún caso entra al reporte de morbilidad.

Sobre ese corpus, Solarte Pabón et al. (2022) entrenaron un modelo de etiquetado de secuencias con redes recurrentes bidireccionales y campos aleatorios condicionales para detectar a la vez las marcas de negación e incertidumbre y su ámbito, y lo aplicaron después a historias clínicas oncológicas de un hospital español. Su trabajo muestra dos cosas útiles aquí: que el problema se puede tratar como etiquetado de secuencias, igual que el reconocimiento de entidades, y que un modelo entrenado sobre NUBes se transfiere razonablemente a notas de otro origen, aunque con pérdida de rendimiento que el ajuste sobre datos propios recupera.

##### Normalización de entidades

Saber que un fragmento nombra una enfermedad resuelve la mitad del problema. La otra mitad es saber cuál, es decir, asociar la mención con la entrada correspondiente de un catálogo. A esa tarea se la llama normalización o vinculación de entidades.

La dificultad está en la distancia entre cómo lo escribe el médico y cómo lo nombra el catálogo: término técnico completo, abreviatura, sinónimo coloquial, variante ortográfica, singular o plural, con o sin modificadores, con error de tipeo. Todo eso tiene que converger en el mismo código.

Hay tres familias de métodos. Los basados en reglas y diccionarios construyen un índice de sinónimos y aplican correspondencia aproximada; son transparentes y no necesitan datos de entrenamiento, pero fallan ante lo que no previeron. Los de clasificación tratan cada código como una clase y entrenan un modelo para elegir la correcta; funcionan bien en los códigos frecuentes y mal en los raros. Los de recuperación por similitud representan la mención y cada entrada del catálogo en un mismo espacio vectorial y eligen la más cercana; pueden proponer códigos que nunca vieron en entrenamiento, siempre que su nombre esté en el catálogo.

El diseño previsto combina las tres en cascada. Una correspondencia directa sobre el índice de sinónimos resuelve los casos comunes con confianza alta; lo que no resuelve pasa al modelo entrenado; y lo que el modelo no resuelve con confianza suficiente va a recuperación por similitud, que devuelve un conjunto corto de candidatos para que el médico elija. En todos los casos la salida es una propuesta.

El enfoque de recuperación por similitud tiene una versión moderna que conviene conocer. Gallego et al. (2024) presentaron ClinLinker, un sistema de vinculación de entidades para español clínico en dos fases: un bicodificador, que representa la mención y las entradas del catálogo en el mismo espacio vectorial y recupera candidatos por cercanía, seguido de un codificador cruzado que reordena esos candidatos evaluando cada par mención-concepto en conjunto. Entrenado con aprendizaje contrastivo sobre terminología en español, superó por un margen amplio a los modelos multilingües diseñados para lo mismo, incluso con una fracción de los datos. Es la referencia más reciente para la tercera etapa de la cascada descrita en esta subsección, y su arquitectura es la que se tomará como base si la correspondencia directa y la clasificación no bastan.

##### Modelos de lenguaje en español clínico

La disponibilidad de modelos para español clínico es lo que hace abordable el componente central de este trabajo. Carrino et al. (2022) presentaron el primer conjunto de modelos biomédicos y clínicos en español entrenados desde cero a gran escala, dentro del Plan de Tecnologías del Lenguaje del gobierno español y desarrollados en el Barcelona Supercomputing Center.

El que interesa aquí es bsc-bio-ehr-es. Es un codificador de arquitectura RoBERTa preentrenado sobre un corpus biomédico de alrededor de mil cien millones de unidades léxicas, más un corpus de historias clínicas reales de unos noventa y cinco millones. Sus autores lo compararon con modelos de dominio general y con otros modelos específicos en tres tareas de reconocimiento de entidades clínicas, y documentaron la ventaja del preentrenamiento de dominio en un escenario de recursos intermedios como el del español.

Cuatro cosas lo hacen adecuado para este proyecto. Tiene licencia permisiva y está publicado abiertamente. Es un codificador y no un modelo generativo de gran escala, así que corre en el servidor de la clínica sin unidad de procesamiento gráfico dedicada, lo que sostiene la viabilidad económica planteada en el capítulo I. Su corpus de preentrenamiento incluye historias clínicas reales, de modo que ya conoce el registro telegráfico y abreviado. Y el mismo grupo publicó variantes ajustadas para tareas clínicas concretas, que sirven como referencia de lo que se puede esperar.

La limitación también hay que decirla. El corpus procede sobre todo de fuentes españolas, y el español de una consulta en Santa Cruz no es el mismo. El ajuste sobre datos propios de la clínica, previsto en la metodología, es la forma de reducir esa distancia, y es una de las razones por las que el sistema guarda las correcciones que el médico hace a cada propuesta.

Después de los modelos de Carrino et al. (2022) han aparecido alternativas. La más reciente es RigoBERTa Clinical, presentada en 2025 junto con ClinText-SP, que sus autores describen como el mayor corpus clínico abierto en español, reunido a partir de casos clínicos de revistas médicas y de los corpus anotados de las tareas compartidas (García Subies et al., 2025). El modelo se obtuvo por preentrenamiento adaptativo de dominio sobre ese corpus y, según los resultados que reportan, supera a los modelos anteriores en varias pruebas de referencia clínicas.

La existencia de esta alternativa no cambia la elección de partida, pero sí el diseño de la evaluación. bsc-bio-ehr-es sigue siendo el modelo con la trayectoria más larga, la documentación más completa y las variantes ajustadas más numerosas, y su corpus incluye historias clínicas reales, cosa que ClinText-SP, construido con fuentes abiertas, no puede incluir. Pero un trabajo que va a medir el rendimiento de un codificador sobre notas bolivianas puede medir dos con el mismo esfuerzo. Por eso la evaluación prevista contempla ajustar ambos sobre CodiEsp, comparar sus resultados sobre el conjunto de referencia de la clínica y quedarse con el que mejor rinda.

##### Aprendizaje por transferencia y ajuste fino

El aprendizaje por transferencia parte de una observación bien documentada: lo que una red aprende sobre un conjunto de datos grande sirve para tareas relacionadas, aunque el dominio cambie. Pan y Yang (2010), en la revisión de referencia sobre el tema, clasifican los tipos de transferencia según la relación entre dominios y tareas de origen y destino, y señalan que su mayor utilidad aparece cuando el destino tiene pocos datos etiquetados, que es exactamente la situación de este proyecto.

El ajuste fino es la técnica concreta. Se parte de un modelo cuyos pesos se optimizaron sobre un corpus general y se sigue entrenando sobre los datos de la tarea, con una tasa de aprendizaje baja para no destruir lo aprendido. Dos riesgos acompañan al procedimiento: el olvido catastrófico, si la tasa es demasiado alta, y el sobreajuste, si el modelo memoriza el conjunto de ajuste en lugar de generalizar. Se controlan con tasas reducidas, partición en entrenamiento, validación y prueba, y detención temprana.

Aquí se aplica sobre bsc-bio-ehr-es con el corpus CodiEsp, que se describe en 2.2.4.5, para especializarlo en detectar menciones de enfermedad y asociarlas con su código CIE-10.

##### Modelos de lenguaje de gran escala en el dominio clínico

En los últimos años el debate sobre procesamiento de lenguaje natural clínico se desplazó hacia los modelos de lenguaje de gran escala, los sistemas generativos con miles de millones de parámetros entrenados para continuar texto. Thirunavukarasu et al. (2023) revisaron sus aplicaciones en medicina y concluyeron que su potencial es real en tareas de apoyo administrativo, síntesis de información y educación, pero que su despliegue clínico exige evaluación rigurosa, atención a la privacidad de los datos y conciencia de que pueden producir contenido plausible pero falso. Esa revisión fija bien el marco de la discusión: no es si estos modelos sirven, sino para qué y con qué garantías.

Para la tarea concreta de este proyecto, el reconocimiento de entidades clínicas, hay evidencia comparativa. Hu et al. (2024) midieron a GPT-3.5 y GPT-4 sobre dos conjuntos de referencia de extracción de problemas, tratamientos y pruebas, y diseñaron instrucciones específicas con definiciones, reglas de anotación y ejemplos para mejorar su desempeño. Con las mejores instrucciones, GPT-4 alcanzó una medida F1 relajada de 0,861 en el primer conjunto, pero un codificador BERT ajustado sobre el dominio, BioClinicalBERT, alcanzó 0,901 en el mismo. La conclusión de los autores es que los modelos generativos son prometedores porque necesitan pocos ejemplos, pero que para una tarea de extracción bien definida y con datos de ajuste disponibles, el codificador especializado sigue siendo mejor, y además es más barato y se puede ejecutar localmente.

En generación de texto clínico la evidencia es contradictoria, y conviene presentar las dos caras. Van Veen et al. (2024) adaptaron modelos de lenguaje de gran escala a cuatro tareas de resumen clínico y encontraron, en una evaluación con diez médicos, que los resúmenes generados eran juzgados equivalentes o superiores a los redactados por expertos en la mayoría de los casos. Williams et al. (2025), en cambio, midieron sobre cien encuentros reales de urgencias y hallaron alucinaciones en el 42% de los resúmenes y omisiones clínicamente relevantes en el 47%. Asgari et al. (2025) propusieron un marco de evaluación con taxonomía de errores y escala de daño clínico, y sobre casi trece mil oraciones anotadas por médicos obtuvieron tasas mucho menores, 1,47% de alucinación y 3,45% de omisión, pero para lograrlas necesitaron dieciocho configuraciones experimentales y una herramienta de anotación construida a propósito.

Lo que esos tres trabajos tienen en común es más importante que sus diferencias: en todos, afirmar que un resumen generado es seguro exigió que médicos leyeran cada oración y la contrastaran con la fuente. Ese régimen de verificación es lo que este proyecto no puede garantizar en una clínica de diez médicos, y es la razón de fondo por la que el componente de inteligencia artificial se limita a extraer y clasificar. No es una desconfianza genérica hacia los modelos generativos; es una decisión de proporcionalidad entre el beneficio de una función y el costo de verificarla.

##### Extracción y clasificación frente a generación

Usar inteligencia artificial sobre información médica exige decir con precisión qué se le pide. La distinción que adopta este trabajo separa las tareas de extracción y clasificación de las tareas de generación.

En una tarea de extracción, la salida del modelo es una referencia a un fragmento del texto original; en una de clasificación, es una etiqueta tomada de un catálogo cerrado. En los dos casos el resultado se puede contrastar de inmediato contra la fuente: el médico ve el fragmento señalado y el código propuesto, y confirma o corrige con un gesto. El error posible es señalar mal. Nunca es inventar algo que no estaba.

En una tarea de generación, el modelo produce texto nuevo, y ese texto puede contener afirmaciones plausibles pero falsas, lo que se conoce como alucinación. Verificarlo obliga a que un profesional contraste el resumen completo contra el expediente completo, y eso anula buena parte del ahorro que el resumen prometía.

El tamaño del problema está medido. Williams et al. (2025) evaluaron modelos de lenguaje de gran escala generando resúmenes de encuentros de urgencias sobre cien visitas reales, y midieron inexactitud, alucinación y omisión. En el modelo de mayor capacidad, sólo el 33% de los resúmenes salió sin ningún error: hubo inexactitudes en el 10%, alucinaciones en el 42% y omisión de información clínicamente relevante en el 47%. Las alucinaciones se concentraron en el plan terapéutico y las omisiones en la exploración física y la historia de la enfermedad actual. Los autores aclaran que el daño potencial medio de esos errores fue bajo, y hay que recoger esa aclaración: la evidencia no dice que generar texto clínico sea inaceptable en toda circunstancia, sino que exige un régimen de verificación que este proyecto no puede garantizar, y que las secciones donde más falla son las de mayor consecuencia.

De ahí la delimitación. El sistema usa modelos de lenguaje sólo para extraer y clasificar, y excluye la generación de texto clínico. Trasladar el riesgo de alucinación a un documento con valor probatorio no se justifica frente al beneficio, y contradiría las garantías de fiabilidad e integridad de 2.2.2.

##### Métricas de evaluación en extracción y clasificación

Un sistema que extrae entidades o propone códigos se evalúa comparando su salida con una referencia anotada por personas, y las tres medidas básicas son las de recuperación de información. La precisión es la proporción de lo que el sistema propuso que era correcto. La exhaustividad, o sensibilidad, es la proporción de lo que había que encontrar que el sistema encontró. La medida F1 es su media armónica, que penaliza el desequilibrio: un sistema que propone todo tiene exhaustividad perfecta y precisión pésima, y su F1 es baja. Las tres se calculan a partir de contar verdaderos positivos, falsos positivos y falsos negativos, y la forma de contar es donde están las decisiones.

En reconocimiento de entidades, la primera decisión es qué se considera acierto. En el criterio estricto, la entidad predicha tiene que coincidir exactamente en fronteras y tipo con la anotada; en el criterio laxo basta con que se solapen. La diferencia no es menor: en texto clínico, donde las fronteras son ambiguas, el criterio estricto puede bajar el resultado diez puntos respecto del laxo sin que el sistema sea peor en ningún sentido práctico. Las tareas compartidas en español usan el criterio estricto, y este proyecto reporta ambos, porque para el médico que verifica el resultado un solapamiento parcial es casi tan útil como una coincidencia exacta.

En clasificación con muchas etiquetas, como la codificación, la segunda decisión es cómo promediar. El promedio micro suma los conteos de todas las etiquetas antes de calcular, con lo que las etiquetas frecuentes dominan el resultado. El promedio macro calcula la medida por etiqueta y luego promedia, con lo que cada código pesa igual, sea que aparezca mil veces o una. Un sistema puede tener un F1 micro de 0,7 y un F1 macro de 0,3, y las dos cifras dicen cosas distintas: que funciona bien sobre lo común y mal sobre lo raro. Edin et al. (2023) mostraron además que varios trabajos de referencia habían calculado el F1 macro de forma incorrecta, incluyendo en el promedio códigos que no aparecían en el conjunto de prueba, y que corregirlo duplicaba el valor reportado. Es una advertencia sobre cuánto depende una cifra de la forma de calcularla, y por eso el procedimiento de medición debe quedar fijado antes de medir.

Hay una tercera medida que importa para un sistema que propone y no decide: la precisión entre las primeras k propuestas, escrita P@k. Si el sistema muestra al médico sus cinco códigos más probables, lo que interesa es cuántos de esos cinco son correctos, no si el sistema acertó todos los del episodio. Mullenbach et al. (2018) la popularizaron en la codificación automática justamente por eso, y aquí se adopta con k igual al número de propuestas que la interfaz muestra sin desplegar la lista completa.

Lo que ninguna de estas medidas captura es el costo asimétrico de los errores. Un código propuesto de más se descarta con un gesto; un código omitido no se ve y no se corrige. Por eso el proyecto, como se explica en 2.2.3.10, privilegia la exhaustividad sobre la precisión al fijar sus umbrales, y por eso adopta como indicador principal la proporción de propuestas que el médico acepta sin corregir, que es la medida que une el rendimiento del modelo con el uso real.

##### Confianza, calibración y umbrales de decisión

El sistema muestra al médico un valor de confianza junto a cada código propuesto, y ese valor sólo sirve si significa lo que parece. Un modelo está calibrado cuando, de todas las propuestas a las que asigna una confianza de 0,8, aproximadamente el ochenta por ciento son correctas. Guo et al. (2017) demostraron que las redes neuronales modernas, al contrario que las de una generación anterior, están sistemáticamente mal calibradas: son más confiadas de lo que su exactitud justifica, y cuanto más grandes y profundas, más lo son. Un modelo puede tener buena exactitud y aun así asignar 0,95 a la mitad de sus errores, con lo que la cifra que ve el médico lo engaña en la dirección peor, la de confiar de más.

El mismo trabajo propuso la corrección más simple y todavía más usada: el escalado por temperatura. Consiste en dividir las puntuaciones que produce el modelo, antes de convertirlas en probabilidades, por un único número que se ajusta sobre un conjunto de validación separado. No cambia qué código queda primero, sólo cuán seguro se declara el modelo, y la mejora en calibración que consigue con un solo parámetro es difícil de superar con métodos más complejos. Se mide con el error de calibración esperado, que agrupa las predicciones por rango de confianza y compara, en cada grupo, la confianza promedio con la exactitud real.

Para este proyecto la calibración no es un refinamiento sino una condición de uso. El diseño de la interfaz distingue las propuestas con confianza alta, que se presentan listas para confirmar, de las de confianza media, que se presentan como sugerencias a revisar, y descarta las de confianza baja. Esa distinción presupone que los valores son comparables entre sí y con la realidad; sin calibrar, los umbrales que separan las tres zonas serían arbitrarios. Por eso el procedimiento de ajuste reserva una parte de los datos para calibrar la temperatura después del entrenamiento, y por eso el error de calibración se reporta junto a la exactitud.

Una última decisión relacionada es el umbral a partir del cual una propuesta se muestra. Edin et al. (2023) mostraron que ajustar ese umbral sobre el conjunto de validación, en lugar de usar el 0,5 por defecto, cambia el resultado de forma apreciable en codificación, y que parte de las diferencias reportadas entre modelos en la literatura se explicaban por esa decisión y no por la arquitectura. Aquí el umbral se ajusta para el punto de operación que la clínica prefiere —más propuestas y menos omisiones— y se documenta como parámetro del sistema, no como constante del código.

##### Desidentificación de texto clínico

Todo texto clínico contiene datos que identifican al paciente: nombre, fecha de nacimiento, domicilio, número de documento, a veces el nombre de un familiar o del médico. La desidentificación es la tarea de localizar y eliminar o reemplazar esos datos, y es un problema de reconocimiento de entidades con un tipo de entidad distinto. Para el español la referencia es la tarea MEDDOCAN de 2019, la primera dedicada a anonimizar documentos clínicos en este idioma, construida sobre mil casos clínicos anotados por expertos con veintinueve tipos de información protegida agrupados en categorías generales, como nombres, fechas, ubicaciones, identificadores y datos de contacto (Marimon et al., 2019). Los mejores sistemas superaron el 0,95 de F1, lo que indica que la tarea está en buena medida resuelta para texto bien formado.

El proyecto la necesita en dos momentos. El primero es la preparación de los datos de ajuste: las notas de la clínica que se usan para adaptar el codificador y para evaluar el reconocedor de escritura se desidentifican antes de que cualquier persona ajena a la atención las lea, reemplazando cada dato personal por una marca de su tipo, como «[NOMBRE]» o «[FECHA]». El segundo es cualquier informe o ejemplo que salga del sistema hacia este documento, hacia una presentación o hacia un reporte, que pasa por el mismo filtro.

Lo que la desidentificación no autoriza es lo que a veces se cree que autoriza: enviar el texto a un servicio externo. Un texto desidentificado sigue siendo información de salud de una persona real, y la combinación de fecha, diagnóstico y establecimiento puede bastar para reidentificarla en una ciudad donde la clínica es una entre pocas. Por eso la regla del proyecto es que ningún fragmento de texto o imagen clínica, desidentificado o no, sale del servidor de la clínica hacia ningún servicio, interfaz o herramienta externa, y los modelos se descargan y ejecutan localmente. La desidentificación protege a las personas dentro del proceso; la ejecución local protege el proceso entero.

#### TERMINOLOGÍAS CLÍNICAS Y CODIFICACIÓN AUTOMÁTICA

##### Vocabularios controlados en salud

Un vocabulario controlado es un conjunto cerrado de términos, cada uno con un identificador y una definición, que se usa para nombrar de forma uniforme los conceptos de un dominio. Su función es quitar la ambigüedad que el lenguaje natural trae consigo, y es lo que hace posible la interoperabilidad semántica de la que se habló en 2.2.1.

En salud conviven varios vocabularios con propósitos distintos. Una clasificación como la CIE agrupa entidades en categorías excluyentes y exhaustivas, pensada para la estadística; su unidad es la categoría, no el concepto. Una terminología de referencia como SNOMED CT modela conceptos y relaciones con muchísimo más detalle, pensada para el registro clínico fino. Y hay catálogos especializados como LOINC, para pruebas de laboratorio, o ATC, para sustancias farmacéuticas. El Cuadro 2.4 los compara.

SNOMED CT es la terminología clínica más extensa y varios sistemas nacionales de salud la adoptaron como base de su interoperabilidad semántica. Pero su granularidad tiene un costo de implantación, mantenimiento y capacitación considerable, y su licencia depende de que el país esté afiliado a la organización que la mantiene.

La elección aquí no es discrecional. La obligación de reporte que se describe en 2.8 impone la CIE-10 como instrumento de codificación de la morbilidad en Bolivia. Adoptar otra terminología obligaría a mantener además una correspondencia hacia la CIE-10 para cumplir el reporte, agregando complejidad sin beneficio para la clínica.

Cuadro 2.4. Vocabularios controlados en salud y su uso en el proyecto

Vocabulario

Tipo

Ámbito

En el proyecto

CIE-10

Clasificación

Diagnósticos y procedimientos; estadística agregada

Sí: la impone el reporte al SNIS

SNOMED CT

Terminología de referencia

Conceptos clínicos con relaciones; alta granularidad

No: costo de implantación desproporcionado

LOINC

Catálogo especializado

Pruebas de laboratorio y observaciones

No: laboratorio fuera de alcance

ATC

Catálogo especializado

Clasificación de fármacos

No por ahora; posible extensión

Fuente: Elaboración propia, 2026.

##### La Clasificación Internacional de Enfermedades

La Clasificación Internacional de Enfermedades es el estándar de la Organización Mundial de la Salud para registrar, notificar y analizar morbilidad y mortalidad. Su décima revisión organiza las enfermedades en una jerarquía de tres niveles: capítulos, que agrupan por gran familia etiológica o por sistema afectado; categorías, identificadas con una letra y dos dígitos; y subcategorías, con un cuarto carácter tras el punto que precisa localización, causa o manifestación. Esa jerarquía tiene una consecuencia útil para un sistema automático: cuando la confianza en el cuarto carácter no alcanza, se puede proponer la categoría de tres, que es menos específica pero correcta.

Su función es la de un vocabulario controlado. «Diabetes tipo 2», «DM2», «diabetes mellitus no insulinodependiente» y «DMNID» son cuatro formas de decir lo mismo, y corresponden a un solo código. Al asociar el texto libre a ese código, el sistema puede agrupar, contar y comparar casos que en el registro original eran indistinguibles para cualquier programa.

Conviene tener presente que la CIE-10 se hizo para la estadística poblacional y no como terminología de registro clínico. Sus categorías son excluyentes y exhaustivas, incluye categorías residuales para lo no especificado, y su detalle es a propósito menor que el de una terminología de referencia. Un sistema que codifica en CIE-10 no reemplaza el texto del médico: lo indexa. Por eso el modelo de datos conserva las dos cosas.

En Bolivia la CIE-10 rige desde el año 2000, cuando sustituyó a la novena revisión adoptada en 1992, y es la clasificación que el Sistema Nacional de Información en Salud y Vigilancia Epidemiológica usa para morbilidad y hechos vitales.

La undécima revisión de la clasificación entró en vigor el primero de enero de 2022, después de su adopción por la Asamblea Mundial de la Salud en 2019 (Organización Panamericana de la Salud, 2022). Cambia bastante más que el número: los códigos pasan a ser alfanuméricos de estructura distinta, se incorpora un mecanismo de posconordinación que permite combinar códigos para describir un cuadro con más detalle, y la clasificación se publica como un recurso digital con interfaz de consulta, no sólo como un libro. La transición, sin embargo, la decide cada país, y es lenta: a mediados de 2024 la propia organización reportaba catorce países usándola de forma activa y medio centenar en pilotos.

Bolivia reporta en CIE-10, y el Sistema Nacional de Información en Salud la exige en esa versión. Eso fija la decisión del proyecto para hoy, pero obliga a diseñar para el cambio. El catálogo de códigos no está escrito en el código del sistema: es una tabla versionada, con vigencia por fecha, y cada diagnóstico registrado guarda el código y la versión del catálogo contra la que se registró. Cuando el país migre, el catálogo nuevo se carga junto al anterior, los episodios antiguos siguen siendo interpretables con el suyo y el codificador automático se reentrena sobre el vocabulario nuevo sin tocar lo demás. La OMS publica tablas de correspondencia entre las dos revisiones, que permitirían además ofrecer una traducción aproximada del histórico.

Hay una consecuencia menos evidente. El corpus CodiEsp, sobre el que se ajusta el codificador, está anotado en CIE-10 en su edición española, y no existe todavía un recurso equivalente en CIE-11 para español. Mientras el país reporte en CIE-10, esa es una ventaja; el día que migre, la disponibilidad de corpus anotados será la restricción principal, y por eso el conjunto de episodios que la clínica codifique a mano durante la validación se conserva como un activo: es el inicio de un corpus propio que serviría para el reajuste.

##### La codificación clínica como proceso

Codificar es asignar a cada diagnóstico o procedimiento consignado en el expediente el código que le corresponde en la clasificación. Hecho a mano, exige leer el registro, identificar los diagnósticos, interpretar la intención del médico resolviendo abreviaturas y ambigüedades, y buscar el código en un catálogo de decenas de miles de entradas. Hay además reglas propias de la clasificación: distinguir el diagnóstico principal, que motivó el episodio, de los secundarios; aplicar prioridades cuando concurren varias entidades; respetar las notas de inclusión y exclusión de cada categoría.

En la Clínica San Salvador esto se hace hoy íntegramente a mano sobre expedientes manuscritos. Es lento, porque hay que recuperar y leer cada expediente del período. Es propenso a error, porque depende de interpretar la letra de otro y de buscar en el catálogo. Y no es verificable, porque no queda constancia de qué texto sustentó cada código.

##### Enfoques de codificación automática

La codificación clínica automática es la tarea de procesamiento de lenguaje natural que hace esto por computadora. Se plantea normalmente en dos etapas encadenadas, que son las de 2.2.3.4 y 2.2.3.6: primero un reconocedor de entidades localiza las menciones de enfermedad o procedimiento; después un normalizador asocia cada mención con su entrada en el catálogo.

Hay una formulación alternativa que trata la tarea como clasificación multietiqueta sobre el documento entero: dado el texto de un episodio, predecir el conjunto de códigos, sin decir dónde se apoya cada uno. Es más simple de entrenar, pero no sirve para este proyecto por una razón de fondo: al no devolver la referencia textual, elimina la verificabilidad. El médico recibiría códigos sin poder contrastarlos con lo que escribió.

La dificultad principal está en el tamaño y el desequilibrio del espacio de etiquetas. El catálogo tiene muchísimos códigos; unos pocos concentran la mayoría de los casos reales y la mayoría aparece muy poco o nunca en cualquier conjunto de entrenamiento. Eso produce sistemas que rinden bien en promedio y mal en los casos raros, que son justamente los que un codificador humano encontraría difíciles. Por eso, en la literatura y en la práctica, estos sistemas se conciben como asistentes del codificador y no como sustitutos, criterio que aquí se adopta sin reservas.

Dos revisiones recientes ordenan el campo. Dong et al. (2022) examinan la codificación clínica automática desde el punto de vista de la práctica: describen cómo trabaja un codificador humano, qué reglas aplica y qué consistencia se le exige, y comparan eso con lo que los sistemas de aprendizaje profundo ofrecen. Su hallazgo central es una brecha entre ambos: los modelos alcanzan buenas cifras en las pruebas de referencia, pero no explican por qué asignan un código ni garantizan asignar el mismo código a casos equivalentes, y esas dos propiedades, explicabilidad y consistencia, son justamente las que un servicio de codificación real necesita. Este trabajo toma esa brecha como requisito: cada propuesta lleva el fragmento de texto que la sustenta, y la confirmación humana es la que garantiza la consistencia.

Ji et al. (2024) proponen un marco unificado para describir cualquier sistema de codificación automática con aprendizaje profundo a partir de cuatro componentes: el codificador que extrae rasgos del texto, los mecanismos que permiten construir codificadores profundos, el decodificador que convierte esas representaciones en códigos, y la información auxiliar —jerarquía de la clasificación, descripciones de los códigos, frecuencias— que se puede incorporar para mejorar el resultado. Bajo ese marco, el sistema propuesto aquí usa un codificador Transformer preentrenado en el dominio, un decodificador en dos etapas de reconocimiento y normalización, y aprovecha como información auxiliar la jerarquía de la CIE-10 y las descripciones oficiales de cada código. La misma revisión confirma lo que ya señalaba la tarea CodiEsp: el problema abierto es la cola larga de códigos raros, y las pruebas de referencia más usadas, construidas sobre historias de cuidados intensivos en inglés, no representan bien la consulta ambulatoria ni el español.

##### El corpus CodiEsp

El corpus CodiEsp es el recurso de referencia para codificación automática en español. Lo elaboró el Barcelona Supercomputing Center y se presentó como tarea compartida en CLEF eHealth 2020. Consta de mil casos clínicos en español, anotados a mano por codificadores profesionales con los códigos de diagnóstico y procedimiento de la CIE-10, e incluye la referencia textual exacta que sustenta cada código (Miranda-Escalada et al., 2020). Se organiza en tres subtareas —diagnósticos, procedimientos y localización de la referencia— y se distribuye en particiones de entrenamiento, desarrollo y prueba a través de Zenodo.

La calidad de la anotación está documentada: el acuerdo entre anotadores fue de 88,6% para diagnósticos, 88,9% para procedimientos y 80,5% para la referencia textual. Esas cifras merecen una lectura cuidadosa porque marcan el techo razonable del componente automático. Si dos codificadores expertos coinciden en el 88,6% de los diagnósticos, pedirle a un sistema más que eso no tiene sentido, porque la propia idea de respuesta correcta tiene ese margen.

Para este proyecto CodiEsp cumple dos funciones. Aporta el material de ajuste fino que la clínica no tiene, y evita un proceso de anotación propio que llevaría meses. Y, como incluye la referencia textual, permite entrenar al modelo no sólo para proponer un código sino para señalar el fragmento que lo justifica, que es lo que el médico necesita ver.

Sus límites también hay que registrarlos. Los casos proceden de literatura y del contexto sanitario español, no de formularios de consulta boliviana; su extensión y su registro son distintos. El ajuste sobre datos propios, alimentado por las correcciones del médico, es la forma prevista de reducir esa distancia con el tiempo.

##### Arquitecturas de referencia para la clasificación multietiqueta

La codificación automática se ha estudiado durante más de una década como un problema de clasificación multietiqueta: dado un documento clínico completo, predecir el conjunto de códigos que le corresponden. El espacio de etiquetas es enorme —miles de códigos posibles—, muy desbalanceado y jerárquico, y los documentos son largos. La mayor parte de la investigación se ha hecho sobre MIMIC, una base de datos de altas hospitalarias en inglés de un hospital de Boston, y las arquitecturas que ahí se probaron marcan la evolución del campo.

El punto de partida es CAML, de Mullenbach et al. (2018): una red convolucional sobre el texto con un mecanismo de atención por etiqueta, de modo que cada código aprende a fijarse en los fragmentos del documento que lo justifican. Su aporte no fue sólo el rendimiento sino la explicabilidad: los autores hicieron que un médico evaluara los fragmentos que la atención señalaba y encontraron que eran, en su mayoría, explicaciones razonables del código. Ese principio —que cada código venga acompañado del fragmento que lo sustenta— es el que este proyecto adopta como requisito de interfaz. Vu et al. (2020) lo refinaron con LAAT, que reemplaza la convolución por una LSTM bidireccional y mejora el manejo de fragmentos de longitud variable, y fue durante un tiempo el modelo de referencia.

La entrada de los modelos preentrenados no fue inmediata. Los primeros intentos de ajustar BERT a la codificación rindieron peor que CAML, y Huang et al. (2022) explicaron por qué con PLM-ICD: el espacio de etiquetas es demasiado grande para la capa de clasificación habitual, los documentos exceden el límite de quinientas doce unidades del modelo, y el texto clínico difiere del de preentrenamiento. Su solución combina tres cosas: partir el documento en segmentos que se procesan por separado y se reúnen, atención por etiqueta sobre las representaciones resultantes, y un modelo preentrenado sobre texto biomédico. Con eso los modelos preentrenados pasaron a encabezar los resultados, y esa es exactamente la combinación que este proyecto reproduce con bsc-bio-ehr-es: un codificador del dominio, segmentación de la nota, y atención sobre los fragmentos.

En 2023 Edin et al. reprodujeron los principales modelos sobre MIMIC-III y MIMIC-IV bajo condiciones idénticas y encontraron que buena parte de las diferencias publicadas se debían a configuraciones débiles, particiones mal muestreadas y evaluación insuficiente, no a las arquitecturas. Confirmaron dos cosas que importan aquí: que todos los modelos fallan sobre los códigos raros, y que la longitud del documento tiene un efecto despreciable una vez que se maneja bien. La primera justifica el diseño de dos vías de este proyecto —clasificación para lo frecuente, reconocimiento de entidades y normalización contra el catálogo para lo raro—, porque la segunda vía no necesita haber visto un código en el entrenamiento para proponerlo. La segunda tranquiliza sobre las notas de consulta, que son mucho más cortas que un alta hospitalaria.

El último capítulo de esta historia es el de los modelos generativos. Soroush et al. (2024) tomaron más de veintisiete mil códigos distintos de un año de atención en un sistema hospitalario, pidieron a GPT-4, GPT-3.5, Gemini y Llama 2 que produjeran el código a partir de su descripción oficial, y encontraron que ninguno superó el cincuenta por ciento de coincidencia exacta; el mejor, GPT-4, acertó el 33,9 por ciento de los códigos CIE-10-CM. Los errores tenían un patrón: códigos con la forma correcta pero inexistentes, o existentes pero más generales o más específicos de lo pedido. Los autores advierten que la tarea es artificial y que sobre texto clínico real el rendimiento sería peor. Es la evidencia más directa de que generar un código de memoria es una mala idea, y de que el camino es vincular el texto con un catálogo que el sistema tiene delante, que es lo que la normalización de entidades hace.

Puesto en perspectiva, la línea que va de CAML a PLM-ICD es la de la clasificación sobre el documento completo, y la línea de CodiEsp es la de la extracción y normalización de menciones. Este proyecto combina las dos porque cada una falla donde la otra funciona: la clasificación es robusta sobre lo frecuente y ciega a lo raro; la normalización cubre cualquier código del catálogo y depende de que la mención esté bien detectada. En ambas vías, el código llega al médico con el fragmento que lo sustenta y con una confianza calibrada, y el médico decide.

##### Confirmación profesional y usos del dato codificado

El diseño pone al profesional en el circuito de decisión. El sistema no asigna códigos: los propone. Cada propuesta llega con el fragmento de texto que la origina y con un valor de confianza, y no produce ningún efecto sobre el expediente ni sobre los reportes hasta que alguien la confirma.

El valor de confianza no decide; ordena el trabajo. Las propuestas de confianza alta se presentan agrupadas para confirmarlas en bloque; las de confianza baja se muestran una por una con candidatos alternativos. Así el esfuerzo de revisión se concentra donde el sistema es menos fiable.

Esto cumple varias funciones a la vez. Es seguridad clínica: ningún código entra sin validación humana. Es asignación de responsabilidad: sigue en el médico, no se diluye en el sistema, y eso tiene consecuencias jurídicas directas. Es aceptación: un sistema que propone y espera se integra mejor que uno que decide. Y es mejora continua: como se guardan la propuesta original y la corrección, la clínica acumula un conjunto anotado propio con el que reajustar el modelo sobre su vocabulario real, sin trabajo adicional para nadie.

El dato codificado habilita cosas que hoy no existen: el reporte de morbilidad como consulta sobre la base de datos, la búsqueda clínica que encuentra todos los episodios de una enfermedad sin importar cómo la escribió cada médico, la estadística del propio establecimiento, y una base para interoperar en el futuro sin recodificar el histórico. Con una salvedad que conviene decir: el dato codificado es tan bueno como el registro de origen. Un codificador automático no arregla un registro pobre; lo hace visible.

#### RECONOCIMIENTO DE ESCRITURA MANUSCRITA

##### Captura, preprocesamiento y segmentación

Incorporar el archivo en papel al expediente electrónico empieza por capturarlo como imagen, y la calidad de esa captura condiciona todo lo que sigue. Un buen preprocesamiento puede mejorar más el resultado que cambiar de modelo. Importan la resolución, la profundidad de color —la escala de grises conserva información del trazo que la binarización directa pierde— y la geometría: un escáner plano produce imágenes correctas por construcción, una foto con celular introduce inclinación y perspectiva que hay que corregir.

El preprocesamiento típico corrige perspectiva e inclinación, normaliza la iluminación, binariza con umbral adaptativo para tolerar sombras y papel amarillento, y recorta al área útil. En este caso hay una ventaja adicional: los formularios de la clínica son preimpresos, con líneas, casillas y rótulos fijos. Con un ejemplar en blanco se puede sustraer esa plantilla, lo que quita ruido sistemático y, sobre todo, permite localizar cada campo por su posición conocida.

Eso último resuelve un paso que en otros contextos es difícil. Los modelos de reconocimiento de escritura trabajan sobre líneas de texto individuales, no sobre páginas; darles una página entera produce basura. En documentos históricos sin estructura hay que descubrir dónde están las líneas por proyección de perfil o por componentes conectados. En un formulario, la plantilla dicta dónde está cada campo, y basta recortar.

##### Fundamentos del reconocimiento de escritura

El reconocimiento de escritura manuscrita es la disciplina que transcribe texto escrito a mano a partir de imágenes. Se diferencia del reconocimiento óptico de caracteres convencional en algo esencial: el OCR trabaja sobre texto impreso, donde cada carácter tiene una forma canónica y la separación es regular; la escritura a mano varía entre personas, liga caracteres contiguos y no tiene segmentación clara. Los motores de OCR de propósito general fallan sistemáticamente sobre formularios manuscritos y no son una alternativa aquí.

Hay que distinguir además el reconocimiento en línea, que dispone de la trayectoria del trazo captada por un dispositivo digital, del reconocimiento fuera de línea, que sólo tiene la imagen final. Este proyecto es del segundo tipo, y los resultados de la literatura para uno y otro no son comparables.

El enfoque moderno reconoce líneas completas: el modelo recibe la imagen de una línea y produce directamente su transcripción, sin intentar separar caracteres, que es donde fallan las ligaduras. Y como en cualquier dominio cerrado, el problema es la escasez de datos etiquetados: anotar un corpus propio exige transcribir muchos ejemplares a mano. Romein et al. (2025) sostienen que ajustar un motor preentrenado es la vía habitual y necesaria para adaptarlo a un conjunto de documentos específico, porque alcanza un rendimiento adecuado con mucho menos material que entrenar desde cero.

Hay un techo que ninguna técnica supera y conviene decirlo sin rodeos: si una persona familiarizada con el contexto no puede leer un campo, ningún modelo lo va a leer. Por eso la evaluación prevista empieza clasificando la legibilidad humana de los formularios, y todas las métricas posteriores se interpretan a la luz de ese resultado.

El problema que hizo difícil el reconocimiento de escritura durante décadas es el de alineación: la imagen de una línea tiene cientos de columnas de píxeles y la transcripción tiene unas decenas de caracteres, y no se sabe de antemano qué columnas corresponden a qué carácter. Segmentar primero en caracteres y reconocer después fracasa con la letra cursiva, donde los caracteres se ligan. La solución que cambió el campo es la clasificación temporal conexionista, CTC, de Graves et al. (2006): la red produce, para cada columna, una distribución sobre los caracteres más un símbolo de «vacío», y la función de pérdida suma la probabilidad de todas las alineaciones posibles que colapsan en la transcripción correcta. Así la red aprende a transcribir sin que nadie le diga dónde empieza y termina cada letra.

Sobre esa base, la arquitectura estándar durante años combinó una red convolucional que extrae rasgos de la imagen, una LSTM bidireccional de Hochreiter y Schmidhuber (1997) que recorre las columnas en ambos sentidos para incorporar el contexto de la línea, y CTC como función de pérdida y decodificación. Los modelos con Transformer de 2.2.5.3 reemplazan la LSTM por atención, pero la mayoría conserva CTC o lo combina con un decodificador, y la idea de alineación implícita sigue siendo la misma.

Las métricas se derivan de la distancia de edición: el número mínimo de inserciones, eliminaciones y sustituciones para convertir la transcripción producida en la correcta. La tasa de error por carácter divide esa distancia, calculada sobre caracteres, por la longitud de la referencia; la tasa de error por palabra hace lo mismo sobre palabras. Una tasa por carácter del cinco por ciento suena buena y no lo es necesariamente: en una palabra de ocho letras, un error por carácter es una palabra entera mal, y la tasa por palabra puede ser cuatro o cinco veces la de carácter. Para campos de indexación como un nombre o una fecha, la medida que importa es la coincidencia exacta del campo completo, porque un nombre con una letra cambiada no encuentra al paciente.

El otro recurso que la práctica ha mostrado imprescindible es el aumento de datos. Con pocas líneas etiquetadas, se generan variantes de cada imagen —ligeras rotaciones, distorsiones elásticas, cambios de grosor de trazo, ruido— para que el modelo no memorice las muestras sino que aprenda la forma. La arquitectura HTR-VT que se evalúa en este proyecto fue diseñada precisamente para el régimen de pocos datos y depende de este tipo de aumento; sin él, un Transformer sobre unos cientos de líneas no converge.

##### Arquitectura y métricas

El Vision Transformer, propuesto por Dosovitskiy et al. (2021), lleva la arquitectura Transformer al dominio de la imagen: la divide en parches de tamaño fijo, los trata como si fueran los elementos de una secuencia y los procesa con el codificador estándar. Así la atención relaciona regiones distantes de la imagen desde la primera capa, algo que las redes convolucionales sólo logran apilando muchas. Las convolucionales conservan sin embargo una ventaja en las primeras etapas, para extraer rasgos de bajo nivel como bordes y terminaciones de trazo, y las arquitecturas híbridas aprovechan las dos cosas.

En transcripción aparece un problema de supervisión. El modelo debe producir una secuencia de caracteres a partir de una imagen, pero el conjunto de entrenamiento no dice qué región corresponde a cada carácter: la anotación es el texto completo de la línea. Anotar carácter por carácter sería carísimo y, en escritura ligada, muchas veces arbitrario. La función de pérdida CTC, introducida por Graves et al. (2006), resuelve exactamente eso: calcula la probabilidad de la transcripción correcta sumando sobre todos los alineamientos posibles entre la salida del modelo y la etiqueta, con un símbolo especial para separar repeticiones. Basta dar el texto de la línea; el modelo aprende solo el alineamiento.

La combinación de estos elementos define la familia de modelos que se evaluará. Li et al. (2024) proponen con HTR-VT una arquitectura eficiente en datos: una red convolucional para extraer rasgos de trazo, sólo el codificador del Vision Transformer para las dependencias largas dentro de la línea, y pérdida CTC para el alineamiento, sin decodificador autorregresivo. Incorpora además el optimizador SAM y técnicas de enmascaramiento por segmentos que regularizan el entrenamiento cuando hay pocos ejemplos, que es la situación de la clínica.

El rendimiento se mide con métricas basadas en distancia de edición: la tasa de error a nivel de carácter (CER), la tasa de error a nivel de palabra (WER), que siempre es mayor porque un carácter equivocado invalida la palabra entera, y la coincidencia exacta, que es la proporción de líneas transcritas sin ningún error. Cuál importa depende del uso. Para producir texto legible, la CER basta. Pero aquí el objetivo es indexar, y un código de expediente o una fecha con un carácter mal es simplemente un dato equivocado. Para los campos de indexación, la métrica que cuenta es la coincidencia exacta, que es la más exigente.

Hay dos familias de arquitecturas que compiten en este campo y conviene situarlas. TrOCR, presentado por Li et al. (2023), sigue el esquema codificador-decodificador: un Transformer visual preentrenado lee la imagen y un Transformer de texto preentrenado genera la transcripción unidad a unidad, como si tradujera. Se preentrena con datos sintéticos a gran escala y se ajusta con datos reales, y sus autores reportan que supera al estado del arte previo en texto impreso, manuscrito y de escena. Viene en tres tamaños, de 62 a 558 millones de parámetros. Su ventaja es que el decodificador aporta un modelo de lenguaje implícito que corrige errores visuales; su costo es el tamaño y el tiempo de inferencia, y el hecho de que ese modelo de lenguaje fue entrenado en inglés.

HTR-VT, de Li et al. (2024), toma el camino opuesto: sólo codificador, con pérdida CTC en lugar de decodificador, y regularización pensada para conjuntos de entrenamiento pequeños. Es más liviano y no arrastra un modelo de lenguaje de otro idioma, pero tampoco corrige errores por contexto. Para campos de indexación cortos —un código, una fecha, un nombre— esa corrección aporta poco y el tamaño importa más, lo que inclina la elección hacia HTR-VT. La prueba empírica prevista en la metodología incluye de todos modos a TrOCR en su variante base como línea de comparación, porque es el modelo que se usa como referencia en la literatura.

Que la escritura médica siga siendo un problema abierto lo muestra la aparición reciente de conjuntos de datos dedicados. RxHandBD, publicado en 2026, reúne 5.578 palabras manuscritas recortadas de recetas médicas reales, con un vocabulario de 1.559 entradas entre nombres de medicamentos, marcas, formas farmacéuticas e instrucciones, y se presenta expresamente como una prueba de referencia difícil de escritura de médicos para comparar arquitecturas (Islam, 2026). Que haga falta un conjunto así en 2026 dice bastante sobre lo lejos que está el problema de estar resuelto, y respalda la decisión de limitar el componente a campos verificables.

##### Alcance del componente en el proyecto

El alcance de este componente está acotado a propósito, y como en la concepción inicial del trabajo ocupaba un lugar central, conviene explicar el cambio.

El reconocimiento no se aplica a todo el contenido manuscrito sino a los campos de indexación: código de expediente, nombre, fecha y línea de diagnóstico. El objetivo no es reconstruir el expediente en papel como texto, sino hacerlo localizable dentro del sistema.

Tres razones sostienen esa decisión. Los campos de indexación se pueden verificar: un código debe existir en el padrón, una fecha debe ser coherente con el período del archivo, un nombre debe coincidir con un paciente registrado; el texto libre no ofrece ninguna de esas comprobaciones y un error en él pasaría al expediente sin que nadie lo note. La consecuencia del error es distinta: un campo de indexación mal transcrito hace difícil encontrar un expediente, que es reparable; una evolución mal transcrita pone un dato médico falso en un documento con valor probatorio. Y la evidencia sobre reconocimiento de letra médica reporta resultados bastante peores que sobre corpus generales, así que el proyecto incluye una prueba empírica propia sobre formularios reales, y el alcance definitivo del componente depende de lo que salga.

El componente opera con dos restricciones fijas: todo campo por debajo del umbral de confianza va a revisión humana, y nada transcrito entra al expediente sin que una persona lo compare con la imagen, que se conserva íntegra y vinculada. Y tiene una vida útil acotada: una vez incorporado el archivo histórico, el registro se hace en el sistema y el reconocimiento de escritura deja de intervenir. Por eso se lo trata como herramienta de migración y no como núcleo del trabajo, a diferencia de la codificación, que actúa sobre cada atención nueva.

#### SEGURIDAD DE LA INFORMACIÓN EN SALUD

##### Principios y marco de referencia

La seguridad de la información se suele describir con tres propiedades: confidencialidad, que la información sólo la vea quien está autorizado; integridad, que no se altere sin autorización ni registro; y disponibilidad, que esté cuando se la necesita. En la mayoría de los dominios se puede priorizar una sobre las otras. En el clínico las tres son críticas al mismo tiempo, y hay tensión entre ellas: un sistema demasiado restrictivo compromete la disponibilidad justo en la consulta, que es cuando la información hace falta.

La norma ISO 27799 (2016) adapta los controles genéricos de la familia ISO/IEC 27000 al sector salud, para información sanitaria en cualquier forma y soporte, con un enfoque neutral respecto de la tecnología. Este proyecto no aspira a certificarse en ella —excedería por mucho el alcance— pero la usa como marco para elegir controles pertinentes y proporcionados: control de acceso, gestión de identidades, auditoría, protección en tránsito, gestión de sesiones y minimización de datos. Dos principios atraviesan el diseño: mínimo privilegio, que cada uno tenga sólo los permisos que su función requiere, y defensa en profundidad, que la seguridad no dependa de un único control.

##### Control de acceso basado en roles

El control de acceso basado en roles es el modelo estándar en sistemas clínicos. Ferraiolo y Kuhn (1992) lo formularon con una idea sencilla: los permisos se asignan a roles y los usuarios a roles, en lugar de asignar permisos a personas. Dar de alta a un médico nuevo es asignarle un rol; cambiar lo que puede hacer enfermería se aplica de una vez a todo el personal de enfermería. Sandhu et al. (1996) formalizaron después una familia de variantes con jerarquías de roles y restricciones de separación de funciones. Para una clínica con cuatro roles bien delimitados alcanza el modelo base, con roles planos y permisos explícitos.

Los cuatro roles son recepción, enfermería, médico y administrador, y el Cuadro 2.5 resume lo que cada uno puede hacer. Recepción registra pacientes y gestiona la agenda sin ver contenido clínico. Enfermería accede a lo que su función necesita —signos vitales, indicaciones vigentes, medicación— sin diagnosticar ni prescribir. El médico accede al expediente completo y produce los asientos clínicos. El administrador gestiona usuarios, roles y parámetros, pero no puede leer, alterar ni suprimir asientos clínicos ni entradas de auditoría. Esta última restricción es la que impide que el mecanismo de control sea la puerta para eludirlo, y su ausencia es un defecto común en sistemas que le dan al administrador acceso a todo por comodidad.

Cuadro 2.5. Matriz de acceso por rol en el sistema propuesto

Función

Recepción

Enfermería

Médico

Administrador

Registro y agenda del paciente

Sí

Consulta

Consulta

No

Datos de filiación

Sí

Consulta

Consulta

No

Contenido clínico del expediente

No

Parcial

Completo

No

Signos vitales y administración de medicación

No

Sí

Consulta

No

Diagnóstico, indicaciones y receta

No

Consulta

Sí

No

Confirmación de la codificación propuesta

No

No

Sí

No

Usuarios, roles y parámetros

No

No

No

Sí

Bitácora de auditoría

No

No

No

Sí, sin alterarla

Fuente: Elaboración propia, 2026.

##### Autenticación y autorización

Autenticar es verificar quién es el usuario; autorizar es decidir qué puede hacer. El control por roles es autorización, y supone una autenticación previa confiable: un esquema de roles perfecto no sirve si se puede suplantar la identidad.

El punto crítico es cómo se guardan las contraseñas. Nunca en claro ni cifradas de forma reversible, porque en ambos casos una fuga de la base de datos expone las credenciales. Se guarda un resumen criptográfico calculado con una función hecha para eso. Las funciones de resumen de propósito general no sirven porque son rápidas, y la rapidez es lo que permite probar miles de millones de candidatos por segundo. Las funciones de derivación de clave para contraseñas invierten ese criterio con un costo computacional configurable, y la familia Argon2, especificada en el RFC 9106 (Biryukov et al., 2021), suma una exigencia de memoria que limita cuánto se puede paralelizar el ataque en hardware especializado. El documento recomienda la variante Argon2id por defecto y una sal de 128 bits, un valor aleatorio por credencial que impide que dos usuarios con la misma contraseña produzcan el mismo resumen.

Una vez verificada la identidad, hay que transportarla entre solicitudes. El mecanismo habitual en aplicaciones web es el JSON Web Token del RFC 7519 (Jones, Bradley y Sakimura, 2015): una estructura compacta con la identidad del usuario, su rol y una fecha de expiración, protegida por firma digital. El servidor verifica la firma sin consultar una base de sesiones. La contrapartida es que un token válido no se puede revocar antes de su expiración, lo que se mitiga con tokens de vida corta y renovación que sí consulta el estado del usuario. Y una precisión: el contenido del token está firmado pero no cifrado, así que no debe llevar información clínica, y su transmisión debe ir siempre por un canal cifrado.

La referencia más reciente para autenticación es la cuarta revisión de la guía de identidad digital del Instituto Nacional de Estándares y Tecnología de Estados Unidos, publicada en 2025 tras un proceso de casi cuatro años y dos borradores públicos (National Institute of Standards and Technology, 2025). Su cambio principal es pasar de listas de requisitos a un enfoque basado en riesgo: cada servicio evalúa las amenazas que enfrenta, el impacto de un fallo y las características de sus usuarios, y elige a partir de eso el nivel de garantía de autenticación que necesita. La guía impulsa además la autenticación de múltiples factores resistente a suplantación y reconoce explícitamente las claves de acceso basadas en criptografía de clave pública.

Para un sistema clínico interno con veinte usuarios, la lectura de esa guía lleva a dos decisiones. El nivel de garantía necesario es intermedio: el impacto de una cuenta comprometida es alto, porque expone información de salud, pero los usuarios trabajan dentro del establecimiento, sobre equipos controlados y en una red local. Y el segundo factor de autenticación, que en este diseño no se implementa en la primera versión, queda previsto como mejora para el acceso administrativo, que es el rol con más alcance.

Para el almacenamiento de contraseñas, la recomendación práctica de referencia es la del proyecto OWASP, que en su guía de almacenamiento de contraseñas coincide con el RFC 9106 en señalar Argon2id como primera opción y propone parámetros mínimos concretos —19 mebibytes de memoria, dos iteraciones y un grado de paralelismo, o bien 46 mebibytes con una iteración— pensados para equilibrar seguridad y costo en el servidor (OWASP Foundation, 2025). Son valores adecuados para el hardware previsto en la clínica.

##### Auditoría, no repudio y protección de datos

El registro de auditoría cumple aquí dos funciones. Como control de seguridad, permite detectar accesos indebidos y reconstruir lo que pasó ante un incidente. Como garantía documental, es uno de los mecanismos que sostienen la integridad del expediente. Bajo el secreto médico tiene una particularidad: debe registrar también las lecturas, porque que un profesional abra el expediente de un paciente que no atiende ya es la infracción.

El no repudio es la propiedad por la que el autor de una acción no puede negar haberla hecho. Se sostiene en tres cosas juntas: autenticación individual, el asiento que vincula cada operación con su autor, y la imposibilidad de alterar ese asiento después, garantizada por el encadenamiento de 2.2.2.6. De ahí una restricción que contradice una práctica común en establecimientos pequeños: no se admiten cuentas compartidas. Una credencial usada por tres personas destruye a la vez el control de acceso, la trazabilidad y el no repudio.

La información de salud merece un cuidado mayor que otros datos por tres razones. Un diagnóstico filtrado no se puede revocar como una contraseña. Puede usarse para discriminar en el empleo o en los seguros. Y la expectativa de confidencialidad es lo que hace que el paciente le cuente todo al médico; si se erosiona, se degrada la atención misma. A eso responden el cifrado en tránsito, la expiración de sesiones para consultorios compartidos, la política de respaldo con las mismas restricciones que el original, y el principio de minimización: no recolectar lo que no hace falta, porque cada dato guardado es un dato que hay que proteger.

Ejecutar los modelos de procesamiento en el propio servidor de la clínica es la aplicación de estos principios a la arquitectura. Mandar una nota clínica a un servicio externo para codificarla trasladaría la custodia del secreto médico a un tercero fuera de la relación asistencial, y supondría una transferencia de datos de salud cuya base legal en Bolivia no está establecida. La ejecución local elimina el problema en lugar de administrarlo.

##### Riesgos de aplicaciones web: el marco OWASP Top 10

La lista de riesgos de aplicaciones web que publica la Open Worldwide Application Security Project, el OWASP Top 10, es el documento de referencia para saber de qué hay que protegerse. Su edición de 2021 se construyó a partir de datos de más de quinientas mil aplicaciones y de una encuesta a profesionales, y ordena diez categorías por prevalencia y gravedad (OWASP Foundation, 2021). Lo notable de esa edición es que la categoría que subió al primer lugar no fue una vulnerabilidad técnica sino el control de acceso roto, presente en casi el cuatro por ciento de las aplicaciones analizadas: usuarios que pueden ver o modificar lo que no les corresponde porque la aplicación no verifica los permisos en cada operación. Para un sistema clínico, donde el permiso es la regla y no la excepción, eso confirma que el control de acceso de 2.2.6.2 es el punto que más atención merece.

Las categorías que más pesan sobre este proyecto son seis. El control de acceso roto ya dicho. Las fallas criptográficas, que la edición anterior llamaba exposición de datos sensibles: transmitir sin cifrar, guardar contraseñas de forma reversible, usar algoritmos débiles. La inyección, que sigue siendo la forma clásica de convertir un campo de formulario en una orden al motor de base de datos. La configuración insegura, que abarca desde servicios innecesarios expuestos hasta mensajes de error que revelan la estructura interna. Las fallas de identificación y autenticación, que incluyen contraseñas débiles permitidas y sesiones que no expiran. Y las fallas de registro y monitoreo, que no causan el ataque pero impiden detectarlo y reconstruirlo. El Cuadro 2.6 relaciona cada una con el control concreto que el sistema adopta.

Cuadro 2.6. Riesgos OWASP Top 10:2021 y controles adoptados

Categoría OWASP 2021

Riesgo para el sistema clínico

Control adoptado

A01 Control de acceso roto

Un usuario ve o modifica expedientes que no le corresponden

Verificación de permiso por rol en cada operación del servidor, nunca sólo en la interfaz; pruebas automáticas por rol

A02 Fallas criptográficas

Exposición de datos de salud en tránsito o en reposo; contraseñas recuperables

TLS 1.3 en toda comunicación; Argon2id para credenciales; copias de respaldo cifradas

A03 Inyección

Entrada de formulario interpretada como consulta a la base de datos

Consultas parametrizadas en toda la capa de acceso a datos; validación de tipos en la entrada

A05 Configuración insegura

Servicios expuestos de más; errores que revelan estructura interna

Un solo puerto expuesto; mensajes de error genéricos al cliente; configuración versionada

A07 Fallas de identificación

Contraseñas débiles; sesiones eternas; cuentas compartidas

Política de contraseñas según NIST 800-63-4; expiración de sesión; prohibición de cuentas compartidas

A09 Fallas de registro

Un acceso indebido que nadie detecta ni puede reconstruir

Bitácora encadenada de lecturas y escrituras; revisión periódica por el administrador

Fuente: Elaboración propia, 2026.

La lista no sustituye un análisis propio, y OWASP lo dice expresamente: es un documento de concienciación, no una norma. Se usa aquí como lista de verificación mínima que el diseño tiene que satisfacer antes de la primera prueba con usuarios, y como estructura de las pruebas de seguridad, que recorren cada categoría con al menos un caso.

##### Protección de datos en tránsito y en reposo

El cifrado en tránsito se resuelve con TLS 1.3, especificado en el RFC 8446 (Rescorla, 2018). Respecto de la versión anterior, elimina los algoritmos que se habían demostrado débiles, reduce el establecimiento de conexión a un solo viaje de ida y vuelta y cifra más partes del intercambio inicial. Aunque el sistema opera en la red interna de la clínica, se cifra igual, por dos razones: una red interna con puntos de acceso inalámbrico no es un medio confiable, y no cifrar hoy es tener que reconfigurar todo el día que un médico necesite acceder desde otro lugar.

El cifrado en reposo tiene una decisión menos obvia. Cifrar la base de datos completa protege contra el robo físico del disco, pero no contra el acceso indebido a través de la aplicación, que es el riesgo más probable, y agrega complejidad de gestión de claves que un establecimiento sin personal técnico no puede sostener. La decisión es cifrar el disco del servidor a nivel de sistema operativo, que es transparente para la aplicación, y cifrar siempre las copias de respaldo antes de que salgan del servidor, porque una copia en un disco externo o en otro sitio es el escenario donde el robo físico es realista.

##### Privacidad desde el diseño

Hay una forma de pensar la protección de datos que no parte de los controles sino del diseño, y que Cavoukian (2011) formuló como siete principios bajo el nombre de privacidad desde el diseño. Los principios piden que la protección sea proactiva y no reactiva, que la configuración por defecto sea la más protectora, que la privacidad esté incorporada en la arquitectura y no añadida encima, que no se plantee como sacrificio de funcionalidad, que cubra el ciclo de vida completo del dato, que sea visible y verificable, y que respete al usuario. El enfoque fue adoptado por la regulación europea de protección de datos y se ha vuelto lenguaje común en salud digital.

Leídos sobre este proyecto, los principios se traducen en decisiones que ya aparecen en otras secciones y que aquí se ven juntas. La configuración por defecto de un usuario nuevo es sin acceso a ningún expediente hasta que se le asigna un rol. El médico ve por defecto sólo los pacientes que atiende, y ampliar esa vista es una acción registrada. Los datos que se recogen son los que la norma técnica del expediente exige y no más; no hay campos «por si acaso». El ciclo de vida está cubierto desde la captura hasta la copia de respaldo cifrada y la exportación al paciente. Y la visibilidad se cumple con la bitácora, que permite a la clínica demostrar a un paciente o a una autoridad quién accedió a un expediente y cuándo.

El principio que más cuesta cumplir es el de que la privacidad no sea un sacrificio de funcionalidad, porque la tentación en un establecimiento pequeño es siempre la contraria: abrir el acceso a todos para que nadie se quede sin lo que necesita. La respuesta del diseño es que el acceso amplio existe, pero es una excepción que se solicita, se registra y se revisa, no un estado permanente. Con eso el médico de turno que necesita ver el expediente de un paciente que no es suyo puede hacerlo en el momento, y la clínica conserva la capacidad de explicar por qué ocurrió.

### TECNOLOGÍAS RELACIONADAS CON LA SOLUCIÓN

#### ARQUITECTURA DE SOFTWARE

Un patrón de arquitectura describe cómo se organiza un sistema en partes, qué hace cada una y cómo se relacionan. Es una de las decisiones más difíciles de revertir, porque condiciona la mantenibilidad, el despliegue y el costo de operación. Richardson (2018) contrasta los dos patrones dominantes. El monolito reúne toda la funcionalidad en una unidad de despliegue —un proceso, un artefacto, una base de datos— y es simple de desarrollar, probar y desplegar, pero se vuelve difícil de evolucionar cuando crecen el código y el equipo. Los microservicios descomponen el sistema en servicios independientes con su propia base de datos, comunicados por red; escalan y evolucionan por separado, pero traen orquestación, descubrimiento de servicios, consistencia eventual y observabilidad distribuida. El mismo autor advierte que esa complejidad no se justifica en sistemas medianos ni en equipos chicos.

Entre ambos está el monolito modular, que es lo que adopta este proyecto. Es una sola unidad de despliegue, pero con módulos internos de responsabilidad clara y bajo acoplamiento, sujetos a tres reglas: cada módulo expone una interfaz y nadie entra a su lógica por otra vía; ningún módulo consulta las tablas de otro; y las dependencias entre módulos no forman ciclos. El Cuadro 2.7 compara las tres opciones en los atributos que importan aquí. Para una clínica sin personal técnico, un proceso único que respaldar y monitorear es la opción sensata; y las fronteras entre módulos quedan trazadas por si algún día hace falta extraer uno.

Dentro de cada módulo la organización sigue capas: presentación, que recibe y valida las solicitudes; aplicación, que orquesta los casos de uso y delimita la transacción; dominio, donde viven las reglas de negocio —qué es un episodio válido, cuándo se puede cerrar, qué exige una adenda—; y persistencia, que traduce entre entidades y tablas. Las capas exteriores conocen a las interiores y nunca al revés, así que la lógica clínica no depende del motor de base de datos ni del marco web. Esto tiene una consecuencia práctica: las garantías documentales de 2.2.2 se implementan en la capa de dominio, de modo que se aplican sin importar por qué vía llegue la solicitud.

Los dos servicios de procesamiento no viven dentro del monolito. Una inferencia sobre una nota clínica o el reconocimiento de una página escaneada tardan segundos o minutos; las operaciones de gestión clínica son consultas y escrituras breves. Mezclarlos en un proceso haría que una inferencia larga bloqueara recursos que la consulta necesita, y la digitalización del archivo histórico es un lote que puede ocupar el equipo durante horas. Por eso corren como procesos aparte en el mismo servidor, con ciclos de vida propios, y se comunican con el núcleo por cola y llamadas locales asíncronas: el médico cierra el episodio, sigue atendiendo, y la propuesta de código aparece cuando está lista. El principio que gobierna esto es que ningún componente de inteligencia artificial puede estar en la ruta crítica de la atención.

Newman (2021), en la segunda edición de su libro de referencia sobre microservicios, dedica un espacio explícito al monolito modular y lo distingue de otras dos formas de monolito: el de proceso único, sin estructura interna clara, y el monolito distribuido, que es un sistema partido en servicios que sin embargo tienen que desplegarse juntos porque están acoplados, y que combina las desventajas de los dos mundos. Su recomendación es tajante: la mayoría de las organizaciones debería empezar por un monolito modular y pasar a microservicios sólo cuando tenga un problema concreto que los microservicios resuelvan, porque el costo operativo de la distribución es alto y rara vez se justifica en sistemas medianos. Es un argumento que viene del autor más asociado a los microservicios, y por eso pesa.

Cuadro 2.7. Comparación de patrones arquitectónicos

Atributo

Monolito clásico

Monolito modular

Microservicios

Unidades de despliegue

Una

Una

Varias, independientes

Fronteras entre módulos

Difusas

Explícitas y verificables

Físicas, por red

Complejidad operativa

Baja

Baja

Alta

Transacciones

Locales

Locales

Distribuidas

Escalado

Del conjunto

Del conjunto

Por servicio

Equipo mínimo viable

Reducido

Reducido

Varios equipos

Adecuación al proyecto

Insuficiente en modularidad

Adecuada

Desproporcionada

Fuente: Elaboración propia, 2026.

#### LENGUAJES DE PROGRAMACIÓN

El servidor se escribe en Python. La razón principal es que ahí viven las bibliotecas de aprendizaje automático que necesitan los servicios de procesamiento —PyTorch, Transformers— y usar el mismo lenguaje para el núcleo evita mantener dos ecosistemas. Python es además el lenguaje en el que el postulante tiene más experiencia, lo que reduce el riesgo de bloqueos durante el desarrollo.

El cliente se escribe en TypeScript sobre React, por medio de Next.js. TypeScript agrega tipos estáticos a JavaScript, lo que en una aplicación con muchos formularios clínicos reduce errores de integración entre cliente y servidor.

#### MARCOS DE TRABAJO Y BIBLIOTECAS

FastAPI es el marco de trabajo web elegido para el servidor. Expone servicios REST, valida automáticamente las solicitudes a partir de tipos declarados, genera la documentación de la interfaz, y tiene soporte nativo para operaciones asíncronas, que es justamente lo que necesita el esquema de servicios desacoplados. Es liviano, tiene documentación oficial activa y una comunidad amplia.

Next.js es el marco elegido para el cliente. Está construido sobre React, organiza la aplicación por rutas y permite renderizar en el servidor, lo que mejora la carga inicial en una aplicación interna con vistas de expediente densas. Para el acceso a datos desde Python se usa un mapeo objeto-relacional, que traduce entre entidades del dominio y tablas, reduce código repetitivo y concentra la definición del modelo en un solo lugar.

La interfaz entre el cliente web y el servidor sigue el estilo arquitectónico REST, que Fielding (2000) formalizó en su tesis doctoral como el conjunto de restricciones que hacen que la web funcione a escala: separación entre cliente y servidor, ausencia de estado en el servidor entre peticiones, respuestas que declaran si pueden almacenarse en caché, interfaz uniforme basada en recursos identificados por direcciones, y arquitectura en capas. Lo que eso significa en la práctica es que cada cosa que el sistema maneja —un paciente, un episodio, un asiento de auditoría— tiene una dirección, y que las operaciones sobre ella se expresan con los verbos del protocolo HTTP: consultar, crear, modificar, y en este sistema casi nunca eliminar.

La ausencia de estado en el servidor es la restricción que más pesa en el diseño de la autenticación, y es la razón por la que se usan tokens firmados: cada petición trae consigo la prueba de quién la hace, y el servidor no necesita recordar sesiones. La interfaz uniforme es la que permite que la especificación de la interfaz se genere automáticamente a partir del código, con el estándar OpenAPI, y que esa especificación sirva como contrato entre el equipo que desarrolla el cliente y el que desarrolla el servidor, aunque en este proyecto sean la misma persona. Un contrato explícito es también lo que hará posible, más adelante, que otro sistema consuma la interfaz sin leer el código.

La validación de la entrada ocurre en la frontera. Cada petición se comprueba contra un esquema declarado —tipos, rangos, campos obligatorios, formatos— antes de que llegue a la lógica de negocio, y lo que no cumple se rechaza con un mensaje que dice qué falló sin revelar cómo está construido el sistema. Esta disciplina es la que hace inocuas varias categorías de la lista OWASP de 2.2.6.5, y la que garantiza que un registro clínico nunca entre a la base de datos con un campo obligatorio vacío o una fecha imposible.

#### SISTEMA GESTOR DE BASE DE DATOS

PostgreSQL es el sistema gestor de base de datos. Es relacional, de código abierto, cumple las propiedades ACID —atomicidad, consistencia, aislamiento y durabilidad—, y ofrece tipos avanzados y búsqueda textual que resultan útiles sobre notas clínicas.

El modelo relacional se eligió por tres razones que el dominio exige. La integridad referencial: el motor garantiza que ningún episodio apunte a un paciente inexistente ni una indicación a un episodio que no está; en un expediente, un vínculo roto es un dato clínico huérfano. Las transacciones: cerrar un episodio y registrar su asiento de auditoría tiene que ocurrir todo o nada. Y la consulta declarativa, que permite hacer sobre los datos preguntas que nadie previó al diseñar, condición indispensable para la explotación estadística. El esquema se normaliza hasta tercera forma normal en el núcleo clínico, con desnormalizaciones puntuales donde el patrón de consulta lo justifique.

Hay una decisión de modelado que resume el proyecto: en la entidad de diagnóstico conviven el texto original, tal como lo escribió el médico, y el código normalizado. El texto se conserva porque es el registro auténtico; el código se agrega porque es lo que permite contar y reportar. Guardar sólo el código perdería matices; guardar sólo el texto reproduciría la opacidad del papel.

De las capacidades de PostgreSQL, cuatro se usan de forma que conviene dejar explicada. Las transacciones garantizan que el cierre de un episodio —que escribe el asiento, calcula el resumen, lo encadena y actualiza el estado— ocurra completo o no ocurra, de modo que un corte de energía a mitad del proceso no deja un episodio a medio cerrar. Las restricciones y disparadores en el motor impiden físicamente la modificación de un asiento cerrado: no es que la aplicación no ofrezca el botón, es que la base de datos rechaza la orden aunque venga de fuera de la aplicación, y esa es la segunda línea de defensa detrás del encadenamiento. El tipo de dato JSON binario permite guardar los campos variables de cada formulario —que difieren entre consulta, internación y evolución— sin multiplicar tablas, conservando la capacidad de consultarlos e indexarlos. Y el particionamiento por fecha de la tabla de auditoría, que crece con cada lectura, mantiene las consultas rápidas cuando la tabla tenga millones de filas.

La seguridad a nivel de fila, que el motor ofrece desde hace años, se consideró y no se adoptó como mecanismo principal de control de acceso. Permitiría que la base de datos misma filtre qué filas ve cada usuario, lo que es atractivo como defensa en profundidad, pero exige que cada usuario de la aplicación sea también un usuario del motor, y eso complica la operación de un servidor que administrará alguien sin formación técnica. Se deja documentado como extensión posible.

#### MODELOS DE APRENDIZAJE AUTOMÁTICO Y DESPLIEGUE

Para la codificación se usa bsc-bio-ehr-es, el codificador RoBERTa preentrenado en español biomédico y clínico descrito en 2.2.3.7, ajustado sobre el corpus CodiEsp. Para el reconocimiento de escritura se evalúa la familia HTR-VT de 2.2.5.3, ajustada sobre una muestra de formularios de la clínica. Ambos son modelos de tamaño moderado que corren sobre un procesador de propósito general; no se requiere unidad de procesamiento gráfico dedicada, aunque su presencia aceleraría el ajuste inicial.

Todo el conjunto se despliega en un servidor de la clínica, en contenedores para aislar el núcleo de los servicios de procesamiento y facilitar su actualización por separado. No se usan servicios en la nube ni interfaces externas de inteligencia artificial, por las razones de 2.2.6 y de 2.8.

Las tres tecnologías principales tienen documentación oficial mantenida y accesible, que es la fuente de referencia para su uso en el proyecto. La documentación de PostgreSQL cubre el sistema completo, incluidos los tipos de datos, las transacciones, la búsqueda de texto y las herramientas de respaldo (PostgreSQL Global Development Group, 2025). La de FastAPI describe el marco, su sistema de validación basado en tipos y su modelo de concurrencia asíncrona (Ramírez, 2025). La de Next.js cubre el enrutamiento, el renderizado en servidor y la integración con React (Vercel, 2025). Que la documentación esté viva y sea completa es uno de los criterios de selección declarados en el capítulo I, porque en un trabajo individual no hay a quién preguntarle cuando algo no funciona.

Que los modelos corran sobre un procesador convencional, sin unidad gráfica, es una restricción que hay que tomar en serio, porque un codificador de ciento veinticinco millones de parámetros procesando una nota de consulta tarda, sin optimizar, entre uno y dos segundos en un procesador de escritorio, y el reconocimiento de escritura sobre una página, bastante más. Hay dos técnicas que reducen eso sin cambiar el modelo. La primera es exportar el modelo al formato de intercambio ONNX y ejecutarlo con un motor de inferencia especializado, que aplica optimizaciones de grafo —fusión de operaciones, eliminación de cálculos redundantes— que el marco de entrenamiento no hace (ONNX Runtime, 2024).

La segunda es la cuantización: representar los pesos y las activaciones con enteros de ocho bits en lugar de números de punto flotante de treinta y dos. Jacob et al. (2018) mostraron que con un esquema cuidadoso la pérdida de exactitud es mínima y que la memoria se reduce casi cuatro veces, con una aceleración proporcional en procesadores que tienen instrucciones para aritmética entera. Sobre modelos tipo BERT en procesadores de servidor la aceleración reportada está entre dos y tres veces. La cuantización se aplica después del ajuste, sobre el modelo ya entrenado, y se verifica que la exactitud sobre el conjunto de prueba no baje más de un margen fijado; si baja, se conserva la versión sin cuantizar.

Con eso, el presupuesto de latencia del proyecto es de menos de un segundo por nota para la codificación, que es lo que permite mostrar la propuesta antes de que el médico termine de revisar la pantalla, y de procesamiento en lote fuera de horario para el archivo histórico, donde la latencia no importa y el volumen sí. Los dos servicios corren como procesos separados del núcleo, de modo que una carga pesada de reconocimiento de escritura no ralentiza la consulta que un médico está registrando en ese momento.

### METODOLOGÍAS Y MODELOS DE DESARROLLO

#### METODOLOGÍAS TRADICIONALES

Los modelos tradicionales de desarrollo, el de cascada sobre todo, organizan el trabajo en fases sucesivas —requisitos, diseño, construcción, pruebas, despliegue— donde cada una termina antes de que empiece la siguiente. Funcionan cuando los requisitos se conocen bien desde el principio y no cambian. Su debilidad es que la validación con el usuario llega al final, cuando corregir un malentendido de requisitos es caro.

En este proyecto ese riesgo es real. Los usuarios son médicos y personal de una clínica que nunca trabajó con un sistema de este tipo; lo que pidan al principio y lo que necesiten cuando lo usen no va a coincidir del todo. Un modelo que posponga la validación al final no conviene.

#### METODOLOGÍAS ÁGILES E ITERATIVAS

Los enfoques ágiles e iterativos responden a eso entregando el sistema por incrementos cortos, cada uno funcional y validado con el usuario, y aceptando que los requisitos se refinen sobre la marcha. Scrum organiza el trabajo en iteraciones de duración fija con un conjunto de ceremonias y roles; Kanban limita el trabajo en curso y visualiza el flujo. Los dos presuponen un equipo y una relación con el cliente que un trabajo de grado individual no reproduce exactamente.

La descripción oficial de Scrum está en la guía que sus creadores mantienen y revisan periódicamente; la versión vigente es la de 2020 (Schwaber y Sutherland, 2020). Define un marco deliberadamente mínimo: un equipo con tres responsabilidades —propietario del producto, desarrolladores y facilitador—, cinco eventos —el sprint y sus reuniones de planificación, seguimiento diario, revisión y retrospectiva— y tres artefactos, que son la lista de producto, la lista del sprint y el incremento. La revisión de 2020 eliminó buena parte del lenguaje prescriptivo de las versiones anteriores para devolver a Scrum su carácter de marco y no de método, e introdujo la noción de objetivo de producto como compromiso de largo plazo que da sentido a cada sprint.

Sommerville (2016) señala que los métodos ágiles funcionan mejor con equipos pequeños y estables, con un cliente disponible para revisar cada incremento, y en sistemas donde el costo de un cambio no es prohibitivo; y que rinden peor en sistemas críticos con requisitos regulatorios estrictos, donde hace falta documentación exhaustiva antes de construir. Un sistema clínico está en algún punto intermedio: tiene requisitos fijados por norma que conviene especificar por adelantado, pero también tiene una interfaz cuya adecuación sólo se descubre usándola. De ahí la combinación que se describe a continuación.

De las prácticas ágiles, la que más se toma prestada es la de Kanban en la formulación de Anderson (2010): visualizar el flujo de trabajo en un tablero con columnas por estado, limitar explícitamente cuánto trabajo puede estar en curso en cada columna, y medir el tiempo que cada elemento tarda en atravesar el tablero. El límite de trabajo en curso es la regla que más cuesta respetar y la que más rinde: obliga a terminar antes de empezar, y en un proyecto individual, donde la tentación de abrir frentes es constante, es la única defensa contra tener diez cosas a medias. Anderson lo presenta como un método de cambio evolutivo, que no exige reorganizar nada de golpe sino empezar por lo que hay y mejorar midiendo, y esa es la razón de adoptarlo sobre un marco más prescriptivo.

Las pruebas se organizan en tres niveles, siguiendo la distinción habitual que Sommerville (2016) describe entre pruebas de unidad, de componente y de sistema. Las de unidad son muchas, rápidas y automáticas, y cubren las reglas que no pueden fallar: que un episodio cerrado no se modifica, que la cadena de resúmenes verifica, que un rol no ve lo que no debe. Las de integración comprueban que los servicios de procesamiento se comunican con el núcleo y que la base de datos rechaza lo que debe rechazar. Las de sistema recorren los flujos completos —registrar una consulta, cerrar el episodio, generar el reporte— desde la interfaz. La proporción es deliberadamente piramidal: muchas de unidad, menos de integración, pocas de sistema, porque el costo de escribirlas y mantenerlas crece en ese orden.

Cada iteración termina con una revisión con usuarios de la clínica sobre software que funciona, no sobre maquetas, y lo que sale de esa revisión entra al tablero como trabajo priorizado para la siguiente. Es la práctica de Scrum que sí se conserva, aunque el resto del marco no se aplique, porque es la que conecta el desarrollo con el problema real. La experiencia documentada en países de ingresos medios que se comentó en 2.2.1.8 dice que los sistemas fracasan por no adaptarse al flujo de trabajo local, y la única forma de adaptarse es mostrarlo y escuchar cada pocas semanas.

#### METODOLOGÍA SELECCIONADA

Se adopta un enfoque iterativo e incremental, con iteraciones de cuatro a seis semanas y entregas verificables al final de cada una, sin la liturgia completa de Scrum, que para una sola persona sería artificial. El orden de los incrementos sigue la prioridad declarada en el capítulo I: primero el núcleo clínico —pacientes, expediente, consulta externa—, después internación y recetas, luego el servicio de codificación, y por último el reconocimiento de escritura, que es el de alcance más acotado y el único cuya continuidad depende de una prueba previa.

Cada iteración cierra con una revisión con usuarios de la clínica sobre lo construido, y lo que salga de esa revisión alimenta la siguiente. Los requisitos se administran en un documento vivo con trazabilidad hacia la entrevista o la observación que los originó. La gestión de riesgos se lleva en un registro con probabilidad, impacto y respuesta para cada uno; los principales son que el rendimiento de los modelos no alcance lo esperado y que el alcance completo no quepa en el período, y para ambos hay una respuesta definida: el reconocimiento de escritura es prescindible sin afectar al resto, y el orden de incrementos garantiza que lo esencial se entregue primero.

### MODELOS, ESTÁNDARES Y BUENAS PRÁCTICAS

Se incorporan aquí únicamente las normas y estándares que el proyecto usa de verdad, y se explica para qué. Incluir normas que no se van a aplicar no aporta nada y dificulta la lectura. El Cuadro 2.8 las reúne e indica, para cada una, qué regula y cómo se aplica en este trabajo.

Cuadro 2.8. Normas y estándares adoptados en el proyecto

Norma o estándar

Qué regula

Cómo se usa en el proyecto

ISO 15489-1:2016

Gestión de documentos de archivo: conceptos y principios

Define las cuatro características del documento con valor probatorio y el papel de los metadatos; base de las garantías documentales del expediente

ISO 27799:2016

Seguridad de la información en salud, sobre ISO/IEC 27002

Marco para seleccionar controles proporcionados: acceso, identidad, auditoría, cifrado en tránsito, sesiones, minimización

ISO/IEC 25010

Modelo de calidad del producto de software

Vocabulario con el que se definirán los criterios de evaluación de la solución

CIE-10 (OMS)

Clasificación de enfermedades para morbilidad y mortalidad

Vocabulario controlado al que se vincula cada diagnóstico; exigido por el reporte al SNIS

HL7 FHIR R5

Intercambio de información clínica por recursos y REST

Referencia para organizar el modelo de datos con vistas a una interoperabilidad futura; no se implementa intercambio

RFC 7519 (JWT)

Token web firmado para transportar afirmaciones

Mecanismo de autorización entre cliente y servidor

RFC 9106 (Argon2)

Función de derivación de clave para contraseñas

Almacenamiento de credenciales con Argon2id y sal de 128 bits

APA 7.ª ed.

Estilo de citas y referencias

Formato de las referencias bibliográficas, conforme a la norma institucional

Fuente: Elaboración propia, 2026.

Dos de estas normas merecen un comentario adicional. ISO 15489-1 no es una norma de software; es de archivística. Traerla a un proyecto de sistemas es una decisión deliberada, porque es la que da nombre preciso a lo que el expediente clínico necesita —autenticidad, fiabilidad, integridad, disponibilidad— y la que justifica reglas como la inmutabilidad y la adenda ante alguien que no sea informático. ISO 27799, por su parte, se usa como lista de verificación y no como meta de certificación; lo que se toma de ella es el criterio de proporcionalidad, es decir, que los controles se ajusten al tamaño y al riesgo real del establecimiento.

### ESTADO DEL ARTE

El Cuadro 2.9 reúne los trabajos que más directamente condicionan el diseño y señala, para cada uno, qué se toma de él. Las subsecciones siguientes los comentan por ámbito.

Cuadro 2.9. Trabajos relacionados y su relación con el proyecto

Trabajo

Aporte

Relación con este proyecto

Miranda-Escalada et al. (2020) — CodiEsp

Mil casos clínicos en español anotados con CIE-10 y referencia textual

Corpus de ajuste fino del codificador; base de la verificabilidad

Carrino et al. (2022) — bsc-bio-ehr-es

Primer codificador RoBERTa preentrenado en español biomédico y clínico

Modelo base del servicio de codificación

Miranda-Escalada et al. (2022); Lima-López et al. (2023)

Corpus DisTEMIST y MedProcNER: enfermedades y procedimientos, normalizados a SNOMED CT

Material complementario para el reconocedor de entidades

Gallego et al. (2024) — ClinLinker

Vinculación de entidades en español con bicodificador y codificador cruzado

Referencia para la etapa de recuperación por similitud

García Subies et al. (2025) — RigoBERTa Clinical

Corpus clínico abierto en español y modelo por preentrenamiento adaptativo

Modelo alternativo a comparar en la evaluación

Dong et al. (2022); Ji et al. (2024)

Revisiones de codificación automática: brecha de explicabilidad y marco unificado

Requisitos de fragmento de origen y confirmación humana

Hu et al. (2024)

GPT-4 frente a codificador de dominio en extracción de entidades clínicas

Justifica el codificador local sobre el modelo generativo

Williams et al. (2025); Asgari et al. (2025); Van Veen et al. (2024)

Evaluaciones de resúmenes clínicos generados: alucinación y omisión

Fundamento de la exclusión de la generación de texto

Li et al. (2023) — TrOCR; Li et al. (2024) — HTR-VT

Arquitecturas de reconocimiento de escritura con y sin decodificador

Candidatos para la prueba empírica sobre formularios

Romein et al. (2025); Islam (2026)

Evaluación de motores HTR y conjunto de datos de recetas manuscritas

Evidencia de la dificultad; alcance acotado a indexación

Bostan et al. (2024)

Barreras de implementación de HCE abiertas en países de ingresos bajos y medios

Diseño para operación sin personal técnico y validación de uso real

Saluddigital (2025) — Clínica Foianini

HCE unificada en un establecimiento de Santa Cruz de la Sierra

Prueba de viabilidad local; contraste de escala

Fuente: Elaboración propia, 2026.

#### INVESTIGACIONES INTERNACIONALES

En codificación clínica automática, la referencia para el español es la tarea CodiEsp de CLEF eHealth 2020. Los sistemas participantes combinaron, en distintas proporciones, reconocimiento de entidades con modelos tipo BERT, correspondencia contra diccionarios de sinónimos, y clasificación multietiqueta sobre el documento completo. Los mejores resultados vinieron de combinar reconocimiento de entidades con normalización contra el catálogo, justo la arquitectura que este trabajo adopta, y todos los equipos reportaron el mismo problema de fondo: rendimiento alto en los códigos frecuentes y bajo en la cola larga de códigos raros (Miranda-Escalada et al., 2020).

Sobre modelos de lenguaje para español clínico, el trabajo de Carrino et al. (2022) sigue siendo la base. Después de él aparecieron otros modelos y corpus —entre ellos recursos recientes de texto clínico en español y modelos ajustados sobre ellos— pero el criterio de este proyecto fue elegir un modelo con licencia clara, publicación abierta y evaluación documentada sobre tareas de reconocimiento de entidades, y bsc-bio-ehr-es cumple los tres.

Sobre negación y especulación, el corpus NUBes de Lima-López et al. (2020) es la referencia para español, y su existencia es lo que permite tratar el problema con el mismo paradigma de ajuste que el resto.

Sobre el uso de modelos generativos en clínica, la evidencia que más pesó fue la de Williams et al. (2025), ya comentada. Su valor para este trabajo no está sólo en las cifras sino en el diseño del estudio: cien encuentros reales, tres tipos de error medidos por separado, y una escala de daño potencial. Es el tipo de evaluación que un componente clínico debería superar antes de desplegarse, y que este proyecto replica a escala para su componente de codificación.

En reconocimiento de escritura, Romein et al. (2025) comparan motores comerciales y abiertos sobre documentos históricos y llegan a dos conclusiones aplicables aquí: que el ajuste sobre el material propio es imprescindible, y que la calidad de la captura y la segmentación pesan tanto como el modelo. La arquitectura HTR-VT de Li et al. (2024) es, entre las abiertas, la diseñada específicamente para escenarios con pocos datos etiquetados.

Un último grupo de trabajos no trata del problema técnico sino del contexto de implementación. La revisión de Bostan et al. (2024), ya comentada, y los marcos de la Organización Mundial de la Salud (2021) y de la Organización Panamericana de la Salud (2023, 2024) coinciden en que el fracaso de los proyectos de historia clínica electrónica en países de ingresos medios rara vez es técnico. Falla la adopción, falla el mantenimiento, falla la gobernanza de los datos. Esa lectura es la que llevó a reservar una fase entera del proyecto a la validación con usuarios reales y a que el diseño privilegie la operación sin personal técnico por sobre la sofisticación.

La línea de investigación más larga en codificación automática es la que se construyó sobre MIMIC, y vale la pena resumirla porque fija lo que se sabe y lo que no. Desde CAML en 2018 hasta PLM-ICD en 2022 el rendimiento sobre los códigos frecuentes mejoró de forma sostenida, y la atención por etiqueta se consolidó como el mecanismo que permite explicar cada código con un fragmento. La revisión de replicabilidad de Edin et al. (2023) puso en orden esa línea y dejó dos conclusiones firmes: que el problema de los códigos raros no lo ha resuelto ninguna arquitectura, y que buena parte de las mejoras publicadas eran artefactos de la evaluación. Toda esa evidencia es sobre inglés y sobre altas hospitalarias largas, así que se traslada al español y a notas de consulta con cautela; CodiEsp es el punto de contacto, y sus resultados, más bajos que los de MIMIC, reflejan tanto la dificultad del corpus como su tamaño.

La evaluación de modelos generativos como codificadores cierra el panorama por el otro lado. El resultado de Soroush et al. (2024), con todos los modelos por debajo del cincuenta por ciento de coincidencia exacta en una tarea más fácil que la real, y el de Hu et al. (2024), con GPT-4 por debajo de un codificador de dominio en extracción de entidades, apuntan en la misma dirección: para vincular texto con un catálogo cerrado, un modelo ajustado que tiene el catálogo delante supera a uno general que lo recuerda. Esa es la razón técnica, independiente de la de privacidad, por la que el proyecto no usa modelos generativos en la codificación.

#### INVESTIGACIONES Y EXPERIENCIAS NACIONALES

En Bolivia no se ha identificado investigación publicada sobre codificación automática de texto clínico ni sobre procesamiento de lenguaje natural aplicado a historias clínicas en español boliviano. La producción académica local sobre historia clínica electrónica se concentra en el desarrollo de sistemas de registro, en general para un establecimiento concreto, sin componente de estructuración del contenido.

En cuanto a implementaciones, el caso de la Clínica Foianini en Santa Cruz de la Sierra es el más documentado: una historia clínica electrónica unificada con más de diez años de datos consolidados (Saluddigital, 2025). Es una prueba de viabilidad en el mismo contexto regulatorio. Pero corresponde a un establecimiento de escala mayor, con recursos que una clínica mediana no tiene, y no incorpora estructuración automática del diagnóstico. En el ámbito público, el Sistema Nacional de Información en Salud recibe información codificada en CIE-10 de todos los establecimientos, pero la codificación la hace cada uno a mano.

#### SOLUCIONES TECNOLÓGICAS SIMILARES

Las soluciones comerciales de historia clínica electrónica disponibles en la región cubren bien la gestión del encuentro y la agenda, y algunas ofrecen catálogos de diagnóstico para seleccionar el código CIE-10 de una lista. Ninguna de las revisadas propone el código a partir del texto que el médico escribe; la carga de codificar sigue en el profesional, que en la práctica la evita o la posterga. Y ninguna atiende el archivo histórico en papel, porque asumen que el sistema arranca vacío.

Las plataformas de gestión documental de código abierto, con Alfresco como referencia, resuelven muy bien la custodia del documento —versiones, retención, auditoría— pero no conocen la estructura de una historia clínica ni pueden explotar su contenido. Sirven como modelo de disciplina, no como base de construcción, por las razones de 2.2.2.4.

#### SÍNTESIS DEL ESTADO DEL ARTE

Puesto todo junto, el espacio que este trabajo ocupa es el siguiente. Hay modelos de lenguaje para español clínico y un corpus anotado con CIE-10, los dos abiertos, que nadie ha aplicado a formularios de consulta de un establecimiento boliviano. Hay una disciplina de gestión documental madura que nadie ha combinado con un modelo de datos clínico específico en una clínica de esta escala. Y hay evidencia publicada suficiente para decidir qué no hacer con inteligencia artificial sobre un expediente médico. El aporte del proyecto es juntar esas tres cosas en un sistema que funcione en una clínica real, y medir el resultado.

### MARCO CONCEPTUAL

Se definen a continuación los términos que el documento usa con un sentido preciso, ordenados alfabéticamente.

Adenda. Asiento que corrige o complementa un registro clínico cerrado sin reemplazarlo. Lleva autor, fecha y motivo, y se muestra junto al original.

Ajuste fino. Continuación del entrenamiento de un modelo preentrenado sobre datos de una tarea específica, con tasa de aprendizaje reducida para conservar lo aprendido.

Bitácora de auditoría. Registro de sólo anexado que asienta cada lectura y escritura sobre el expediente, con usuario, rol, operación e instante.

Calibración. Propiedad de un modelo por la cual el valor de confianza que asigna a sus predicciones coincide con la proporción real de aciertos. Se corrige después del entrenamiento, típicamente por escalado de temperatura.

Clasificación multietiqueta. Tarea en la que a cada entrada le corresponde un conjunto de etiquetas, no una sola. La codificación de un episodio con varios diagnósticos es un caso.

Codificación clínica. Asignación a cada diagnóstico o procedimiento del código que le corresponde en una clasificación, aquí la CIE-10.

Cuantización. Representación de los parámetros de un modelo con enteros de menor precisión, habitualmente ocho bits, para reducir memoria y acelerar la inferencia con una pérdida de exactitud acotada.

Desidentificación. Localización y reemplazo de los datos que identifican a una persona en un texto clínico. No autoriza la salida del texto del establecimiento.

Episodio. Unidad de atención con inicio y cierre: una consulta externa o una internación. Agrupa los asientos clínicos producidos durante ella.

Expediente único. Historia clínica de un paciente consolidada bajo un solo identificador, que reúne todos sus episodios.

Firma digital. Firma basada en un certificado emitido por una entidad certificadora acreditada, con validez equivalente a la manuscrita según la Ley N° 164 y el Decreto Supremo N° 1793. Distinta de la firma electrónica en sentido amplio.

Función de resumen criptográfico. Función que transforma una entrada de cualquier longitud en una salida de longitud fija, de modo que cualquier cambio en la entrada cambia la salida y es inviable encontrar dos entradas con la misma salida. El sistema usa SHA-256.

Historia clínica electrónica. Registro longitudinal en formato digital de la información de salud de un paciente, con datos estructurados consultables.

Inmutabilidad. Propiedad del episodio cerrado de no admitir modificación de su contenido; las correcciones se hacen por adenda.

Medida F1 micro y macro. Dos formas de promediar la medida F1 sobre muchas etiquetas. El promedio micro pesa cada instancia y refleja lo frecuente; el macro pesa cada etiqueta y refleja lo raro.

Modelo de madurez. Escala por etapas que ubica el grado de adopción de un sistema de información en salud. El proyecto usa como referencia el modelo EMRAM.

Modelo preentrenado. Modelo de lenguaje entrenado sobre grandes volúmenes de texto sin etiquetar, que aprende representaciones generales reutilizables.

Monolito modular. Arquitectura de una sola unidad de despliegue organizada en módulos con fronteras explícitas y bajo acoplamiento.

Normalización de entidades. Asociación de una mención localizada en el texto con la entrada correspondiente de un catálogo controlado.

Reconocimiento de entidades nombradas. Localización en un texto de los fragmentos que nombran entidades de interés y su clasificación por tipo.

Reconocimiento de escritura manuscrita. Transcripción automática de texto escrito a mano a partir de su imagen.

Secreto médico. Deber de confidencialidad sobre la información conocida en el ejercicio profesional, declarado inviolable por la Ley N° 3131.

Sellado de tiempo. Prueba emitida por una autoridad externa de que un contenido existía en un momento dado, según el protocolo del RFC 3161. Previsto como extensión del sistema.

Servicio desacoplado. Proceso independiente del núcleo del sistema, con ciclo de vida propio, que se comunica con él de forma asíncrona.

Tasa de error por carácter. Distancia de edición entre la transcripción producida y la correcta, dividida por la longitud de la referencia. Medida principal del reconocimiento de escritura.

Trazabilidad. Capacidad de reconstruir quién hizo qué, sobre qué expediente y cuándo, a partir de los registros del sistema.

Valor de confianza. Estimación numérica que acompaña a cada propuesta del modelo e indica cuán seguro está de ella; se usa para ordenar la revisión, no para decidir.

### MARCO LEGAL Y NORMATIVO

Un sistema que guarda y procesa historias clínicas en Bolivia está condicionado por normas de distinta jerarquía que fijan qué debe contener el registro, qué garantías tiene que rodear su tratamiento y qué obligaciones de reporte tiene el establecimiento. Esta sección repasa cada una y, sobre todo, dice qué decisión de diseño se desprende de ella. El propósito no es describir el ordenamiento sino derivar de él requisitos verificables.

#### CONSTITUCIÓN POLÍTICA DEL ESTADO, ARTÍCULO 130

El artículo 130 de la Constitución Política del Estado reconoce el derecho a la intimidad y privacidad, y crea la acción de protección de privacidad frente al uso indebido de datos registrados en cualquier medio, físico o electrónico. Toda persona puede exigir conocer, objetar, eliminar o rectificar los datos que existan sobre ella.

De rango constitucional, opera como criterio interpretativo de todo lo demás. Dos cosas salen de aquí. La protección del dato frente al acceso indebido, que se concreta en el cifrado en tránsito, el control por roles y la auditoría. Y el derecho del titular a rectificar, que en el sistema se traduce en el mecanismo de adenda: la corrección es posible, queda documentada y no destruye el registro previo.

#### LEY N° 3131 DEL EJERCICIO PROFESIONAL MÉDICO

La Ley N° 3131 del Ejercicio Profesional Médico, de 2005, es la norma central. Declara inviolable el secreto médico y define la historia clínica como el conjunto de documentos escritos generados en el proceso asistencial, sin condicionar su validez al soporte. Eso habilita el registro electrónico.

La inviolabilidad no admite implementación parcial. No basta con proteger el sistema de afuera; hay que restringir también el acceso de adentro a quien no lo necesita, incluidos el personal técnico y administrativo. Un sistema donde el administrador puede leer cualquier expediente no cumple, por robusto que sea su perímetro. En el diseño esto se resuelve con tres mecanismos juntos: roles con mínimo privilegio, exclusión del contenido clínico del alcance del administrador, y procesamiento exclusivamente local.

La definición de la historia clínica como conjunto de documentos generados durante la atención tiene además una consecuencia sobre el modelo de datos: el expediente no es un registro que se actualiza sino una acumulación de asientos vinculados a episodios. Es lo que fundamenta la inmutabilidad del episodio cerrado.

#### DECRETO SUPREMO N° 28562

El Decreto Supremo N° 28562, reglamento de la ley anterior, detalla la estructura que debe tener la historia clínica para consulta externa e internación: qué campos y qué datos corresponde registrar en cada episodio.

Incide dos veces en el diseño. Es la base normativa del modelo de datos: las entidades y atributos del esquema deben cubrir como mínimo lo que el decreto exige, y los campos que él declara obligatorios deben serlo en el sistema, de modo que no se pueda cerrar un episodio incompleto. Y determina la estructura de los formularios en papel que se van a digitalizar, porque la clínica los diseñó siguiendo el mismo reglamento; eso es lo que hace posible segmentar los campos por plantilla.

#### LEY N° 164 DE TELECOMUNICACIONES Y TIC

La Ley N° 164 de Telecomunicaciones, Tecnologías de Información y Comunicación, de 2011, da el marco general de protección de datos en entornos digitales y reconoce la validez jurídica del documento digital y de la firma electrónica.

Ese reconocimiento es lo que permite que el expediente electrónico reemplace al de papel sin perder valor probatorio, pero con una condición: que el sistema pueda demostrar que el documento no fue alterado. No es una validez incondicional. Esa exigencia es la que sostiene el conjunto de garantías documentales de 2.2.2 y en particular el encadenamiento criptográfico de la auditoría. De aquí salen también el cifrado de las comunicaciones y la expiración de sesiones.

El reglamento de la ley, aprobado por Decreto Supremo N° 1793 de 13 de noviembre de 2013, es el que convierte el reconocimiento genérico en un mecanismo operativo (Estado Plurinacional de Bolivia, 2013). Define los tipos de certificado digital, los requisitos de las entidades certificadoras, el procedimiento de emisión y revocación, y establece que la ADSIB actúa como entidad certificadora pública bajo la ATT como raíz. Para el proyecto, lo relevante es la distinción que el reglamento hace entre documento digital con firma digital certificada, que goza de presunción de validez, y documento digital con otros mecanismos de firma electrónica, cuya validez se aprecia según las circunstancias. El sistema se ubica hoy en el segundo caso, con los elementos que le dan fuerza —autoría individual, integridad verificable, conservación— y con el camino previsto hacia el primero, como se explica en 2.2.2.7.

#### NORMA TÉCNICA PARA EL MANEJO DEL EXPEDIENTE CLÍNICO

La norma técnica aprobada por Resolución Ministerial N° 0090 de 2008 es el instrumento que regula de forma directa lo que este proyecto construye (Ministerio de Salud y Deportes, 2008). Establece el contenido mínimo del expediente —anamnesis, examen físico, diagnóstico, tratamiento, evoluciones, epicrisis, consentimiento informado, informes de laboratorio e imagen—, las condiciones de veracidad, carácter científico e integridad del registro, la responsabilidad del establecimiento sobre su custodia, y los procedimientos de acceso y entrega. Su artículo 23 establece que no es admisible, ni ética ni jurídicamente, impedir que el paciente acceda a su expediente, y regula la entrega de copia con acta firmada. Su artículo 24 regula la entrega por causas legales, auditoría médica externa o peritaje.

La norma no menciona el soporte electrónico, y ese silencio hay que leerlo con cuidado. No lo prohíbe; regula el expediente con independencia del soporte y describe su manejo en términos del único que existía cuando se escribió. Un sistema electrónico cumple la norma si ofrece un equivalente funcional de cada exigencia, y eso es lo que la sección 2.2.2.8 hace explícito: qué corresponde a la foliación, a la firma en cada hoja, a la custodia y a la entrega de copias. El modelo de datos del sistema se construyó partiendo del contenido mínimo que la norma enumera, de modo que ningún elemento obligatorio del expediente quede sin lugar.

Hay una consecuencia práctica sobre el archivo histórico. La norma exige conservar los expedientes, y el proyecto no propone destruir el papel una vez indexado. El componente de reconocimiento de escritura produce un índice que permite encontrar el sobre; el sobre sigue existiendo y sigue siendo el original hasta que la clínica, con asesoría legal, decida otra cosa. Esa prudencia cuesta espacio físico y evita un problema jurídico.

#### LEY N° 1080 DE CIUDADANÍA DIGITAL

La Ley N° 1080 de Ciudadanía Digital, de 11 de julio de 2018, completa el marco desde otro ángulo (Estado Plurinacional de Bolivia, 2018). Establece las condiciones para que las personas ejerzan derechos y cumplan deberes a través de medios digitales ante entidades públicas y privadas que prestan servicios delegados por el Estado, y dispone que el uso de esos mecanismos permite prescindir de la presencia física de la persona y de la presentación de documentación en papel. No regula la historia clínica y no obliga a una clínica privada, pero marca la dirección del ordenamiento boliviano: hacia el documento digital como forma ordinaria y no excepcional de relación. Un expediente clínico electrónico construido con las garantías de la Ley N° 164 queda alineado con esa dirección, y preparado para el momento en que la autoridad sanitaria la haga exigible en su sector.

#### NORMATIVA DEL SISTEMA NACIONAL DE INFORMACIÓN EN SALUD

El Sistema Nacional de Información en Salud y Vigilancia Epidemiológica, dependiente del Ministerio de Salud y Deportes, es la unidad que norma y administra la información en salud del país. Su alcance es nacional y comprende a todos los establecimientos —sector público, seguridad social, fuerzas armadas, policía, iglesia, organizaciones no gubernamentales y sector privado—, que están obligados a remitir periódicamente información sobre su producción de servicios y sobre los hechos vitales que registran (Ministerio de Salud y Deportes de Bolivia, s.f.). El instrumento de codificación es la CIE-10, vigente desde el año 2000.

Esta obligación es lo que le da carácter operativo, y no sólo académico, al componente de codificación. Hoy la clínica la cumple revisando expedientes a mano, con la lentitud, el error y la falta de verificabilidad ya descritos. Con el diagnóstico codificado desde el registro, el reporte pasa a ser una consulta agregada, y el establecimiento gana de paso la capacidad de conocer su morbilidad en cualquier momento y no sólo cuando la norma se lo pide.

#### REFERENCIAS NORMATIVAS INTERNACIONALES

Dos marcos extranjeros aparecen constantemente en la literatura sobre protección de datos de salud, y aunque no rigen en Bolivia sirven para ubicar las medidas adoptadas. La HIPAA estadounidense exige controles de acceso, auditoría, integridad y transmisión segura para la información de salud protegida. El Reglamento General de Protección de Datos europeo trata los datos de salud como categoría especial y consagra la minimización, la limitación de la finalidad y la protección desde el diseño. Los controles que este sistema implementa coinciden con lo que ambos exigen, lo que permite decir que no son improvisados; y el principio de protección desde el diseño describe bien el enfoque seguido, en el que las garantías no se agregan al final sino que condicionan la arquitectura desde el modelo de datos.

#### SÍNTESIS: DEL ORDENAMIENTO A LAS DECISIONES DE DISEÑO

El marco normativo no es una restricción externa al diseño; es uno de sus insumos. El Cuadro 2.10 resume la correspondencia entre cada exigencia y la decisión técnica que la responde. Vista en conjunto, muestra que las tres líneas del proyecto —gestión documental del expediente, codificación automática y ejecución local— no son opciones técnicas que pudieran haberse resuelto de otro modo, sino la traducción de tres exigencias del ordenamiento: la integridad del documento con valor probatorio, la obligación de reporte codificado y la inviolabilidad del secreto médico.

Cuadro 2.10. Correspondencia entre exigencia normativa y decisión de diseño

Norma

Exigencia

Decisión de diseño

CPE, artículo 130

Intimidad, privacidad y derecho de rectificación

Cifrado en tránsito, roles, auditoría y mecanismo de adenda

Ley N° 3131

Secreto médico inviolable; validez del registro sin importar el soporte

Mínimo privilegio, administrador sin acceso al contenido clínico, procesamiento local

Decreto Supremo N° 28562

Estructura mínima de la historia clínica

Modelo de datos derivado de la norma; campos obligatorios validados al cierre

Ley N° 164

Validez del documento digital condicionada a integridad y trazabilidad

Inmutabilidad del episodio cerrado y encadenamiento criptográfico de la auditoría

Normativa del SNIS-VE

Reporte periódico de morbilidad codificado en CIE-10

Codificación asistida y reporte generado por consulta agregada

Fuente: Elaboración propia, 2026.

REFERENCIAS BIBLIOGRÁFICAS

Adams, C., Cain, P., Pinkas, D., & Zuccherato, R. (2001). Internet X.509 Public Key Infrastructure Time-Stamp Protocol (TSP) (RFC 3161). Internet Engineering Task Force. https://www.rfc-editor.org/info/rfc3161

Anderson, D. J. (2010). Kanban: Successful evolutionary change for your technology business. Blue Hole Press.

Asgari, E., Montaña-Brown, N., Dubois, M., Khalil, S., Balloch, J., Au Yeung, J., & Pimenta, D. (2025). A framework to assess clinical safety and hallucination rates of LLMs for medical text summarisation. npj Digital Medicine, 8, 274. https://doi.org/10.1038/s41746-025-01670-7

Beale, T. (2002). Archetypes: Constraint-based domain models for future-proof information systems. En OOPSLA 2002 Workshop on Behavioural Semantics. https://openehr.org/publications/archetypes/archetypes_beale_oopsla_2002.pdf

Bertalanffy, L. von. (1968). General system theory: Foundations, development, applications. George Braziller.

Biryukov, A., Dinu, D., Khovratovich, D., & Josefsson, S. (2021). RFC 9106: Argon2 memory-hard function for password hashing and proof-of-work applications. Internet Research Task Force. https://www.rfc-editor.org/rfc/rfc9106

Bostan, S., Johnson, O. A., Jaspersen, L. J., & Randell, R. (2024). Contextual barriers to implementing open-source electronic health record systems for low- and lower-middle-income countries: Scoping review. Journal of Medical Internet Research, 26, e45242. https://doi.org/10.2196/45242

Brooke, J. (1996). SUS: A «quick and dirty» usability scale. En P. W. Jordan, B. Thomas, B. A. Weerdmeester, & I. L. McClelland (Eds.), Usability evaluation in industry (pp. 189–194). Taylor & Francis.

Carrino, C. P., Llop, J., Pàmies, M., Gutiérrez-Fandiño, A., Armengol-Estapé, J., Silveira-Ocampo, J., Valencia, A., Gonzalez-Agirre, A., & Villegas, M. (2022). Pretrained biomedical language models for clinical NLP in Spanish. Proceedings of the 21st Workshop on Biomedical Language Processing (BioNLP 2022), 193-199. https://aclanthology.org/2022.bionlp-1.19/

Cavoukian, A. (2011). Privacy by design: The 7 foundational principles (ed. rev.). Information and Privacy Commissioner of Ontario. https://www.ipc.on.ca/

Devlin, J., Chang, M.-W., Lee, K., & Toutanova, K. (2019). BERT: Pre-training of deep bidirectional transformers for language understanding. Proceedings of the 2019 Conference of the North American Chapter of the Association for Computational Linguistics (NAACL-HLT), 4171-4186. https://doi.org/10.18653/v1/N19-1423

Dong, H., Falis, M., Whiteley, W., Alex, B., Matterson, J., Ji, S., Chen, J., & Wu, H. (2022). Automated clinical coding: What, why, and where we are? npj Digital Medicine, 5, 159. https://doi.org/10.1038/s41746-022-00705-7

Dosovitskiy, A., Beyer, L., Kolesnikov, A., Weissenborn, D., Zhai, X., Unterthiner, T., Dehghani, M., Minderer, M., Heigold, G., Gelly, S., Uszkoreit, J., & Houlsby, N. (2021). An image is worth 16x16 words: Transformers for image recognition at scale. 9th International Conference on Learning Representations (ICLR 2021). https://openreview.net/forum?id=YicbFdNTTy

Edin, J., Junge, A., Havtorn, J. D., Borgholt, L., Maistro, M., Ruotsalo, T., & Maaløe, L. (2023). Automated medical coding on MIMIC-III and MIMIC-IV: A critical review and replicability study. En Proceedings of the 46th International ACM SIGIR Conference on Research and Development in Information Retrieval (pp. 2572–2582). ACM. https://doi.org/10.1145/3539618.3591918

Estado Plurinacional de Bolivia. (2005). Decreto Supremo N° 28562, Reglamento de la Ley N° 3131. Gaceta Oficial de Bolivia.

Estado Plurinacional de Bolivia. (2005). Ley N° 3131 del Ejercicio Profesional Médico. Gaceta Oficial de Bolivia.

Estado Plurinacional de Bolivia. (2009). Constitución Política del Estado. Gaceta Oficial de Bolivia.

Estado Plurinacional de Bolivia. (2011). Ley N° 164, Ley General de Telecomunicaciones, Tecnologías de Información y Comunicación. Gaceta Oficial de Bolivia.

Estado Plurinacional de Bolivia. (2013). Decreto Supremo N° 1793, de 13 de noviembre de 2013. Reglamento a la Ley N° 164 para el desarrollo de tecnologías de información y comunicación. Gaceta Oficial de Bolivia.

Estado Plurinacional de Bolivia. (2018). Ley N° 1080, de 11 de julio de 2018, de Ciudadanía Digital. Gaceta Oficial de Bolivia.

Fernández Marín, M. Á., & González Tolmo, D. (2022). Sistema informático web para la gestión de citas e historial médico de pacientes. Revista Metropolitana de Ciencias Aplicadas. https://doi.org/10.62452/p6haje75

Ferraiolo, D., & Kuhn, R. (1992). Role-based access controls. Proceedings of the 15th National Computer Security Conference.

Fielding, R. T. (2000). Architectural styles and the design of network-based software architectures [Tesis doctoral, University of California, Irvine]. https://ics.uci.edu/~fielding/pubs/dissertation/top.htm

Gallego, F., López-García, G., Gasco-Sánchez, L., Krallinger, M., & Veredas, F. J. (2024). ClinLinker: Medical entity linking of clinical concept mentions in Spanish. En Computational Science — ICCS 2024 (Lecture Notes in Computer Science). Springer. https://doi.org/10.1007/978-3-031-63775-9_19

García Subies, G., Barbero Jiménez, Á., & Martínez Fernández, P. (2025). ClinText-SP and RigoBERTa Clinical: A new set of open resources for Spanish clinical NLP. arXiv. https://doi.org/10.48550/arXiv.2503.18594

Graves, A., Fernández, S., Gomez, F., & Schmidhuber, J. (2006). Connectionist temporal classification: Labelling unsegmented sequence data with recurrent neural networks. Proceedings of the 23rd International Conference on Machine Learning (ICML), 369-376.

Guo, C., Pleiss, G., Sun, Y., & Weinberger, K. Q. (2017). On calibration of modern neural networks. En Proceedings of the 34th International Conference on Machine Learning (PMLR 70, pp. 1321–1330). https://proceedings.mlr.press/v70/guo17a.html

HIMSS. (2022). Electronic Medical Record Adoption Model (EMRAM). Healthcare Information and Management Systems Society. https://www.himss.org/maturity-models/emram/

HL7 International. (2023). FHIR Release 5 (R5) specification: Overview. Health Level Seven International. https://hl7.org/fhir/overview.html

Hochreiter, S., & Schmidhuber, J. (1997). Long short-term memory. Neural Computation, 9(8), 1735–1780. https://doi.org/10.1162/neco.1997.9.8.1735

Hu, Y., Chen, Q., Du, J., Peng, X., Keloth, V. K., Zuo, X., Zhou, Y., Li, Z., Jiang, X., Lu, Z., Roberts, K., & Xu, H. (2024). Improving large language models for clinical named entity recognition via prompt engineering. Journal of the American Medical Informatics Association, 31(9), 1812-1820. https://doi.org/10.1093/jamia/ocad259

Huang, C.-W., Tsai, S.-C., & Chen, Y.-N. (2022). PLM-ICD: Automatic ICD coding with pretrained language models. En Proceedings of the 4th Clinical Natural Language Processing Workshop (pp. 10–20). Association for Computational Linguistics. https://aclanthology.org/2022.clinicalnlp-1.2/

Islam, M. M. (2026). RxHandBD: A handwritten prescription word image dataset [Conjunto de datos]. Zenodo. https://doi.org/10.5281/zenodo.18478741

Jacob, B., Kligys, S., Chen, B., Zhu, M., Tang, M., Howard, A., Adam, H., & Kalenichenko, D. (2018). Quantization and training of neural networks for efficient integer-arithmetic-only inference. En Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition (pp. 2704–2713). IEEE. https://doi.org/10.1109/CVPR.2018.00286

Ji, S., Li, X., Sun, W., Dong, H., Taalas, A., Zhang, Y., Wu, H., Pitkänen, E., & Marttinen, P. (2024). A unified review of deep learning for automated medical coding. ACM Computing Surveys, 56(12), 306. https://doi.org/10.1145/3664615

Jones, M., Bradley, J., & Sakimura, N. (2015). RFC 7519: JSON Web Token (JWT). Internet Engineering Task Force. https://www.rfc-editor.org/rfc/rfc7519

Li, E., Clarke, J., Ashrafian, H., Darzi, A., & Neves, A. L. (2022). The impact of electronic health record interoperability on safety and quality of care in high-income countries: Systematic review. Journal of Medical Internet Research, 24(9), e38144. https://doi.org/10.2196/38144

Li, M., Lv, T., Chen, J., Cui, L., Lu, Y., Florencio, D., Zhang, C., Li, Z., & Wei, F. (2023). TrOCR: Transformer-based optical character recognition with pre-trained models. Proceedings of the AAAI Conference on Artificial Intelligence, 37(11). https://doi.org/10.1609/aaai.v37i11.26538

Li, Y., Chen, D., Tang, T., & Shen, X. (2024). HTR-VT: Handwritten text recognition with vision transformer. Pattern Recognition.

Lima Lopez, S., Perez, N., Cuadros, M., & Rigau, G. (2020). NUBes: A corpus of negation and uncertainty in Spanish clinical texts. Proceedings of the Twelfth Language Resources and Evaluation Conference (LREC 2020), 5772-5781. https://aclanthology.org/2020.lrec-1.708/

Lima-López, S., Farré-Maduell, E., Gasco, L., Nentidis, A., Krithara, A., Katsimpras, G., Paliouras, G., & Krallinger, M. (2023). Overview of MedProcNER task on medical procedure detection and entity linking at BioASQ 2023. Working Notes of CLEF 2023 — Conference and Labs of the Evaluation Forum (CEUR Workshop Proceedings, Vol. 3497). https://ceur-ws.org/Vol-3497/

Liu, Y., Ott, M., Goyal, N., Du, J., Joshi, M., Chen, D., Levy, O., Lewis, M., Zettlemoyer, L., & Stoyanov, V. (2019). RoBERTa: A robustly optimized BERT pretraining approach. arXiv. https://arxiv.org/abs/1907.11692

Marimon, M., Gonzalez-Agirre, A., Intxaurrondo, A., Rodríguez, H., Lopez Martin, J. A., Villegas, M., & Krallinger, M. (2019). Automatic de-identification of medical texts in Spanish: The MEDDOCAN track, corpus, guidelines, methods and evaluation of results. En Proceedings of the Iberian Languages Evaluation Forum (IberLEF 2019) (CEUR Workshop Proceedings, Vol. 2421, pp. 618–638). https://ceur-ws.org/Vol-2421/

Ministerio de Salud y Deportes de Bolivia. (s.f.). Sistema Nacional de Información en Salud y Vigilancia Epidemiológica (SNIS-VE): Conociendo al SNIS-VE. https://snis.minsalud.gob.bo/conociendo-al-snis-ve

Ministerio de Salud y Deportes. (2008). Norma técnica para el manejo del expediente clínico (Resolución Ministerial N° 0090, 26 de febrero de 2008). Estado Plurinacional de Bolivia.

Miranda-Escalada, A., Gascó, L., Lima-López, S., Farré-Maduell, E., Estrada, D., Nentidis, A., Krithara, A., Katsimpras, G., Paliouras, G., & Krallinger, M. (2022). Overview of DisTEMIST at BioASQ: Automatic detection and normalization of diseases from clinical texts: Results, methods, evaluation and multilingual resources. Working Notes of CLEF 2022 — Conference and Labs of the Evaluation Forum (CEUR Workshop Proceedings, Vol. 3180). https://ceur-ws.org/Vol-3180/

Miranda-Escalada, A., Gonzalez-Agirre, A., Armengol-Estapé, J., & Krallinger, M. (2020). Overview of automatic clinical coding: Annotations, guidelines, and solutions for non-English clinical cases at CodiEsp track of CLEF eHealth 2020. Working Notes of CLEF 2020 — Conference and Labs of the Evaluation Forum. https://temu.bsc.es/codiesp/

Mullenbach, J., Wiegreffe, S., Duke, J., Sun, J., & Eisenstein, J. (2018). Explainable prediction of medical codes from clinical text. En Proceedings of the 2018 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies (Vol. 1, pp. 1101–1111). https://aclanthology.org/N18-1100/

National Institute of Standards and Technology. (2015). Secure Hash Standard (SHS) (FIPS PUB 180-4). U.S. Department of Commerce. https://doi.org/10.6028/NIST.FIPS.180-4

National Institute of Standards and Technology. (2025). Digital identity guidelines (NIST Special Publication 800-63-4). U.S. Department of Commerce. https://doi.org/10.6028/NIST.SP.800-63-4

Newman, S. (2021). Building microservices: Designing fine-grained systems (2.ª ed.). O'Reilly Media.

ONNX Runtime. (2024). Quantize ONNX models [Documentación]. Microsoft. https://onnxruntime.ai/docs/performance/model-optimizations/quantization.html

Organización Internacional de Normalización. (2016). ISO 15489-1:2016. Información y documentación — Gestión de documentos — Parte 1: Conceptos y principios. ISO. https://www.iso.org/standard/62542.html

Organización Internacional de Normalización. (2016). ISO 27799:2016. Informática sanitaria — Gestión de la seguridad de la información en salud utilizando la norma ISO/IEC 27002. ISO. https://www.iso.org/standard/62777.html

Organización Internacional de Normalización. (2023). ISO/IEC 25010:2023. Ingeniería de sistemas y software — Requisitos y evaluación de la calidad de sistemas y software (SQuaRE) — Modelo de calidad del producto. ISO. https://www.iso.org/standard/78176.html

Organización Mundial de la Salud. (2020). SCORE for health data technical package: Tools and standards for SCORE essential interventions. OMS.

Organización Mundial de la Salud. (2021). Global strategy on digital health 2020-2025. OMS. https://www.who.int/publications/i/item/9789240020924

Organización Panamericana de la Salud. (2022, 11 de febrero). Entra en vigor la nueva Clasificación Internacional de Enfermedades (CIE-11) de la OMS [Noticia]. https://www.paho.org/

Organización Panamericana de la Salud. (2023). Transformación digital del sector salud: Caja de herramientas. OPS. https://www.paho.org/sites/default/files/2023-11/dt-toolkit-rev-10-dic-20230.pdf

Organización Panamericana de la Salud. (2024). Sistemas de Información para la Salud (IS4H): Análisis de madurez. OPS. https://www.paho.org/es/documentos/sistemas-informacion-para-salud-is4h

OWASP Foundation. (2021). OWASP Top 10:2021. https://owasp.org/Top10/2021/

OWASP Foundation. (2025). Password storage cheat sheet. OWASP Cheat Sheet Series. https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html

Pan, S. J., & Yang, Q. (2010). A survey on transfer learning. IEEE Transactions on Knowledge and Data Engineering, 22(10), 1345-1359. https://doi.org/10.1109/TKDE.2009.191

PostgreSQL Global Development Group. (2025). PostgreSQL documentation. https://www.postgresql.org/docs/

Ramírez, S. (2025). FastAPI documentation. https://fastapi.tiangolo.com/

Rescorla, E. (2018). The Transport Layer Security (TLS) Protocol Version 1.3 (RFC 8446). Internet Engineering Task Force. https://doi.org/10.17487/RFC8446

Richardson, C. (2018). Microservices patterns: With examples in Java. Manning Publications.

Romein, C. A., Rabus, A., Leifert, G., & Ströbel, P. B. (2025). Assessing advanced handwritten text recognition engines for digitizing historical documents. International Journal of Digital Humanities. https://doi.org/10.1007/s42803-025-00100-0

Saluddigital. (2025). Hospital en Bolivia implementa historial clínico electrónico y base de datos con más de diez años de información. Salud Digital. https://saluddigital.com/plataformas-digitales/hospital-en-bolivia-implementa-historial-clinico-electronico-y-base-de-datos-con-mas-de-diez-anos-de-informacion/

Sandhu, R. S., Coyne, E. J., Feinstein, H. L., & Youman, C. E. (1996). Role-based access control models. Computer, 29(2), 38-47. https://doi.org/10.1109/2.485845

Schwaber, K., & Sutherland, J. (2020). La guía de Scrum: La guía definitiva de Scrum. Las reglas del juego. Scrum.org y Scrum Inc. https://scrumguides.org/

Sennrich, R., Haddow, B., & Birch, A. (2016). Neural machine translation of rare words with subword units. Proceedings of the 54th Annual Meeting of the Association for Computational Linguistics (Volume 1: Long Papers), 1715-1725. https://doi.org/10.18653/v1/P16-1162

Shortliffe, E. H., & Cimino, J. J. (2014). Biomedical informatics: Computer applications in health care and biomedicine. Springer.

SNOMED International. (s.f.). SNOMED CT: The global language of healthcare. SNOMED International. https://www.snomed.org/

Solarte Pabón, O., Montenegro, O., Torrente, M., Rodríguez González, A., Provencio, M., & Menasalvas, E. (2022). Negation and uncertainty detection in clinical texts written in Spanish: A deep learning-based approach. PeerJ Computer Science, 8, e913. https://doi.org/10.7717/peerj-cs.913

Sommerville, I. (2016). Software engineering (10.ª ed.). Pearson.

Soroush, A., Glicksberg, B. S., Zimlichman, E., Barash, Y., Freeman, R., Charney, A. W., Nadkarni, G. N., & Klang, E. (2024). Large language models are poor medical coders — Benchmarking of medical code querying. NEJM AI, 1(5). https://doi.org/10.1056/AIdbp2300040

Thirunavukarasu, A. J., Ting, D. S. J., Elangovan, K., Gutierrez, L., Tan, T. F., & Ting, D. S. W. (2023). Large language models in medicine. Nature Medicine, 29(8), 1930-1940. https://doi.org/10.1038/s41591-023-02448-8

Tribunal Constitucional Plurinacional. (2016). Sentencia Constitucional Plurinacional 0575/2016-S3, de 17 de mayo de 2016. Estado Plurinacional de Bolivia.

Van Veen, D., Van Uden, C., Blankemeier, L., Delbrouck, J.-B., Aali, A., Bluethgen, C., Pareek, A., Polacin, M., Reis, E. P., Seehofnerová, A., Rohatgi, N., Hosamani, P., Collins, W., Ahuja, N., Langlotz, C. P., Hom, J., Gatidis, S., Pauly, J., & Chaudhari, A. S. (2024). Adapted large language models can outperform medical experts in clinical text summarization. Nature Medicine, 30(4), 1134-1142. https://doi.org/10.1038/s41591-024-02855-5

Vaswani, A., Shazeer, N., Parmar, N., Uszkoreit, J., Jones, L., Gomez, A. N., Kaiser, Ł., & Polosukhin, I. (2017). Attention is all you need. Advances in Neural Information Processing Systems.

Vercel. (2025). Next.js documentation. https://nextjs.org/docs

Vu, T., Nguyen, D. Q., & Nguyen, A. (2020). A label attention model for ICD coding from clinical text. En Proceedings of the Twenty-Ninth International Joint Conference on Artificial Intelligence (pp. 3335–3341). https://doi.org/10.24963/ijcai.2020/461

Williams, C. Y. K., Bains, J., Tang, T., Patel, K., Lucas, A. N., Chen, F., Miao, B. Y., Butte, A. J., & Kornblith, A. E. (2025). Evaluating large language models for drafting emergency department encounter summaries. PLOS Digital Health, 4(6), e0000899. https://doi.org/10.1371/journal.pdig.0000899
