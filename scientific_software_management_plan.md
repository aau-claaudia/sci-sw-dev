# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title:
Deep neural networks on 18F-FDG PET/CT images for predicting chemotherapy response for ovarian cancer

## Main researcher: 
*Researcher in charge of producing the code*
Signe Bjerregaard-Michelsen

## Research leader: 
*Closest researcher leader overseeing the researcher. Could be the main researcher.*
Charles Vesteghem

## Collaborators: 
*Other researchers etc. that will have access and use the code*

## Project contact: 
*Email of main researcher and research leader. Should also include name and contact for a person in-charge after the project ends if relevant*
Signe Bjerregaard-Michelsen, s.bjerregaardmichelsen@rn.dk
Charles Vesteghem, charles.vesteghem@rn.dk

## Related document(s): 

Are there requirements and policies from funding agency, collaborators or institute when conducting the research? 
The project is based on sensitive data (PET/CT scans) and should be handled in compliance with GDPR regulations.

# Planning the project

## Purpose
*What is the purpose the scientific software? What scientific question are you trying to answer? What scientific methodology will be used?*
The study will investigate the ability to automatically extract relevant features from FDG-PET/CT scans of ovarian cancer patients for predicting response to platinum-based chemotherapy. For this, convolutional neural networks will be used. Response to chemotherapy will be a classification task classifying responders from non-responders. Different state-of-the-art models will be tested to find the CNN model with the best prediction performance, including residual convolutional neural networks.

## Where will code exist during project?: 
*Can collaborators access code? How? Will there be backup?*
The code exist on a sequre drive at Aalborg University Hospital, accesible for main researcher and research leader. The plan is to get access to UCloud which is a secure HPC platform for sensitive data analyses in compliance with GDPR. We are now working on a data agreement between Aalborg University Hospital and Aalborg University. 

## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*
The software development would be taking a starting point from 'MONAI' (Medical Open Network for Artificial Intelligence), which provide a set of open-source, freely available collaborative frameworks. MONAI will be used for accelerating the research building on top of state-of-the art models in the field of medical imaging. Based on state-of-the-art, fine-tuning of hyperparameters will be explored. Issues and bugs will be handled using debugging tool in VS code, and in collaboration with my supervisors. For the coding I will be focusing on the software development principles including KISS and DRY, to keep the code simple and avoid repetition. As i am working with sensitive data, I am not allowed to use git for version control. Instead i will make sure to save files with date and short description when bigger changes are made, so that I can always go back to a different version of the code. To ensure the results are trustworthy, I will provide a simple known test dataset that can be used to determine whether the code is working and check if the code outputs a known correct output. Furthermore, I will make sure that the test dataset is holdout, providing an unbiased evaluation of the final model fit.

## Programming languages:
*Which languages will you use and why? Will you automate using scripts? Will you use Integrated Development Environments? To which extend will your toolchain be available to others and will it be free of cost? Literate programming? Is platform dependencies an issue? Coding style?*
I will be using python, as it is the language used in the MONAI platform and it has a lot of consoldated libraries in the area of machine learing, including Scikit-learn and PyTorch. I will be using Visual Studio Code. How or whether the toolchain will be available to others have not yet been discussed. I will provide explalantions/comments throughout the code. I will write code according to the principles and idioms of python programming language. 

## Methods: 
*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you use off-the-shell methods?* 
The specific methods for the study has not yet been decided. The methods will probably be beased on off-the-shell methods and afterwards fine-tuned to the specific problem. 

## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*
A README file will be made for the folder I will be working in. Furthermore each code will have a few lines at the top descriping what the code does. Furthermore I will comment the code including definintions and functions. 

## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 
During the development of the code I will provide a simple known test dataset that can be used to determine whether the code is working and check if the code outputs a known correct output. When I have a fitted model I will be testing it on a holdout test dataset for final validation. The final validation will give an indication of how well the model predicts treatment response on an external dataset.   

## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*

## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*
Code and data will be located in a folder on a secure drive which is GDPR compliant. The data is sensitive and therefor I cannot use git for version control. I will keep a seperate file with the raw data, so that I can always go back to the original data. The data will be pseudonymized. I will make a folder for all the data (PET/CT scans) named after their unique identifier, and a folder for the code. 

## Version control: 
*Manually or by a version control system? Which system and why?*
Version control will be done manually, as I work with sensitive data. I will make sure to name the code files according to the content and date of the file. 

# Processing data

##  Will you processing include randomness?: 
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*


## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*
The images needs to be preprocessed before used as input in the CNN model. The image preprocessing will include changing format from DICOM to NIfTI, cropping, resizing, normalizing. Furthermore, data augmentation might be used as well. Pre-processing steps follow current guidelines for medical imagaing. The pre-processing will be thoroughly explained in an appendix.  

## Multiple steps?: 
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*
Yes, several steps will be automated via a python script. 

# Sharing
## Will you share your code? 
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*
Not decided yet. The code itself might be shared as source code and refered to through a scientific article for others to use. But I will not be able to share any data as it is sensitive. The code would be thorougly commented, so that other users easily can get an understanding of the code. Users should cite the publication in case they use the source code. Furthermore my contact informations would be available for users to contact me. 

## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*
Not decided yet.

## Who should have access and who will govern access?
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*
The code might be accessible to all, maybe on github. But the data will only be accessible to main researcher and research leader.

## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*
Not decided yet. The paper itself will not be sufficient, I will add an appendix with more detailed description of dependencies to other programs, libraries and versions. If I share the code for the model and data preparation I will include a README file expalining how to get started with the code. I will consider provide an example dataset which is not sensitve, so that people can run the code and see the outputs before experimenting with their own data. 

## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*
Data is sensitive, I will not share/publish the dataset. 

## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*
Not decided yet.
