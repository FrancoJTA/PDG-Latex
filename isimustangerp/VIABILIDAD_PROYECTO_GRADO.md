# Análisis de Viabilidad — Proyecto de Grado
## Sistema ERP Modular para ISI Mustang

---

## Veredicto: SÍ es viable — con ajustes de enfoque académico

Este proyecto tiene todo lo que una institución universitaria requiere para aprobar un trabajo de grado en sistemas de información o ingeniería de software: problema real, complejidad técnica, metodología documentada y empresa anfitriona. Lo que hay que ajustar es el **encuadre académico** — la academia evalúa *cómo piensa el estudiante*, no solo qué construyó.

---

## Por qué sí es viable

### 1. Problema real y verificable
ISI Mustang opera con un sistema legacy que tiene limitaciones técnicas documentadas. El problema no es teórico: existe, tiene usuarios afectados, y el impacto es medible en términos operativos. Eso es exactamente lo que una comisión evaluadora busca en la justificación del anteproyecto.

### 2. Complejidad técnica de nivel superior
Un ERP modular sobre PostgreSQL + NestJS con:
- Modelo de datos de +20 entidades relacionadas
- Reglas de negocio en base de datos (restricciones de período cerrado, control de provisiones)
- Motor de aprobaciones unificado y reutilizable entre módulos
- Control financiero con doble versión (Seguimiento vs. Publicado)
- Tablero gerencial consolidado en tiempo real

...es trabajo técnico que justifica ampliamente un proyecto de grado de sistemas o informática.

### 3. Artefactos de ingeniería preexistentes
El proyecto ya cuenta con:
- ERD completo (`Diagrama ERD Portal ISI.html`)
- FRDs de 3 módulos (`Fase 0 - Definicion y Relevamiento/`)
- Diagramas de proceso (`Diagramas de Proceso.html`)
- Diagrama de módulos (`Diagrama de Modulos ISI Mustang.html`)
- Mockups UI (`.fig`)
- Plan formal con cronograma (`Plan_Formal_ERP_ISI_Mustang.pdf`)

Todo esto constituye la base del capítulo de análisis de requerimientos y diseño del sistema.

### 4. Metodología de desarrollo aplicada
El uso de sprints de 2 semanas con demos, FRDs antes del desarrollo, y fases progresivas es metodología iterativa-incremental documentable académicamente. El proceso de relevamiento del sistema actual (Fase 0) es análogo al análisis de sistemas formal requerido en cualquier tesis.

### 5. Empresa anfitriona real
ISI Mustang actúa como organización patrocinadora. Eso da validez práctica, contexto real de aplicación y la posibilidad de obtener carta de aceptación institucional — requisito en la mayoría de universidades bolivianas.

---

## Qué hay que ajustar

| Elemento | Situación actual | Qué necesita |
|---|---|---|
| **Pregunta de investigación** | No está formulada explícitamente | Formular una pregunta central que el proyecto responde |
| **Contribución individual** | El plan es para un equipo (pasante + Alfonzo + Mauricio) | Delimitar exactamente qué módulos y decisiones técnicas son del estudiante |
| **Hipótesis o proposición** | No existe en los documentos actuales | Agregar una hipótesis verificable al final del desarrollo |
| **Marco teórico** | No hay capítulo académico | Escribir el marco teórico con referencias bibliográficas |
| **Alcance del proyecto de grado** | 33 semanas con 2 devs = demasiado para uno solo | Reducir a un subconjunto coherente y demostrable |
| **Metodología documentada** | Existe implícitamente en el plan | Formalizarla en el documento académico (Scrum, RUP, iterativo-incremental) |

---

## Alcance recomendado para el proyecto de grado individual

Para que sea manejable por un estudiante pero con peso académico suficiente, se recomienda delimitar el alcance al **núcleo funcional completo**:

### Módulos incluidos (7 de 13)

| # | Módulo | Fase del plan | Justificación de inclusión |
|---|---|---|---|
| 1 | Autenticación y Control de Acceso | Fase 1 | Base de todo el sistema, sin ella nada funciona |
| 2 | Gestión de Centros de Costo | Fase 1 | Entidad central del modelo de datos |
| 3 | Activación de Proyectos + Clientes | Fase 1 | Ciclo de vida del proyecto, auditoría de estados |
| 4 | Propuestas Comerciales | Fase 2 | Pipeline comercial + activación automática de proyecto |
| 5 | Gestión de Horas por Proyecto | Fase 2 | Imputación de tiempo, flujo de aprobación automático |
| 6 | Planilla de Personal y Costos | Fase 2 | Costo real por proyecto |
| 7 | Presupuestos por Proyecto | Fase 3 | Control financiero, vista Seguimiento vs. Publicado |

### Por qué este corte

Con estos 7 módulos se cubre el flujo de negocio completo de extremo a extremo:

```
Cliente → Propuesta → [Activación automática] → Proyecto → Centro de Costo
                                                               ↓
                                          Horas + Costos de Personal
                                                               ↓
                                                      Presupuesto
```

Los módulos de Requisiciones, Viáticos, Certificación, Tablero Gerencial y Repositorio pueden quedar como trabajo futuro — lo cual es perfectamente válido académicamente y abre líneas de investigación para otros proyectos de grado.

---

## Marco de contribución académica

La contribución del estudiante al conocimiento puede enmarcarse desde tres ángulos, según lo que el tribunal evalúe con más peso:

### Ángulo 1 — Ingeniería de Software
> "Diseño e implementación de una arquitectura monolítica modular escalable para sistemas ERP, aplicando el patrón de separación por dominios funcionales."

La decisión de usar un monolito modular con capacidad de evolución a microservicios es una decisión arquitectónica documentable y justificable técnicamente.

### Ángulo 2 — Sistemas de Información
> "Análisis, diseño e implementación de un sistema de información integrado para la gestión operativa y financiera de empresas de ingeniería de proyectos en Bolivia."

El enfoque es en el ciclo completo: relevamiento, modelado, implementación, validación con usuarios reales.

### Ángulo 3 — Aplicación de tecnología moderna
> "Evaluación y aplicación de tecnologías backend modernas (NestJS + PostgreSQL) para el desarrollo de sistemas ERP en el contexto empresarial boliviano."

Comparativa entre opciones tecnológicas y justificación de la elección del stack.

---

## Riesgos académicos y cómo mitigarlos

| Riesgo | Probabilidad | Mitigación |
|---|---|---|
| El tribunal cuestiona si es "solo desarrollo" sin investigación | Media | Fortalecer el marco teórico y agregar una comparativa de soluciones ERP existentes vs. la propuesta |
| El alcance es demasiado amplio para un solo estudiante | Alta | Usar el corte de 7 módulos recomendado arriba |
| La empresa modifica los requerimientos durante el desarrollo | Alta | Documentar los cambios como "gestión del cambio de alcance" — es parte del proceso y válido académicamente |
| La defensa ocurre antes de terminar todos los módulos | Media | Definir un MVP demostrable (Fases 1 y 2 completas) que sea suficiente para defender |

---

## Checklist para formalizar como proyecto de grado

- [ ] Redactar el anteproyecto formal (ver `ANTEPROYECTO_GRADO.md`)
- [ ] Obtener carta de aceptación de ISI Mustang como empresa anfitriona
- [ ] Confirmar el tutor académico de la universidad
- [ ] Definir explícitamente qué módulos son responsabilidad del estudiante vs. del resto del equipo
- [ ] Llevar registro de horas trabajadas y decisiones técnicas tomadas durante el desarrollo
- [ ] Documentar el proceso de relevamiento y entrevistas con usuarios como parte de la metodología
- [ ] Preparar un ambiente de demostración funcional para la defensa
