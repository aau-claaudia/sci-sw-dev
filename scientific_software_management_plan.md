# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: PR Interval Duration and the Risks of Recurrent Syncope and All-Cause Mortality in Patients with Syncope

## Main researcher: 
Asger Knudsen 

## Research leader: 
Asger Knudsen

## Collaborators: 
The supervisors of the project, Claus Graff and Johannes Jan Struijk

## Project contact: 
asgerek@hst.aau.dk
## Related document(s): 
Not relevant 

# Planning the project

## Purpose
*What is the purpose the scientific software? What scientific question are you trying to answer? What scientific methodology will be used?*
The purpose of the scientific software is to generate survival analysis for patients with syncope based on their PR interval. The scientific methodology used will be Cox regression models. 

## Where will code exist during project?: 
*Can collaborators access code? How? Will there be backup?*
All code will be stored on servers on Denmark Statistics (DST), where collaborators can access the code if needed. 

## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*
The software will be developed ad-hoc and will not be peer-reviewed. However, in some cases peer-coding will be used between the main researcher and the collaborators. 

## Programming languages:
*Which languages will you use and why? Will you automate using scripts? Will you use Integrated Development Environments? To which extend will your toolchain be available to others and will it be free of cost? Literate programming? Is platform dependencies an issue? Coding style?*
The software will be implemented in R, since this software offers the required packages for conducting a survival analysis. 

## Methods: 
*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you use off-the-shell methods?* 
The well-known method, Cox regression, will be used to conduct the survival analysis.  

## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*
Each script will be documented separately, meaning that the purpose of the script will be declared in the top of each script. 

## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 
Not relevant. 

## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*
The results will be compared to litteratur to ensure that the results is somewhat valid within the field. 

## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*
Data is stored at DST at a personal folder. 

## Version control: 
*Manually or by a version control system? Which system and why?*
Git is used as version control. 
# Processing data

##  Will you processing include randomness?: 
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*
Results will be reproducable, no seeds will be needed since nothing is random and the dataset is finite. 

## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*
Data is cleaned by removing outliers, and patients not suitable for inclusion. All exclusion criteria will be defined and documented.

## Multiple steps?: 
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*
Not relevant. 

# Sharing
## Will you share your code? 
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*
Code will be shared with all other researchers with access to DST, otherwise it is confidential.

## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*
Not relevant. 
## Who should have access and who will govern access?
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*
Due to the fact that everything is stored on DST it is not possible to deny other researchers access. 

## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*
Not relevant. 

## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*
The dataset can not be published since it is personal data, which can not leave the servers on DST. 

## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*
All researchers at DST agree that you have the right to copy and use each others code, however they do not have the right to modify code. 
