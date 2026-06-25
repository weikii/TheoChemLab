# Diagram Document (`.dgd`)

The `.dgd` file is the native TheoChem Lab diagram document. It stores plot and diagram data generated inside the project.

## What It Saves and Reads

| Content | Saved and read by `.dgd` |
| --- | --- |
| Diagram series | Plot series and data points used by the diagram viewer. |
| Plot state | Plot information managed by the diagram document and viewer. |
| Document identity | File name, project location, and document type used by Project View. |
| Viewer binding | Reopens in the diagram viewer as a project document. |

Use `.dgd` when a plot should remain part of the TheoChem Lab project. Export an image or CSV when the diagram needs to be used outside the program.

## Typical Uses

- PXRD diagrams
- Mobility curves
- Tensor or angular dependence plots
- Quick plots generated from analysis modules

The related view is described in [Text, Table, and Diagram Views](../document-views/text-table-diagram.md).
