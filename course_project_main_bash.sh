#!/bin/bash

# Define the output file with .dat extension
output_file="output.dat"

# Loop over all .json files in the data folder
for json_file in data/*.json; do
    # Extract the filename without extension
    filename=$(basename "$json_file" .json)

    # Indicate which file is being processed
    echo "Processing file: $json_file"

    # Run the Python script and capture the output
    output=$(python print_kpthesaurus.py "$json_file")

    # Write the filename and output to the .dat file, separated by semicolons
    echo "$filename;$output" >> "$output_file"
done

# Indicate that processing is complete
echo "Processing complete. Results saved in $output_file"

# Call the R script to analyze and print
echo "Running R script to generate plot..."
Rscript analyse_and_visualize.r "$output_file"

# Indicate that the R script has finished
echo "R script completed. Plot saved."
