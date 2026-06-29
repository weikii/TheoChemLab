# Automation and External Tools

TheoChem Lab can be controlled by approved local tools while the program is running. This is mainly useful when you want an assistant or a script to help with repeated viewer operations, exports, screenshots, or simple structure edits.

Most users do not need to set this up manually. If a workflow uses it, the external tool connects to the open TheoChem Lab window in the background.

## What It Is For

The automation interface is designed for local helper workflows such as:

- Checking the active project and open documents.
- Opening a project file from the current project.
- Reading the active structure or selected atoms.
- Selecting atoms by id or element.
- Recentering, fitting, or resetting the 3D view.
- Saving the active document.
- Exporting the active structure.
- Rendering the current 3D view to an image.

This can make repetitive work faster, especially when preparing many similar figures, exports, or structure checks.

## What You See In TheoChem Lab

Automation commands use the same open project and active viewer that you see in the interface.

If a command changes a structure, the document is marked as modified. When available, structure edits use the normal undo system, so you can review the result before saving.

Commands that open files, change the active viewer, select atoms, or render images may briefly update the visible interface.

## Limits

The automation interface is local to your computer. It is not a cloud service and it is not meant for remote public access.

It works best when:

- TheoChem Lab is already open.
- A project is loaded.
- The intended 3D Structure Viewer is open and active.
- You save important work before running a long automated sequence.

Some commands require an active `.wsd` viewer. If no suitable viewer is open, the tool receives an error instead of changing the project.

## Safety Notes

Use automation with the same care as menu commands:

- Check the active viewer before running commands that edit or export structures.
- Review generated files before using them in reports or calculations.
- Save the project after confirming the automated changes are correct.

## For Tool Authors

TheoChem Lab exposes this feature through a local named pipe named `TheoChemLabPipe-0.0.0.1`.

Tools can ask the running application for the current command list and schema. New integrations should use the JSON API rather than older plain-text commands.
