Scientific Software Management Plan
A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following Data Management Plan and Software Management Plan

Overview
Project Title: Modelling the effect of electrothermal balanced operation on product formation in SOECs through microkinetics

Main researcher:
Ifrah Akhtar

Research leader:
Soren Jensen

Collaborators:
CAPeX, DTU, Dynelectro

Project contact:
ifak@energy.aau.dk

Related document(s):
N/A

Planning the project
Purpose
The scientific software being developed is intended to model the kinetic behavior of water and related reactions in a Solid Oxide Electrolysis Cell (SOEC) system. The main research theme is how do various kinetic factors and reactions affect the efficiency and performance of SOECs under different operating conditions? The software will aim to simulate and predict the behavior of various species involved in the reactions and provide insights into reaction rates, concentration profiles, and temperature effects.
We will use a combination of theoretical and computational modeling techniques, relying on differential equations (e.g., rate equations) to represent chemical reactions. The kinetic model will be implemented using numerical methods such as the Runge-Kutta method or implicit solvers (e.g., solve_ivp in Python) to simulate the time evolution of species concentrations.


Where will code exist during project?:
The code will be stored in a Git repository (e.g., GitHub or GitLab) to facilitate version control and collaborative work (if applicable). Regular backups will be made through the platform’s backup mechanisms or using local backup systems. Collaborators will have access to the code via private repository links and will contribute via pull requests.

Software development:
The software will follow an ad-hoc development approach initially but will evolve into a more formal system as the complexity of the model increases. The code will undergo peer review (either informal within the research team or through external collaboration). Issue tracking will be managed through GitHub Issues or a similar tool to track bugs, feature requests, and improvements. We will ensure the trustworthiness of the results through extensive testing, validation, and comparison with known theoretical models and experimental data where possible.

Programming languages:
Primary language used is Python, due to its strong support for scientific computing (with libraries such as NumPy, SciPy, matplotlib, and pandas).The code will include scripts to automate the running of simulations with varying parameters and initial conditions. PyCharm or VSCode will be used as the integrated development environment (IDE) for ease of coding and debugging. The code will be cross-platform compatible (Windows, Linux, macOS) using Python’s virtual environments to manage dependencies. The code will be available as open-source, and the software dependencies (including Python packages) will be clearly documented. the coding style will be Python's PEP 8.

Methods:
The primary methods used are kinetic modeling and numerical simulation. Statistical methods for error analysis (e.g., confidence intervals) will also be employed. Most of the models will be based on existing literature, but custom rate equations will be derived for specific reactions. Off-the-shelf methods from SciPy and other Python libraries will be heavily used.

Code Documentation:
The software will be documented with a README file to describe the project, installation instructions, and usage examples. Inline documentation for each function and class, explaining their purpose, inputs, outputs, and algorithms used. Automatic documentation generation using tools like Sphinx or pdoc to generate HTML documentation from docstrings.

Testing:
The software will be systematically tested with unit tests for individual functions and integration tests for the full system. The testing will include unit tests using unittest or pytest to test small components of the model.
Ad-hoc testing for edge cases and experimental setups. Validation tests will be performed by comparing the outputs to theoretical expectations or experimental data from literature.

Validation:
Validation will include comparison with known models or experimental data to ensure accuracy. Simplification of the model to check for theoretical bounds. Simulating simplified cases where theoretical results are known, ensuring that the results match expected trends.

Code and data:
The code will be organized in a directory structure that separates core functionality (e.g., kinetics, simulation, plotting) from documentation and test files. Data will be stored in a separate directory or external database (e.g., SQLite for smaller datasets, or PostgreSQL for larger data). Data will be version-controlled with clear metadata for each dataset.

Version control:
The code will be managed using Git with a private repository on GitHub or GitLab. The reasons for choosing Git are its widespread adoption, distributed nature, and ability to integrate with CI/CD pipelines.

Processing data
The simulations may involve stochastic processes (e.g., Monte Carlo methods) for uncertainty quantification. In this case, the random seed will be saved and used for reproducibility.

Cleaning of data:
Pre-processing will involve cleaning and formatting experimental data before fitting it into the model. Methods for cleaning will include removing outliers, normalizing data where necessary.
The cleaning process will be documented, and the code for cleaning will be made available for reproducibility.

Multiple steps?:
The model will involve multiple steps (e.g., defining rate equations, solving the system of ODEs, and post-processing results). Automation through scripts will ensure reproducibility.

Sharing
The code will be shared on a public repository (e.g., GitHub), where users will be able to clone the repository and contribute, use the software as-is or modify it. Intended users can include researchers and engineers in the field of electrochemical modeling, particularly those working on SOECs. A little support will be provided (via email or GitHub issues). Users are expected to have basic knowledge of Python and SOECs. Users will be encouraged to cite the corresponding publication

Which publication channel?
The code will be published on GitHub with a DOI linked to the publication (if applicable). If the publication goes through an open-access platform like AAU’s VBN repository, a DOI will be generated.

Who should have access and who will govern access?
Access to the repository will initially be public for transparency. After the project is complete, access will remain open unless restrictions are required. Governance will remain with the project lead (Ifrah Akhtar) and will involve regular code reviews

Documentation
The article will serve as the primary documentation of the model's methodology and results. The software documentation (e.g., README, function docstrings) will provide additional context. Dependencies on external programs and packages will be clearly noted.

Dataset documentation and publication:
If datasets are collected or generated FAIR principles will be followed to ensure Findability, Accessibility, Interoperability, and Reusability. Dataset documentation will include metadata and descriptions of experimental conditions.

Licensing
The software will be licensed under the MIT License, and others will be grant right to copy and distribute the code, modify the code and use it in other projects. The license will be clearly stated in the repository and at the top of relevant files.