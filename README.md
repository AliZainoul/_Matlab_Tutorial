# MATLAB Tutorial Repository

This repository contains MATLAB tutorials, exercises, and scripts designed to help users learn MATLAB programming, data handling, and numerical methods. It includes example datasets, function libraries, and structured scripts for common MATLAB tasks.

## Repository Structure

.
├── data # CSV and TXT datasets used in tutorials
├── documents # Reference PDFs and course materials
├── exercices # Exercises and corrections (TPs)
├── fig # Example figures and images
├── src # MATLAB source code
│ ├── functions # Custom functions
│ └── scripts # Example scripts, organized by topics
├── generate_csvs.py # Python helper script to generate CSVs
└── README.md # This file

## Key Folders and Files

- **data/**  
  Contains CSV and TXT files used in scripts for reading/writing examples and statistics.

- **documents/**  
  Reference PDFs, e.g., base MATLAB commands and LU method solutions.

- **exercices/**  
  Includes TPs (Travaux Pratiques) and their corrections in PDF format.

- **fig/**  
  Images used in tutorials or for plotting examples.

- **src/functions/**  
  MATLAB functions for numerical computations, averages, statistics, LU decomposition, global variables, etc.

- **src/scripts/**  
  Example scripts demonstrating MATLAB features:  
  - `data_structures/` → matrices, vectors, cells, structs  
  - `files/` → reading/writing CSV and TXT  
  - `plots/` → plotting examples  
  - Standalone scripts for formatting, statistics, greetings, and main demos

- **generate_csvs.py**  
  Python helper script to generate CSV files for MATLAB tutorials.

---

## Getting Started

- **Clone the repository:**

```bash
git clone <repository-url>
cd _Matlab_Tutorial
```

- **Ensure MATLAB is installed**
    MATLAB R2019a or newer is recommended for full compatibility.

- **Run scripts in MATLAB**
   Open MATLAB, navigate to the scripts folder, and run the desired script. For example:

```matlab
cd src/scripts
main   % Example entry point; many other scripts are available in this folder
```
