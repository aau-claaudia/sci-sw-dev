# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Course Project for PhD Course Tools for Scientific Software Development and Data Science

## Main researcher: Trine Aalborg
*Researcher in charge of producing the code*

## Research leader: Thomas Arildsen, Gergely Barsi
*Closest researcher leader overseeing the researcher. Could be the main researcher.*

## Collaborators: The code is a collaboration with the public git repo aau-claaudia/sci-sw-dev/ and will be accessible for collaboration with other students using this repo, pending merge acceptance by the repo admins. The code is public access once merged with the repo.     
*Other researchers etc. that will have access and use the code*

## Project contact: Trine Aalborg (traa@bio.aau.dk). Project ends following acceptance of course project and all contact following that point is directed to Thomas Arildsen (tari@its.aau.dk)
*Email of main researcher and research leader. Should also include name and contact for a person in-charge after the project ends if relevant*

## Related document(s): 

Are there requirements and policies from funding agency, collaborators or institute when conducting the research? 

# Planning the project

## Purpose
*What is the purpose the scientific software? What scientific question are you trying to answer? What scientific methodology will be used?*

## Where will code exist during project?: 
*Can collaborators access code? How? Will there be backup?*

## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*

## Programming languages:
*Which languages will you use and why? Will you automate using scripts? Will you use Integrated Development Environments? To which extend will your toolchain be available to others and will it be free of cost? Literate programming? Is platform dependencies an issue? Coding style?*

## Methods: 
*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you use off-the-shell methods?* 

## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*

## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 

## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*

## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*

## Version control: github version control is used as this is compatible with the repository for code submission and subsequent availability. 
*Manually or by a version control system? Which system and why?*

# Processing data

##  Will your processing include randomness?: Processing does not include randomness and can be reproduced directly.   
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*

## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*

## Multiple steps?:  The data analysis can be performed in a single step by running a bash script, calling all necessary commands for processing. The output, supplied with the correct datafile formats, will plot results directly.
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*

# Sharing
## Will you share your code? The code is available as a public github repositoty; aau-claaudia/sci-sw-dev, for open source use. The README.md contains directives on how to execute the code to produce a final output and can be run. The user requires knowledge in downloading software using git to access the script, but minimal knowledge in shell command line is required to execute the code. Once submitted to the github repository, there will be no maintenance or support available for users. Usage will be assertained by stars in the github repository. As the code is not associated with any publication, users are encourage to use the code citation-free.   
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*

## Publication channel: github - the code will be submitted as a pull request to public repo aau-claaudia/sci-sw-dev and available pending acceptance of pull-request 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*

## Who should have access and who will govern access: The code will be available for public access pending acceptance of pull-request with repo admin Thomas Arildsen controlling future access. 
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*

## Documentation: the repo contains sufficient documentation to run the 
code on the provided test data, including how to produce the ID count 
distribution figure. The bash script tfssd_script.sh can be run directly following the guidelines and dependencies stated in the README.md. The code does not include a testset, but can be tested directly on the 
dataset contained in the data folder of the repo. Examples of the command for calling the bash script and the file types accepted by the script is stated in the README.md.
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*

## Dataset documentation and publication: No additional dataset will be published beyong what is already available in the aau-claaudia/sci-sw-dev repository with public access. The metadata is accessible via the 
README.md pending acceptance of this code pull request to the master branch of the github repository. 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*

## Licensing: the code is open source 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*

