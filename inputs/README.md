# Simulation Input Files (Representative Samples)

This directory contains **representative sample input files** for the computational workflows used in the manuscript. 

> **Please Note:** We provide representative samples here rather than the complete set of all simulations, as the full dataset contains thousands of files (varying across different strains, pressures, and temperatures). These samples are sufficient to demonstrate the exact simulation settings used in this work, enabling readers to set up their own calculations accurately.

## Directory Contents

- **`gpumd/`**: Sample input scripts for GPUMD (e.g., `run.in`), demonstrating the settings for NEP-based molecular dynamics and mechanical property calculations.
- **`vasp/`**: Sample `INCAR`, `KPOINTS`, and `POSCAR` files used for DFT calculations. 
  - *Note: `POTCAR` files are NOT included due to VASP license restrictions. Please refer to the root `README.md` for details on the PAW potentials used.*
- **`cp2k/`**: Sample CP2K input files for DFT-related calculations.
- **`raspa/`**: Sample input files for GCMC simulations (e.g., `simulation.input`, force field definitions). 
  - *Note: Due to the large number of parameter files required for different gas molecules and MOFs, the complete RASPA input set is provided as a compressed `.zip` archive in this folder.*
