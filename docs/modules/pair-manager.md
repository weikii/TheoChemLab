# Pair Manager

Pair Manager finds and manages molecular packing pairs around a selected center molecule. It is useful before electronic-coupling or mobility workflows.

## Inputs

- A 3D Structure Document containing molecules or crystal packing.
- A selected center molecule.
- Optional cut-off distance for automatic pair search.

## Workflow

1. Select the center molecule in the 3D Structure Viewer.
2. Click **Use Selection** in Pair Manager.
3. Use **Find pairs** to search neighbors within the cut-off distance.
4. Review the table of packing pairs.
5. Use **Highlight**, **Highlight All**, **+ Add**, **- Delete**, or **Clear** to refine the list.

## Pair Table

The pair table records:

- Pair name
- Center distance in Å
- Shortest distance in Å

If the structure contains symmetry-generated duplicates, enable duplicate removal during search when appropriate.

## Output

The pair list can be used as a structured checklist for:

- Selecting molecular dimers for Gaussian calculations
- Comparing center distances and closest contacts
- Choosing neighbors for anisotropic mobility analysis
- Exporting figures or data from the associated plot context menu

!!! tip
    Pair Manager is intentionally simpler than Anisotropic Mobility. Use it when the goal is to find and inspect neighbor pairs before adding transport parameters.
