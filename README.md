sci-sw-dev

Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

This repository is created by IFRAH AKHTAR as part of project of course Tools for Scientific Software Development and Data Science. It is fork from main repository of aau-claaudia/sci-sw-dev:master

Following are the files and folders in this repository and its purpose 

-data (FOLDER)
  It contains number of cases and some information  associated to each docid (document ID) as a JSON file,
  e.g., 001-100865.json

-README.md
  It contains information about the repository structure. It also contains information about files/folder/scripts       and how to run this project using single bash script

-analyse_and_visualize.r
  An R script that can take a semicolon-separated file with lines and produce a plot of the distribution in “filename.pdf”

-dataScript.py
  It is a python script which iterate over all the json files in the /data folder and generates a data.dat file 
  which will be used by above "analyse_and_visualize.r" script for plot distribution

-print_kpthesaurus.py
  Python script which run over a single json file and extract the IDs of each case and print the
IDs to standard output

-scientific_software_management_plan.md
  Detail information about the software management plan and its execution 

-main_project_script.sh
  By running this single script. It will automate the whole process of scripts(R and python) calling and    generating plot distribution data.pdf file


Requirement and usage
 Python 3.x
 R and BashScript environment

-Clone the repository
-Make sure all the scripts have executable permissions:chmod +x main_project_script.sh

 run the command : ./main_project_script.sh

 It will create two files 
 Data.dat file --- data file which will contains json filename and its corresponding case IDs in each line
 Data.pdf file --- pdf file which will represent the distribution of case IDs across all files in /data 
