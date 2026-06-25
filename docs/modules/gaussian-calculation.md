# Gaussian Calculation

Gaussian Calculation generates Gaussian input files from the current 3D structure and can launch saved input files.

## Setup Page

The setup page controls the Gaussian route and job metadata:

- CPU count
- Memory in GB
- Checkpoint file name
- Job type: single point, optimization, frequency, or optimization plus frequency
- Method family and functional
- Charge and spin
- Job title
- Basis set
- Diffuse and polarization functions
- Spin-restricted option

Available functionals in the current interface include B3LYP, CAM-B3LYP, M062X, wB97XD, M052X, PBE0, PBE, M06, wB97M-V, and BLYP.

## Properties Page

Optional calculation properties include:

- Excitation
- Electronic coupling
- Reorganization energy
- Electron affinity and ionization potential

These selections alter the generated Gaussian input content.

## Advanced Page

Advanced options include:

- Scan or batch generation
- Freeze atoms for compatible optimization jobs

Freeze-atom selection uses the current atoms selected in the 3D Structure Viewer.

## Output Page

The generated Gaussian input is displayed as text. Use:

- **Save...** to write a `.gjf` file.
- **Run...** to select and run an existing `.gjf` or `.com` file.
- **Save + Run** to save the generated input and run it immediately.

!!! warning "External Gaussian dependency"
    Running Gaussian requires a configured Gaussian executable environment. If only input generation is needed, use **Save...** and run the file externally.
