# Getting Started

This page gives a first-session path through TheoChem Lab, starting from the welcome screen and ending with a usable document window.

## 1. Open a Structure

Start by creating a project or opening an existing one from the welcome screen. TheoChem Lab is designed around project-based workflows, so related structure files, analysis documents, and calculation outputs can be managed together.

After the project is open, use **File > Open...** or the project view to import a molecular or crystal structure file.

Common structure formats include:

- 3D structure document: `.wsd`
- Molecular files: `.mol`, `.mol2`, `.gjf`, `.sdf`, `.xsd`, `.xyz`, `.arc`
- Crystal or periodic files: `.cif`, `.pdb`, `.gro`, `.inp`

For crystal work, CIF and project documents normally provide the unit-cell information needed by the crystal tools. Gaussian input files can be used for molecule-level inspection and for workflows that prepare or extract calculation data.

## 2. Inspect the View

The 3D Structure Viewer supports rotation, zooming, selection, measurement, drawing, and display-style adjustments. Crystal-related commands are available from the main **Crystal** menu and from the viewer context menu when the active document contains crystal information.

Useful first checks:

- Confirm that molecules are displayed as whole molecules rather than split across periodic boundaries.
- Check whether the unit cell and axis labels are visible when you need them.
- Use selection and highlight tools before running pair-based analysis.

## 3. Use Project Files

The project view keeps related structures, input files, outputs, and generated results in one place. This is the preferred way to work when a structure has associated Gaussian outputs or analysis files.

Create project documents from **New**:

- **3D Structure Document** for molecular and crystal structures
- **Text Document** for notes, logs, and plain text
- **Table Document** for tabular data
- **Diagram Document** for plotted data

## 4. Save and Export

Project and document files should be saved regularly. When exporting molecular structures from MD-derived data, make molecules whole before export.

For analysis figures, use the export commands in the corresponding module window when available. Some plots support both image export and CSV/data export.

## Recommended Reading Order

1. [Welcome Screen](start/welcome.md)
2. [Main Workspace](start/main-workspace.md)
3. [Project View](start/project-view.md)
4. [3D Structure Viewer](document-views/3d-structure-viewer.md)
