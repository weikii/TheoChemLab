# Multiwfn and ESP Tools

Multiwfn-related tools help generate and load electrostatic potential and wavefunction-derived visualization data.

## ESP Generation

The ESP form accepts wavefunction-like inputs such as:

- `.fch`
- `.fchk`
- `.wfn`

The module can generate files used for ESP visualization.

## Display Modes

The ESP tool supports two display concepts:

- **Points**: load point-style ESP data.
- **Faces**: load face/surface-style data.

Common generated or loaded files include:

- `totesp.cub`
- `density.cub`
- `vtx.pdb`
- `mol.pdb`

## Resolution

The form exposes point and face resolution controls. Higher resolution can improve visual detail but increases file size and rendering cost.

## Practical Workflow

1. Select a wavefunction file.
2. Choose a resolution.
3. Generate ESP data.
4. Load the generated cube or PDB files into the viewer.
5. Adjust style, transparency, and color in the surface tools.

!!! note
    Multiwfn must be configured correctly in the local environment for generation workflows that call it externally.
