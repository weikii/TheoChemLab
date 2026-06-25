# Opening and Importing

TheoChem Lab can open native project documents, common molecular structure files, crystal files, and calculation output files. Files can be opened from the **File** menu, added from Project View, or dropped directly into the main window.

## Supported Open Formats

| Category | Extensions or names | Notes |
| --- | --- | --- |
| Native documents | `.wsd`, `.txd`, `.tbd`, `.dgd` | TheoChem Lab project documents. The main File Open dialog lists the commonly opened document types; Project View manages the full project document set. |
| Molecular structures | `.mol`, `.mol2`, `.gjf`, `.com`, `.sdf`, `.xsd`, `.xyz`, `.arc` | Loaded as molecular structure data. |
| Crystal and periodic structures | `.cif`, `.pdb`, `.gro`, `.inp`, `POSCAR`, `CONTCAR` | Loaded through the crystal/periodic structure path when applicable. |
| Gaussian output and wavefunction data | `.out`, `.log`, `.fch`, `.fchk` | Used for analysis, orbital data, surfaces, and related tools. |
| Cube data | `.cube`, `.cub` | Registered as cube data and used by surface or volume tools. |

`POSCAR` and `CONTCAR` are accepted by exact filename even though they usually have no file extension.

## Open Dialog

The standard open dialog groups all supported extensions under **All Supported Files** and also lists each format separately. Choose a specific format if you want to narrow the file list.

Opening a structure file creates or updates a document in the project tree. The resulting view depends on the detected file type.

## Drag and Drop

You can drag supported files onto the main application window. The application checks the extension, or the exact filenames `POSCAR` and `CONTCAR`, before accepting the drop.

This is the fastest way to add several external files into the project during exploratory work.

## Import Behavior

Imported files should be treated as source data. After editing a structure, changing fragments, generating bonds, changing crystal settings, or preparing analysis objects, save the working state as a native `.wsd` document.

| Imported content | Recommended next step |
| --- | --- |
| Molecule or crystal structure | Check bonds, fragments, crystal cell, and display style, then save as `.wsd`. |
| Gaussian output | Use the Gaussian analysis and surface tools, then save important text, table, or diagram results. |
| Cube or volume data | Load into the 3D Structure Viewer for surface visualization. |
| GROMACS `.gro` | Check residues, box information, and molecule continuity before export or analysis. |

!!! note
    Some analysis files are data sources rather than full editable documents. They may appear in the project tree and feed tools, but the editable working state should still be preserved in the appropriate TheoChem Lab document.

## Molecular Continuity

For periodic and molecular-dynamics structures, molecules can cross cell boundaries. Before exporting a molecular structure for another tool, use the structure tools to make molecules whole when needed.

For MD-style structures where residues and box information matter, prefer `.gro` export.
