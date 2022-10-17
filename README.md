# Scientific Software Development

## 1.1 What is this for?

This repository hosts a course project for Aalborg University's Ph.D. course *Tools for Scientific Software Development and Data Science (2022)*.

Consequently, it is just an exercise and is not intended to be used for anything in particular. The scripts within this repo can, however, be used to parse the IDs contained by case documents obtained from the [European Court of Human Rights](https://hudoc.echr.coe.int). 

## 1.2 How is this accomplished

The repository contains two scripts that do most of the heavy lifting:
1. `print_kpthesaurus.py` : A python script that extracts the IDs of each case and print them to stdout. 
2. `analyse_and_visualize.r` : An R script that takes a file containing lines in the form of
    ```
    ...
    001-100023;445
    001-100024;369;304;509;321;216
    ...
    ``` 
    and produces a plot that counts different IDs in a sorted form in the form of a pdf file.

The bash script `extract_ID.sh` combines both scripts, which enables users to parse the IDs contained in the case documents and plot them instantly. 

First, it iterates over a requested number of cases. It calls the python script for each casefile. The IDs are saved in a single *.dat file in `out/dat`. After it is done iterating, the R script generates a *.pdf file in `out/pdf`using the *.dat.

## 1.3 How to run the code

It's very simple! First go into the src directory, then run the bash script:

```
cd src/
./extract_ID.sh
```

This command will generate two files named **kpthesaurus**. A .dat file in `src/out/dat/` and a .pdf file in `src/out/pdf/`.

Additionally the flags `-f` and `-n` can be used to configure how the script is run.

For example, the command

```
./extract_ID.sh -f thirtycases -n 30
```

will generate two files named **thirtycases**. These files will only contain IDs parsed from the first 30 cases.