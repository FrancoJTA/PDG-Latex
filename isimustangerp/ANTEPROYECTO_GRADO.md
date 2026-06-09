# ANTEPROYECTO DE TRABAJO DE GRADO

---

```
Título:     Diseño e Implementación de un Sistema ERP Modular para la Gestión
            Integral de Proyectos de Ingeniería: Caso ISI Mustang Bolivia

Postulante: [Nombre del estudiante]
Tutor:      [Nombre del docente tutor]
Carrera:    Ingeniería de Sistemas / Licenciatura en Informática
Facultad:   [Facultad]
Universidad:[Universidad]
Gestión:    2026
```

---

## 1. Antecedentes

ISI Mustang es una empresa boliviana de consultoría e ingeniería industrial que gestiona proyectos para clientes en sectores de industria, minería y construcción. Su operación diaria involucra la coordinación de equipos de trabajo, control de costos por proyecto, gestión de horas hombre, manejo de requisiciones de compra, viáticos y seguimiento financiero de cada contrato activo.

Actualmente la empresa opera con un sistema de gestión interno que ha cumplido su ciclo de vida útil. El sistema no permite incorporar nuevas funcionalidades, carece de trazabilidad en los cambios de estado de proyectos y propuestas, no notifica automáticamente a los responsables en los flujos de aprobación, y no ofrece una vista consolidada del rendimiento financiero de todos los proyectos activos.

A nivel mundial, los sistemas de planificación de recursos empresariales (ERP) han demostrado ser herramientas fundamentales para la gestión integrada de organizaciones. Soluciones como SAP, Oracle ERP Cloud y Odoo dominan el mercado global; sin embargo, su costo de licenciamiento, complejidad de implementación y generalidad de diseño los hacen poco adecuados para empresas medianas latinoamericanas con procesos de negocio específicos y recursos limitados para adaptación.

En el contexto boliviano, el acceso a sistemas ERP industriales sigue siendo limitado para empresas de tamaño medio. La alternativa más común es continuar con hojas de cálculo o sistemas desarrollados internamente con tecnología obsoleta, lo que genera ineficiencias operativas documentadas y pérdida de información crítica del negocio.

El presente proyecto surge como respuesta a esta necesidad concreta: diseñar e implementar un sistema ERP modular, desarrollado con tecnologías modernas de código abierto, específicamente adaptado a las operaciones de una empresa de ingeniería de proyectos boliviana.

---

## 2. Planteamiento del Problema

ISI Mustang gestiona múltiples proyectos simultáneamente, cada uno con su propio presupuesto, equipo asignado, requisiciones de compra y ciclo de certificación mensual. La información de cada proyecto se encuentra dispersa en el sistema actual, sin integración real entre los módulos de gestión de personal, control financiero y pipeline comercial.

Los problemas identificados en el relevamiento del sistema actual son:

**Falta de trazabilidad**: No existe registro auditable de quién realizó cambios en el estado de proyectos o propuestas comerciales, ni cuándo.

**Flujos de aprobación sin notificaciones**: Las requisiciones de compra y viáticos quedan pendientes sin que los aprobadores se enteren, generando demoras operativas que impactan la ejecución de proyectos.

**Ausencia de vista financiera consolidada**: La gerencia debe navegar módulo por módulo para obtener las métricas de cada proyecto. No existe un tablero que consolide márgenes reales, desvíos de costos y porcentaje de avance en una sola pantalla.

**Desconexión entre pipeline comercial y ejecución**: Cuando una propuesta comercial es ganada, la creación del proyecto en el sistema actual es manual y sin vínculo formal con la propuesta que lo originó.

**Control de costos deficiente**: El cálculo real del costo por proyecto requiere navegar múltiples pantallas y combinar información de forma manual. No existe un mecanismo de cierre de período que garantice la integridad del histórico contable.

Estos problemas generan ineficiencias en la toma de decisiones gerenciales, duplicación de trabajo administrativo y riesgo de pérdida de información crítica del negocio.

---

## 3. Formulación del Problema

> **¿En qué medida el diseño e implementación de un sistema ERP modular, utilizando una arquitectura de dominio separado sobre NestJS y PostgreSQL, puede resolver las limitaciones de integración, trazabilidad y control financiero del sistema de gestión actual de ISI Mustang?**

---

## 4. Justificación

### Justificación práctica

El sistema propuesto reemplaza directamente el sistema de gestión actual de ISI Mustang, resolviendo problemas operativos concretos que afectan la eficiencia diaria de la empresa. Al terminar el proyecto, ISI Mustang contará con:

- Flujos de aprobación con notificaciones automáticas por correo electrónico
- Pipeline comercial con activación automática de proyectos al ganar una propuesta
- Control de horas y costos de personal por proyecto, con cierre de períodos que garantiza la integridad contable
- Tablero gerencial consolidado con métricas financieras en tiempo real

La empresa actúa como organización anfitriona del proyecto, proporcionando acceso a usuarios reales, procesos de negocio documentados y retroalimentación directa durante el desarrollo.

### Justificación técnica

El proyecto aplica y valida en un contexto real un conjunto de decisiones arquitectónicas que son objeto de estudio en ingeniería de software:

- **Arquitectura monolítica modular con separación por dominios**: Permite escalar a microservicios en el futuro sin reescribir la base. Es una alternativa documentada a microservicios desde el inicio, con menor complejidad operacional.
- **Reglas de negocio en base de datos**: El control de períodos contables cerrados se implementa a nivel de PostgreSQL con políticas de row-level security y triggers, garantizando integridad incluso ante errores de aplicación.
- **Motor de aprobaciones unificado**: Un único módulo de aprobaciones reutilizable entre todos los tipos de solicitudes (requisiciones, viáticos, cambios de proyecto, cierres de período) evita duplicación de lógica y facilita la auditoría.

### Justificación académica

La ingeniería de sistemas enfrenta el desafío constante de trasladar conceptos teóricos a soluciones funcionales en contextos reales. Este proyecto cubre el ciclo completo de desarrollo de software: relevamiento de requerimientos, análisis y modelado, diseño arquitectónico, implementación, pruebas y puesta en producción. Cada etapa genera artefactos documentables que constituyen evidencia académica del proceso.

Adicionalmente, el proyecto aporta al conocimiento local un caso de estudio sobre el diseño de sistemas ERP para empresas de ingeniería de proyectos en Bolivia, un segmento escasamente documentado en la literatura técnica nacional.

---

## 5. Objetivos

### Objetivo General

Diseñar e implementar un sistema ERP modular para la gestión integral de proyectos de ingeniería, que integre los módulos de autenticación, centros de costo, proyectos y clientes, propuestas comerciales, horas por proyecto, planilla de personal y presupuestos, resolviendo las limitaciones de trazabilidad, integración y control financiero del sistema actual de ISI Mustang Bolivia.

### Objetivos Específicos

1. **Relevar y documentar** los procesos de negocio actuales de ISI Mustang mediante entrevistas con usuarios y análisis del sistema existente, produciendo especificaciones funcionales (FRD) por módulo.

2. **Diseñar el modelo de datos** del sistema ERP sobre PostgreSQL, garantizando integridad referencial, trazabilidad completa de cambios y control de períodos contables mediante restricciones a nivel de base de datos.

3. **Implementar el módulo de Autenticación y Control de Acceso** con gestión de roles y permisos, permitiendo que cada usuario acceda únicamente a las funcionalidades correspondientes a su rol.

4. **Implementar el módulo de Gestión de Centros de Costo**, que actúa como entidad central de imputación de todos los movimientos económicos del sistema.

5. **Implementar el módulo de Proyectos y Clientes**, incluyendo el historial auditable de cambios de estado y la vinculación formal entre proyectos, centros de costo y clientes.

6. **Implementar el módulo de Propuestas Comerciales** con dashboard de pipeline comercial y activación automática de proyectos al ganar una propuesta.

7. **Implementar el módulo de Gestión de Horas por Proyecto**, incluyendo la grilla mensual de carga de horas, clasificación por tipo de actividad y flujo de aprobación automático al superar el umbral mensual.

8. **Implementar el módulo de Planilla de Personal y Costos**, que distribuye el costo empresa de cada persona entre los proyectos en proporción a las horas imputadas.

9. **Implementar el módulo de Presupuestos por Proyecto**, con la doble vista Seguimiento/Publicado y horizonte temporal multi-año.

10. **Validar el sistema implementado** mediante pruebas funcionales con usuarios reales de ISI Mustang, verificando que los flujos de trabajo documentados en los FRDs se comportan según lo especificado.

---

## 6. Alcance

### Incluido en el proyecto de grado

El presente proyecto de grado abarca el diseño completo del sistema y la implementación de los siguientes 7 módulos:

| Módulo | Descripción resumida |
|---|---|
| M1 — Autenticación y Control de Acceso | Login, roles, permisos, tokens de sesión |
| M2 — Gestión de Centros de Costo | CRUD de centros de costo tipo Proyecto y Estructura, jerarquía |
| M3 — Proyectos y Clientes | CRUD de clientes y proyectos, historial de estados, auditoría |
| M4 — Propuestas Comerciales | Pipeline comercial, KPIs, activación automática de proyectos |
| M5 — Gestión de Horas por Proyecto | Grilla mensual, clasificación por actividad, flujo de aprobación |
| M6 — Planilla de Personal y Costos | Plantel, costo empresa por persona/mes, asignación a CC |
| M7 — Presupuestos por Proyecto | Categorías de presupuesto, vista Seguimiento vs. Publicado |

Adicionalmente, el diseño de la base de datos incluye las entidades necesarias para los módulos fuera de alcance (Requisiciones, Viáticos, Certificación, Tablero Gerencial), para garantizar que la arquitectura de datos soporte la evolución futura del sistema.

### Excluido del proyecto de grado (trabajo futuro)

| Módulo | Justificación de exclusión |
|---|---|
| M8 — Requisiciones y Compras | Complejidad del flujo proveedor-cotización-OC, se incorpora en v2 |
| M9 — Viáticos y Movilidad | Depende de M8 para la lógica de rendición |
| M10 — Certificación Planificada | Depende de M7 (presupuestos) para el cálculo de desvíos |
| M11 — Tablero de Comando Gerencial | Consolida todos los módulos anteriores, va al final |
| M12 — Visualizador de Consultas | Módulo de soporte, sin dependencias críticas |
| M13 — Repositorio de Reportes | Funcionalidad complementaria de baja prioridad en v1 |
| Registro de Asistencia | No prioritario en v1 según ISI Mustang |
| Gestión de Inventario/Almacenes | Complejidad logística fuera del core del negocio en v1 |

### Límites adicionales

- El sistema opera en zona horaria y moneda boliviana como configuración principal, con soporte multi-moneda para conversión de gastos en divisas extranjeras.
- No incluye migración de datos del sistema actual — el nuevo ERP arranca con datos nuevos desde su lanzamiento.
- La infraestructura de producción (servidor, dominio, SSL) queda a cargo de ISI Mustang; el proyecto entrega el sistema listo para su despliegue.

---

## 7. Marco Teórico Referencial

### 7.1 Sistemas de Planificación de Recursos Empresariales (ERP)

Un ERP (Enterprise Resource Planning) es un sistema de información integrado que centraliza los datos y procesos operativos de una organización en una plataforma única [1]. Los sistemas ERP eliminan la duplicación de datos, garantizan consistencia entre departamentos y permiten reportes consolidados en tiempo real.

Los ERP modernos se organizan en módulos funcionales que comparten una base de datos común. Esta arquitectura permite que un registro creado en un módulo (por ejemplo, un proyecto) sea inmediatamente visible y utilizable por todos los demás módulos del sistema.

### 7.2 Arquitectura Monolítica Modular

La arquitectura monolítica modular organiza una aplicación en módulos internos con límites claros de responsabilidad, pero que se despliegan como una única unidad [2]. Cada módulo expone una interfaz pública y oculta sus detalles de implementación.

Esta arquitectura es preferible a microservicios en las etapas iniciales de un sistema porque:
- Reduce la complejidad operacional (un solo proceso a monitorear, desplegar y escalar)
- Facilita la refactorización temprana sin sobrecarga de comunicación entre servicios
- Permite evolucionar a microservicios más adelante extrayendo módulos maduros

### 7.3 NestJS como Framework de Backend

NestJS es un framework de Node.js para construir aplicaciones de servidor eficientes y escalables, construido sobre TypeScript [3]. Su sistema de módulos, proveedores e inyección de dependencias sigue los principios de la arquitectura limpia (Clean Architecture) y los patrones de diseño SOLID.

La organización por módulos de NestJS se alinea directamente con la arquitectura de dominio separado del sistema ERP propuesto: cada dominio funcional (autenticación, centros de costo, proyectos, etc.) se implementa como un módulo NestJS independiente con sus propios controladores, servicios y repositorios.

### 7.4 PostgreSQL y Reglas de Negocio en Base de Datos

PostgreSQL es un sistema de gestión de bases de datos relacional de código abierto con soporte para tipos de datos avanzados, funciones almacenadas, triggers y políticas de seguridad a nivel de fila (Row-Level Security) [4].

La implementación de reglas de negocio críticas directamente en la base de datos (no solo en la capa de aplicación) garantiza que las restricciones se apliquen independientemente del mecanismo de acceso al dato. En el presente proyecto, el control de períodos contables cerrados se implementa a nivel de base de datos para garantizar que ningún proceso — ni errores de la aplicación ni accesos directos — pueda modificar datos históricos ya cerrados.

### 7.5 Metodología de Desarrollo Iterativa e Incremental

La metodología iterativa-incremental organiza el desarrollo en ciclos cortos (iteraciones) al final de los cuales se entrega funcionalidad real y demostrable [5]. Cada iteración incluye análisis, diseño, implementación y prueba de un subconjunto de requerimientos.

Este enfoque es apropiado para el presente proyecto porque:
- Los requerimientos del sistema están parcialmente conocidos desde el inicio y se refinan durante el desarrollo
- Permite a los usuarios finales de ISI Mustang validar funcionalidades reales antes de que el sistema completo esté terminado
- Reduce el riesgo de que el sistema entregado no responda a las necesidades reales del negocio

### 7.6 Documento de Requerimientos Funcionales (FRD)

El FRD (Functional Requirements Document) es el artefacto que especifica con precisión el comportamiento esperado de un módulo de software desde la perspectiva del usuario [6]. Un FRD bien redactado incluye casos de uso, reglas de negocio, validaciones, restricciones y flujos alternativos.

En el presente proyecto, se elaboraron FRDs para los módulos de Autenticación (v1.1), Centros de Costo (v1.0) y Proyectos/Clientes (v1.0) durante la Fase 0. Los módulos adicionales incluidos en el alcance del proyecto de grado contarán con su FRD antes del inicio del desarrollo.

---

## 8. Marco Metodológico

### 8.1 Tipo de investigación

El presente trabajo es una **investigación aplicada** de tipo **descriptivo-propositivo**: describe el problema existente en el sistema de gestión actual de ISI Mustang y propone una solución tecnológica concreta que se implementa y valida.

### 8.2 Metodología de desarrollo de software

Se aplica una metodología **iterativa-incremental** basada en los principios de Scrum, adaptada al contexto de la organización:

- **Sprint**: ciclo de desarrollo de 2 semanas
- **Artefactos**: Product Backlog (lista de requerimientos priorizados), Sprint Backlog (requerimientos del sprint actual), FRD por módulo (especificación funcional previa al desarrollo)
- **Ceremonias**: planificación de sprint, demo al final de cada sprint, retrospectiva
- **Roles**: Product Owner (ISI Mustang), Arquitecto/Desarrollador (estudiante), Revisor Estratégico

### 8.3 Fases del proyecto

| Fase | Nombre | Duración | Objetivo |
|---|---|---|---|
| 0 | Definición y Relevamiento | 3 semanas | Documentar el sistema actual, definir alcance y FRDs |
| 1 | Fundación del Sistema | 6 semanas | M1 (Autenticación) + M2 (Centros de Costo) + M3 (Proyectos/Clientes) |
| 2 | Personas y Pipeline | 8 semanas | M4 (Propuestas) + M5 (Horas) + M6 (Planilla de Costos) |
| 3 | Control Financiero | 4 semanas | M7 (Presupuestos) |
| — | Testing y Validación | 3 semanas | Pruebas con usuarios reales, correcciones, documentación final |

**Total estimado: 24 semanas (~6 meses)**

### 8.4 Técnicas de relevamiento

- **Entrevistas estructuradas** con usuarios clave de ISI Mustang (Gerencia, Administrador, Empleados operativos)
- **Análisis documental** del sistema actual (pantallas, reportes, flujos de trabajo)
- **Observación directa** de los procesos operativos en la empresa
- **Prototipado iterativo** con mockups en Figma validados por los usuarios antes de la implementación

### 8.5 Técnicas de validación

- **Pruebas funcionales** por módulo contra los FRDs correspondientes
- **Pruebas de integración** que verifiquen el flujo end-to-end: Cliente → Propuesta → Proyecto → Centro de Costo → Horas → Presupuesto
- **Pruebas de aceptación de usuario** con personal de ISI Mustang en ambiente real
- **Validación de integridad de datos** ejecutando el script de base de datos en ambiente limpio

### 8.6 Herramientas tecnológicas

| Categoría | Herramienta | Versión |
|---|---|---|
| Base de datos | PostgreSQL | 13+ |
| Backend | NestJS | 10+ |
| Lenguaje | TypeScript | 5+ |
| ORM / Migrations | Prisma | 5+ |
| Frontend | React + TailwindCSS | 18+ / 3+ |
| Autenticación | JWT (JSON Web Tokens) | RFC 7519 |
| Diseño UI | Figma | — |
| Control de versiones | Git | — |
| Documentación | Markdown + PlantUML / draw.io | — |

---

## 9. Cronograma

```
Semana  Actividad
──────────────────────────────────────────────────────────────────
1-3     Fase 0: Relevamiento final, FRDs restantes, validación ERD
4-5     Fase 1 Sprint 1: M1 - Autenticación y Control de Acceso
6-7     Fase 1 Sprint 2: M2 - Gestión de Centros de Costo
8-9     Fase 1 Sprint 3: M3 - Proyectos y Clientes
10      Demo Fase 1 + retrospectiva + ajustes
11-12   Fase 2 Sprint 4: M4 - Propuestas Comerciales
13-14   Fase 2 Sprint 5: M4 continuación + dashboard comercial
15-16   Fase 2 Sprint 6: M5 - Gestión de Horas por Proyecto
17-18   Fase 2 Sprint 7: M6 - Planilla de Personal y Costos
19      Demo Fase 2 + retrospectiva + ajustes
20-21   Fase 3 Sprint 8: M7 - Presupuestos por Proyecto (Seguimiento)
22      Fase 3 Sprint 8 continuación: M7 (versión Publicado + control)
23      Demo Fase 3 + pruebas de integración end-to-end
24-25   Testing y validación con usuarios de ISI Mustang
26      Correcciones post-validación + documentación final de tesis
```

*Los tiempos son estimaciones. La fecha de inicio de Fase 1 depende de la aprobación del anteproyecto y disponibilidad horaria del estudiante.*

---

## 10. Presupuesto Estimado

| Ítem | Descripción | Costo estimado (Bs.) |
|---|---|---|
| Equipamiento | Computadora de desarrollo (si aplica) | 0 (equipo propio) |
| Software | Todas las herramientas son de código abierto y gratuitas | 0 |
| Infraestructura de desarrollo | PostgreSQL + NestJS en local | 0 |
| Infraestructura de pruebas | Servidor de testing (VPS o local ISI Mustang) | A cargo de ISI Mustang |
| Material bibliográfico | Libros, artículos, acceso a papers | 200 |
| Impresión y empastado | Documento final de tesis | 300 |
| Transporte | Visitas a ISI Mustang para relevamiento y validación | 500 |
| **Total** | | **~1.000 Bs.** |

*El costo de desarrollo (salario/beca del pasante) es responsabilidad de ISI Mustang y está fuera del presupuesto académico del proyecto de grado.*

---

## 11. Resultados Esperados

Al finalizar el proyecto de grado, se habrán producido los siguientes entregables:

### Entregables de software
- Sistema ERP funcional con 7 módulos implementados y desplegados
- Base de datos PostgreSQL con esquema completo para los 13 módulos del sistema (incluyendo los fuera de alcance de v1)
- API REST documentada por módulo
- Interfaz de usuario web funcional para todos los módulos incluidos

### Entregables de documentación
- FRDs completos para los 7 módulos implementados
- ERD completo del sistema (versión final)
- Diagramas de arquitectura del sistema
- Manual de usuario básico por rol
- Documento de tesis con todos los capítulos

### Entregables de validación
- Resultados de las pruebas funcionales por módulo
- Evidencia de las pruebas de aceptación con usuarios de ISI Mustang
- Métricas de calidad del código (cobertura de tests, análisis estático)

---

## 12. Bibliografía Base

[1] Monk, E., & Wagner, B. (2012). *Concepts in Enterprise Resource Planning* (4th ed.). Course Technology, Cengage Learning.

[2] Newman, S. (2021). *Building Microservices: Designing Fine-Grained Systems* (2nd ed.). O'Reilly Media. *(Capítulo sobre monolitos modulares)*

[3] NestJS Team. (2024). *NestJS Documentation*. https://docs.nestjs.com/

[4] PostgreSQL Global Development Group. (2024). *PostgreSQL 16 Documentation*. https://www.postgresql.org/docs/16/

[5] Larman, C. (2004). *Applying UML and Patterns: An Introduction to Object-Oriented Analysis and Design and Iterative Development* (3rd ed.). Prentice Hall.

[6] Wiegers, K., & Beatty, J. (2013). *Software Requirements* (3rd ed.). Microsoft Press.

[7] Fowler, M. (2002). *Patterns of Enterprise Application Architecture*. Addison-Wesley.

[8] Martin, R. C. (2017). *Clean Architecture: A Craftsman's Guide to Software Structure and Design*. Prentice Hall.

[9] Sommerville, I. (2015). *Software Engineering* (10th ed.). Pearson.

[10] Pressman, R. S. (2014). *Software Engineering: A Practitioner's Approach* (8th ed.). McGraw-Hill Education.

---

*Documento preparado para revisión académica — [Fecha de presentación]*
*Empresa anfitriona: ISI Mustang Bolivia*
