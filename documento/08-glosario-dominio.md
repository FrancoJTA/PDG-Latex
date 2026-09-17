# Glosario del dominio ISI Mustang / ERP

Términos del negocio, tomados de `erp-isi-mustang/docs/documentation/` y de
`perfil/perfil.tex`. Sirve para el Marco Conceptual (§2.7 del `INDICE`
genérico) o el glosario del documento final, sea cual sea el resultado de
`decisiones-tema.md` — es vocabulario de la empresa, no del tema de tesis
específico. Ordenado alfabéticamente.

**Aprobación (motor de aprobaciones):** mecanismo compartido por
requisiciones y viáticos para encadenar pasos de autorización
(`approval_requests`, `approval_steps`). Las certificaciones y rendiciones
NO usan este motor — tienen su propio flujo de estados.

**Centro de costo:** la llave de todo lo operativo del ERP. Puede ser un
proyecto, un servicio o un área de estructura. Tiene código, responsable
(`manager_user_id`), moneda propia y vigencia.

**Certificación:** el ingreso ejecutado de un centro de costo. Tres
momentos con responsables distintos: solicitud (gerente del CC), venta/
registro (compras), cobro (compras). Estados: `draft → submitted →
registered → rejected/cancelled`, con `collection_status` (pending/paid)
ortogonal al estado principal.

**Certificador:** rol operativo mencionado en el perfil aprobado como uno
de los usuarios clave a entrevistar (`perfil/perfil.tex`), asociado a la
gestión de certificaciones.

**EPC (Engineering, Procurement and Construction):** modalidad de proyecto
donde la empresa asume diseño de ingeniería, procura de equipos/materiales
y construcción de instalaciones de forma integral. Es el tipo de proyecto
que ejecuta ISI Mustang en gas, petróleo, minería y energía.

**Gerente (dos sentidos distintos, no mezclar):**
- **Gerente del centro de costo:** fila en `user_cost_centers` con
  `role = manager`. Es quien solicita certificaciones, por ejemplo.
- **Rol global `gerente`:** rol de control comercial, no da permisos
  operativos especiales dentro de un centro de costo.

**Orden de compra:** lo que la empresa emite **al proveedor** (plata que
sale). Lo que un cliente le emite a la empresa no existe como entidad
separada en el ERP.

**Provisión:** no es una provisión contable en el sentido tradicional — es
específicamente **el costo de personal imputado a un proyecto** (horas ×
costo empresa).

**Publicar (presupuesto):** concepto que existía en el ERP anterior y se
eliminó a propósito en el actual. El equivalente hoy es la separación entre
línea base y seguimiento del presupuesto.

**Requisición:** pedido interno de compra, pasa por el motor de
aprobaciones antes de convertirse en orden de compra.

**Rendición (de viáticos):** cierre de un anticipo de viaje — registra
gastos reales contra lo adelantado. Tiene su propio flujo (no usa el motor
de aprobaciones genérico).

**URS / SRS:** User Requirements Specification / Software Requirements
Specification. La documentación de `erp-isi-mustang/docs/documentation/`
está armada explícitamente para alimentar estos dos documentos formales del
ERP — separando negocio (Parte A) de técnico (Parte B).

## Estados de madurez usados en la documentación del ERP

- **IMPLEMENTADO** — el sistema lo hace, y está documentado cómo.
- **ABIERTO** — el sistema hace algo, pero falta que el negocio confirme si
  es la regla correcta.
- **BRECHA** — el requerimiento lo pide y no existe todavía.
- **DEFECTO** — ya produce datos o comportamientos incorrectos hoy (ver
  `documento/02-mapeo-fuentes.md`, sección de calidad de datos).

## Pendiente

Este glosario cubre solo el dominio de negocio/ERP. Los términos técnicos
específicos (ML, arquitectura Medallion, gradient boosting, etc., y los de
autenticación Keycloak/OAuth, MCP y Power BI — todos dentro del alcance
desde `decisiones-tema.md`, opción B) están pendientes de agregar.
