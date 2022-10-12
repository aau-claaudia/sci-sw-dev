#!/bin/bash

touch Datasorting.dat   #Create text file for datasorting the ID's 
> Datasorting.dat 	#Clear text file

casename="001-100865;"
IDoutput=$((python print_kpthesaurus.py data/001-100865.json) 2>&1)
echo "$casename$IDoutput" >> Datasorting.dat

casename1="001-100864;"
IDoutput1=$((python print_kpthesaurus.py data/001-100864.json) 2>&1)
echo "$casename1$IDoutput1" >> Datasorting.dat

Rscript analyse_and_visualize.r Datasorting.dat

