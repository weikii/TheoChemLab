# 3D Structure Viewer

The 3D Structure Viewer is the main molecular and crystal document window in TheoChem Lab. It is the user-facing name for structure documents; it should be treated as the central workspace for atomistic data.

## What It Displays

The viewer can display:

- Atoms and bonds
- Molecular structures
- Crystal structures and unit-cell information
- Surfaces and volumetric data
- Planes and boxes
- Structure frame sequences
- Selection and measurement annotations

## Opening Structures

Use **File > Open...** or Project View to open structure files. Common supported formats include:

- TheoChem Lab 3D structure documents: `.wsd`
- Molecular structures: `.mol`, `.mol2`, `.gjf`, `.sdf`, `.xsd`, `.xyz`, `.arc`
- Crystal or periodic structures: `.cif`, `.pdb`, `.gro`, `.inp`

When a structure is imported, save it as a project document if you want to preserve display style, selections, generated objects, or analysis state.

## Camera and Navigation

Use the toolbar and mouse controls to inspect the structure:

- **Reset View**: restore the default camera.
- **Recenter**: move the current structure or selection to the view center.
- **Fit to View**: fit the current structure into the camera view.
- **Align View to**: align the camera to a principal or crystal axis where available.

The status bar shows live information such as atom count and frame rate.

## Selection

Selection is used by many downstream operations. The viewer supports selecting:

- Atoms
- Bonds
- Molecules
- Fragments
- Other selectable objects such as planes or surfaces

Use **Edit > Selection** or the viewer context menu **Selection > Select by...** for rule-based selection. The selection dialog includes tabs for atoms, bonds, molecules, and other objects, with options such as auto-clean and invert selection.

## Measurement

Use the measurement toolbar to create:

- Distance measurements
- Angle measurements
- Torsion measurements

Measurements are useful for checking intermolecular contacts, crystal packing, and molecular conformation.

## Display Style

Use **Display > Style** or the viewer context menu **Display Style** to edit how the structure is drawn.

Style controls include:

- Atom and bond display modes such as ball-and-stick, line, stick, and CPK
- Atom and bond colors
- Bond type and aromatic display style
- Lighting, material, camera projection, and background
- Crystal lattice style and draw matrix
- Surface, plane, vector, number, fragment, and selection styles

Use **Display > Style Manager** to apply a style to the current document, all open documents, or as the default style.

## Building and Editing

Structure-building tools are available from the main **Build** menu and toolbar:

- Add atoms with element, coordinates, charge, label, and optional virtual-atom style.
- Generate bonds and weak interactions.
- Create faces and crystallographic planes.
- Build molecule templates and common fragments.
- Draw structures with the structure-painter tools.
- Update hydrogens manually or with auto-update enabled.
- Change atom element or bond type.

Use undo and redo for supported editing operations.

## Context Menu

Right-click inside the viewer to open the structure context menu.

Common context commands include:

- **Paste**: paste structure data, clipboard structure text, or display style.
- **Copy**: copy selected objects, the full structure, or display style.
- **Delete** and **Cut**: remove selected objects.
- **Selection**: select all atoms, bonds, molecules, fragments, or use the selection dialog.
- **Fragment**: add fragments from file, set fragments, or set a fragment from the current selection.
- **Frame Sequence**: add the current structure as a frame, clear frames, or open the sequence generator.
- **Display Style**: open style settings for the current structure.
- **Render**: render the view to the clipboard or a PNG file.
- **Crystal**: grow the visible crystal environment or reset crystal growth when the active document contains crystal data.

## Crystal Documents

When the document contains crystal information, additional crystal commands become available.

Useful crystal operations include:

- **Make Molecules Whole**: reconstruct molecules split across periodic boundaries.
- **Compact Molecules**: normalize molecular placement in the unit cell.
- **Super Cell**: generate a larger periodic representation.
- **Grow**: display a nearby crystal environment around the current atoms.
- **Grow reset**: reset the displayed crystal growth.
- **Find Symmetry** and **Make P1**: inspect or modify symmetry-related information.

For details, see [Crystal Tools](../modules/crystal-tools.md).

## Rendering Images

Use the context menu **Render > Render to PNG** to save the current view as an image, or **Render to Clipboard** to copy it directly for reports or presentations.
