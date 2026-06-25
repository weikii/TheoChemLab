# CP2K Tools

CP2K tools generate input files for crystal-based response-property workflows.

## CP2K Calculation

The CP2K calculation form provides a menu-driven interface with calculation and option pages. It is used as an entry point for CP2K-related input generation.

## Dielectric Tensor Workflow

The dielectric tensor form is organized into three steps:

1. **Phonon**
2. **BEC**
3. **Efield**

Each step can use a template. The form also includes:

- Current crystal selection
- Displacement in Å
- Field intensity in atomic units
- Wavefunction restart name
- Generate inputs buttons for each step
- Generate all

## Piezoelectric and Elastic Tensor Workflow

The piezo/elastic generator uses the current crystal and a selected template to create deformed structures and CP2K input files.

Important controls include:

- File base name
- Deformation percentage
- Template selection
- Use symmetry
- Use current crystal

The generator can use symmetry to reduce duplicated work and reports the resulting supercell size.

## Template Placeholders

CP2K templates can include placeholders such as:

- `$NAME$`
- `$CELL$`
- `$COORD$`
- `$KIND-GTH$`
- `$KIND-PAW$`

The generator replaces these placeholders using the active crystal and selected options.

!!! warning "Crystal required"
    Most CP2K response workflows require a valid crystal structure. If the active 3D document has no crystal information, use crystal import or Build Crystal first.
