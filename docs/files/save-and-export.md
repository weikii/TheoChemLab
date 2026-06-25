# Saving and Exporting

TheoChem Lab separates saving the current project document from exporting data to external programs.

Saving preserves the current TheoChem Lab document. Exporting writes a structure, fragment, packing pair, frame, or calculation input in another file format.

## Save Native Documents

Use native document saving for work that should reopen exactly inside TheoChem Lab.

| Native extension | Use it for |
| --- | --- |
| `.wsd` | [3D Structure Viewer documents](3d-structure-document.md). |
| `.txd` | [Text documents](text-document.md). |
| `.tbd` | [Table documents](table-document.md). |
| `.dgd` | [Diagram documents](diagram-document.md). |

`.wsd` is the most important structure format inside TheoChem Lab. Generic formats such as `.xyz`, `.mol2`, `.pdb`, `.gro`, and `.cif` cannot preserve every TheoChem Lab object, visual style, or analysis object.

## Structure Export Scope

The structure export dialog can write different subsets of the active 3D document.

| Scope | Meaning |
| --- | --- |
| All atoms | Export the current full structure. |
| Selected Fragment | Export only the fragment obtained from the current selection. |
| Packing pairs | Export each available packing pair as a separate file. |
| Frames | Export each stored frame as a separate file. |

For packing pairs and frames, the program generates separate output files using the selected base filename.

## General Structure Formats

| Format | Extension | Typical use |
| --- | --- | --- |
| SYBYL MOL2 | `.mol2` | Molecules with atom types and bonds. |
| XYZ | `.xyz` | Simple Cartesian coordinates. |
| MDL Mol | `.mol` | Small-molecule exchange. |
| CIF | `.cif` | Crystallographic structure export. |
| PDB | `.pdb` | Biomolecular or periodic structure exchange. |
| GROMACS GRO | `.gro` | MD structures with box and residue-style information. |

!!! warning
    CIF export requires a periodic crystal structure. If the current document has no crystal cell, CIF export is not valid.

## Whole-Molecule Export

Periodic structures may store molecules split across cell boundaries. TheoChem Lab reconstructs complete molecules for `.gro` and `.pdb` export paths. When preparing molecular exports manually, make the structure whole before writing the final file.

For molecular dynamics structures, use `.gro` when residue names, atom names, and box dimensions are important.

## Calculation Input Export

TheoChem Lab can generate input files for several external programs.

| Program target | Output | Notes |
| --- | --- | --- |
| Gaussian | `.gjf` | Builds a Gaussian input from the selected export scope and current preset options. |
| CP2K | `.inp` | Writes CP2K input from the selected preset. |
| ORCA | `.inp` | Writes ORCA-style input from the selected preset. |
| PSI4 SAPT | `.inp` | Requires exactly two fragments. |
| Abinit | `.abi` | Writes Abinit input. |
| VASP | Folder containing `POSCAR`, `POTCAR`, `INCAR`, `KPOINTS`, and `vasp_job.sh` | Requires a periodic crystal structure. |

VASP export uses a folder destination because a VASP job needs multiple files, not a single structure file.

## Practical Rules

Use this rule of thumb when deciding what to save:

| Need | Recommended output |
| --- | --- |
| Reopen and continue editing in TheoChem Lab | `.wsd` |
| Preserve notes or copied output | `.txd` |
| Preserve table or plotted result | `.tbd` or `.dgd` |
| Send a molecule to another modeling tool | `.mol2`, `.mol`, or `.xyz` |
| Send a crystal to crystallographic tools | `.cif` |
| Send an MD structure with box/residue information | `.gro` |
| Prepare a quantum chemistry job | `.gjf`, `.inp`, `.abi`, or VASP folder export |

!!! tip
    Keep exported files in the same project folder tree as the source `.wsd` document. The Project View then becomes a readable record of the source structure, calculations, and final exported results.
