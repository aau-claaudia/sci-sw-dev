#!/bin/bash

# This script processes all JSON files in the data directory by running a Python script on each file.
# The output is saved in a single file `all_ids.txt`, where each line contains the file ID and its respective output.
# Finally, an R script is used to analyze and visualize the aggregated results.

# Output file for storing Python script results
output_file="all_ids.txt"

# Clear any previous output file
> "$output_file"

echo "Starting analysis of JSON files in the 'data' directory..."

# Loop through each JSON file in the data directory
for file in data/*.json; do
    # Extract the ID from the filename (e.g., "001-100865" from "data/001-100865.json")
    id=$(basename "$file" .json)
    
    # Run the Python script on the current JSON file and capture its output
    output=$(python print_kpthesaurus.py "$file")
    
    # Save the ID and output to the results file, separated by a semicolon
    echo "$id;$output" >> "$output_file"
done

echo "Finished processing all JSON files. Results are stored in '$output_file'."

echo "Running R analysis and visualization script on '$output_file'..."
Rscript analyse_and_visualize.r "$output_file"

echo "Analysis and visualization complete. Check generated outputs for results."
