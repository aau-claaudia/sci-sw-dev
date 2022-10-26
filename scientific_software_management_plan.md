# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Course Project: Tools for Scientific Software Development and Data Science

## Main researcher: 
Yubo Wang

## Research leader: 
Thomas Arildsen

## Collaborators: 
collaboration with the public git repo `aau-claaudia/sci-sw-dev`. All students participating in the course can access and use the code

## Project contact: 
Yubo Wang(email: yubow@es.aau.dk)
The project is owned by Thomas Arildsen(email: tari@its.aau.dk)

## Related document(s): 
Project description: https://phd.moodle.aau.dk/pluginfile.php/159134/mod_resource/content/2/project.pdf
dataset: https://hudoc.echr.coe.int/

# Planning the project

## Purpose
*The purpose of the scientific software is to automatically analyse and graph some of the data of the European Court of Human Rights.*
*The scientific software is trying to plot of the distribution/count of different IDs in a sorted form.*
*A python script is used to extract the IDs of each case and print the IDs to standard output. A R scripts is used to produce a plot of the distribution/count of different IDs in a sorted form.*


## Where will code exist during project?: 
*Collaborators can access the program via clone https://github.com/Stwyb/sci-sw-dev.git .*
*The code will be backed up to the master branch. Each collaborator can modify the code by creating a new branch and submit it to the repository as a pull-request.*

## Software development: 
*We will use linux systems to develop the software, which we have tested on MacOS and Ubuntu. The software is developed ad-hoc and any bugs or problems can be submitted to the repository via add a new issue in github repository. Of course you can also send an email to the project manager. The code will be reviewed by the repository administrator. *

## Programming languages:
*The project is programmed in python and R, and provides automation scripts to get from data to output. Automation scripts can be run directly from the terminal.(of course you need to install python and R in advance)*

## Methods: 
*Only basic statistical methods are used on the data, you can rewrite the R program to re-run and re-analyse the data.* 

## Code Documentation: 
*The code will be documented through a single README. In addition, files also contains comments on functions and code.*

## Testing: 
*The code can be tested by the data in the folder `./data`, we will upload `result.dat` and `result.pdf` later for you to compare.* 

## Validation: 
*This can be verified by comparing your result with the sample output (intermediate result `result.dat` and final output `result.pdf` file). The method can be compared by comparing the runtime of the program or script.*

## Code and data: 
*According to the file tree, the code will be kept in the top-level folder and the data will be stored in the folder `./data`. Smaller amounts of data do not need to be stored in the database server. The dataset will use public datasets, politics about data, laws or ethical issues will comply with the relevant protocols.*

## Version control: 
*Git system will be used to version control.*

# Processing data

##  Will you processing include randomness?: 
*Processes do not include randomness.*

## Cleaning of data: 
*No pre-processing of data required.*

## Multiple steps?: 
*Just execute one script to get the results automatically. No need for multiple steps.*

# Sharing
## Will you share your code? 
*The source code is available for open source use as github repository. `README.md` contains instructions on how to execute the script to produce the final output. According to the usage, users only need to know basic linux to use the code. Users can be contacted via email and issues. No references are required to use the code.*

## Which publication channel? 
*The project is published on github.*

## Who should have access and who will govern access?
*The project is publicly accessible, but use of the dataset is subject to the relevant protocols. Once the project is completed, access is managed by the administrator. Github allows access to the administration.*

## Documentation 
*`README.md` contain enough information, including dependencies on other programs and versions, and also documents how to run programs and scripts.*

## Dataset documentation and publication: 
*No further datasets will be published.*

## Licensing 
*This project is open source.*
