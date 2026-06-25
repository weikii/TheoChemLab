# Surface and Volume Data

Surface and volume tools load scalar fields, cube data, scan results, and tensor-derived datasets into the 3D Structure Viewer.

## Surface Loader

Open **Tools > Surface > Loader** or **Tools > Loader > Surface** depending on the menu path in the active build.

The loader supports:

- Cube-like files: `.cub`, `.cube`
- Scan data: `.txt`, `.xyz`
- Pasted tensor/report data for selected presets
- Surface presets such as HOMO, LUMO, ESP, orbital, scan, Hirshfeld surface, Born effective charge, internal strain, piezo response, Young's modulus, and shear modulus

## Load Page

Important controls include:

- **Type** and **Preset**: choose what kind of data is being loaded.
- **Shape source** and **Value source**: choose files or text used for geometry and scalar values.
- **ISO**: set the isosurface threshold.
- **Transparency** and **Preset color**: control visual appearance.
- **Resolution**: choose Low, Medium, High, or Very High.
- **Visualization Scale**: scale non-geometric surface values.
- **Load Molecule**: import the molecule together with the surface when supported.
- **Render to PPT**: export presentation-oriented renderings when configured.

## Align Page

Surface alignment can match a loaded surface to selected molecules in the current structure.

Use:

- **Current selection** to check selected molecules.
- **Similarity cutoff** to control matching tolerance.
- **Keep source** to retain the source surface after alignment.

## Options and Batch

Options include crystal wrapping for compatible data. Batch tools support repeated rendering or export using a PowerPoint layout.

!!! warning "Check units and origin"
    Cube and scan files often come from external programs. Confirm that the molecule, origin, grid spacing, and units match the active structure before interpreting surface overlap.

## Surface Interaction Scan

The Surface Interaction Scan tool evaluates interaction-like values over a grid or scan path.

It supports:

- Setting a target
- X/Y/Z start, end, and step controls
- Offset and depth controls
- Optional 3D heatmap
- A second scan mode with two selected structures, rotation angle range, Z range, and rotation step

Use it for exploratory spatial scans rather than final high-throughput calculations.
