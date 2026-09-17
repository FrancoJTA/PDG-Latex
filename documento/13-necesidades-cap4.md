# Qué se necesita para redactar el Capítulo IV — Construcción e Implementación

Escrito el 2026-09-17. Regla fija de [[04-pendientes-preparacion]]: **no se
redacta un incremento hasta que su código exista y funcione.** El Cap. IV
documenta evidencia real (código, capturas, métricas, pruebas), no planes.
Brief: [[11-brief-proyecto]]. Estado del código: [[03-contexto-tecnico-erp]].

**Estado al 2026-09-17:** en `~/Projects/isi-mustang/` no hay nada del
módulo predictivo (DuckDB, Polars, FastAPI, modelos), ni Keycloak, ni MCP,
ni Power BI. El ERP nuevo tiene 19 módulos de backend; del frontend solo el
dashboard está en desarrollo. Todo el Cap. IV está por construir.

Cada incremento se redacta con la subestructura de la plantilla de
referencia: **alcance → análisis → diseño → desarrollo → validación**. El
diseño viene de 3.4; acá va lo que efectivamente se construyó y cómo se
probó.

---

## Dependencias entre incrementos

```
3.1 exploración de datos ──► 4.3 pipeline y modelos ──► 4.4 servicio + dashboard ──► 4.6 evaluación
                                                                ▲
4.2 Keycloak ───────────────────────────────────────────────────┤ (todo valida contra Keycloak)
                                                                ▼
4.1 procesos migrados (paralelo, prepara endpoints/permisos) ──► 4.5 Power BI + MCP
```

- 4.2 antes de 4.4 y 4.5: FastAPI, NestJS, MCP y la API para Power BI
  validan tokens de Keycloak.
- 3.1 antes de 4.3: sin etiquetas confirmadas no hay modelos.
- 4.1 en paralelo con lo demás; es lo único que no depende de datos.
- 4.6 al final, con los cinco incrementos desplegados.

---

## 4.1 Incremento 1 — Procesos del portal anterior migrados al ERP

### Necesita (construcción)
- Lista cerrada de procesos del incremento (ver [[12-necesidades-cap3]], 3.2).
- Código en NestJS (módulos, endpoints, migraciones Prisma) y Angular
  (pantallas) para cada proceso.
- Corrección de los defectos D1–D6 de `90-pendientes-y-brechas.md` que
  ensucian datos, con evidencia antes/después (consulta que muestre el
  defecto y la misma consulta tras la corrección).
- Cierre de brechas estructurales (doc 90, bloque 2) decididas.
- Endpoints y permisos preparados para las integraciones: qué expone el
  ERP a FastAPI (datos de proyectos activos para inferencia), a MCP y a
  Power BI.

### Evidencia para el documento
- Cuadro proceso → módulo NestJS → pantalla Angular → estado.
- Capturas de las pantallas nuevas (sin datos de empleados ni sueldos).
- Fragmentos de código representativos (no volcados completos).
- Pruebas: unitarias/e2e del backend, y validación funcional con un
  usuario del área.

---

## 4.2 Incremento 2 — Autenticación centralizada con Keycloak

### Necesita (construcción)
- Keycloak desplegado en Docker (versión fijada), realm de ISI Mustang,
  clientes: Angular (público, authorization code + PKCE), NestJS, FastAPI
  y MCP (resource servers que validan JWT por JWKS y verifican `aud`),
  Power BI (cliente para la API de datos).
- Roles y mapeo desde el `access-control` actual del ERP.
- Reemplazo del JWT propio de Passport en NestJS por validación OIDC;
  migración de usuarios (o federación) sin perder accesos.
- Angular autenticando contra Keycloak; cierre de sesión global.

### Evidencia
- Diagrama de flujo de login real (secuencia) y configuración del realm
  (exportada, **sin secretos**).
- Capturas del login, de la consola de Keycloak (roles, clientes).
- Pruebas: acceso permitido/denegado por rol, token expirado, `aud`
  incorrecto rechazado por cada resource server.

---

## 4.3 Incremento 3 — Pipeline de datos y entrenamiento de modelos

### Necesita (construcción)
- **Resultados de 3.1** (etiquetas confirmadas, variables, granularidad,
  tamaño del conjunto).
- Acceso operativo al MySQL de producción y a las planillas Excel.
- Repo del módulo predictivo (Python): estructura Bronze/Silver/Gold.
  - Bronze: extracción cruda de las tablas candidatas del MySQL, de las
    tablas equivalentes del PostgreSQL nuevo y de las planillas.
  - Silver: DuckDB, modelo canónico de variables y el mapeo de los dos
    esquemas (cuadro de correspondencias campo a campo). Es la pieza
    crítica: sin ella no hay inferencia sobre proyectos activos.
  - Gold: Polars, features por unidad de análisis a fecha de corte;
    codificación explícita de categóricas (decisión de 2.2).
- Tres modelos entrenados (Scikit-learn + XGBoost): clasificador de
  desviación en certificaciones, regresores de sobrecosto y de retraso.
  Búsqueda de hiperparámetros con validación cruzada (estratificada solo
  en el clasificador), conjunto de prueba separado por tiempo si es
  posible.
- Serialización de modelos con versión y fecha de entrenamiento.

### Evidencia
- Cuadro de correspondencias MySQL ↔ PostgreSQL ↔ variable canónica.
- Cuadro de features finales por modelo.
- Métricas (2.2.2): exactitud, precisión, sensibilidad, F1 y matriz de
  confusión del clasificador; RMSE, MAE y R² de los regresores; media y
  desvío de la validación cruzada; comparación con un baseline simple
  (p. ej. media histórica, regresión lineal).
- Importancia de variables / explicabilidad (SHAP o `feature_importances_`)
  para la necesidad de "no caja negra" de la entrevista.
- **Confidencialidad:** ningún cuadro con sueldos, provisiones ni datos
  personales; agregados y enmascarado.

---

## 4.4 Incremento 4 — Microservicio FastAPI e integración con el ERP

### Necesita (construcción)
- FastAPI con endpoints de predicción (por proyecto, lote, y metadatos del
  modelo), Pydantic para contratos, carga de modelos versionados,
  validación de tokens Keycloak.
- Endpoints en NestJS que consumen FastAPI (y cachean o persisten las
  predicciones según diseño 3.4.4).
- Dashboard Angular: vista semáforo por proyecto, detalle con explicación
  de la predicción, alertas (según necesidades de la entrevista E-01).
- Docker Compose con todos los servicios.

### Evidencia
- OpenAPI generado por FastAPI (capturas o extracto).
- Capturas del dashboard con proyectos activos (enmascarando lo que haga
  falta).
- Pruebas de integración: NestJS → FastAPI con token válido/inválido;
  latencia de inferencia; comportamiento ante proyecto sin datos
  suficientes.

---

## 4.5 Incremento 5 — Integración con Power BI y MCP

### Necesita (construcción)
- API de datos en NestJS para Power BI, **solo descriptiva** (sin
  predicciones), protegida con Keycloak (OAuth2 en Power Query).
- Reportes Power BI (lista decidida en 3.4.7): modelo de datos, medidas
  DAX, publicación.
- Servidor MCP (Python o TypeScript) con tools sobre consultas del ERP y
  sobre predicciones, validando Keycloak; **sin asistente conversacional**
  (fuera de alcance, brief §2). Validación con un cliente MCP genérico
  (inspector) para demostrar que las tools responden.

### Evidencia
- Capturas de los reportes Power BI.
- Lista de tools MCP con esquema de entrada/salida y ejemplo de
  invocación desde el inspector.
- Pruebas: acceso denegado sin token; datos de Power BI coinciden con el
  ERP; tools MCP devuelven lo mismo que los endpoints.

---

## 4.6 Evaluación y Validación

### Necesita
- Los cinco incrementos desplegados en el servidor propio de la empresa.
- Métricas finales de los tres modelos sobre el conjunto de prueba (no
  las de validación cruzada del desarrollo).
- **Pruebas con usuarios clave (5–8): pendientes.** Instrumento: guía de
  entrevista/prueba (perfil, Anexo A, adaptada a evaluación). No redactar
  resultados hasta que existan (brief §5).
- Comparación contra la situación anterior (gestión reactiva): casos
  pasados conocidos por los usuarios en los que el modelo hubiera
  alertado (validación retrospectiva), si los datos lo permiten.

### Evidencia
- Cuadro de métricas finales por modelo vs. criterio de aceptación de 3.4.3.
- Síntesis de las pruebas con usuarios (agregada, sin nombres).
- Cumplimiento de requerimientos de 3.3 (cuadro RF/RNF → cumplido /
  parcial / no).

---

## Fuera del Cap. IV (va a Recomendaciones / trabajo futuro)
- Migración a la nube (Contabo).
- Asistente conversacional o agente de IA sobre el servidor MCP.
- Migración del histórico MySQL al esquema nuevo.
- Fuentes externas (IoT, mercado, clima).

## Checklist para arrancar
- [ ] Cerrar 3.1 (etiquetas, granularidad, tamaño).
- [ ] Repo del módulo predictivo creado (Python, Bronze/Silver/Gold).
- [ ] Keycloak en Docker con realm y clientes.
- [ ] Lista cerrada de procesos del incremento 1.
- [ ] Lista de tools MCP y reportes Power BI.
- [ ] Servidor propio disponible para el despliegue.
- [ ] Fecha real de entrega definida por la carrera (para planificar los incrementos).
