# Files and Projects

TheoChem Lab is project-based. A project keeps related structures, text notes, tables, diagrams, calculation inputs, calculation outputs, and generated data together so that later analysis can be traced back to the files that produced it.

The file system is therefore not just an import/export layer. It is part of the working model of the program.

## Project File Model

TheoChem Lab uses two kinds of files:

| File type | Purpose |
| --- | --- |
| Project files | Store the workspace and the document tree shown in Project View. |
| Project documents | Store editable content such as structures, notes, tables, and diagrams. |
| External source files | Imported structures, Gaussian files, cube files, GROMACS files, and other calculation data. |
| Exported files | Files written for other programs or for archiving results. |

The [Project View](../start/project-view.md) is the main file navigator. It shows the documents and data files that belong to the current project and opens the correct viewer for each supported type.

## Native Document Types

Native document files preserve TheoChem Lab state better than generic exchange formats.

| Extension | Document type | Typical content |
| --- | --- | --- |
| `.wsd` | [3D Structure Viewer](3d-structure-document.md) | Full TheoChem Lab 3D state: atoms, bonds, crystal data, styles, camera, fragments, planes, measurements, boxes, centroids, vectors, and surfaces. |
| `.txd` | [Text Document](text-document.md) | Notes, copied output, logs, and plain text results. |
| `.tbd` | [Table Document](table-document.md) | Tabular numerical data and exported table results. |
| `.dgd` | [Diagram Document](diagram-document.md) | Plots and diagram data generated inside the program. |

Use `.wsd` when you want to keep an editable 3D structure inside a project. It is the format that preserves TheoChem Lab-specific objects and visualization state. Use external formats such as `.cif`, `.gro`, `.pdb`, `.mol2`, or `.xyz` when you need to exchange data with another program.

## External Data Files

Some files are loaded as data sources rather than editable project documents. Cube files (`.cube`, `.cub`), Gaussian outputs, wavefunction files, and surface data are usually used by analysis or visualization tools.

Keep these files in the project tree when possible. That makes it easier to reopen the project later and understand which result came from which calculation.

## Recommended Organization

For reproducible work, keep these groups separate:

| Folder or group | Recommended contents |
| --- | --- |
| Source structures | Original `.cif`, `.gro`, `.pdb`, `.mol2`, `.xyz`, or other imported files. |
| Working documents | Editable `.wsd`, `.txd`, `.tbd`, and `.dgd` project documents. |
| Calculations | Gaussian, ORCA, CP2K, VASP, GROMACS, and other generated input/output files. |
| Exports | Files written for external programs, figures, or reports. |

!!! tip
    Keep the original imported file unchanged and save the edited or analyzed structure as a TheoChem Lab `.wsd` document. This gives you a clean source file and a reproducible editable state.

## File Operations

The core operations are:

| Operation | Where to use it | Result |
| --- | --- | --- |
| Open | File menu, Project View, or drag-and-drop | Adds a supported file to the project and opens the appropriate view. |
| Save | Active document or Project View document | Writes the current document state back to its project file. |
| Save As / Export | Structure viewer export dialogs | Writes the current structure, fragment, pair, frame, or calculation input to an external format. |
| Add document | Project View | Creates or imports a document into the current project tree. |

See [Opening and Importing](open-and-import.md) and [Saving and Exporting](save-and-export.md) for the supported formats and behavior.
