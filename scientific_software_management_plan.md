# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Prediction of Cardiac Syncope Using Deep Learning Based on ECG
Recordings

## Main researcher: 

Magnus Vraa Justesen 

## Research leader: 

Johannes Jan Struijk 

## Collaborators: 

No one at the moment. 

## Project contact: 

Main researcher: magnusvj@hst.aau.dk \
Research leader: jjs@hst.aau.dk

# Planning the project

## Purpose

The software should facilitate analysis of both short and long duration electrocardiograms using artificial neural networks. \
The project aims to improve current methods for diagnosing fainting caused by cardiac issues. 

The scientific software created and used for this project has different purposes. \
These purposes can be divided into preprocessing, development of artificial neural network, and analysis of results and models. 

Data preprocessing include tasks such as data extraction, organisation of data, and pseudonymisation. \
The development of neural networks also include various related tasks such as loading data, and automatic documentation of both parameters and results from each experiment. \
Analysis involves providing information which will aid the assessment of the clinical efficacy and potential problems with the developed models. \
This includes assessing model performances on external datasets, looking into certain patterns or features used to classify classes or subgroups. 



## Where will code exist during project?: 

The code is hosted in a private Bitbucket repository. \
Collaborators interested in accessing the code will be granted access to the repository.
At the moment, I (Magnus) am the only one with access. 



## Software development: 

The software will be developed ad-hoc. \
Actual peer-review of code will not be conducted. The coding approach and resulting outputs are, however, discussed with my supervisor. 

I train or assess trained models on publicly available datasets, making it possible to compare with published results.    

## Programming languages:

I will use Python, as this is the most used programming language in my research area. \
Python is open source, and thus available to everyone. 

I use a conda environment for handling external software packages. \
This permit others to install packages with the excact same versions used for developing the code, which should minimise platform dependencies.

## Methods: 

I use Keras and TensorFlow for developing artificial neural networks. \
I can use or adjust some off-the-shell methods from these libraries. \
I do, however, also need to develop some methods, for example for handling large amounts of ECG data. \
The trained TensorFlow models can be shared and used by others. 

## Code Documentation: 

I use docstrings to document the purpose of and how to use individual scripts. \
This also applies to some functions, but should be expanded to all. \
Automatic generation of documentation should hereby by possible using e.g. Sphinx.  

## Testing: 

Ad-hoc testing as well as "sanity-checks" (checking results on simple use cases with known intended output) will be used. \
It will also be tested that models trained on and exported from one system perform exactly the same when imported on a different system. \
Models can be compared with other models with similar architecture. This can be performed on internal and external data sets. 

## Validation: 

Validation will be performed by evaluating trained models on publicly available ECGs, where comparison to benchmark results is possible. \
Results can furthermore be compared to that of non machine learning algorithms currently used in clinical practice. 


## Code and data: 

Git is utilised for version control, and Bitbucket is used for hosting the repository. \
Most data are both large and sensitive. \
They therefore reside in encrypted harddrives, or after preprocessing, in pseudonymized form on a server with restricted access and logging provided by Claaudia. \
The keys to the dictionary containing the original ID to pseudo ID translation are also encrypted.

## Version control: 

Git is used as version control system. This permits having access to all "historical" versions of the software, as well as writing code on a PC, pushing changes to the repository, and seamlessly pulling these changes on a server intended to run the scripts.

# Processing data

##  Will you processing include randomness?: 

Training a neural network typically involves using stochastic gradient descent, as well as random initialization of model weights and biases (that is, drawn from some distribution). \
This is part of the intended training strategy for neural networks. \
The results should however by approximately reproducible, by using the same network architecture, hyperparameters, training strategies etc. \
By providing for example the standard deviation of performance metrics from different runs using the same settings, it should be possible to know how large variations in these metric are introduced based on the aforementioned randomness. 


## Cleaning of data: 

Short duration ECGs are not preprocessed in a way that changes the data. 

The long duration ECGs, however, need to be segmented into shorter durations. \
Very noisy segments should be removed, and some of these are already identified by the proprietary software (PathFinder SL) used in the hospital, or by the health care professional originally assessing the recording. \
I aim to automate extraction of relevant data from recordings, in order to make this step reproducible. \
If this is not possible, I will include examples of noisy segments, and formulate criteria for the inclusion or exclusion of data segments. 

Decisions and thoughts regarding preprocessing are kept track of in a Microsoft Word document, with a date stamp included with each added note. \
Most pre-processing is automated in scripts with code comments and version control using Git. 

Data resulting from preprocessing workflows are saved in folders indicating which script "created" these, and on which date. \
Using version control, it is then possible to go back and check which exact version of a script was used to preprocess some given data. 

## Multiple steps?: 

The documentation of preprocessing scripts include the intended sequence scripts are to be executed in. \
Sometimes, only some parts of the sequence are to be executed, which is enabled by using several scripts. \
It could however be a good idea to include a bash script (perhaps powershell for Windows?) for executing preprocessing scripts in the intended order, and thereby running an entire preprocessing workflow. 

Training of neural network models is enabled by executing a single Python script. 

I consider to automate part of the validation procedure via bash scripting (taught in this course). 

# Sharing
## Will you share your code? 
 
The code will be shared as a repository along with publications. \
This is intended for other researchers in the same field, who wish to inspect or use the code. \
A readme file should state how to cite the work. 

## Which publication channel? 

I will either provide a public git repository, or use Zenodo for making a "snapshot" of specific software versions used in publications.

## Who should have access and who will govern access?

Restricted access in not needed for the software. 

## Documentation 

A readme file stating how to run the scripts will function as documentation along with corresponding articles. \
A file for constructing a working conda environment will furthermore be provided in order to cope with Python package dependencies. 

## Dataset documentation and publication: 

I am not allowed to publish any of the data, as it is sensitive. \
Every step conducted to create datasets are documented. \
Reporting epidemiological information about the datasets as a whole might be relevant. 

I think adapting to the FAIR principles for the data is relevant, even without publishing the data. \
It would be beneficial to be able to reuse (R) said datasets again. \
The long duration data is in a proprietary format. This could furthermore be converted to open non-proprietary formats. 

## Licensing 

I consider including a single license specification per repository such as Creative Commons CC-BY, permitting sharing and reuse, given that appropriate credit is given. 
