# User Interface

TheoChem Lab is organized around a main workspace, project documents, and several dockable utility views.

This page is a compact reference. For a step-by-step path from startup to document windows, see [Getting Started](getting-started.md).

## Main Workspace

The main workspace contains the menu bar, toolbars, document tabs/windows, and status information such as atom count and frame rate.

Core menus include:

- **File**: open files, save documents, and open application settings
- **View**: show or hide Project View, Object View, Properties View, Output, and Job View
- **Edit**: undo, redo, selection, fragments, groups, and preferences
- **Display**: style and element-color controls
- **Build**: atoms, bonds, faces, molecules, crystal tools, and structure frame sequences
- **Tools** and **Modules**: analysis and external-workflow tools
- **Help**: online documentation, update checks, and About

## 3D Structure Viewer

The 3D Structure Viewer displays molecules, crystals, surfaces, orbitals, and annotation objects. It is also the main place for structure selection, measurement, and crystal-context commands.

## Project View

The project view lists project files and generated results. It is intended for repeated navigation across structures, input files, calculation outputs, and derived analysis data.

## Object View

Object View shows the object tree for the selected open `.wsd` viewer. Its **Viewer:** selector lists open structure viewers, and the icon refresh command reloads the tree for the selected viewer.

Large object groups are loaded in batches while scrolling or expanding the tree, so group counts remain visible without drawing every object node at once.

## Properties View

The properties view exposes editable settings for the currently selected object, document, viewer item, or crystal. For crystal documents, this can include display-level properties such as whether the unit cell and axis labels are shown.

## Output and Jobs

Output View shows short messages and viewer links. Detailed calculation results open in document viewers.

Job View shows background jobs in a table and provides toolbar commands for refresh, stop, open folder, copy summary, remove, and clear finished jobs.

If a view is closed, it can normally be reopened from the main interface. Project reload should restore the document state without requiring these auxiliary panes to be open.
