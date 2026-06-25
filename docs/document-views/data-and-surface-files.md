# Data and Surface Files

Not every file opened by TheoChem Lab is a normal editable project document. Some files are loaded as data sources for visualization or analysis.

## Cube Data

Cube files (`.cub` and `.cube`) are recognized as cube data. They are commonly used for volumetric fields such as orbitals, electron density, or electrostatic potential.

Cube data can be used by surface and orbital visualization workflows.

## Surface Loader

The surface loader accepts cube-like and scan-data files depending on the selected loading mode. Supported inputs include:

- `.cub`
- `.cube`
- `.xyz`
- `.txt`

Use surface loading when the goal is to visualize or compare a scalar field, a scan surface, or a generated surface-like dataset.

## Gaussian and Wavefunction Data

Several visualization tools use Gaussian or wavefunction-related files:

- `.fch` and `.fchk` for Gaussian-formatted checkpoint data
- `.wfn` and `.molden` for wavefunction-style inputs in Multiwfn workflows
- `.cub` for generated volume data

These files are usually inputs to a tool rather than primary editable documents.

## Practical Rule

If the file represents a structure state you want to keep editing, save or convert it into a 3D Structure Document. If the file is source data for a calculation or visualization, keep it in the project tree near the output it produces.
