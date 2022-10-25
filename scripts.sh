#!/bin/bash
# Script for extract the IDs of each case and produce a plot of the distribution of different IDs in a sorted form
# Author: Yubo Wang
# Time: 2022-10-25
# Version 1

rm -rf result.dat #delete original .dat file

touch result.dat #create .dat file

for files in data/*.json   # use python to extract the IDs
do
	IDs=$(python print_kpthesaurus.py $file) # use .py to extract the IDs
	name=$(basename -s .json $file)  # use basename to extract file name
	echo "$name;$IDs" >> result.dat  #combine name and IDs in .dat
done

Rscript analyse_and_visualize.r result.dat
