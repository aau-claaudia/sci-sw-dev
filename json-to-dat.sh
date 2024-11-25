#!/bin/bash

# make directory of python output
mkdir -p python_output

# change json files to dat files using python script
for i in data/*.json; do
	echo "input file $i to python"
	filename=$(basename "$i" .json)
    	python3 print_kpthesaurus.py "$i" > "python_output/${filename}.dat"
done


echo "Changed json to dat files."
