# Selection, Fragments, and Display

Selection and display tools control what is active in the 3D Structure Viewer and how it is shown.

## Selection

Open **Edit > Selection** or right-click the viewer and choose **Selection > Select by...**.

The selection dialog supports several target types:

- **Atom**: select by element or atom-related rules.
- **Bond**: select bond objects.
- **Molecule**: select molecule-level objects.
- **Others**: select planes, surfaces, boxes, or related objects.

Common options include:

- **Auto Clean**: remove invalid or stale selection state.
- **Invert Selection**: select everything except the matched objects.
- **Select related bonds**: include bonds connected to selected atoms.

## Fragments

Fragments group atoms into meaningful molecular parts. They are used by workflows such as pair analysis, mobility analysis, and molecule-level highlighting.

Fragment commands include:

- Add fragments from a file.
- Set fragments from the current document.
- Set a fragment from the current selection.
- Select existing fragments.

!!! note
    Fragment quality matters for molecular-pair and crystal-packing tools. If a molecule is split across a periodic boundary, make molecules whole before assigning fragments.

## Display Style

Use **Display > Style** or **Display > Style Manager** to control visual appearance.

Major style areas include:

- Atom and bond modes: ball-and-stick, ball-and-line, CPK, stick, line, or none.
- Atom and bond colors, including element colors and custom colors.
- Bond order and aromatic display style.
- Lighting, material, fake-light, and contour settings.
- Camera projection, field of view, axis indicator, and background color.
- Crystal lattice style, draw matrix, anisotropic style, surface style, plane style, vector indicators, labels, boxes, and selections.

## Style Manager

The Style Manager handles built-in and user styles. It can:

- Apply a style to the current document.
- Apply a style to all open documents.
- Set a default style.
- Create, copy, rename, delete, open, or save style files.

Use style files when a project needs consistent figure appearance across many structures.
