# sci-sw-dev
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

## Project description
The purpose of the project is to anyalyse the case ids from the
European court of human rights and the plot a distribution of the
case id's. There is python script which extracts the case id's
from json file and an R script that given the case id's is a
specic format, plots the distribution of the case ids. As part of
the course project we developed a BASH script pipeline, which
uses the python script to extract the case id's, create a dat
file, which arranges the case id's and filename in the format
required for the R script and then finally exceute the R script
with the created file.

## Requirements
The project uses python, R and bash script. The provided bash
script is used to automate the entire process. The pojects
depends on python, R and the R package tidyverse.

## Usage
Clone the repository, change to the project directory and run the bash script.

`git clone https://github.com/Stwyb/sci-sw-dev.git
cd sci-sw-dev
bash process_and_plot_data.sh
`


