#!/bin/bash

# This bash script extracts the IDs of each case in the European Court of Human Rights and print the IDs to standard output, 
# to produce a plot of the distribution/count of different IDs in a sorted form. This is done by first calling the Python 
# script (print_kpthesaurus.py) and then the R script (analyse_and_visualize.r).



# Creating a for-loop that runs through all the data files in the folder /data using the python code (print_kpthesaurus). 

echo "Running Python script"
for i in data/*					
do
    filename=$(basename "$i" .json)         # Extract the filename without the directory path and .json extension
    id=$(python print_kpthesaurus.py "$i") 	# Call the Python script to get the associated ID from the JSON file
    output_line="${filename};${id}" 	    # Combine the filename (case number) and ID into a single string, separated by a semicolon
    echo "$output_line" >> ECHR.dat			# Append the combined string to the output file ECHR.dat
done 

# Running the R script that plots the distribution of IDs based on the .dat file.
echo "Running R script"
Rscript analyse_and_visualize.r ECHR.dat 
