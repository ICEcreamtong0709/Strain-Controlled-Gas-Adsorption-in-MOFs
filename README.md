# Strain-Controlled Gas Adsorption in Metal–Organic Frameworks

This repository contains the structural models, simulation inputs, potential files, processed datasets, and supporting materials for the study reported in the manuscript:

> **"Strain-Controlled Gas Adsorption in Metal–Organic Frameworks: Competing Effects of Pore Volume and Adsorption Affinity"**  
> *Computational Materials Science* (Manuscript No.: COMMAT-D-26-04604)

**Authors:** Tongtong Li, Xitai Cai, Yanghao Luo, Haowei Wang, Feiyu Zhou, Wei Qiu, Libo Li, Yilun Liu, Penghua Ying, Shengying Yue

---

## Overview

This repository provides the supporting data and simulation assets for investigating how mechanical strain affects gas adsorption in representative metal–organic frameworks (MOFs). The study focuses on the competing roles of pore volume and adsorption affinity under deformation.

The dataset includes:
- representative MOF crystal structures
- DFT, MD, and GCMC simulation inputs
- force-field and adsorption potential definitions
- processed datasets for figure generation
- workflow notes for data processing

---

## Repository Structure

```text
.
├── README.md                         # Project overview
├── LICENSE                           # MIT License
│
├── data/                             # Processed numerical data for plotting
│
├── inputs/                           # Representative simulation inputs
│   ├── cp2k/
│   ├── gpumd/
│   ├── raspa/
│   └── vasp/
│
├── potentials/                       # Potential definitions
│
├── scripts/                          # Data processing notes
│
└── structures/                       # Representative MOF structures

```

---

## Data and Figure Reproducibility

The numerical data underlying the plots in the manuscript are provided in the `data/` directory as `.xlsx` files. These datasets can be used to reproduce the reported figures in Origin or other plotting software.

The repository includes processed outputs relevant to:
- pore metrics
- adsorption uptake
- Henry constants
- adsorption enthalpy
- binding energy
- stress–strain response
- density distribution analysis

---

## Structures and Simulation Inputs

The repository contains representative MOF structures used in the study:

- `structures/HKUST-1/`
- `structures/MOF-5/`
- `structures/ZIF-8/`

Representative simulation inputs are provided in:

- `inputs/gpumd/` for GPUMD/NEP MD
- `inputs/vasp/` for VASP calculations
- `inputs/cp2k/` for DFT calculations
- `inputs/raspa/` for GCMC calculations

---

## Potential Files

Potential definitions for adsorption and molecular simulation are included in:

- `potentials/adsorption/`
- `potentials/forcefield/`
- `potentials/nep/`

The adsorption parameters include representative definitions for CO2, H2, and water models.

---

## Software Environment

The simulations and analyses were performed using the following software:

| Software | Version / Usage |
|----------|-----------------|
| VASP | 5.4.4 (PBE-PAW calculations) |
| GPUMD | NEP-based molecular dynamics |
| RASPA | 2.0 (GCMC simulations) |
| CP2K | DFT calculations |
| Origin | Data visualization and figure preparation |
| VisIt | 3D density distribution visualization |

---

## Notes

- The `inputs/` directory contains representative example files rather than the complete set of all calculations.
- RASPA input files are provided in compressed form where appropriate due to size.
- POTCAR files are not included in this repository because of VASP licensing restrictions.
- The calculations in this work used the PBE functional with the PAW method, based on the `potpaw_PBE.54` library.

Please cite the following references when using the PAW potentials:
- P. E. Blöchl, *Phys. Rev. B* 50, 17953 (1994).
- G. Kresse and D. Joubert, *Phys. Rev. B* 59, 1758 (1999).

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
```
