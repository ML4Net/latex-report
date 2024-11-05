#!/bin/sh

# Define output directory
OUTPUT_DIR="out"

# Check for "clean" argument
if [ "$1" = "clean" ]; then
    # Clean the output directory if it exists
    if [ -d "$OUTPUT_DIR" ]; then
        rm -rf "$OUTPUT_DIR"/*
        echo "Output directory cleaned."
    else
        echo "Output directory does not exist, nothing to clean."
    fi
else
    # Create output directory if it doesn't exist
    [ ! -d "$OUTPUT_DIR" ] && mkdir "$OUTPUT_DIR"

    # Compile the LaTeX document
    pdflatex -output-directory="$OUTPUT_DIR" main.tex
    #bibtex "$OUTPUT_DIR"/main
    #pdflatex -output-directory="$OUTPUT_DIR" main.tex
    #pdflatex -output-directory="$OUTPUT_DIR" main.tex

    # Open the PDF automatically if on macOS (uncomment if desired)
    # [ "$(uname)" = "Darwin" ] && open "$OUTPUT_DIR/main.pdf"

    echo "Compilation complete. Output available in $OUTPUT_DIR/"
fi
