#!/bin/bash

# Define the Python script and the data file
PYTHON_SCRIPT="dataScript.py"
DATA_FILE="data.dat"
R_SCRIPT="analyse_and_visualize.r"

# Run the Python script
echo "Running Python script: $PYTHON_SCRIPT"
python $PYTHON_SCRIPT

# Check if the Python script ran successfully and the data file was created
if [ -f "$DATA_FILE" ]; then
    echo "Data file '$DATA_FILE' found. Running R script: $R_SCRIPT"
    Rscript $R_SCRIPT $DATA_FILE
else
    echo "Error: Data file '$DATA_FILE' was not created. Please check the Python script."
    exit 1
fi
