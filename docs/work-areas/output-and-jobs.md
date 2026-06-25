# Output and Jobs Views

Output View and Job View monitor what the application and external calculation tools are doing.

## Output View

Output View displays text logs, messages, generated links, and calculation output.

It supports:

- Copying text
- Clickable text spans
- Clickable viewer links such as `Viewer: name.wsd`
- Filtering output by a viewer link
- Showing all output again after filtering

Use Output View when a tool reports status, generated file names, warnings, calculation messages, or links to opened viewers.

## Clickable Viewer Links

When output contains a viewer reference, it can be made clickable. This helps jump from calculation output back to the document that generated it.

Right-clicking a viewer link can filter the output to messages related to that viewer. Use **Show all output** to clear the filter.

## Job View

Job View is a table of background or external jobs.

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

Status values are color-coded in the application when possible.

## Typical Use

- Start a calculation or generation tool.
- Watch Job View for running status and progress.
- Read Output View for detailed logs or generated result links.
- Open generated project documents or result viewers from the output or project tree.
