#!/bin/bash

# create plot using dat file and R script
for i in output/*.dat; do
	echo "input file $i to R"	
	Rscript analyse_and_visualize.r $i
done

echo "Created all dat plots."
