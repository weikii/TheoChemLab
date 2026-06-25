# User Interface

TheoChem Lab is organized around a main structure viewer and several dockable utility views.

## Main Viewer

The main viewer displays molecules, crystals, surfaces, orbitals, and annotation objects. It is also the main place for structure selection, measurement, and crystal-context commands.

Common viewer operations include:

- Rotate, pan, and zoom the active structure
- Select atoms, molecules, or molecular pairs
- Display or hide crystal-cell information
- Open context menus for structure-specific commands

## Project View

The project view lists project files and generated results. It is intended for repeated navigation across structures, input files, calculation outputs, and derived analysis data.

## Properties View

The properties view exposes editable settings for the currently selected object, document, viewer item, or crystal. For crystal documents, this can include display-level properties such as whether the unit cell and axis labels are shown.

## Output and Jobs

Output and job views collect calculation logs, status messages, and background workflow information.

If a view is closed, it can normally be reopened from the main interface. Project reload should restore the document state without requiring these auxiliary panes to be open.
