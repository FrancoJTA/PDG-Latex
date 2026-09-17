# Pendientes de la fase de preparación

Checklist antes de empezar a redactar el documento final en LaTeX. Marcar
según se vaya resolviendo (edición manual de este archivo).

## Decisiones a confirmar con el tutor

- [ ] Validar que el índice de 4 capítulos de [[01-estructura-capitulos]]
      sigue vigente, o si conviene separar/fusionar algo (p. ej. dejar
      Evaluación como sección propia dentro del Cap. IV vs. un capítulo
      aparte, como sugiere el patrón de `referencias/ejemplo-plantilla-capitulos.pdf`).
- [x] ¿Keycloak/OAuth, MCP, Power BI y procesos del portal anterior entran
      en la tesis? — **Sí**, alcance ampliado (opción B, aprobada por el
      tutor, sin re-revisión del jurado). Ver `decisiones-tema.md`.
- [x] Dónde entra el alcance ERP en el índice — secciones en II/III/IV, Cap.
      IV por incrementos. Ver [[01-estructura-capitulos]].
- [ ] Avisar al tutor del ajuste al índice tentativo.
- [x] Qué `.bib` usa el documento final — `documento.bib` propio en la raíz
      (creado como copia de `perfil/perfil.bib`, que queda congelado).
- [ ] Zotero: importar `documento.bib` y apuntar el auto-export ahí (pasos
      4–5 de [[09-setup-zotero]], manual por GUI).
- [x] Dónde están las decisiones sobre procesos del portal anterior — en
      `erp-isi-mustang/docs/documentation/` (partes C/D de cada doc + `90`).
      Ver [[03-contexto-tecnico-erp]].

- [x] Idea, alcance, datos, tecnologías, metodología y confidencialidad
      consolidados en [[11-brief-proyecto]] (2026-09-16).
- [ ] Fecha real de entrega (la definen la carrera o el tutor).
- [ ] Entrevistas a usuarios clave (5–8), pendientes.

## Qué se puede redactar sin el proyecto terminado

| Parte | ¿Se puede ya? | Depende de |
|---|---|---|
| Cap. I Marco General | Sí | Reescribir objetivos/delimitación en `perfil.tex` primero |
| Cap. II Marco Teórico (2.1–2.10) | Sí, completo | Solo investigación bibliográfica |
| 3.1 Análisis de datos históricos | Sí | Exploración del MySQL de producción del portal viejo (ya hay acceso) |
| 3.2 Procesos del portal anterior | Sí, con lo ya decidido | `docs/documentation/` + `old-manual/` |
| 3.3 Requerimientos / 3.4 Diseño | Sí | Es diseño: se escribe antes de construir |
| 4.1–4.5 Incrementos | Uno por uno, al cerrar cada incremento | Código real de ese incremento |
| 4.6 Evaluación | Al final | Métricas y pruebas reales |
| Conclusiones / Recomendaciones | Al final | Todo lo anterior |
- [ ] Reescribir objetivo general/específicos, delimitación e índice
      tentativo en `perfil/perfil.tex` para el alcance ampliado.
- [ ] Confirmar si el Marco Legal/Normativo (visto como opcional-si-aplica en
      el `INDICE` genérico y presente en el ejemplo EOPR) aplica acá: ¿hay
      normativa boliviana de protección de datos o de la industria EPC que
      deba citarse?

## Trabajo técnico que el documento va a necesitar (Cap. III y IV)

- [ ] Exploración real de los datos históricos del módulo de certificaciones
      y de los módulos relacionados (horas, compras, presupuesto) —
      condición previa para escribir 3.1.
- [ ] Evaluar el impacto de los defectos de datos ya documentados en
      `docs/documentation/90-pendientes-y-brechas.md` (Bloque 1) sobre la
      calidad del dataset de entrenamiento, y decidir si se corrigen antes
      de entrenar o se documentan como limitación.
- [ ] Diseño formal de la arquitectura (diagramas C4: contexto y
      contenedores) a partir de la arquitectura por capas ya aprobada en el
      perfil.
- [ ] Construcción real del pipeline/modelos/API — recién ahí se puede
      escribir el Capítulo IV con evidencia real (capturas, métricas,
      pruebas), no antes.

## Scaffold LaTeX a recrear

- [x] `univalle-perfil.cls` recuperado a la raíz del repo; `perfil/` usa un
      symlink de un solo salto (`perfil/univalle-perfil.cls ->
      ../univalle-perfil.cls`). Verificado que compila. Ver
      [[00-estado-actual]].
- [x] Repo reorganizado: `idea2/` → `perfil/`, referencias agrupadas en
      `documento/referencias/`, ruido eliminado. Ver [[00-estado-actual]].
- [ ] Recrear `main.tex` + `content/chapter-{1,2,3,4}/content.tex` +
      `content/conclusiones.tex` con el título y los datos del tema actual
      (el scaffold viejo tenía el tema de grafos de conocimiento — mismo
      patrón técnico, contenido distinto). Vivirían en la raíz del repo,
      separados de `perfil/` (que debe quedar intacto como el perfil
      aprobado y entregado).
- [x] Actualizar `README.md` de la raíz (ya refleja el tema y la estructura actuales).

## No hacer todavía

- No editar `perfil/perfil.tex` fuera de lo aprobado: solo objetivos y
  delimitación para el alcance ampliado (ver `decisiones-tema.md`); el resto
  se mantiene como está.
- No empezar a redactar el Capítulo IV sin haber construido primero lo que
  describe (evitar documentar código que no existe).
