# Output and Jobs Views

Output View and Job View monitor application messages and background calculation jobs.

## Output View

Output View is a short message pane. It records compact application messages such as a calculation being submitted, warnings, and clickable viewer links.

It supports:

- Copying text
- Clickable text spans
- Clickable viewer links such as `Viewer: name.wsd`
- Filtering output by a viewer link
- Showing all output again after filtering

Output View is not the main calculation-result window. Detailed calculation results should open in a document viewer, usually a Text Viewer, Table Viewer, Diagram Viewer, or 3D Structure Viewer result document.

## Clickable Viewer Links

When a short message contains a viewer reference, it can be made clickable. This helps jump back to the document related to the message.

Right-clicking a viewer link can filter the output to messages related to that viewer. Use **Show all output** to clear the filter.

## Job View

Job View is a table of background or external jobs.

The right side is the job table. The side toolbar provides icon commands for refreshing the table, stopping jobs, opening a job folder, copying a summary, removing jobs, and clearing finished jobs.

Columns include:

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

Rows are selectable. Commands that require a selected job are enabled only after a row is selected. When no row is selected, stop and remove can operate on all jobs when jobs exist, after user confirmation.

The table is intended for monitoring and job operations, not for editing. Sorting is disabled so job order stays stable.

## xTB Jobs

xTB geometry optimization, molecular dynamics, single point, and related local calculations can be registered as jobs. Job View shows their description, job id, gateway, local xTB backend, status, progress, start time, and elapsed time.

Temporary xTB run folders include the job id in the folder name. The job folder command opens the run folder when one is available.

## Typical Use

- Start a calculation or generation tool.
- Watch Job View for running status and progress.
- Read Output View only for short messages such as submission notices.
- Open detailed results from the generated project documents or result viewers.
