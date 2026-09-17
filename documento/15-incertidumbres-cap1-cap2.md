# Incertidumbres de los capítulos I y II — estado al 2026-09-17

Qué no está firme en el Cap. I y el Cap. II, agrupado según qué lo destraba.
Leer después de [[11-brief-proyecto]] y [[14-traspaso-sesion]]. Cuando un
punto se resuelva, corregir el capítulo afectado y tacharlo aquí.

## 1. Depende de los datos reales (exploración del Cap. III)

Es lo más riesgoso: si los datos no confirman el supuesto, hay que reescribir.

| Supuesto | Dónde aparece | Qué cambia si no se confirma |
|---|---|---|
| El portal viejo registra el avance facturado frente a lo planificado de forma consistente | Cap. I: antecedentes, FODA, justificación técnica | Cambia la justificación técnica y cómo se construyen las etiquetas |
| Las causas de las desviaciones están documentadas | Cap. I, justificación técnica | Ya está previsto: la etiqueta sale solo de comparar lo planificado con lo ejecutado |
| Existe un "planificado certificar" en el histórico (no hay tabla `certificaciones` explícita; candidatas: `facturacion`, `act_proyecto`, `codeproyecto`) | 2.5.3 (definición de desviación en certificaciones), 2.4 | El caso de clasificación podría quedar sin etiqueta. Habría que redefinir o reemplazar un caso, y eso toca los objetivos |
| Las variables de EVM (CV, SPI, etc.) se pueden reconstruir en el MySQL viejo | 2.5.2, 2.4.2 | Se pierden variables predictoras |
| El histórico cubre más de diez años con datos útiles | Cap. I (varias partes), delimitación temporal | Cambian cifras y alcance |
| Las mismas variables se pueden obtener en los dos esquemas (MySQL y PostgreSQL) | 2.3, 2.4, delimitación | Cambia el diseño de la capa Silver |
| DuckDB funciona con MySQL 5.7 | 2.7.2 | Ya figura como verificación empírica del Cap. IV |

## 2. Decisiones de diseño que el texto remite al Cap. III

Están redactadas como abiertas. Cuando se decidan, volver al Cap. II para
que coincida.

- **Autenticación de Power BI con Keycloak:** conector personalizado con
  OAuth + PKCE, o token de una credencial de servicio en el encabezado
  (2.10.2, 2.8).
- **Gateway de Power BI:** depende de si la API del ERP es accesible desde
  Internet (2.10.2).
- **Segundo token del servidor MCP hacia el ERP y FastAPI**, y cómo se
  respetan los permisos del usuario (2.9, 2.8).
- **Si FastAPI lee la base directamente** o recibe los datos desde NestJS
  (2.7.3 lo deja abierto).
- **Proyectos activos al momento del corte:** arrancan en el ERP nuevo sin
  su historia; puede hacer falta combinar las dos fuentes (3.4 y 4.3).
- **"Seis capas" del perfil:** 2.6 aclara que son etapas del flujo de datos,
  no capas lógicas. El diseño real se define en 3.4.

## 3. Datos del contexto que tiene que confirmar Franco

- **Adopción de Power BI:** la justificación económica (Cap. I) dice que la
  empresa ya la tiene prevista independientemente de este trabajo. Si no,
  hay que justificar el costo de la licencia.
- **Tipo de licencia de Power BI:** 2.10.2 asume capacidad compartida
  (8 refrescos por día).
- **Población de unos 20 usuarios** y muestra de 5 a 8 (Cap. I, Población y
  muestra).
- **"Más de 25 años de operación"** de la empresa (Cap. I).
- **Entrada en producción del ERP nuevo:** hoy todo está en futuro
  ("usará", "está próximo"). Si entra en producción antes de la entrega,
  actualizar tiempos verbales en el Cap. I y en 2.5, 2.6 y 2.8.
- **Fecha de entrega:** la delimitación temporal no tiene fecha de cierre.
- **Versiones del stack del ERP** (NestJS 11, Prisma 7.8, Angular 21.2,
  PostgreSQL 17) en 2.7.4 y su cuadro: actualizar al final o fecharlas.

## 4. Citas con respaldo débil

Ninguna está mal citada hoy, pero son las primeras que puede cuestionar el
tutor.

- **`XGBoostCostOverrun2026`:** antecedente principal del Cap. I con datos
  simulados. Conviene sumar o reemplazar por un antecedente con datos reales.
- **Verificadas solo a nivel de obra o capítulo, sin página:** `Kimball2013`,
  `Few2013`, `Eckerson2010`, `Davenport2007`, `Negash2004`, `Chen2012`
  (contenido de cada etapa no leído).
- **Verificadas solo por un resumen:** `Yeo2002` (Semantic Scholar),
  `Boehm1988` (abstract).
- **Metadatos por confirmar:** `RFC9728` y `RFC8707` (autores y fechas).
- **Documentación web que cambia con cada versión** (consultada el
  2026-09-17): Keycloak 26.7.4 (incluido que no soporte RFC 8707),
  especificación MCP 2026, páginas de Power BI. Revisar cerca de la entrega.
- **Quitadas por no poder verificarse** (se pueden reponer si se lee el
  PDF): definición de BI de `Chaudhuri2011`, BI de autoservicio de
  `Alpar2016`, definición textual de analítica de `Davenport2007`.
- **Entradas que sobran:** `Sommerville2011` y `Bass2012` no se citan;
  borrarlas desde Zotero.
- **Formato de títulos:** Zotero los pasó a minúsculas; revisar en el PDF
  que la bibliografía cumpla la norma.

## 5. Redacción pendiente

- **Introducción:** al final. Explicar que el módulo predictivo es el eje y
  la modernización del ERP la condición para usarlo.
- **Marco legal y normativo:** pendiente por decisión de Franco.
- **Figura de Ishikawa:** es la del perfil y no muestra la causa "dos
  sistemas"; hoy lo explica el texto. Se puede actualizar.
- **Revisión de estilo:** no se hizo en ningún capítulo. Las correcciones
  del 2026-09-17 posteriores a la revisión de fondo no se volvieron a revisar.
- **2.7.4 (760 palabras):** se decidió no recortarla por ahora.
- **Revisión visual del PDF:** no hecha.

## 6. Fuera del documento

- **Avisar al tutor:** cambio de objetivos y delimitación, 1.6 agregada, y
  citas del perfil con autores o DOI incorrectos (`Rashid2019` no existe).

**Prioridad:** el punto 1. Si la exploración muestra que no hay forma de
construir la etiqueta de certificaciones, cambian los objetivos y buena
parte del Cap. II.
