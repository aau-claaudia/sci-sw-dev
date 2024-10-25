# This is the main bash script for the data visualisation of the European Court for Human Rights cases 
#!/bin/bash

# ------ 0. Definitions 
# ------ 0.1 filename / path definitions 
filepathVar="XY" # option tbd, go to folder from somewhere
dataPath="data/"

# ------ 0.2 variables
pfield="kpthesaurus" # needed for python file

# ----- 1. read data -------------------------------------------------------------------------------------
# get list of .json file names 
filename="001-100865" # temporarily fixed name 

# open or create dataSummary.r

# extract case IDs from .json files 
#./print_kpthesaurus.py data/001-100865.json
#result=$(python3 print_kpthesaurus.py "$filename" "$pfield")
filenPath="${dataPath}${filename}.json"
result=$(python3 print_kpthesaurus.py "$filenPath")
FullResult="${filename};${result}"
echo "${FullResult}"
# write results from python script to end of dataSummary.r file 

# ----- 2. Visualisation ---------------------------------------------------------------------------------