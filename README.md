# VibTest

This repository holds all the code written for the project carried out as part
of the Vibration Testing and Experimental Modal Analysis course (MECA0062-1),
academic year 2024-2025.

## Basic usage

From the top level directory (where this README lies), just run the main project
file:
```matlab
run src\main.m
```
The execution of this main function add all the project files to the matlab
path, for the current matlab session. Assuming that the top level directory path
is called `rootDir`, it is still possible to add the project files manually to
the matlab path:
```matlab
addpath(genpath(rootDir));
```
This makes visible, among other things, the utility script called
`refresh_workspace`. Executing this script either load or refresh the saved
computed data in the global workspace.

## Advanced usage

TBD

## Project architecture

- `src/`:
  - `main.m` triggers all the code of the project.
  - `modeling.m` implements the first part of the project, namely the model of
    the wind turbine jacket, using 3D beam elements.
  - `transient.m` implements the second part of the project, namely the
    transient response due to a harmonic excitation.
  - `reduction.m` implements the third part of the project, namely the reduced
    models of the wind turbine jacket.
  - `analysis/`: functions that analyze the results obtained from the main
    subfunctions.
  - `object/`: object-oriented representation of the vibration problem. In this
    directory are defined, among other things, classes that define nodes,
    elements, loads or concentrated masses.
  - `util/`: collection of utility functions that are used throughout the
    project.
- `res/`: contains the `.MAT` files that hold the experimental data measured
  during the two lab sessions.
- `out/`: contains the `.MAT` files that hold the relevant data that were
  computed by the code. This directory is automatically created, if absent on
  the user's machine.
