# sci-sw-dev
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

The repository includes data from the 
European Court of Human Rights.  
The case documents are tagged with IDs corresponding to different 
keywords. The repository includes scripts that can be used for counting 
vocabulary IDs in each casefile and plot this distribution to allow 
analysis of vocabulary use. 

The repository includes:
A data folder containing .json files - each filename corresponds to the 
case reference number. 
A Python script (print_kpthesarus.py) that can 
extract the IDs of each case file in the data folder  and print the IDs 
to standard output.
An R script that can take a semicolon-separated file with lines in the 
form
 <casefile basename>;<standard output of IDs>
an produce a plot of the distribution of ID counts in .pdf format. 
A bash script (tfssd_script.sh) that 1) loops the python script through 
the casefiles in the data folder and prints the output, 2) produces a 
file containing the casefiles' basenames, 3) merges the casefile 
basenames with the respective output of the python script with 
semi-colon separation, and 4) inputs the produced semicolon-separated 
datafile into the R script and executes it. 

To produce a distribution plot directly from the data, execute the bash 
script in terminal in the sci-sw-dev repository and view the 
distribution plot saved in file filename.pdf. 

The data of the bash script commands are saved in the following files:
1) pyout.dat
2) basename.dat
3) filename.dat
4) filename.pdf

The filenames of output files 3 and 4 are compatible to the R script 
commands.  

