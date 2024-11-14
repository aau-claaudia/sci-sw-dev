# sci-sw-dev
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

# Description

## Context
The project aims to develop a workflow that "glues" a Python and an R script for the processing of data. The amount of data leads to think of an automated way of doing it as doing it manually would be very time consuming.

For that, a bash script was developed. Both Python and R scripts were provided, as well as the data.

## Problem proposed
We are interested in analysing some data from the European Court of Human Rights https://hudoc.echr.coe.int/.
The system uses an approach where each document/case is tagged with some IDs that correspond to different keywords in a vocabulary, e.g., ID “2” corresponds to “(P6-1) Abolition of the death penalty”
We are interested in looking at the distribution, or maybe more accurately, how often different IDs are mentioned.

# Usage

To make use of the repository, Python and R are required.

To analyse, clone the repository, set the path to the folder in which the repository is and run the bash script as follows: ./vogo.sh

This performs the analysis and results in a .dat file and a .pdf with a plot of the distribution.

# Declaration

Bash script developed by VOGO