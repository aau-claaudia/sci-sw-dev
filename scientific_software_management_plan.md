# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Course Assignment T4SSD

## Main researcher: 
*Hans Früchtnicht (in this branch, please refere to the master branch for more info)*

## Research leader: 
*see Main Researcher*

## Collaborators: 
*see Main Researcher*

## Project contact: 
*hhf@energy.aau.dk*

## Related document(s): 

Are there requirements and policies from funding agency, collaborators or institute when conducting the research? 
no, this is a course assignment
# Planning the project

## Purpose
*What is the purpose the scientific software? What scientific question are you trying to answer? What scientific methodology will be used?*
Purpose: quick and repeatable analysis of files from European Court of Human Rights
Question: How are different keywords in a vocabulary mentioned?
Method: Statistics, counting

## Where will code exist during project?: 
*Can collaborators access code? How? Will there be backup?*
Where: published in GitHub: https://github.com/HHF-HelloWorld/sci-sw-dev/tree/T4SSDHansFruechtnicht
How: please refere to GitHub 
Backup: Work is done on local machine, advances in the scripts are commited regularely, please refere to the commit messages 

## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*
- ad-hoc, no peer-review
- if you encounter any bugs please contact the project contact (see above)
- Trustworthyness is ensured by comparing the script result with other researchers working on a similar task. Furthermore the results corosponding with the given input data are published in the repository. 

## Programming languages:
*Which languages will you use and why? Will you automate using scripts? Will you use Integrated Development Environments? To which extend will your toolchain be available to others and will it be free of cost? Literate programming? Is platform dependencies an issue? Coding style?*git 
- Python
- bash script to automate call of .py scripts 
- (R was used in previous branches but to improve accesability the functionality is transferred to python)
- the given bash script is available free of charge

## Methods: 
*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you use off-the-shell methods?* 
- no advanced statistical method is used 

## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*
- see single README for installation
- some additional info can be found in comments and commit messages
- the plot output is automated

## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 
- no automated testing
- see software development -> trustworthyness

## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*
- see software development -> trustworthyness

## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*
- input data is organised in folder "data"

## Version control: 
*Manually or by a version control system? Which system and why?*
- version control system of GitHub, usage of FAIR and KISS

# Processing data

##  Will you processing include randomness?: 
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*
- no randomness is known in the scripts

## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*
- no, only .json files are considered. other files could be in data folder but are not considered
- case_ID is taken from filename
- for further info please refere to README

## Multiple steps?: 
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*
- please refere to README

# Sharing
## Will you share your code? 
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*
- see GitHub repository (Planning -> where will code be published in this SSMP)

## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*
- see GitHub repository (Planning -> where will code be published in this SSMP)

## Who should have access and who will govern access?
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*
- no restriciton, could be published with the same access rights as the master branch
- GitHub allows for access governance

## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*
- please refere to README

## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*
- yes, see GitHub repository (Planning -> where will code be published in this SSMP) 

## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*
- all rights are granted, as long as they are within the rights of the main branch
