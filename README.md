# sci-sw-dev
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

The repository includes data from the European Court of Human Rights. The case documents are tagged with IDs corresponding to different keywords. The repository includes scripts that can be used for counting vocabulary IDs in each casefile and plot this distribution to allow analysis of vocabulary use. 

## Install dependencies
The code requires python 3.9.7 or newer and R software of 3.4.3 or newer with the tidyverse package installed.  

## Running the script
Use this bash script with no parameters required
Usage: tfssd.sh
This script needs to remain in the top directory of the sci-sw-dev git repository that you have downloaded. The data files in .json format that you wish to analyse needs to be in the /data folder of the git repository and have the caseno. as title basename. 

Directory structure:
sci-sw-dev/
 - data/<caseno>.json
 - README.md
 - print_kpthesaurus.py
 - analyse_and_visualize.r
 - scientific_software_management_plan.md

Put your query files in .json format in the /data folder

Example run of the script in the top repository folder
bash tfssd.sh

The tfssd.sh script produces a final output of a distribution plot of 
vocabulary ID counts for the query files in the /data folder. The script 
works in 4 steps of 1) looping the supplied python script through the 
casefiles in the /data folder and prints the output in a pyout.dat file, 
2) loops through the files in the /data folder, producing a file 
containing the casefile basenames in basename.dat, 3) merges the files 
casename.dat and pyout.dat with semicolon-separation to a single file 
called filename.dat, and 4) inputs the produced semicolon-separated file 
into the supplied R script and executes it.

The results can be found in this git repository along with the /data folder, including the final output distribution plot in filename.pdf

The data of the bash script commands are saved in the following files:
1) pyout.dat
2) basename.dat
3) filename.dat
4) filename.pdf

The filenames of output files 3 and 4 are compatible to the R script 
commands.  

