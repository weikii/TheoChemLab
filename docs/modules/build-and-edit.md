# Build and Edit Structures

The build tools create and modify objects in the active 3D Structure Viewer. They are available from **Build** and from structure-editing toolbar buttons.

## Main Tools

| Tool | Purpose | Typical inputs |
| --- | --- | --- |
| **Atoms** | Add a real or virtual atom to the active structure. | Element, label, charge, \(x/y/z\) coordinates, optional virtual shape and color |
| **Bonds** | Generate strong bonds or weak interactions. | Target scope, distance criterion, aromatic display style |
| **Faces** | Create planes or faces. | Miller-like \(h/k/l\) values, face contents, scope, segment count |
| **Molecule** | Build common molecular fragments or templates. | Template selection and normal build options |
| **Others** | Build helper objects with parameter fields. | Object-specific parameters |

## Drawing Toolbar

The structure-painter toolbar provides quick drawing tools:

- Change current drawing element, such as H, C, N, O, F, Si, P, S, Cl, Br, or I.
- Open the periodic table for element selection.
- Draw common fragments such as alkyl chains, benzene, and other templates.
- Use **More Templates** to open the template library.
- Use **Update H** or **Auto-update Hydrogen** to rebuild hydrogens after editing.
- Change bond type when bond-order display is enabled.

## Editing Pattern

1. Open or create a 3D Structure Document.
2. Select the part of the structure to modify when the tool supports selection scope.
3. Open the build form from **Build** or the toolbar.
4. Enter the parameters and click **Build**.
5. Check the result in the 3D viewer and use undo if the operation supports it.

!!! tip "Use selection deliberately"
    Many build tools can act on the current selection or the full structure. Select the target atoms first when you want a local edit.

## Frame Sequences

Structure frame tools store multiple structures inside one document for playback or comparison. Use the frame toolbar to move between frames, play/pause the sequence, stop playback, and open the sequence editor.

Frame sequences are useful for:

- Comparing optimized conformations
- Inspecting generated scan structures
- Reviewing molecular-dynamics snapshots
- Building simple animations for visual explanation
