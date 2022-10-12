#!/bin/bash

touch Datasorting.dat 							#Create text file for datasorting the ID's 
> Datasorting.dat 							#Clear text file

for casefile in data/*.json						#Run python script on all datafiles in directory data
do
	output=$((python print_kpthesaurus.py "$casefile") 2>&1)
        filename="${casefile##*/}"; filename="${filename%.*}"		#Combine filename and output from python script into Rscript format
        echo "$filename;$output" >> Datasorting.dat			#Append combined name in Datasorting file
done

Rscript analyse_and_visualize.r Datasorting.dat				#Run Rscript to produce plot of the sorted data

