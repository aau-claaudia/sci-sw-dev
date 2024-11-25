#!/bin/bash

mkdir -p python_output

for i in data/*.json; do
	echo "input file $i"
	filename=$(basename "$i" .json)
    	python3 print_kpthesaurus.py "$i" > "python_output/${filename}.dat"
done

echo "Changed json to dat files."

