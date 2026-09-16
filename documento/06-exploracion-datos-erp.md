# Exploración preliminar de los datos reales del ERP

Hecha sobre `~/Projects/isi-mustang/` al 2026-09-16: esquema Prisma
(`erp-isi-mustang/prisma/schema.prisma`, 1317 líneas) y consulta directa a
la base de datos Postgres local (`docker exec isi_mustang_pgsql psql ...`).
Sirve para el Cap. III sea cual sea el resultado de `decisiones-tema.md`
(módulo predictivo o modernización del ERP): en ambos casos hace falta saber
qué datos hay realmente.

## Hallazgo más importante: la base local es de demo, no el histórico real

La base de datos que corre en este equipo (`isi_mustang_pgsql`, contenedor
Docker local) tiene **datos de semilla/demo, no los 10+ años de histórico
operativo real** que menciona el perfil aprobado. Conteo de filas real al
momento de escribir esto:

| Tabla | Filas |
|---|---|
| `audit_log` | 318 |
| `exchange_rates` / `exchange_rate_candidates` | 61 / 61 |
| `currencies` | 20 |
| `payroll_lines` | 15 |
| `hour_entries` | 7 |
| `certifications` | **3** |
| `cost_centers` | **4** |
| `clients` / `proposals` | 3 / 3 |

Con 3 certificaciones y 4 centros de costo no hay nada entrenable. **El
histórico real de 10+ años vive en otro lado** (la base de producción de
ISI Mustang, o el sistema anterior) — conseguir acceso a esos datos reales
es un prerrequisito que todavía no está resuelto y que hay que gestionar
con la empresa antes de que el Cap. III tenga sentido, sea cual sea el tema
final. Vale la pena plantearlo en la misma conversación con el tutor sobre
`decisiones-tema.md`.

## Estructura del esquema (51 modelos Prisma)

Agrupados por área de negocio (coincide con `erp-isi-mustang/docs/documentation/00-indice.md`):

| Área | Modelos |
|---|---|
| Identidad y accesos | `users`, `user_credentials`, `user_profiles`, `roles`, `user_roles`, `password_reset_tokens`, `auth_refresh_tokens` |
| Aprobaciones | `approval_requests`, `approval_steps` |
| Clientes y propuestas | `clients`, `client_contacts`, `proposals`, `proposal_activities`, `proposal_activity_changes` |
| Centros de costo / proyectos | `cost_centers`, `cost_center_events`, `cost_center_tasks`, `user_cost_centers`, `entity_resources` |
| **Certificaciones** | `certifications` — el ingreso ejecutado de un centro de costo, ver `documento/02-mapeo-fuentes.md` |
| Presupuesto | `cost_center_budgets`, `cost_center_budget_lines` |
| Horas | `hour_entries`, `hour_entry_events` |
| Nómina / provisiones | `payroll_runs`, `payroll_lines`, `provision_runs`, `provision_lines`, `user_contracts`, `user_contract_terminations` |
| Vacaciones / descanso | `vacation_balances`, `vacation_records`, `rest_balances`, `rest_records`, `holidays` |
| Compras | `requisitions`, `requisition_items`, `purchase_orders`, `purchase_order_items`, `suppliers` |
| Viáticos | `travel_allowance_requests`, `travel_allowance_items`, `travel_allowance_settlements`, `travel_allowance_settlement_lines` |
| Moneda | `currencies`, `exchange_rates`, `exchange_rate_candidates` |
| Transversal | `audit_log`, `notifications`, `notification_preferences`, `feedback_items` |

## Detalle de `certifications` (la tabla central para el módulo predictivo)

Campos clave (`schema.prisma:96-140`): `status` (draft→submitted→registered
→rejected/cancelled), `collection_status` (pending/paid, ortogonal al
status — ver `documento/referencias` y `docs/flujo-certificaciones.md`),
`requested_amount` vs `certified_amount` (la diferencia entre lo pedido y lo
certificado es justamente una "desviación" candidata a variable objetivo),
`planned_date` vs `certification_date`/`collected_date` (para desviaciones
de cronograma), `rejection_reason` (texto libre — candidato a limpiar/
categorizar si se usa como variable), y todo el manejo de moneda
(`currency_code`, `exchange_rate`, `base_certified_amount` ya calculado por
la base vía `dbgenerated`).

## Detalle de `cost_centers`

Es la entidad "proyecto" (`type: cost_center_type`, puede ser proyecto,
servicio o estructura — ver `documento/referencias` sobre esta distinción).
Tiene `parent_id` (jerarquía, hoy sin usar según
`docs/documentation/90-pendientes-y-brechas.md` decisión #22),
`manager_user_id`, moneda propia y vigencia (`valid_from`/`valid_to`). Se
relaciona con `certifications`, `cost_center_budget_lines`, `hour_entries`,
`provision_lines`, `purchase_orders`, `requisitions`,
`travel_allowance_requests` — son las fuentes candidatas para variables
predictoras (horas cargadas, compras, viáticos) mencionadas en el perfil.

## Calidad de datos — recordatorio

`docs/documentation/90-pendientes-y-brechas.md` ya documenta defectos
activos que van a afectar cualquier análisis sobre el histórico real
(ausencias contadas como horas trabajadas, rendiciones que suman monedas
sin convertir, factor de costo empresa hardcodeado, etc. — Bloque 1 del
documento). Antes de entrenar cualquier modelo sobre datos reales, hay que
decidir si se filtran, se corrigen o se documentan como limitación conocida
del dataset (ya señalado en `documento/02-mapeo-fuentes.md`).
