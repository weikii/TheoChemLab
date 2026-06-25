# PXRD and Tensor Visualization

This page groups analysis and visualization tools that are not part of the core structure-editing workflow.

## PXRD

The PXRD entry simulates or inspects powder X-ray diffraction information from crystal structures.

Use it after:

- Importing a CIF or other crystal-containing file
- Confirming the unit cell
- Making molecules whole when molecular display matters

## Hirshfeld Surface

Hirshfeld surface tools are available through the molecular-interaction menu. The workflow is split into calculation and analysis entry points.

Typical use:

- Generate or load Hirshfeld-related surface data.
- Visualize the resulting surface in the 3D Structure Viewer.
- Use surface presets such as **Hirshfeld surface** in Surface Loader.

## Tensor and Directional Response Visualization

Surface Loader includes presets for tensor-derived data:

- Born Effective Charge
- Atomic Internal Strain
- Piezo strain response
- Piezo stress response
- Directional Young's modulus
- Shear modulus maximum and minimum
- Piezo and elastic combined report

These tools convert matrix or report-style data into visual objects suitable for inspection in the 3D viewer.

## MISC Calculation

The MISC Calculation form provides lightweight calculation helpers using configured external or bundled programs such as xTB.

Common controls include:

- Program and menu selection
- CPU count
- xTB path
- Target atom selection
- SCF accuracy
- Start button

Available helper tasks include target-based calculations, single-point style calculations, dipole-related calculations, and charge-assignment placeholders depending on the active menu.

!!! note
    Some MISC functions are still experimental. Confirm output files and log messages before using results in a report.
