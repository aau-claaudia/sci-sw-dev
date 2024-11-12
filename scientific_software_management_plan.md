# Scientific Software Management Plan
This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

This is a Scientific Software Management Plan for the PhD Course Tools for Scientific Software Development and Data Science. 
The software management plan is over the course project investigating the distribution of case IDs from files from the European Court of Human Rights. I unbfortunately do not have anythong from my own project that fits into this, so I just made the SSMP for the project with the code within the folder and mimic that it is a major project with multiple collaborators.


# Overview
Project Title: Investigating the distribution of case IDs from files from the European Court of Human Rights (ECHR)

## Main researcher: 
Emil Korsgaard, PhD Student

## Research leader: 
N/A

## Collaborators: 
Other with interest in the data for ECHR.

## Project contact: 
emilk@hst.aau.dk

# Planning the project

## Purpose
The purpose of this software is to analyze and visualize the distribution of case IDs from the ECHR dataset. It automates the process of extracting case IDs from multiple .json data files, gathering these IDs into a structured format, and generates a distribution plot. This visual representation aids in understanding the frequency and spread of case IDs across various cases.
The software combines a pipeline of scripts written in Python, R, and Bash, making it efficient for processing large datasets. It performs the following primary functions:

1. Extraction of Case IDs: The software reads individual .json files containing case details, identifies the relevant case IDs, and outputs them in a semicolon-separated format.
2. Compilation of Case Data: Using a Bash script, the extracted case IDs from all files are collected into a single .dat file, with each line associating a filename with its respective case IDs.
3. Visualization: An R script generates a PDF plot that visually displays the distribution of case IDs, allowing users to assess patterns or concentrations in the dataset.
4. This software serves as a valuable tool for researchers and analysts studying case patterns in the ECHR dataset, offering a streamlined approach to data extraction, compilation, and visualization.

## Where will code exist during project?: 
The code for this project will be hosted on a version-controlled  in GitHub, allowing collaborators to access and contribute to the software.

1. Collaborator Access: Collaborators will have access to the repository through designated permissions (e.g., "Collaborator" or "Maintainer" roles) to ensure secure and managed access.
2. Backup and Version Control: The repository provides version control, allowing tracking of changes, easy rollback to previous versions, and collaborative editing. This setup ensures a reliable backup of the code and tracks contributions from all team members.

## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*

The software for this project will be developed using a structured and collaborative approach, incorporating practices and tools to ensure reliability, consistency, and quality of results.

Development Approach: The software will be developed following an agile methodology with iterative cycles. Key coding guidelines will be adhered to, including:
- Code Documentation: Each function and script will include inline comments and function-level documentation, improving clarity and facilitating future maintenance.
- Modular Code Structure: The code will be structured modularly to ensure that each function or script has a single responsibility. This will make it easier to test, troubleshoot, and reuse components.
- Version Control: A Git-based version control system will be used to manage changes, track code history, and support collaborative development.
- Code Review Process: All code will undergo peer review before merging into the main branch. The review process will be managed through pull requests on the version control platform, where designated reviewers will:
    - Provide feedback on functionality, clarity, and adherence to coding documentation and modular code structure.
    - Suggest improvements or optimizations where needed.

Bug Tracking and Issue Management: The project will utilize an issue-tracking system within the repository to organize bugs, features, and tasks. Issues will be documented with the following details:
- Priority and Status: Issues will be assigned priority levels and statuses (e.g., open, in-progress, resolved) to help the collaborators to address critical bugs first and keep track of bugs to fix.
- Assignment and Discussion: Collaborators will be assigned specific issues, and each issue can be discussed within the platform. 
- Resolution Documentation: Each issue will be documented with details on how it was resolved, providing a record for future reference.

Ensuring Trustworthy Results:
- Unit Testing: Individual functions and scripts will be validated using unit tests to ensure they perform their intended tasks correctly. Test cases will be created to cover edge cases and expected outputs. These tests will cover the testing of each of the modules in the software.
- Integration Testing: The entire pipeline, from data extraction to visualization, will undergo integration testing to verify that components work together as they are intended to.
- Automated Testing: Where feasible, automated testing frameworks (e.g., pytest for Python) will be used to run tests upon each code update, ensuring continuous validation of functionality. E.g creating a .json file with specific content that should give the expected output which could be tested using pytest. 

## Programming languages:
The project will use a combination of programming languages, each chosen for its specific strengths in handling different aspects of the data pipeline. 

Languages Used:
- Python: Python is chosen for its versatility and feasibility of data manipulation, making it ideal for processing .json files and extracting case IDs. Python’s extensive libraries for handling JSON data and makes it a good choice for processing these files.
- R: R is selected for the statistical analysis and visualization stage. R have built in packages for extracting statistics from a semicolon separated file, and it also has strengths in high-quality visualizations. 
- Bash: Bash scripting is used for automation and workflow orchestration, enabling seamless integration of Python and R scripts into one bash script. Bash also facilitates file handling and process management in a Linux environment, making it effective for pipeline automation.
- Automation Using Scripts: Automation will be achieved through Bash scripts that streamline the data pipeline by coordinating Python and R scripts. This approach ensures that each task (data extraction, compilation, and visualization) runs in sequence with minimal manual intervention, making the pipeline efficient and repeatable.

Integrated Development Environments (IDEs):
- VS Code will be the primary IDE for Python and Bash development, offering extensive plugin support for debugging, version control, and remote collaboration.
- RStudio will be used for R script development, given its optimized environment for R coding and visualization tools.

Toolchain Accessibility:
- All tools selected for the project are open-source and free to use, ensuring accessibility for all collaborators without licensing constraints.
- The required software and dependencies (Python, R, and Bash) are cross-platform, running on major operating systems like Windows, macOS, and Linux, minimizing platform dependency issues.

## Methods: 
The project will primarily focus on descriptive statistics and visualization to analyze the distribution of case IDs within the ECHR dataset. While the project’s core focus is not on complex statistical modeling, certain methods will be employed to ensure meaningful insights are drawn from the data.

Statistical Methods Used:
- Frequency Distribution: The primary statistical method used will be the calculation of the frequency of each case ID across the dataset. This will help to identify how often certain case IDs appear, revealing any patterns, such as the prevalence of specific cases.
- Visualization: Distribution plots (e.g., histograms, bar charts) will be created using the ggplot2 package in R to visualize the distribution of case IDs. These visualizations will provide insight into the spread and concentration of cases, offering a clear, intuitive view of the dataset’s structure.
- Basic Summary Statistics: Descriptive statistics such as the mean, median, and standard deviation may be calculated for the number of case IDs per file or across all files. These summary statistics will give an overview of the dataset’s central tendency and spread.

## Code Documentation:  
The project will follow a structured approach to document the code at two levels, including high-level documentation and individual functions.

### High-Level Documentation:
A README.md file will be provided at the root of the project repository. This will serve as the primary source of information for setting up, running, and understanding the purpose of the project. The README will include:
- An overview of the project’s goals and objectives.
- Step-by-step instructions for setting up the environment and running the code.
- Descriptions of key files and scripts (e.g., print_kpthesaurus.py, analyse_and_visualize.r, and course_project_main_bash.sh).

### Documentation of Individual Functions and Scripts:
Function-level documentation will be included within each script to ensure clarity and help future users understand how each function works:
- Python: Each Python function will be documented using docstrings that follow the PEP 257 conventions. These docstrings will describe the function’s purpose, input parameters, expected output, and any side effects or exceptions.
- R: Functions in R will be documented using roxygen2 comments, which will provide inline documentation and allow for automated generation of external documentation.
- Bash: Bash scripts will include comments before key sections of the script, explaining their function and any non-obvious logic or commands.

## Testing: 
### Automatic Testing:
- Python: Automated unit tests will be implemented for individual Python modules using testing frameworks like pytest. This will ensure that functions such as case ID extraction, file reading, and data manipulation perform as expected.
- R: For R scripts, testing will be carried out using the testthat package to validate that the data processing and visualization functions behave as expected.
- Bash: While Bash scripts do not have dedicated testing frameworks, some basic tests can be implemented by checking for the correct file outputs and validating input parameters (e.g., whether a file exists or a required argument is provided).

### Testing Intermediate Results
Intermediate results are tested:
- Python Intermediate Results: After extracting case IDs, intermediate results can be saved to temporary files or printed for validation. These intermediate outputs can be manually inspected or cross-verified with expected values.
- R Intermediate Results: Before generating the final PDF plot, R’s internal data can be examined (e.g., through print() or summary()) to ensure the data passed to the plotting function is correct.
- Bash Pipeline: Intermediate steps in the Bash script can be logged and output to console or a log file, enabling real-time feedback and error detection.


## Validation: 
- Theoretical Bounds and Metrics: Given the focus of the project on extracting and visualizing case ID distributions, there are limited theoretical bounds that apply directly to the results. The distribution of case IDs may not follow a strictly defined statistical model (e.g., Gaussian distribution) because the data may contain inherent irregularities. However, basic statistical metrics such as the mean, median, and standard deviation of case frequencies can be compared across files to ensure consistency in the outputs.
- Comparing with Known Distributions: The distribution of case IDs can be compared with any known reference distributions or with other tools that perform similar analyses. If a widely-used benchmark for ECHR case data exists, comparison can be made to ensure that the results fall within an expected range of variability.

## Code and data: 
Data is public available, and thus it can be stored through Github, where it also will be under version control. THe following should be applicable, if the project was made and to a greater extent:
    /root_folder
    ├── data/                       # Contains all raw and processed data files (e.g., .json, .dat)
    ├── src/                        # Contains source code (scripts in Python, R, Bash)
    ├── docs/                       # Documentation files (e.g., README.md, scientific_software_management_plan.md)
    ├── tests/                       # Unit tests and test scripts
    ├── results/                    # Output files (e.g., .dat, .pdf plots, logs)
    └── .gitignore                   # Git ignore file (exclude large files from version control)
- src/ will contain scripts such as print_kpthesaurus.py, analyse_and_visualize.r, and course_project_main_bash.sh, separated by their respective languages.
- docs/ will contain project documentation, such as the README file and the scientific software management plan.
- tests/ will include automated tests for the Python, R, and Bash scripts.
- results/ will store outputs from the analysis pipeline, such as .dat files and .pdf files.

## Version control: 
Github will be used as version control system due to several reasons:
- Pull Requests and Code Review: GitHub's pull request system enables a formal code review process, where collaborators can comment, suggest changes, and approve or reject contributions.
- Forking and Cloning: GitHub makes it easy for external contributors to fork your repository, work on their own copies, and submit changes via pull requests.
- Multiple Contributors: GitHub allows multiple collaborators to work on the same project simultaneously. Each contributor can work on their own branch and submit their changes through pull requests. 
- History of Changes: GitHub keeps a complete record of changes to the project, making it easy to track who made what changes, when, and why. 
- Version Control: GitHub uses Git, a powerful version control system, to manage different versions of your project. You can create branches for new features or bug fixes and merge them into the main project when they are ready.
- Revert Changes: If a change breaks the code or leads to errors, you can easily revert to a previous version of the project using GitHub’s built-in history and commit functionality.
- Private Repositories: GitHub allows you to create both public and private repositories. For private repositories, you can control who has access to the code, ensuring that only authorized collaborators can view or contribute to the project.
- Permissions: GitHub offers fine-grained permission settings, allowing you to specify who can read, write, or administer your repository. 
- Two-Factor Authentication: GitHub supports two-factor authentication (2FA), providing an added layer of security to protect your account and codebase.
- Cost-Effective: GitHub offers free hosting for public repositories. This makes it an excellent choice for open-source projects or personal projects that don’t require private repositories. Even for private repositories, GitHub offers generous free plans, especially for smaller teams.

##  Will you processing include randomness?: 
N/A

## Cleaning of data: 
N/A

## Multiple steps?: 
N/A

# Sharing
## Will you share your code? 
The source code for the project will be made freely available in source code format via a public GitHub repository. This ensures that anyone can access and contribute to the code. The code will not be distributed as binary or bytecode files because the primary goal is transparency and the ability for users to modify the software through pull requests. By providing the source code, the project encourages open collaboration and the potential for further development.
The repository only contain simple descriptive statistics and no algorithms on the data, which is an additional reason for making it publicly available. If it later will contain algorithm and more complex analyses, it will not be made publicly available. 

The intended users of this software are researchers, analysts, and developers interested in working with data from the European Court of Human Rights (ECHR), specifically those who are:
- Interested in analyzing the distribution of case IDs in ECHR data.
- Looking for an accessible tool to extract and visualize case IDs from large .json datasets.
- Professionals working in the field of human rights, law, or social sciences who may use the tool for statistical analysis or data visualization related to court cases.
- Developers who may want to contribute to the project or adapt it for other applications.

Knowledge and Skills of Potential Users
- Basic Python Programming: Since the project involves Python scripts, users should be familiar with Python and its typical workflows for data manipulation and processing.
- Basic R Programming: Since one of the core components of the project uses R for statistical visualization, users should be familiar with R, specifically how to run scripts, work with data frames, and generate plots.
- Basic Bash/Shell Scripting: Understanding basic command-line operations and Bash scripting will help users interact with the provided .sh script that automates the analysis pipeline.
- Data Analysis Skills: Users should be comfortable working with data in .json and .dat formats and interpreting statistical visualizations such as frequency distributions.

## Which publication channel? 
Sharing through Github. A publication could be made on the work to elaborate on the ECHR analyzed data. 
## Who should have access and who will govern access?
Everyone with a Github user can make pull requests. The contributions should be through such. 

## Documentation 
N/A

## Dataset documentation and publication: 
Data is already publicly available.

## Licensing 
Rights to do read and modify (through pull requests).