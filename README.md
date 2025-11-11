# MATLAB Tutorial Repository

This repository contains MATLAB tutorials, exercises, and scripts designed to help users learn MATLAB programming, data handling, and numerical methods. It includes example datasets, function libraries, and structured scripts for common MATLAB tasks.

## Repository Structure

```bash
.
├── README.md
├── data
│   ├── csv_students.csv
│   ├── csv_students_writetable.csv
│   ├── data.csv
│   ├── example_output.txt
│   ├── population.csv
│   ├── series1.csv
│   ├── series2.csv
│   ├── txt_students.txt
│   └── txt_students_writetable.txt
├── documents
│   ├── Base_Commands_u-bourgogne.pdf
│   └── LU_METHOD_SOLVING_LINEAR_SYSTEMS.pdf
├── exercices
│   ├── TPs
│   │   ├── TP1_MATLAB_CRYSTALCLEARCODE.pdf
│   │   ├── TP2_MATLAB_CRYSTALCLEARCODE.pdf
│   │   └── TP3_MATLAB_CRYSTALCLEARCODE.pdf
│   └── TPs_Corrections
│       ├── TP1_MATLAB_CRYSTALCLEARCODE_CORRECTION.pdf
│       ├── TP2_MATLAB_CRYSTALCLEARCODE_CORRECTION.pdf
│       └── TP3_MATLAB_CRYSTALCLEARCODE_CORRECTION.pdf
├── fig
│   ├── MATLAB_Interface.png
│   └── myGray.png
├── generate_csvs.py
└── src
    ├── functions
    │   ├── calculate_average.m
    │   ├── fac_lu.m
    │   ├── get_global.m
    │   ├── hello_name.m
    │   ├── mont_desc_lu.m
    │   ├── my_mean.m
    │   ├── set_global.m
    │   ├── show_matrix_stats.m
    │   ├── stats.m
    │   └── summary_data.m
    └── scripts
        ├── data_structures
        │   ├── cells.m
        │   ├── matrix.m
        │   ├── structs.m
        │   └── vectors.m
        ├── displaying_vars.m
        ├── files
        │   ├── readtable_csv_example.m
        │   ├── readtable_txt_example.m
        │   ├── writetable_csv_example.m
        │   └── writetable_txt_example.m
        ├── formatting.m
        ├── function_signature.m
        ├── global_expl.m
        ├── hello_world.m
        ├── lu_method.m
        ├── lu_script.m
        ├── main.m
        ├── personal_greetings.m
        ├── plots
        │   ├── histogram_example.m
        │   ├── histogram_example_other.m
        │   ├── imread_my_img.m
        │   ├── imwrite_my_img.m
        │   ├── plot_functions_example.m
        │   └── plot_line_example.m
        ├── statistics.m
        └── summary_data_script.m

13 directories, 56 files
```

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
