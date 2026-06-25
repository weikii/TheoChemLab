# Electronic Coupling

The electronic coupling workflow supports charge-transport analysis for molecular pairs. It is designed to connect Gaussian-related outputs with values used in hopping-rate and anisotropic-mobility calculations.

## Workflow Outline

1. Prepare molecular pair structures.
2. Run the required quantum chemistry calculations.
3. Load the output files into TheoChem Lab.
4. Extract electronic coupling values.
5. Use the values in mobility or hopping-rate analysis.

## What the Value Means

Electronic coupling, usually written as `V`, describes the strength of charge transfer between two neighboring molecules. In the current documentation, `V` is treated as an input to hopping-rate and mobility models rather than as a standalone final result.

For a complete charge-transport workflow, electronic coupling should be combined with:

- Reorganization energy `lambda`
- Molecular-pair distance and orientation
- Temperature
- A defined crystal plane or reference direction when directional mobility is calculated

## Theory Reference

The older TheoChem Lab help files referenced the electronic-coupling treatment described by:

Edward F. Valeev, Veaceslav Coropceanu, Demetrio A. da Silva Filho, Seyhan Salman, and Jean-Luc Bredas, "Effect of Electronic Polarization on Charge-Transport Parameters in Molecular Organic Semiconductors", *Journal of the American Chemical Society*, 2006, 128, 9882-9886.

## Status

This module is under active development. The current page documents the role of electronic coupling in the broader workflow; detailed validated examples will be added once the interface and file requirements are stable.
