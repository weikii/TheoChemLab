# 3D Structure Viewer

The 3D Structure Viewer is the visual workspace for TheoChem Lab `.wsd` structure documents. It presents a saved 3D document as an interactive scene for inspection, editing, styling, measurement, crystal visualization, and rendering.

A `.wsd` document stores the structure state. The 3D Structure Viewer presents that state as an interactive scene.

## Role in the Workspace

The viewer is used after a structure document has been created or opened. Its responsibilities are:

| Responsibility | Meaning |
| --- | --- |
| Visualize `.wsd` content | Draw the atoms, bonds, crystal cell, fragments, surfaces, annotations, and scene objects stored in the document. |
| Provide direct interaction | Let the user rotate, pan, zoom, select, measure, edit, and inspect objects in the structure scene. |
| Connect to properties | Send the current selection to Properties View so object parameters can be inspected or edited. |
| Connect to tools | Provide the active structure context used by crystal tools, surface tools, pair tools, mobility tools, and export commands. |
| Preserve working state | Keep visual objects and document-specific state that are saved back into `.wsd`. |

For the `.wsd` storage details, see [3D Structure Viewer (`.wsd`)](../files/3d-structure-document.md).

## Scene Content

The viewer can show the main objects stored in a 3D structure document:

| Object | What the viewer shows |
| --- | --- |
| Atoms and bonds | Molecular geometry, bond topology, bond styles, atom colors, radii, and labels where enabled. |
| Crystal cell | Unit-cell edges, cell labels, draw matrix, asymmetric-unit-derived atoms, and generated visible crystal representations. |
| Fragments | Fragment membership and fragment display surfaces or points. |
| Planes | User-created planes and crystal planes. |
| Measurements | Distance, angle, torsion, and plane-related measurement annotations. |
| Boxes | 3D boxes with edge display and optional dimension labels. |
| Centroids | Calculated centers for atom groups, with optional lines and labels. |
| Vectors | Direction indicators used for geometry, tensor, or analysis visualization. |
| Surfaces | Isosurfaces, mapped surfaces, scan surfaces, and related color mapping. |

## Camera and Navigation

The viewer provides the camera used to inspect the scene. Camera state is part of the document working state and can be saved with the `.wsd` document.

Common navigation actions include:

- Rotate, pan, and zoom the scene.
- Recenter the scene or current selection.
- Fit the visible structure to the current viewport.
- Align the camera to Cartesian or crystal axes when axis information is available.
- Reset the view when the structure is no longer framed clearly.

The status area reports live viewer information such as object counts or render performance.

## Selection

Selection is the main bridge between the visual scene and downstream tools. The selected objects define what Properties View edits and what many operations act on.

The viewer supports selection of:

- Atoms
- Bonds
- Molecules
- Fragments
- Planes
- Surfaces and other selectable scene objects where available

Selection can be performed directly in the scene, from the viewer context menu, or through the selection dialog. Rule-based selection is useful before fragment creation, measurement, pair extraction, or export.

## Measurement Objects

Measurements created in the viewer are scene objects, not just temporary labels. They can be saved in the `.wsd` document.

Supported measurement concepts include:

- Atom-to-atom distances
- Point-to-plane distances
- Bond angles
- Dihedral angles
- Bond-to-plane or plane-to-plane angles

Use measurements to check conformation, packing contacts, plane orientation, and crystal geometry.

## Display Style

Display style controls how the `.wsd` document is visualized. It does not change the chemical identity of the structure unless an editing command is used.

Style settings include:

- Atom and bond drawing modes
- Atom and bond colors
- Radius and line-width settings
- Bond type and virtual-bond display
- Crystal cell display
- Surface, fragment, plane, box, centroid, vector, and measurement styles
- Lighting, materials, camera projection, and background
- Anisotropic displacement display when anisotropic data are present

Use Style Manager when a style should be applied consistently across documents or reused later.

## Editing Context

The 3D Structure Viewer is the active context for structure-editing commands. Editing commands may come from menus, toolbars, or the right-click context menu, but they operate on the active viewer document.

Typical edit operations include:

- Add, delete, cut, copy, and paste structure objects.
- Change atom element, atom properties, or bond type.
- Generate or update bonds.
- Create or update fragments.
- Create planes, boxes, centroids, vectors, and measurements.
- Build or draw structures using the build tools.
- Use undo and redo for supported object-level changes.

## Undo and Redo

Undo and redo are supported for the active 3D Structure Viewer document. They apply to supported structure edits, object edits, property changes, style changes, atom movement, and view changes.

The undo stack keeps up to 500 history entries for each active 3D Structure Viewer document. When the stack is full, older history entries are discarded first.

The **Preferences > File Save > Undo Saving** settings control how frequently view rotation and zoom actions are recorded in the undo history. They do not change the maximum stack depth.

## Crystal Visualization

When the `.wsd` document contains crystal data, the viewer can show more than a single molecular scene. It can display the cell, asymmetric-unit-derived structures, expanded visual environments, and crystal-specific scene objects.

Crystal visualization commands include:

- Show or hide the unit cell and axis labels.
- Display an expanded draw matrix for the visible crystal representation.
- Make molecules whole when molecules cross periodic boundaries.
- Compact molecular placement for easier inspection.
- Grow the visible local crystal environment around the current atoms.
- Reset the grown visible environment.

These commands change the visible working representation in the viewer. The underlying crystal data and saved `.wsd` behavior are described in [Crystal Tools](../modules/crystal-tools.md).

## Rendering

The viewer can render the current scene for documentation or reports.

Common render actions include:

- Render the current view to an image file.
- Copy the rendered view to the clipboard.
- Adjust style, camera, and background before rendering.

Rendered images are outputs from the current visual state. They are separate from the `.wsd` document that stores the editable scene.
