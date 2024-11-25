d# sci-sw-dev
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

The purpose of this project is to plot IDs from .json files from the European Court of Human Rights.
In this project is going to be used with updated data, the data can be found from https://hudoc.echr.coe.int/., and should be put into the "data" folder.

The bash script "json-to-dat.sh" runs the json files and outputs them into the "output" folder as dat files using the python file "print_kpthesaurus.py".

The bash script "dat-to-plot.sh" runs the dat files and output them into the "output" folder as plots in the pdf format using the R file "analyse_and_visualize.r".

The bash script "json-to-plot.sh" runs "json-to-dat.sh" and "dat-to-plot.sh" consecutively.


Program versions used:
Python3 version 3.12.2
R       version 4.4.2

