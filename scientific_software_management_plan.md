# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Course Project: Tools for Scientific Software Development and Data Science

## Main researcher: 
Arun Puthussery Vasudev

## Research leader: 
Thomas Arildsen

## Collaborators: 
collaboration with the public git repo `aau-claaudia/sci-sw-dev`. All students participating in the course can access and use the code

## Project contact: 
Arun Puthussery Vasudev(email: apv@energy.aau.dk)
The project is owned by Thomas Arildsen(email: tari@its.aau.dk)

## Related document(s): 
Project description: https://phd.moodle.aau.dk/pluginfile.php/219161/mod_resource/content/1/ToolsForSciSoftwDev-Day2--2024-09-17--03-CourseProjectInfo.pdf

dataset: https://hudoc.echr.coe.int/

# Planning the project

## Purpose
*The purpose of the scientific software is to automatically analyse and graph some of the data of the European Court of Human Rights.*
*The scientific software is trying to plot of the distribution/count of different IDs in a sorted form.*
*A python script is used to extract the IDs of each case and print the IDs to standard output. A R scripts is used to produce a plot of the distribution/count of different IDs in a sorted form.*

## Where will code exist during project?: 
*Collaborators can access the program via clone https://github.com/apvenergy/sci-sw-dev .*
*The code will be backed up to the master branch. Each collaborator can modify the code by creating a new branch and submit it to the repository as a pull-request.*

## Software development: 
*The software will be developed and tested on Linux systems (Ubuntu, MacOS compatibility confirmed).* 
*Bug reports will be managed through GitHub issues, and queries can be directed to the project manager.*

## Programming languages:
*Python for data extraction and preprocessing.* 
*R for visualization and statistical analysis.*
*Automation scripts can be run directly from the terminal.You need to install python and R in advance*

## Methods: 
*Only basic statistical methods are used on the data, you can rewrite the R program to re-run and re-analyse the data.* 

## Code Documentation: 
*A comprehensive `README.md` file will provide usage instructions and setup details.* 
*In-line comments will describe code functionality.*
## Testing: 
*The code can be tested by the data in the folder `./data`, The results can be compared with`result.pdf` and `result.dat` which is uploaded in the git repository

## Validation: 
*Output verification will involve comparing generated `result.dat` and `result.pdf` with sample files provided.* 
## Code and data: 
*According to the file tree, the code will be kept in the top-level folder and the data will be stored in the folder `./data`. Smaller amounts of data do not need to be stored in the database server. The dataset will use public datasets, politics about data, laws or ethical issues will comply with the relevant protocols.*

## Version control: 
*Git will be used to track progress, with commits logged for major updates.*
 *Branching policy: master (stable), feature branches for individual tasks.*
# Processing data

##  Will you processing include randomness?: 
*The software will not introduce any randomness.*
## Cleaning of data: 
*Input JSON files will be read and parsed without additional preprocessing.*
## Multiple steps?: 
*Single execution of the Python and R scripts is sufficient to produce results. This can be done using the bash script*
# Sharing
## Will you share your code? 
*Source code will be published under an open-source license on GitHub.*
 *The repository will include usage guidelines in the `README.md`.*
## Which publication channel? 
*The project will be published on GitHub.*

## Who should have access and who will govern access?
*The project is publicly accessible, but use of the dataset is subject to the relevant protocols. Once the project is completed, access is managed by the administrator. Github allows access to the administration.*
## Documentation 
*`README.md` contain enough information, including dependencies on other programs and versions, and also documents how to run programs and scripts.*

## Dataset documentation and publication: 
*No further datasets will be published.*

## Licensing 
*This project is open source.*