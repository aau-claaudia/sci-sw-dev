# sci-sw-dev
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

The aim is to analyze how often different IDs are mentioned in the European Court of Human Rights (HUDOC - European Court of Human Rights). Each document/case in the data is tagged with some IDs that correspond to different keywords in a vocabulary. 

The project includes a python script (print_kpthesaurus.py) that can extract the IDs of each case and print the IDs to standard output, an R script (analyse_and_visualize.r) that can take a semicolon-separated file to produce a plot of the distribution/count of different IDs in a sorted form, and a bash script, main.sh for processing the data by first calling the Python script and then the R scripts.

The project can be run from a bash shell terminal by calling: bash main.sh
The output of the bash script is a distribution plot stored as a pdf "ID_distrbution.pdf".

Dependencies: 
    · Bash version 5.2.15
    · Python version 3.11.5
    · R version 4.3.2


