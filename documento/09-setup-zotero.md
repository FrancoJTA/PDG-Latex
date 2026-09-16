# Zotero + Better BibTeX — estado del setup

Hecho automáticamente el 2026-09-16:

- **Zotero instalado** vía Flatpak (`org.zotero.Zotero`, user-level). Se
  abre con `flatpak run org.zotero.Zotero` o desde el launcher de
  aplicaciones.
- **Plugin Better BibTeX descargado** en `~/Downloads/zotero-better-bibtex-9.0.64.xpi`
  (versión más reciente al momento, v9.0.64).

## Lo que falta — pasos manuales (GUI, no lo puedo hacer yo)

1. Abrir Zotero (primera vez pide crear cuenta gratuita en zotero.org —
   opcional pero recomendado para sincronizar entre dispositivos).
2. **Instalar Better BibTeX:** Herramientas (Tools) → Complementos
   (Add-ons) → ícono de engranaje → *Instalar complemento desde archivo*
   (Install Add-on From File) → seleccionar
   `~/Downloads/zotero-better-bibtex-9.0.64.xpi` → reiniciar Zotero.
3. **Crear una colección** para el proyecto de grado (clic derecho en "Mi
   Biblioteca" → Nueva Colección → p. ej. "PDG ISI Mustang").
4. **Configurar auto-export a `perfil.bib`:**
   - Clic derecho sobre la colección → *Exportar Colección* (Export
     Collection) → formato **Better BibLaTeX** (no BibTeX a secas, para que
     combine bien con `biblatex-apa` que ya usa `univalle-perfil.cls`).
   - Marcar **"Mantener actualizado"** (Keep updated) y guardar apuntando a
     `perfil/perfil.bib` — desde ahí, cada vez que agregues una fuente a
     esa colección en Zotero, el `.bib` se actualiza solo.
5. **Instalar el conector de navegador** (Zotero Connector, en la Chrome
   Web Store o Firefox Add-ons) para guardar papers directo desde
   Google Scholar / Semantic Scholar / la página de la revista con un clic.

## Uso día a día, una vez configurado

1. Encontrás un paper (Google Scholar, Elicit, Semantic Scholar, lo que sea).
2. Lo guardás en Zotero con el conector del navegador (o `File → Import` si
   es un DOI/PDF suelto).
3. Lo movés a la colección "PDG ISI Mustang" si no cayó ahí directo.
4. `perfil/perfil.bib` se actualiza solo — no se vuelve a editar a mano.
5. En el `.tex`, citás con la clave que Better BibTeX generó
   (`\textcite{clave}` / `\parencite{clave}`, como ya está documentado en
   `README.md` de la raíz).

## Por qué Better BibLaTeX y no BibTeX a secas

`univalle-perfil.cls` ya usa `biblatex` con `style = apa` (ver
`univalle-perfil.cls`, sección de referencias bibliográficas) — BibLaTeX
soporta más tipos de campo y es el formato nativo para ese motor. BibTeX
clásico funcionaría pero perdés metadata en el camino (ver documentación de
Better BibTeX si hace falta el detalle).
