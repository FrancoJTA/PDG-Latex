Aquí está todo en texto plano:

---

**MÓDULOS DEL ERP ISI MUSTANG**

**1. Acceso**
Login / Autenticación

**2. Núcleo · Hub**
Dashboard / Home

**3. Datos maestros**
Clientes, Proyectos Activos, Proyectos Cerrados, Estructura / CC Interno, Activación de Proyectos, Empleados / RRHH

**4. Operación · Horas**
Carga de horas, Consulta de horas, Asistencia, Planificación de recursos

**5. Operación · Compras y Viáticos**
Requisiciones (RQ), Viáticos (VM), Rendición de viáticos

**6. Compras**
Compras, Abastecimiento y Stock

**7. Gestión**
Certificación, Presupuestos, Tablero de Comando, Manejo de Propuestas

**8. Admin**
Permisos, QSHE, Upload/Download, Visualizador RQ/VM

---

**DATOS DISPONIBLES POR MÓDULO Y QUÉ SE PUEDE PREDECIR**

**Módulo Propuestas → tabla proposals**
Datos: código, cliente, monto en USD, moneda, estado, probabilidad estimada manualmente, fecha estimada de inicio y fin, quién la creó, cuándo.
Predicciones posibles: probabilidad real de ganar la propuesta comparada con la estimación manual, tiempo estimado real hasta el cierre, qué tipo de cliente y monto tienen mayor tasa de conversión, en qué país o tipo de proyecto se pierde más.

**Módulo Proyectos → tablas projects + project_budget_lines**
Datos: código, tipo (proyecto u estructura), país, estado, fechas de inicio y fin, presupuesto en USD, líneas de presupuesto por categoría con montos planificados, de seguimiento y publicados, por año y mes.
Predicciones posibles: si el proyecto va a terminar dentro del presupuesto, en qué categoría de gasto se va a producir la desviación, si el proyecto va a terminar en la fecha estimada, qué combinación de país y tipo de proyecto tiene mayor riesgo de sobrecosto.

**Módulo Certificaciones → tabla certifications**
Datos: proyecto, período mensual, monto estimado, monto de seguimiento, monto certificado real, desviación calculada, causa de la desviación en texto, plan de mitigación, quién publicó y cuándo.
Predicciones posibles: este es el dato más valioso del ERP. Con 10 años de desviaciones documentadas con causa, se puede predecir en los primeros meses de un proyecto si va a desviarse, por cuánto y en qué dirección. La causa en texto permite NLP para clasificar automáticamente el tipo de riesgo.

**Módulo RRHH → tablas users + provisions + period_closures**
Datos: empleados con categoría, salario mensual, tipo de contrato, centro de costo, país. Provisiones calculadas por período. Cierres de período con estado.
Predicciones posibles: costo real de personal por proyecto en períodos futuros, rotación de empleados por categoría o país, detección de empleados con patrones de provisión anómalos, proyección de masa salarial.

**Módulo Horas → tablas hour_entries + attendance_records**
Datos: horas cargadas por empleado y proyecto por día, tipo de actividad, entradas y salidas de asistencia mañana y tarde, tipo de día.
Predicciones posibles: demanda de horas por tipo de proyecto en fases futuras, detección de empleados que cargan horas de forma anómala, ausentismo anticipado por patrones históricos, productividad real por categoría de empleado y tipo de proyecto.

**Módulo Asignación de recursos → tabla resource_assignments**
Datos: qué empleado está asignado a qué proyecto, en qué rol, con qué porcentaje de dedicación y en qué período.
Predicciones posibles: cuellos de botella de recursos con semanas de anticipación, empleados sobreasignados antes de que el problema ocurra, qué perfil de equipo está correlacionado con proyectos exitosos.

**Módulo Requisiciones → tablas requisitions + requisition_approvals**
Datos: requisiciones por proyecto con monto, estado, flujo de aprobaciones en tres etapas con decisión, timestamp y aprobador en cada nivel.
Predicciones posibles: tiempo esperado de aprobación según monto y aprobadores involucrados, detección de requisiciones que probablemente sean rechazadas antes de que pasen por todo el flujo, cuellos de botella en aprobaciones por persona o nivel.

**Módulo Gastos y Viáticos → tablas expense_reports + expense_report_items**
Datos: informes de gasto por empleado y proyecto, ítems individuales con monto, categoría, proveedor, destino, estado de aprobación.
Predicciones posibles: gastos anómalos por comparación con histórico del mismo empleado, proyecto o categoría. Detección de patrones de gasto sospechosos. Proyección de gasto de viáticos por tipo de proyecto y país.

**Módulo Compras e Inventario → tablas suppliers + inventory_movements**
Datos: proveedores con país y categoría, movimientos de inventario con tipo, cantidad, monto y proyecto asociado.
Predicciones posibles: demanda de materiales por tipo de proyecto, proveedores con riesgo de entrega tardía por comportamiento histórico, optimización de stock mínimo por categoría.

**Módulo Audit Log → tabla audit_log**
Datos: registro completo de quién hizo qué acción sobre qué entidad y cuándo, con valores anterior y nuevo.
Predicciones posibles: detección de comportamiento anómalo de usuarios, patrones de uso que preceden errores operativos, trazabilidad para modelos de fraude interno.

---

**LOS TRES DATOS MÁS VALIOSOS PARA ML**

Primero, la combinación de certifications con deviation y deviation_cause — 10 años de proyectos que se desviaron con la causa documentada. Es etiqueta supervisada gratuita que la mayoría de empresas no tiene.

Segundo, hour_entries cruzado con project_budget_lines — la relación entre cómo se consumen las horas en los primeros meses y cómo termina el presupuesto al final es el predictor más fuerte de riesgo.

Tercero, el flujo completo proposals → projects → certifications — permite entrenar un modelo que aprende desde la propuesta comercial hasta el cierre real, con todas las variables intermedias.