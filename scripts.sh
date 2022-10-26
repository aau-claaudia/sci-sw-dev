#!/bin/bash
# Script for extract the IDs of each case and produce a plot of the distribution of different IDs in a sorted form
# Author: Yubo Wang
# Time: 2022-10-25
# Version 1.1

rm -rf result.dat #delete original .dat file

touch result.dat #create .dat file

for files in data/*.json   # loops through the json files in the /data folder
do
	IDs=$(python print_kpthesaurus.py $file) # use .py to extract the IDs
	name=$(basename -s .json $file)  # use basename to extract file name
	echo "$name;$IDs" >> result.dat  #Use semicolons to separate names and IDs, and merge them in .dat.
done

Rscript analyse_and_visualize.r result.dat # produce a plot
