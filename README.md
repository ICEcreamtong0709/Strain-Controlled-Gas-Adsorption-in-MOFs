# Strain-Controlled Gas Adsorption in Metal–Organic Frameworks

This repository contains the data, simulation inputs, potentials, and plotting source files to support the findings presented in the manuscript:

> **"Strain-Controlled Gas Adsorption in Metal–Organic Frameworks: Competing Effects of Pore Volume and Adsorption Affinity"**  
> *Computational Materials Science* (Manuscript No.: COMMAT-D-26-04604)
> 
> Authors: Tongtong Li, Xitai Cai, Yanghao Luo, Haowei Wang, Feiyu Zhou, Wei Qiu, Libo Li, Yilun Liu, Penghua Ying, Shengying Yue

## 📂 Repository Structure

```text
├── README.md                  # This file
├── LICENSE                    # MIT License
│
├── structures/                # Representative MOF crystal structures (e.g., .cif)
├── potentials/                # Machine learning potentials (e.g., NEP) and force fields
├── inputs/                    # Representative simulation input files
│   ├── gpumd/                 # Sample inputs for GPUMD (NEP-MD)
│   ├── vasp/                  # Sample INCAR, KPOINTS, POSCAR (No POTCAR)
│   ├── cp2k/                  # Sample inputs for DFT calculations
│   └── raspa/                 # GCMC inputs (Provided as .zip due to large file size)
│
├── data/                      # Processed numerical data for figures (in .xlsx format)
├── origin_files/              # Origin project files (.opju) for direct plotting
├── figures/                   # Final high-resolution figures used in the paper
│
└── scripts/                   # Notes on data processing workflow

## 📝 Notes on Input Files

· Representative Samples: The inputs/ directory contains representative sample files rather than the complete set of calculations. These samples are sufficient to demonstrate the simulation settings (e.g., cutoffs, k-points, ensemble settings) used in this work.
· RASPA Inputs: Due to the large number of files and relatively large size, the complete input files for RASPA (GCMC simulations) are provided as a compressed archive (inputs/raspa/*.zip).
· POTCAR Restrictions: POTCAR files are NOT included in this repository due to copyright restrictions from the VASP license agreement. Users must generate their own POTCAR files from their licensed VASP distribution. The calculations in this work used the PBE functional with the PAW method, generated from the potpaw_PBE.54 library (e.g., Ti_pv, O, C, H).
  · Please cite the following references if using these potentials:
    · P. E. Blöchl, Phys. Rev. B 50, 17953 (1994).
    · G. Kresse and D. Joubert, Phys. Rev. B 59, 1758 (1999).

## 📊 Data and Figure Reproduction

To ensure full transparency and reproducibility:

1. Data Tables: All numerical data underlying the plots in the manuscript are provided as .xlsx files in the data/ directory.
2. Figure Plotting: The final figures were generated using Origin (OriginLab). We provide the exact Excel data tables rather than plotting scripts. Readers can directly import these .xlsx files into Origin or any other plotting software to reproduce the exact figures.
3. Origin Projects: The original Origin project files (.opju) are provided in the origin_files/ folder for direct inspection of the plotting settings and styles.
4. Data Processing Workflow: The raw simulation outputs were processed manually using GUI software. Please refer to scripts/README.md for the detailed data extraction and processing workflow.

## 💻 Software Environment

The simulations and analyses in this work were performed using the following software:

· VASP: Version 5.4.4 (PBE-PAW potentials)
· GPUMD: (For NEP-based molecular dynamics)
· RASPA: Version 2.0 (For GCMC simulations)
· CP2K: (For DFT calculations)
· Origin: (For data visualization)
