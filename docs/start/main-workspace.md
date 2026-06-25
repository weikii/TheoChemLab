# Main Workspace

The main workspace is the central working area after a project is opened.

## Main Areas

- **Menu bar**: access file, editing, display, build, analysis, module, window, and help commands.
- **Toolbars**: quick access to common structure operations such as save, undo, redo, camera control, optimization, drawing, measurement, and frame playback.
- **Document area**: displays open document views.
- **Dockable views**: Project View, Properties View, Output, and Job View.
- **Status bar**: shows live status such as atom count and rendering information.

## File Menu

Use **File > Open...** to import or open supported files. Use **Save** and **Save As...** to store project documents.

Supported structure import types include:

- `.wsd`: TheoChem Lab 3D structure document
- `.mol`, `.mol2`, `.gjf`, `.sdf`, `.xsd`, `.xyz`, `.arc`: molecular structures
- `.cif`, `.pdb`, `.gro`, `.inp`: crystal or periodic structures

## View Menu

Use **View** to reopen utility panes:

- **Project View**
- **Properties View**
- **Output**
- **Job View**

These panes support the active document but are not themselves the main data document.

## Display Menu

Use **Display > Style** and **Display > Style Manager** to control how atoms, bonds, crystals, surfaces, planes, labels, lights, and camera settings are drawn.

Built-in and user styles can be applied to the current document or all open documents.

## Build Menu

The **Build** menu contains structure-construction and structure-editing commands:

- **Atoms**: add atoms by element, coordinates, charge, label, and optional virtual-atom style.
- **Bonds**: generate strong bonds or weak interactions.
- **Faces**: create planes or faces, including crystallographic planes when crystal data is available.
- **Molecule**: build molecule templates and molecular fragments.
- **Crystal**: build crystals, create supercells, make molecules whole, compact molecule placement, and run symmetry tools.
- **Structure Frame Sequence**: create and edit multi-frame structure sequences.

## Tools and Modules

The **Tools** and **Modules** menus contain workflow-specific forms. These include Gaussian tools, Multiwfn-based visualization, anisotropic mobility, surface interaction, MD simulation, CP2K, MolPack, and Hirshfeld-surface workflows.

Some entries are experimental during internal testing.

## Help Menu

Use **Help > Online documents** to open this documentation site. **Check for updates** queries the configured update source for authorized builds.
