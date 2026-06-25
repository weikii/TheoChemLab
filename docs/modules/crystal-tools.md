# Crystal Tools

Crystal tools help inspect, repair, and expand periodic molecular structures.

## Typical Tasks

- Make molecules whole across periodic boundaries
- Inspect unit cell geometry
- Normalize molecular positions without changing the intended molecular identity
- Grow the displayed crystal environment around the current structure
- Control whether cell axes and labels are shown

## Make Molecules Whole

When a molecular crystal is imported, some molecules can be split across periodic boundaries. The make-whole operation repairs these molecules by moving atoms through periodic images so that bonded fragments are reconstructed as complete molecules.

This is especially important before:

- Exporting structures
- Measuring molecular pairs
- Building local environments
- Running pair-based charge-transport analysis

## Display Growth

Crystal growth commands are intended to expand the visible environment around the current structure. They should not change the underlying crystal definition unless the command explicitly says it edits the structure.

For shell-like growth, the displayed molecules are selected from nearby periodic images around the current atoms. This is useful when inspecting the immediate packing environment without filling an entire rectangular supercell.

## Cell Display

The crystal properties include a display switch for the unit cell and axis labels. Turn this on when checking crystallographic orientation, and turn it off when the cell frame would distract from molecular packing.
