# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title:
Assignment for the course "Tools for scientific software development and data science"

## Main researcher: 
Nikolaj Klausholt Bak

## Research leader: 
Nikolaj Klausholt Bak

## Collaborators: 
Gergely István Barsi

## Project contact: 
ndb@bio.aau.dk

## Related document(s): 
No further related documents.


# Planning the project

## Purpose
Create three bash scripts that can plot specific ids of .json files.


## Where will code exist during project?: 
There will be a backup of the project on the main reasearchers' local system and github. Furthermore, the collaborator will get the final project pushed to that persons github.

## Software development: 
I have tested the code myself and I will receive feedback from my collaborator whether the three bash scripts works properly.

## Programming languages:
Unix shell is the main feature of the program. But it involves connecting scripts from the R and python language.

## Methods: 
This is basically of-the-shelf method. 

## Code Documentation: 
Because the project is small, there will only be one README file.

## Testing: 
I divided the bash scripts into two, because then I can test individual steps at a time. This also allows me to divide the task into two steps instead of one.

## Validation: 
I validate that the scripts have been correctly run by checking whether the .dat and .pdf files have been generated.

## Code and data: 
The data is publicly available from the European Court of Human Rights https://hudoc.echr.coe.int/ and it is small files, so there is no limitation in data storage.

## Version control: 
I do a manual version control.

# Processing data

##  Will you processing include randomness?: 
No.

## Cleaning of data: 
The input should be a .json file from the European Court of Human Rights https://hudoc.echr.coe.int/

## Multiple steps?: 
It is possible to individually execute a bash script for json to dat and another bash script for dat to plot (pdf). However, it is also possible to go from json to the plot using the bash script (json-to-plot.sh). 

# Sharing
## Will you share your code? 
I will be sharing my entire projekt to the collaborator, who have my contact information both in the form of my github, but also my email.

## Which publication channel? 
Github

## Who should have access and who will govern access?
The access is only for the main researcher and the collaborator.

## Documentation 
Version controls used etc. will be in a README.file.

## Dataset documentation and publication: 
The data is publicly available from the European Court of Human Rights https://hudoc.echr.coe.int/.

## Licensing 
This project is only for the main reseacher and the colloborator.
