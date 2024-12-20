# Project Report

![polito](resources/logo_polito.jpg)

This repository contains the LaTeX source files for the project report associated with
[Project Repository](https://github.com/ML4Net/SSH-Shell-Attacks), which holds the main code and related materials.
The report repository will be included as a submodule in the main project repository to facilitate
a seamless integration of documentation alongside the project.

## Structure

The repository is organized as follows:

- `sections/`: contains separate LaTeX files for each section of the report.
- `images/`: stores all images and diagrams included in the report.
- `bibliography/`: holds references and bibliography files.
- `main.tex`: the main LaTeX file that compiles the entire report.
- `appendix-main.tex`: the LaTeX file that compiles the appendix.
- `compile.sh`: a script to compile the report and appendix, or clean the build environment.

## Authors

| Name              | GitHub                                                                                                               | LinkedIn                                                                                                                                  |
| ----------------- | -------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Andrea Botticella | [![GitHub](https://img.shields.io/badge/GitHub-Profile-informational?logo=github)](https://github.com/Botti01)       | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?logo=linkedin)](https://www.linkedin.com/in/andrea-botticella-353169293/) |
| Elia Innocenti    | [![GitHub](https://img.shields.io/badge/GitHub-Profile-informational?logo=github)](https://github.com/eliainnocenti) | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?logo=linkedin)](https://www.linkedin.com/in/eliainnocenti/)               |
| Renato Mignone    | [![GitHub](https://img.shields.io/badge/GitHub-Profile-informational?logo=github)](https://github.com/RenatoMignone) | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?logo=linkedin)](https://www.linkedin.com/in/renato-mignone/)              |
| Simone Romano     | [![GitHub](https://img.shields.io/badge/GitHub-Profile-informational?logo=github)](https://github.com/sroman0)       | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?logo=linkedin)](https://www.linkedin.com/in/simone-romano-383277307/)     |

## Compilation Instructions

To compile the report or clean the output directory, you can use the provided `compile.sh` script.

### First Time Setup

Before using the `compile.sh` script for the first time, make sure it has the necessary execute permissions. Run the following command to grant execute permissions to the script:

```bash
chmod +x compile.sh
```

### Compile Options

The `compile.sh` script provides the following functionalities:

- **Compile both main report and appendix**:
  ```bash
  ./compile.sh
  ```
  This is the default behavior and compiles both `main.tex` and `appendix-main.tex`, generating PDFs for the report and appendix in the `out` directory.
  
- **Compile only the main report**:
  ```bash
  ./compile.sh main
  ```
  This compiles `main.tex` and generates the report PDF.
  
- **Compile only the appendix**:
  ```bash
  ./compile.sh appendix
  ```
  This compiles `appendix-main.tex` and generates the appendix PDF.
  
- **Clean the output directory**:
  ```bash
  ./compile.sh clean
  ```
  This removes all files in the `out` directory and any previously generated PDFs in the project root, ensuring a fresh build environment.

For any issues, please refer to the main project repository or contact the authors.

### Notes

- Ensure all necessary dependencies, including LaTeX and bibliography tools, are installed on your system before running the script.
- The output files are saved in the `out` directory, with the report and appendix PDFs copied to the project root with custom names.

---

This repository is structured for ease of integration and version control, with the report versioned separately from the main codebase. Happy compiling!
