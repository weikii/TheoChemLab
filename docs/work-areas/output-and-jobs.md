# Output And Jobs

Output View and Job View show short messages and running tasks.

## Output View

Output View is for brief notices, not detailed calculation results. For example, it may show that an xTB calculation has been submitted or that a command generated a related viewer link.

When a message contains a viewer link such as `Viewer: name.wsd`, click it to return to that document. You can also copy text from the pane.

Detailed results are opened as normal project documents, such as Text Viewer, Table Viewer, Diagram Viewer, or 3D Structure Viewer documents.

## Job View

Job View shows background tasks in a table. Use it to check whether a calculation is running, finished, stopped, or failed.

The table includes:

| Column | Meaning |
| --- | --- |
| **Description** | Human-readable job description |
| **Job Id** | Job identifier |
| **Gateway** | Gateway or execution route |
| **Server** | Target server or execution backend |
| **Status** | Job state such as running, failed, or completed |
| **Progress** | Reported progress |
| **Start Time** | Time the job started |
| **Time Cost** | Elapsed time |

Select a row to work with a specific job. The side buttons can refresh the table, stop a job, open its folder, copy a summary, remove jobs, or clear finished jobs.

If no row is selected, stop and remove can apply to all jobs when jobs exist. TheoChem Lab asks for confirmation before stopping or removing jobs.

## xTB Jobs

xTB geometry optimization, molecular dynamics, single point, and related local calculations appear in Job View.

xTB jobs may have a temporary run folder. Use the folder button to open it when it is available.

## Recommended Workflow

- Start a calculation or generation tool.
- Use Output View only for short notices.
- Use Job View to monitor and stop running work.
- Open the generated project documents to read detailed results.
