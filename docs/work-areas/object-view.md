# Object View

Object View lists the objects in the currently selected 3D Structure Viewer document.

## Viewer Selector

The top control is labeled **Viewer:** and lists open `.wsd` structure viewers. Selecting a viewer changes which document Object View displays.

The refresh command is an icon button. It reloads the object tree for the selected viewer.

When the viewer list is open, timed refreshes are deferred so the list does not change while the user is choosing a viewer. After the final selection is confirmed, Object View updates to the selected viewer.

## Object Tree

The tree groups scene objects by type, such as atoms, bonds, measurements, fragments, surfaces, vectors, centroids, and crystal objects.

Expanded groups show their child objects with compact columns for object-specific details. Very large groups are loaded in batches so opening a document with many atoms or bonds does not need to draw every child node at once.

For large groups:

- The first batch is loaded when the group is expanded.
- A range placeholder such as `1001-2000...` marks the next batch.
- When the placeholder becomes visible, the next batch is loaded automatically.

## Selection And Editing

Selecting an object node selects the corresponding object in the active 3D viewer when possible. Double-clicking object nodes focuses or activates the corresponding viewer object.

The context menu and keyboard commands provide object-level actions such as deleting selected objects or clearing a group. Destructive actions ask for confirmation before changing the document.

## Refresh Behavior

Object View follows changes in open `.wsd` viewers and updates the tree when the object collection changes. It avoids heavy child-node work until a group is expanded, which keeps large documents responsive while still showing correct group counts.
