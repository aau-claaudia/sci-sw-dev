# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Physics based digital twin (DT) of water electrolyzer

## Main researcher: 
Vicente Olguín Godoy

## Research leader: 
Frede Blaabjerg

## Collaborators: 
Members of CAPeX and others interested in the software and its application.

## Project contact: 
vogo@energy.aau.dk

fbl@energy.aau.dk

## Related document(s): 

Not relevant

# Planning the project

## Purpose

To have a multiphyisics, physics-based model running in real time with the physical system, allowing for the exchange of information between the model and the system for state-of-healh monitoring and operational optimization.

Given the detail of the model, it is possible to explore or analyse more in details what is ocurring in the system due to limitations in sensing.

## Where will code exist during project?: 

The code will be stored in a github repository and in the project archive.

## Software development: 

Software as such is not developed, but the model is implemented and executed in OpenModelica. The software and modelling nature allows for a component-based approach, which is standard in the Modelica language.

Before made available, the model bus be properly validated with measurements in the physical system that is being represented. Later on, the model will be made available and other researchers can provide feedback.

## Programming languages:

The modelling language is Modelica, and the model is implemented in OpenModelica, an open-source software for modelling of cyber-physical systems.

The implementation of the digital twin nature will be with the use of python, and any post-processing can be done in the platform of choice of the researcher.

The goal is to make the whole implementation open-source so that other researchers or industries around the world feel free to use it if it is of their interest.

Due to the use of FMI standard, platform dependencies should not be an issue.

## Methods: 

The modelling is implemented by the main researcher, nevertheless, solvers are used off-the-shell. Similarly, when possible and required, components from the Modelica Standard Library (MSL) will be used.

## Code Documentation: 

A single README file will be provided for the whole implementation explaining the general use, whereas each level of individual components will have its own documentation.

Automatic documentation is left for the users as part of the post-processing that they require

## Testing: 

No automated testing.

Testing of the model is made by running quick simulations and comparing with real measurements.

## Validation: 

Validation is performed by comparing simulatio results with real system measurements.

Given the need of a DT to run in (near) real-time, model simplifications will be considered for reduction of computational time. For this, parametric analysis on the model parameteres will be performed.

## Code and data: 

The code is structured in a nested library, and made available in a github repository and the project archive.

Any data generated will be stored in the project archive.

No political, legal or ethical issues are identified.

## Version control: 

Version control trough git.

# Processing data

##  Will you processing include randomness?: 

As the results are based on a physics-based validated model, they are reproducible as long as the physical parameters provided as inputs are the same.

## Cleaning of data: 

The required pre-processing of data is explained and supported by codes and notebooks which are provided for the post-processing of the modelling results.

## Multiple steps?: 

Several steps might be required. If it is identified that it is required for the general user, automated scripts are provided.

# Sharing
## Will you share your code? 

All necessary code will be shared and made available.

As there will be some different programming langauges involved, understanding of Modelica, Python and Julia might be required in order to understand the code.

Support is not fully provided, but contact information will be made available so that the users can reach out and the possibility of support will be evaluated according to what is being asked.

Proper citations is required.

## Which publication channel? 

The results and usage cases will be published in the form of scientific articles, but the detail of the codes will not.

Publications will be made available in as many platforms as possible according to the required guidelines.

## Who should have access and who will govern access?

Access is open.

## Documentation 

Documentation is provided in the form of exemplary Jupyter notebooks for the analysis of results.

## Dataset documentation and publication: 

Example datasets will be made available to explain the structure of the data for post-processing with the corresponding documentation and example of post-processing codes in Julia. All of it following FAIR principles.

## Licensing 

Following AAU and CAPeX guidelines.
