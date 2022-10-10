#!/bin/bash
#Script for generating distribution plot of unique ID counts from combined python and R scripts 
#Auhtor Trine Aalborg
#Version 2022-10-10
#
#Dependencies: supplied python (print_kpthesaurus.py) and R (analyse_and_visualize.r) scripts from git repo: https://github.com/aau-claaudia/sci-sw-dev
#
#Looping through the data folder with the Python script and printing the outputs (semicolon separated) as single lines in an output datafile
#
for file in data/*.json
do 
	python print_kpthesaurus.py $file 
done > pyout.dat 
#
#Looping through the data folder and printing filenames without extension in single file
#
for file in data/*.json
do
	basename $file  .json
done > filename.dat
#
#Combining files to single output ready for R script 
paste -d';' filename.dat pyout.dat > combined_filenamepyout.dat
#

echo "Your files have been processed and results printed in filename datafile"


#
echo "Your filename data have been plotted"
echo "Thank you for using the script for creating a distribution plot of unique ID counts"

