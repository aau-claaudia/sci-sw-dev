# Scientific Software Management Plan

# Overview

Project Title:
Vitrum

## Main researcher: 
Rasmus Christensen

## Research leader: 
Morten Mattrup Smedskjær

## Collaborators: 
N/A

## Project contact: 
rasmusc@bio.aau.dk
mos@bio.aau.dk

## Related document(s): 
To our knowledge there are no requirements or policies from funding agencies, collaborators or institute for the software.

# Planning the project

## Purpose
Implementation of various analysis methods commonly used for disordered and glassy material atomic structures.


## Where will code exist during project?: 
The code is stored in a public GitHub repository (https://github.com/R-Chr/vitrum)

## Software development: 
The code is written in Python. The code is developed in an ad-hoc manner, implementing analysis methods as they are needed in various research projects. The code so far only has one developer, Rasmus Christensen, and is therefore not peer-reviewed. Issues and bugs are handled either by contacting Rasmus Christensen personally or through posting on the GitHub issue tracker.

## Programming languages:
The package is written in Python 3.x. The code is set up as a Python package, and is therefore easily installable and usable by other Python scripts. The code only uses open-source packages and is therefore free of cost. Most of the code is platform independent, but a subset of functionalities are not available on Windows due to third party package dependencies.

## Methods: 
The code implements a number of different custom methods for analyzing disordered and glassy material structures. The methods are described in the documentation, and are available for use in the package. Most of the methods are implemented using standard Python packages such as NumPy, SciPy, and Pandas. Additionally the code heavily relies on the Atomic Simulation Enviroment to handle atomic structure data.

## Code Documentation: 
Documentation of the package is hosted on [Read The Docs](https://about.readthedocs.com/) using [MkDocs](https://www.mkdocs.org/): https://vitrum.readthedocs.io/en/latest/. 
Most classes and functions are documented using docstrings, and changes to classes and function are automatically updated when pushed to main, through the use of MkDocstrings. 


## Testing: 
The code does currently not include any testing. A test suite is planned to be added in the future to test the code against a set of test cases. The software will not be compared with similar software, as most analysis methods developed are not available in other software packages.

## Validation: 
N/A

## Code and data: 
The code is installed as a Python package, and only consists of small python scripts which are not a concern in terms of storage. Data which will be used in the analysis with the package will be provided by the user of the package, and is not part of the code.

## Version control: 
Version control is done through GitHub, and the code is hosted on GitHub at https://github.com/R-Chr/vitrum. The code will be versioned and tagged, and available for download through GitHub releases when the first stable version is released.

# Processing data

##  Will you processing include randomness?: 
Most of the analysis methods are deterministic, and therefore the results can be reproduced. Some methods however are stochastic, however for these methods the option to set a seed is provided, to ensure reproducibility.

## Cleaning of data: 
Data cleaning is not part of the package, and is therfore not applicable to discuss.

## Multiple steps?: 
N/A

# Sharing
## Will you share your code? 
The code is openly shared on GitHub at https://github.com/R-Chr/vitrum. The intended users of the package are computational material science researchers interested in analysis of disordered and glassy material structures. The prerequisite for using the package, is that the user has a basic understanding of Python programming. In the documentation for the code installation instructions are provided on how to install the package. Furthermore a Quickstart guide is provided to help users get started with the package. The package includes contact information for the main developer, Rasmus Christensen, who is the primary contact for questions and issues. The level of support provided will depend on schedule and availability of the developer. The level of usage will not be measured, as the package is intended mostly for internal use within the research group. Currently the package is published in any journal or conference, and is not peer-reviewed, to cite the software please cite the GitHub repository. The software will be referenced in future scientific publications, which can be cited in the future.

## Which publication channel? 
The code is published through GitHub, and will be available for download through the GitHub website. The platform can accommodate the size of the project, and does not have any fees.

## Who should have access and who will govern access?
The code is available to the public through Github. The code will not be restricted in any way, and will be available for download and use by anyone.

## Documentation 
All code is publicly available on GitHub, and the documentation is hosted on Read The Docs.

## Dataset documentation and publication: 
N/A

## Licensing 
The code is licensed under the MIT license, and is available for free use. The code is not restricted in any way, and can be used by anyone.

