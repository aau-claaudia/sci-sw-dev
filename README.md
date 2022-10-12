# sci-sw-dev-2022
This repository has been developed as part of the final project in the PhD course:
"Tools for scientific software development and data science" 

## Repository decription and content
This repository is used for analysing data from the European Court of Human Right.
The repository contains a data folder with data from different criminal cases, a python script which extract ID's reffering to
specific vocabularies from the casefiles, a Rscript that plots a distribution on how often the specific ID's are mentioned and 
finally a bash script that works as the executable in which all datafiles are processed by the python script, formatted into
a single datafile which meets the Rscript requirements and finally runs the Rscript as well. 

## Repository Usage
To use the repository, simply run the RunMe.sh bash script from the main folder.
A PDF file "Datasorting.pdf" containing the plot of the ID distribution is then generated.  

