#!/bin/bash

touch Datasorting.txt   #Create text file for datasorting the ID's 
> Datasorting.txt	#Clear text file

python print_kpthesaurus.py data/001-100865.json
