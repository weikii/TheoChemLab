# 3D Structure Viewer (`.wsd`)

The `.wsd` file is the native TheoChem Lab 3D structure document. It is opened in the 3D Structure Viewer and is designed to preserve the working state of a molecular or crystal scene.

Use `.wsd` when you want to reopen and continue work inside TheoChem Lab. Use external formats such as `.cif`, `.gro`, `.pdb`, `.mol2`, or `.xyz` when another program needs the file.

## What It Saves and Reads

| Content | Saved and read by `.wsd` |
| --- | --- |
| Atoms | Element, atom IDs, names/labels, Cartesian coordinates, optional fractional/crystal-related coordinates, charge-related fields, and anisotropic displacement data when present. |
| Bonds | Bond topology, atom references, bond type, virtual/simple bond state, and non-default bond style information. |
| Crystal data | Crystal cell, space group information, asymmetric unit, CIF metadata when available, crystal display style, lattice display settings, and crystal bond templates used for manual or suppressed crystal bonds. |
| Display style | Global atom/bond drawing style, element colors/radii, chemical drawing style, crystal style, vector style, fragment style, measured-object style, plane style, box style, camera style, and anisotropic display style. |
| Camera and view | Camera state and scene/view information needed to reopen the document close to the saved view. |
| Fragments | Fragment IDs, names, atom membership, fragment surface display style, color, transparency, spacing, and ISO value. |
| Planes | User-created planes and crystal planes, including style and plane parameters. |
| Measurements | Measured distances and angles, including atom/plane references, numerical values, visibility flags, line style, color, dash ratio, and labels. |
| Boxes | 3D boxes, dimensions, corner positions, edge style, color, and displayed length/width/height options. |
| Centroids | Centroid atom membership, name, color, radius, line display, and label display. |
| Vectors | Vector indicators, start/end positions, vector style, and visibility. |
| Surfaces | Surface definitions, linked atoms, display settings, color/value settings, scan grids, and linked cube data source names. When needed, related cube data can be written beside the `.wsd` document. |

!!! note
    For crystal documents, `.wsd` stores the crystal definition and asymmetric-unit information. Expanded viewer atoms may be saved selectively when they contain user-modified style or state, while default expanded atoms can be regenerated from the crystal data.

## Related Viewer

The `.wsd` file opens in the [3D Structure Viewer](../document-views/3d-structure-viewer.md), where structure editing, display control, selection, measurement, crystal tools, surfaces, and analysis context are handled.
