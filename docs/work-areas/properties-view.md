# Properties View

Properties View is the main editor for the currently selected document or object.

## Purpose

Use Properties View to inspect and modify object properties without opening a separate tool window.

It can show properties for:

- Active document
- Atom
- Bond
- Plane or crystal plane
- Box
- Distance and angle measurements
- Molecule fragment
- Crystal structure
- Surface
- Vector indicator
- Color bar
- Centroid

## Filter

The **Filter** drop-down controls which object category is displayed. This is useful when a selection contains multiple object types.

For example, after selecting a crystal document, the filter can expose crystal properties such as cell display settings. After selecting a surface, it exposes surface-specific visual and data settings.

## Editing Properties

Properties are edited in the property grid. Some changes are visual, while others change object data.

Typical examples:

- Atom label, charge, element, or style-related values
- Bond display or bond type
- Plane and box geometry
- Crystal visibility and cell-related display settings
- Fragment name and membership information
- Surface display, color scale, transparency, and value labels
- Measurement display properties

## Copying Values

Properties View supports copying property-grid values from the context menu. Crystal-cell information can be copied in plain text or HTML-friendly forms when available.

!!! warning "Use object-specific edits carefully"
    If a property represents structural data rather than display style, changing it can affect later calculations. Confirm the selected object and filter before editing.
