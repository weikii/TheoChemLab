# Main Interface Overview

TheoChem Lab's main interface is built from a central document area plus dockable views around it.

## Layout

| Area | Role |
| --- | --- |
| **Project View** | Project tree, folders, project documents, imported files, generated outputs |
| **Document Area** | Open viewers such as 3D Structure Viewer, Text Viewer, Table Viewer, Diagram Viewer, and analysis result windows |
| **Object View** | Object tree for the selected open `.wsd` viewer |
| **Properties View** | Property editor for the active document or selected object |
| **Output View** | Short messages, submission notices, and clickable document links |
| **Job View** | Running, completed, stopped, or failed background calculation jobs |
| **Menu Bar** | Main command structure, grouped by software menu |
| **Toolbar** | Quick access to frequent document and structure operations |
| **Status Bar** | Atom count, rendering status, and other live state |

## Main Working Loop

<div class="workflow-strip">
  Project View -> Document Area -> Object View / Properties View -> Output / Job View
</div>

1. Choose or create files from **Project View**.
2. Work inside the **Document Area**.
3. Navigate structure objects in **Object View** when a `.wsd` viewer is open.
4. Select objects and edit them in **Properties View**.
5. Read short messages in **Output View** and track long-running tasks in **Job View**.

## Dockable Views

Project View, Object View, Properties View, Output, and Job View are dockable panes. If one is closed, reopen it from the **View** menu.

The docked views support the active document. They are not replacements for project documents:

- Project documents store structure, text, table, or diagram data.
- Docked views help navigate, edit, inspect, and monitor that data.

## Document Area

The document area can contain several open windows. The most important document window is the 3D Structure Viewer, but text, tables, diagrams, and analysis result viewers can also appear there.

Use **Window > Close All** to close all open document windows.
