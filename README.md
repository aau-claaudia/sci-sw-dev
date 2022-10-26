# sci-sw-dev
Repository for project in the PhD course Tools for Scientific Software Development and Data Science, by Magnus Vraa Justesen 2022

---

## What can this be used for?
This project analyses data from the [European Court of Human Rights](https://hudoc.echr.coe.int/). \
A histogram is created displaying the distribution of IDs from individual court cases. \
These IDs can for example indicate violations of the law. 

## How is this accomplished?
The *data* folder contains JSON files with information regarding individual court cases. \
The *run_script.sh* runs through all these files, and calls *print_kpthesaurus.py* iteratively. \
*print_kpthesaurus.py* extracts the IDs from a court case. \
The name of each JSON file and corresponding IDs are saved in a semicolon separated file, which is used as input for *analyse_and_visualize.R*. \
*analyse_and_visualize.R* creates a histogram based on the frequency of IDs from the court cases, and saves this as a pdf file. \
All of this is executed in *run_script.sh*. 
## How to run the code?
*run_script.sh* can be run as follows from a terminal (assuming you are in the folder containing *run_script.sh*):

`./run_script.sh` 

The resulting data file and histogram will be named tmp.txt and tmp.pdf, respectively.

**OR, additional control is provided by using flags -f and -o**

`./run_script.sh -f filename.txt -o 0`

Where -f denotes the filename of the constructed data file to contain JSON filenames and corresponding IDs. \
The resulting pdf will be named [filename].pdf. \

-o can be set as 0 or 1, denoting whether the data file should be overwritten – that is constructed from scratch, if the file does not already exist.\
If a data file has already been constructed, and the histogram should be displayed based on this, then -o should be set to 0 indicating no overwriting. \
The -o parameter is set to 1 as default. 
