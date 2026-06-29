# Object View

Object View is the object browser for open 3D structure documents. Use it when you want to find atoms, bonds, fragments, measurements, surfaces, or other scene objects without searching in the 3D view by eye.

## Viewer

Use **Viewer:** to choose which open `.wsd` document is shown in Object View. The list contains open 3D Structure Viewer windows.

When you activate another 3D structure window, Object View follows that window. Use the refresh icon if the list does not look current after a large edit or file operation.

## Object Groups

Objects are arranged by type. Common groups include:

| Group | What it contains |
| --- | --- |
| **Atom** | Atoms in the structure |
| **Bond** | Bonds and bond-like connections |
| **Distance / Angle** | Measurement objects |
| **Fragment** | Saved molecule or atom fragments |
| **Crystal Structure** | Crystal-related objects and cell data |
| **Surface** | Loaded or generated surface objects |
| **Plane / Box / Vector / Centroid** | Scene objects used for analysis and annotation |

The number after a group name is the number of objects in that group.

## Opening Large Groups

Click the expand button beside a group to show its objects.

Large groups are loaded in parts. If you see an entry such as `1001-2000...`, more objects are available. Scroll to that entry and Object View continues loading the next part of the group.

This keeps large structures usable while still letting you inspect individual objects when needed.

## Selecting Objects

Click an object or group in Object View to select it in the tree.

Use the right-click **Select** command to select the matching object or group contents in the 3D Structure Viewer.

You can select more than one tree row:

- Use **Ctrl** to add or remove individual rows from the tree selection.
- Use **Shift** to select a visible range of rows.

After selecting several object rows, right-click one of the selected rows and use **Select** to send the combined object selection to the 3D viewer.

## Deleting Objects

Right-click an object row and choose **Delete** to remove that object from the document.

Right-click a group row and choose **Delete** to remove all objects in that group. TheoChem Lab asks for confirmation before deleting.

Use group deletion carefully. For example, deleting a bond group removes the listed bonds from the structure, and deleting a measurement group removes the saved measurement objects.

## Object Details

Expanded rows may show compact details beside the object name, such as distance values, atom labels, or other object-specific information.

Some detail columns can be resized from the header area when the cursor changes to the resize shape.

## Typical Uses

- Check how many atoms, bonds, measurements, or fragments are in the active structure.
- Select all objects of one type, such as all measurements or all fragments.
- Find a specific atom or measurement in a large document.
- Remove generated objects after an analysis step.
- Switch between several open `.wsd` viewers without closing the pane.
