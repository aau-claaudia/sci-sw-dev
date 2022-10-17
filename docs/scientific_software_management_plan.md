## Scientific Software Management Plan

# Overview

Project Title: Scientific Software Development

## Main researcher: 

Ana Sofia Santos Cardoso

## Research leader: 

Ana Sofia Santos Cardoso

## Collaborators:

Thomas Arildsen

## Project contact: 

**Ana Sofia Santos Cardoso** \
email: assc@hst.aau.dk

## Related document(s): 

https://phd.moodle.aau.dk/pluginfile.php/159134/mod_resource/content/2/project.pdf

# Planning the project

## Purpose
This repository hosts a course project for Aalborg University's Ph.D. course *Tools for Scientific Software Development and Data Science (2022)*. The software developed in this project is intended to parse the IDs contained by case documents sourced from the [European Court of Human Rights](https://hudoc.echr.coe.int). 

## Where will code exist during project?: 
Besides the main researchers's local repository, the code will exist in a remote github repository.

## Software development: 
The software was developed ad-hoc, following the principles that were covered in the course. While the project adheres to the submission requirements that we were given, some additional features have also been included. The software was developed in Ubuntu 20.04 and has not been tested in other platforms.

## Programming languages:
The project makes use of Python and R scripts, which can be called using a bash script.

## Methods: 
In addition to the scripts provided, only off-the-shell methods have been used.

## Code Documentation: 
Documentation for this project includes a single README. Given its simplicity, no further documentation is necessary.

## Testing: 
The software was tested manually. The outputs of the python and R scripts are saved separately. 

## Validation: 
In this case, there is not much to validate. It was validated manually. The scripts are parsing the IDs correctly and counting their occurences correctly.

## Code and data: 
The data can reside in a version control system. It will be kept in the `data` directory of the local and remote repositories. Output files will be stored in the `src\out` directory and will be sorted into the `dat` and a `pdf` subdirectories, according to their extensions.

## Version control: 
Git will be used for version control.

# Processing data

##  Will you processing include randomness?: 
No. Results can be entirely reproduced. 

## Cleaning of data: 
No data processing pipeline was included in this project. 

## Multiple steps?: 
The results can be obtained by executing a single bash script.

# Sharing
## Will you share your code? 
The source code will be publicaly available through a git repository on github.com

## Which publication channel? 
Github

## Who should have access and who will govern access?
The project is open source.

## Documentation 
Essencial documentation is provided in the repository. Examples of how to run the bash script are included.

## Dataset documentation and publication: 
The dataset used in this project is already publicaly available.

## Licensing 
MIT License

