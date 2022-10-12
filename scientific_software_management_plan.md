# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: PhD-course project

## Main researcher: 
Sebastian Bruhn Petersen

## Research leader:
Thomas Arildsen 

## Collaborators: 
Thomas Arildsen

## Project contact: 
Sebastian Bruhn Petersen
email: by07eg@et.aau.dk

## Related document(s): 
Not relevant 

# Planning the project

## Purpose
The purpose of the project is to complete the PhD course by fulfilling the requirements specified by the research leader
and thereby obtaining the learning goals of the course.

## Where will code exist during project?: 
While the code is being developed it will exist as a local repository, but when it is finilised it will be available in a
remote repository at github.com

## Software development: 
The software is developed partly by following the project description but also utilising the course/teaching material which
has been provided during the lectures of the PhD course. The software development is supported by an active use of Google to
look up any additional commands required to complete the project objectives.  

## Programming languages:
The software uses a python script, a Rscript and a bash script in which the bash script functions as the executable file to 
obtaine the desired results. 

## Methods: 
Git version control is used to facilitate the software development supported by software management based on the FAIR principle.

## Code Documentation: 
The code documentation for the final software is contained in a single README file, while the software development is documented
using the commit messages applied through the git version control. 

## Testing: 
The final software is tested manually to ensure that the coding works sufficiently for the specified objectives. During the
software development each of the commands used in the bash scripts are tested intermediatly to ensure the intentional outcome.  

## Validation: 
Is validated by research leader Thomas Arildsen.

## Code and data: 
The code is structured using git repositories as version control.

## Version control: 
The git environment is used as version control both locally and remote (github.com).

# Processing data

##  Will you processing include randomness?: 
No randomness is included and the results can be purely replicated.

## Cleaning of data: 
Not relevant

## Multiple steps?: 
All steps required are contained within an executable bash script.

# Sharing
## Will you share your code? 
The software is shared through a public git repository on github.com

## Which publication channel? 
github.com

## Who should have access and who will govern access?
It is completely open source.

## Documentation 
All required documentation is provided in the github repository.

## Dataset documentation and publication: 
Not relevant

## Licensing 
CC BY 4.0

