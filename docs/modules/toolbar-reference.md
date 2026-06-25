# Toolbar Reference

The toolbar provides quick access to common commands from the active workspace. Some buttons are enabled only when a compatible 3D Structure Document is active.

## File and Editing

| Button | Function |
| --- | --- |
| **New** | Create a new project document such as a 3D Structure Document, Text Document, Table Document, or Diagram Document. |
| **Save** | Save the active document. |
| **Save All** | Save all open project documents. |
| **Undo** | Undo the latest supported edit. |
| **Redo** | Redo an undone edit. |
| **Cut** | Copy then remove the selected objects. |
| **Copy** | Copy the selected objects or compatible document content. |
| **Paste** | Paste copied structure data, text, or supported clipboard content. |
| **Help** | Open help-related actions. |

## Camera and Movement

| Button | Function |
| --- | --- |
| **Move Left / Right / Up / Down** | Translate the selected object or view-related target in the indicated direction. |
| **Movement** | Open the movement control window for more precise translation or rotation. |
| **Reset View** | Restore the view orientation. |
| **Recenter** | Move the structure or current target back to the visual center. |
| **Fit to View** | Fit the active structure into the camera view. |
| **Align View to** | Align the camera to a selected axis such as \(a\), \(b\), \(c\), or screen axes when available. |

## Measurement

| Button | Function |
| --- | --- |
| **Measure > Distance** | Measure distance between two picked points or atoms. |
| **Measure > Angle** | Measure an angle from three picked points or atoms. |
| **Measure > Torsion** | Measure a torsion angle from four picked points or atoms. |
| **Fit > Plane** | Fit a plane to selected points or atoms. |
| **Fit > Box** | Fit a box around selected objects. |
| **Fit > Position** | Fit using positions. |
| **Fit > Surface** | Fit using surface-related data. |
| **Find Centroid** | Find the centroid of the current selection. |
| **Get Volume** | Estimate volume for compatible objects. |

## Optimization and Dynamics

| Button | Function |
| --- | --- |
| **Optimize > Opt All** | Optimize all atoms in the active structure. |
| **Optimize > Opt Hydrogen** | Optimize hydrogen positions only. |
| **Optimize > Opt Selection** | Optimize the current selection. |
| **Molecular Dynamics** | Start or open the xTB/MD-related quick tool. |

## Drawing and Structure Editing

| Button | Function |
| --- | --- |
| **Draw Structure** | Switch to structure drawing mode. |
| **Current Element** | Set the active drawing element, such as H, C, N, O, F, Si, P, S, Cl, Br, or I. |
| **Periodic table** | Open the periodic table for element selection. |
| **Alkyl Chain** | Draw an alkyl-chain template. |
| **Benzene** | Draw a benzene template. |
| **More Templates** | Open additional structure templates. |
| **Update H** | Recalculate or add hydrogens for the current structure. |
| **Auto-update Hydrogen** | Automatically update hydrogens during compatible editing operations. |
| **Bond Type** | Change or assign bond type for selected bonds. |
| **Allow Pipe Connections** | Toggle pipe-style bond/connection behavior for drawing operations. |
| **Hit** | Enable object-hit or picking mode for selecting scene objects. |

## Frame Sequence

| Button | Function |
| --- | --- |
| **Previous Frame** | Move to the previous frame in a structure sequence. |
| **Play** | Play the frame sequence. |
| **Pause** | Pause playback. |
| **Stop** | Stop playback and reset playback state. |
| **Next Frame** | Move to the next frame. |
| **Structure Frame Sequence Setting** | Open sequence settings. |
| **Edit** | Open the frame editor. |

!!! note
    Toolbar behavior depends on the active document. For example, frame controls require frame data, and many drawing or measurement commands require an active 3D Structure Document.
