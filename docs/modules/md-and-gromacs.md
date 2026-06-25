# MD and Gromacs

TheoChem Lab includes molecular-dynamics oriented project tools and Gromacs generation helpers.

## Gromacs Generation

The Gromacs generation form builds molecular mixtures in a simulation box.

The molecule table includes:

- Molecule name
- Residue name
- Amount
- ITP file
- GRO file
- MOL2 file
- Atom count
- Total amount
- Color

## Box and Placement Options

Box controls use nanometers for the box dimensions. Placement options include:

- Minimum distance in Å
- Maximum placement attempts

Use these controls to prevent severe overlaps during initial packing.

## Typical Workflow

1. Add molecule rows.
2. Assign structure and topology files where required.
3. Set the simulation box size.
4. Set minimum distance and attempt limits.
5. Generate the packed system.
6. Inspect the result in the 3D Structure Viewer.

## MD Simulation and Analysis

The MD Simulation menu currently exposes generation, simulation, and analysis entry points. These pages are still evolving, but the intended workflow is:

- Prepare initial molecular structures.
- Generate or import simulation-ready files.
- Keep output trajectories and analysis results inside the project.
- Open selected structures or frames in the 3D Structure Viewer.

!!! note
    When exporting structures from MD-derived data, make molecules whole before export. GRO export is preferred when residue and box information are important.
