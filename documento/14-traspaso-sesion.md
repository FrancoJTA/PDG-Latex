# Traspaso de sesión — estado al 2026-09-17

Punto de partida para la próxima sesión. Leer después de
[[11-brief-proyecto]] (fuente de verdad). Detalle de los agentes en
[[10-arquitectura-agentes]].

## Qué está hecho

- **`perfil/perfil.tex` actualizado** (aprobado por Franco): 7 objetivos
  específicos con verbos únicos (Identificar, Analizar, Diseñar,
  Implementar, Construir, Integrar, Evaluar), delimitación del alcance
  ampliado, índice tentativo con 2.8–2.10, 3.2, 3.4.6–3.4.7 y Cap. IV por
  incrementos, capa Bronze = MySQL + PostgreSQL + Excel. Compila.
- **Scaffold del documento final**: `main.tex` en la raíz + `content/`.
  Cap. II partido en `content/chapter-2/sec-01` … `sec-10`. Compila solo
  (89 páginas) con `latexmk -xelatex main.tex`.
- **`documento.bib`**: las 13 entradas heredadas del perfil verificadas.
  Siete tenían autores inventados o DOI incorrecto y se corrigieron;
  `Rashid2019` no existía y se reemplazó por `AlJafari2018`;
  `DomainAwareXGBoost2025` se reemplazó por `Shen2025`.
- **Briefs de investigación** de 2.1 a 2.10 en `documento/investigacion/`.
- **Cap. I** redactado (1.1–1.6; se agregó 1.6 Delimitación). Revisado.
  Las seis correcciones del revisor quedaron aplicadas en disco, pero el
  agente se cortó antes de verificarlas.
- **2.1 y 2.2**: redactadas, revisadas y cerradas (listas para el tutor
  salvo la carga de keys).
- **2.3 a 2.10**: redactadas, **sin revisar**.
- `documento/12-necesidades-cap3.md` y `13-necesidades-cap4.md`: qué hace
  falta para los capítulos III y IV.

## Qué falta, en orden

1. **Commit de punto de control** (preguntar a Franco antes de commitear).
2. **Verificar Cap. I** en `content/chapter-1/content.tex` (sesión
   principal, sin agente). Los seis puntos:
   - Sin la frase heredada de Rashid2019 atribuida a `AlJafari2018`
     ("trazabilidad de costos por proyecto y gestión de recursos en campo").
   - Sin "sí está registrada de forma sistemática"; el avance facturado vs.
     planificado del portal viejo redactado como hipótesis (L18, FODA, L141).
   - Justificación económica: Power BI con licencia comercial, resto abierto.
   - Entrevistas: requisitos desde la documentación existente; entrevistas
     a 5–8 usuarios en la validación (4.6), sin resultados.
   - `CostOverrunsEPC2022` con claim acotado al título.
   - Árbol del problema con la causa "dos sistemas" (nodo `c5`) y oración
     en la descripción del Ishikawa.
3. **Recortar extensión** (sesión principal, sin agente). Meta 400–600
   palabras por subsección, sin quitar citas ni argumentos de diseño:
   - 2.10.2 Power BI (872), 2.7.4 NestJS y Angular (760), 2.9.1 (772) y
     2.9.2 (695). Decidido: las cuatro.
   - 2.7 tiene un aviso de chktex (espacio antes de paréntesis, línea 32).
4. **Revisar 2.3 a 2.10** con dos agentes `revisor` en paralelo:
   - Grupo A: 2.3, 2.4, 2.5, 2.6.
   - Grupo B: 2.7, 2.8, 2.9, 2.10.
   Consigna: una ronda de fondo por sección. Contrastar cada cita con el
   brief de su sección (claims [V]/[V-cap], y que nada de "Notas para el
   redactor" marcado sin fuente aparezca citado); afirmaciones sobre datos
   no vistos (brief §3); errores técnicos; coherencia con el perfil y entre
   secciones vecinas (2.4 y 2.5 tratan EVM; 2.8 y 2.9 tratan OAuth y
   audiencia). Sin estilo, sin compilar. Salida: hallazgos por sección con
   archivo:línea y veredicto.
5. **Corregir hallazgos bloqueantes** (sesión principal, ediciones
   puntuales; agente `redactor` solo si una sección necesita reescritura).
6. **Compilar una vez** y revisar el PDF.

## Decisiones de Franco (respondidas el 2026-09-17)

- **ERP nuevo:** todavía no está en producción; la empresa opera con el
  portal viejo. Al pasar habrá un corte sin migración de base: lo vigente
  (contratos, proyectos activos) se registra de nuevo; lo cerrado queda
  solo en el MySQL viejo. Ya está en el brief §3.
  → **Corregir Cap. I L16** (y buscar en el Cap. II otras afirmaciones en
  presente del tipo "el ERP nuevo opera / sobre el que operan los
  proyectos activos"): redactar que el ERP nuevo está por entrar en
  producción y que, tras el corte, será el sistema de los proyectos
  activos.
- **175 tablas:** correcto, es el portal viejo. El ERP nuevo tiene unas
  50–51. → Verificar que Cap. I L14 atribuya las 175 al portal viejo, y
  si se menciona el ERP nuevo, usar 50–51.
- **Marco Legal y Normativo:** queda pendiente, no se agrega por ahora.
- **Título corto de 2.2.3 en el índice:** se mantiene como está.
- **Recortes:** recortar las cuatro subsecciones largas (2.10.2, 2.7.4,
  2.9.1 y 2.9.2), no solo 2.10.2.
- **Título del proyecto:** se mantiene sin cambios. Cuatro de los siete
  objetivos (migración de procesos, Keycloak, Power BI, MCP) no se nombran
  en el título. → Cuando se redacte la **Introducción** (al final), dejar
  explícito en una o dos oraciones que el módulo predictivo es el eje y
  que la modernización del ERP es la condición para integrarlo y usarlo.
- **Pendiente de diseño nuevo (para 3.4 y 4.3, no para esta tanda):** un
  proyecto activo al momento del corte arranca en el ERP nuevo sin su
  historia previa. Predecir sobre él puede requerir combinar datos del
  portal viejo y del ERP nuevo.

## Pendientes de Franco fuera de la redacción

- **Zotero**: cargar unas 120 keys de los briefs de `documento/investigacion/`
  en `documento.bib`. Reemplazar `Sommerville2011` y `Bass2012` por
  `Sommerville2016` y `Bass2021` (las que cita 2.6). Hasta entonces las
  citas salen vacías en el PDF. Bloquea el envío al tutor.
- **Avisar al tutor**: cambio de objetivos y delimitación, 1.6 agregada al
  índice, y que varias citas del perfil aprobado tenían autores o DOI
  incorrectos (en particular `Rashid2019`, que no existe).
- Para el Cap. III: acceso al MySQL de producción y planillas Excel (ver
  [[12-necesidades-cap3]]).

## Reglas que ya se aprendieron

- Ningún agente compila `main.tex` (las compilaciones concurrentes
  corrompieron `main.aux`).
- No más de tres o cuatro agentes a la vez.
- Una ronda de revisión de fondo por sección; estilo al final.
- Los errores que más se repitieron: citas que dicen más que su fuente,
  afirmar como hecho lo que el brief marca "por verificar", y advertencias
  internas del investigador filtradas a la prosa.
