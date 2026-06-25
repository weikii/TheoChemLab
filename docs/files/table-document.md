# Table Document (`.tbd`)

The `.tbd` file is the native TheoChem Lab table document. It stores tabular data that should remain inside the project.

## What It Saves and Reads

| Content | Saved and read by `.tbd` |
| --- | --- |
| Table data | Rows, columns, and cell values used by the table viewer. |
| Document identity | File name, project location, and document type used by Project View. |
| Viewer binding | Reopens in the table viewer as a project document. |

Use `.tbd` for analysis results that you want to keep with the source structure and related calculation files.

## Typical Uses

- Extracted numerical values
- Mobility, coupling, or geometry-related tables
- Parsed calculation summaries
- Data copied from analysis modules

Some tools may also export CSV files. Use `.tbd` for project-internal work and CSV when another program needs the table.

The related view is described in [Text, Table, and Diagram Views](../document-views/text-table-diagram.md).
