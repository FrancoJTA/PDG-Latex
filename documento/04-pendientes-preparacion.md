# Pendientes de la fase de preparación

Checklist antes de empezar a redactar el documento final en LaTeX. Marcar
según se vaya resolviendo (edición manual de este archivo).

## Decisiones a confirmar con el tutor

- [ ] Validar que el índice de 4 capítulos de [[01-estructura-capitulos]]
      sigue vigente, o si conviene separar/fusionar algo (p. ej. dejar
      Evaluación como sección propia dentro del Cap. IV vs. un capítulo
      aparte, como sugiere el patrón de `referencias/ejemplo-plantilla-capitulos.pdf`).
- [x] Dónde entran Keycloak/OAuth, MCP y Power BI — **resuelto**: son trabajo
      del ERP en general (pista aparte de Franco en la empresa), no del
      módulo predictivo. No van en Cap. III/IV; a lo sumo, mención breve
      como antecedente (Cap. I) o como recomendación/trabajo futuro. Ver
      [[03-contexto-tecnico-erp]].
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

- No editar `perfil/perfil.tex` — es el documento ya aprobado, se usa como
  fuente, no se modifica salvo pedido explícito del tutor.
- No empezar a redactar el Capítulo IV sin haber construido primero lo que
  describe (evitar documentar código que no existe).
