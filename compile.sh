#!/bin/sh

# Define output directory
OUTPUT_DIR="out"
PDF_FILE="main.pdf"

# Set custom PDF name
CUSTOM_PDF_NAME="SSH-Shell-Attacks-Botticella-Innocenti-Mignone-Romano.pdf"

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
RESET='\033[0m'

# Function to remove the pdf file in the root directory
remove_root_pdf() {
    if [ -f "$CUSTOM_PDF_NAME" ]; then
        rm -f "$CUSTOM_PDF_NAME"
        # printf "\n${GREEN}File ${CUSTOM_PDF_NAME} removed from root directory.${RESET}\n"
    else
        printf "\n${YELLOW}File ${CUSTOM_PDF_NAME} not found in root directory, nothing to remove.${RESET}\n"
    fi
}

# Check for "clean" argument
if [ "$1" = "clean" ]; then
    # Clean the output directory if it exists
    if [ -d "$OUTPUT_DIR" ]; then
        rm -rf "$OUTPUT_DIR"/*
        printf "\n${GREEN}Output directory cleaned.${RESET}\n"
    else
        printf "\n${YELLOW}Output directory does not exist, nothing to clean.${RESET}\n"
    fi

    # Remove main.pdf in the root directory
    remove_root_pdf
else
    # Create output directory if it doesn't exist
    [ ! -d "$OUTPUT_DIR" ] && mkdir "$OUTPUT_DIR" && printf "\n${CYAN}Output directory created.${RESET}\n"
    
    printf "\n${CYAN}Compiling ...${RESET}\n"

    # Compile the LaTeX document
    pdflatex -output-directory="$OUTPUT_DIR" main.tex
    #bibtex "$OUTPUT_DIR"/main
    pdflatex -output-directory="$OUTPUT_DIR" main.tex
    pdflatex -output-directory="$OUTPUT_DIR" main.tex

    # Check if the PDF file was generated successfully
    if [ -f "$OUTPUT_DIR/$PDF_FILE" ]; then
        # Remove any existing custom-named PDF in the root directory
        remove_root_pdf

        # Copy the PDF file to the root directory
        cp "$OUTPUT_DIR/$PDF_FILE" "./$CUSTOM_PDF_NAME"
        printf "\n${GREEN}File copied to root directory as ${CYAN}${CUSTOM_PDF_NAME}${RESET}\n"
    else
        printf "\n${RED}Compilation failed. ${PDF_FILE} not found in ${OUTPUT_DIR}.${RESET}\n"
    fi

    printf "\n${GREEN}Compilation complete. Output available in ${CYAN}$OUTPUT_DIR/${RESET}\n"
fi
