# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Neural network based payload recognition for the control of exoskeletons.

## Main researcher: 
Abdullah Tahir, PhD student, ES Dept., AAU

## Research leader: 
Zeliane An, Guest researcher, ES Dept., AAU

## Collaborators: 
Mathias, CS Dept., AAU

## Project contact: 
atah@es.aau.dk

## Related document(s): 
Related documents can only be publicly available once the work is published.

# Planning the project

## Purpose
The sensor-muscle mismatch can happen for the person doing activities of daily life by wearing wearable sensors. This project is aimed to develop a methodology that would guarantee that data processing and classification would become insensitive to this sensor-muscle mismatch. Hence, a more natural way of wearing wearable sensors is the outcome of this project.

## Where will code exist during project?: 
The code is maintained by main researcher in his PC and GitHub repository.

## Software development: 
The in-house software is developed which is collection of ad-hoc Python and Matlab scripts. Matlab is used for data acquisition and analysis, while Python is used for AI algorithms. Bugs and issues will be tracked with extensive testing which will also ensure trustworthiness of the software.

## Programming languages:
a. Matlab: for data acquisition
B. Python: AI based classification

## Methods: 
No statistical methods are employed.

## Code Documentation: 
a. A manual will be created showing instructions to operate the software.
b. Project report will be created showing details of methodology.
c. Code is properly commented for easy understanding.

## Testing: 
Software will be testing in real time on human subjects. It can be easy seen if the classification matches the payload a human is lifting.

## Validation: 
Validation will be done in computer environment with the test data using accuracy, precision, recall and f-score metrics.

## Code and data: 
Main researcher is responsible for maintaining the code on GitHub and local computer. While, the data will be maintained in cloud drive.

## Version control: 
Git is very popular as version control system, and, people feel handy to work on it. Hence, Git will be used for this purpose.

# Processing data

##  Will you processing include randomness?: 
The input data is augmented by Gaussian noise for robust training.

## Cleaning of data: 
The preprocessing of the data is handled in Matlab.

## Multiple steps?: 
No, running only the Python file will generate the results.

# Sharing
## Will you share your code? 
Yes, code will only be publicly available once the research article is published.

## Which publication channel? 
VBN.

## Who should have access and who will govern access?
Anybody can access the codes.

## Documentation 
Apart from research article, project report and software manual will also be uploaded on Git.

## Dataset documentation and publication: 
The dataset I have is acquired from custom build hardware. Hardware specifications and dataset will be publicly uploaded once research article is published.

## Licensing 
Any person having access to the data, have the right to copy, modify and distribute the code without any permission.

