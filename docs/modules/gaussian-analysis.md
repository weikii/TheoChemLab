# Gaussian Analysis

Gaussian Analysis reads Gaussian output files and extracts values used by charge-transport and excited-state workflows.

## Available Analyses

The current interface lists:

- **Electronic Coupling**
- **Reorganization Energy**
- **Electron/Hole Analysis**

## File Assignment

File assignment fields accept Gaussian outputs such as:

- `.fch`
- `.fchk`
- `.log`
- `.out`

For electronic coupling, the interface can request dimer and fragment files. For electron/hole analysis, formatted checkpoint and log files are used to identify excited states.

## Electronic Coupling Analysis

The workflow uses assigned dimer and fragment files and calls the bundled electronic-coupling executable. Results are shown in a text viewer titled **Electronic Coupling Results**.

Use the output value as \(V\) in hopping-rate or anisotropic-mobility calculations.

## Electron/Hole Analysis

The interface can parse excited states from a Gaussian log file, choose a target excited state, and select analysis quality before running the analysis.

## Reorganization Energy

Reorganization-energy analysis supports workflows where Gaussian outputs from different charge or geometry states are combined to estimate \(\lambda\).

!!! tip "Keep files together"
    Store dimer, fragment, log, and checkpoint files in the same project folder. This makes it much easier to trace which values were used in transport plots.
