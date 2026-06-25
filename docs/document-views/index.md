# Document Views

TheoChem Lab uses document views for the different kinds of project content.

The application also has interface views such as Project View, Properties View, Output, and Job View. Those are described under [Main Interface Overview](../work-areas/main-interface.md).

## Project Document Types

<div class="doc-card-grid">
  <div class="doc-card">
    <h3><a href="3d-structure-viewer/">3D Structure Viewer</a></h3>
    <p>Primary `.wsd` view for molecular and crystal visualization, editing, selection, measurement, and analysis context.</p>
  </div>
  <div class="doc-card">
    <h3><a href="text-table-diagram/">Text Documents</a></h3>
    <p>Notes, logs, plain text, copied output, and saved text results.</p>
  </div>
  <div class="doc-card">
    <h3><a href="text-table-diagram/">Table and Diagram Views</a></h3>
    <p>Tabular data, plotted values, copied results, CSV exports, and diagram data.</p>
  </div>
  <div class="doc-card">
    <h3><a href="data-and-surface-files/">Data Sources</a></h3>
    <p>Cube, surface, Gaussian, and wavefunction data used as inputs to visualization tools.</p>
  </div>
</div>

The native document extensions are:

| Extension | Document type |
| --- | --- |
| `.wsd` | 3D Structure Document |
| `.txd` | Text Document |
| `.tbd` | Table Document |
| `.dgd` | Diagram Document |

## Non-Document Data Files

Some files are project data rather than editable project documents. For example, cube data (`.cube` or `.cub`) can be loaded for surfaces or volumetric visualization but is not created as a normal project document type.

## Recommended Path

Most workflows start with the [3D Structure Viewer](3d-structure-viewer.md), then use text, table, or diagram views for extracted results.
