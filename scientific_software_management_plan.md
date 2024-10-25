# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Course project for Tools for Scientific Software Development and Data Science

## Main researcher: 
Ebin Chacko

## Research leader: 
Gergely István Barsi

## Collaborators: 
People with access to the main repository.

## Project contact: 
ebinc@es.aau.dk

## Related document(s): 
Course project discription (https://phd.moodle.aau.dk/mod/resource/view.php?id=23049)

# Planning the project

## Purpose
The purpose of the project is to anyalyse the case ids from the European court of human rights and the plot a distribution of the case id's. There is python script which extracts the case id's from json file and an R script that given the case id's is a specic format, plots the distribution of the case ids. As part of the course project we developed a BASH script pipeline, which uses the python script to extract the case id's, create a dat file, which arranges the case id's and filename in the format required for the R script and then finally exceute the R script with the created file.

## Where will code exist during project?: 
The project files are present in the Ucloud and is commited to github in my personal repository. Finnaly, the files will be merged to the main project repository.

## Software development: 
Linux system from Ucloud is used to develop the softwarae in ad-hoc manner. Since the code is pushed to github and is publically available, the peer-review is done there.

## Programming languages:
The project uses python, R and bash script. The provided bash script is used to automate the entire process. The pojects depends on python, R and the R package tidyverse.

## Methods: 
The basic statistics methods are used in the R script.

## Code Documentation: 
A README file proides the basic documentation.

## Testing: 
There is not testing provided.

## Validation: 
Manual validaion can be done by comparing the dat file and the resulted the plot.

## Code and data: 
The data is publically available data and since the data size is small, the data is stored along with code using version control.

## Version control: 
Git is used as version control.

# Processing data

##  Will you processing include randomness?: 
Since there is no randomness, the result can be reporduced by re-running the script.

## Cleaning of data: 
The provided data is already cleaned. The bash script will read and format 

## Multiple steps?: 
Only bash script needs to run, there are no multiple steps are involved.

# Sharing
## Will you share your code? 
The code is publically available in github and freely available for use. The user needs basic understanding of linux systems and basic bash scripting to run the code.

## Which publication channel? 
Github

## Who should have access and who will govern access?
No restrictions.

## Documentation 
Basic documentation via provided README file.

## Dataset documentation and publication: 
Publicaly available dataset.

## Licensing 
Open use.

