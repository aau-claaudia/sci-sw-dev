# sci-sw-dev

Projects of the PhD course Tools for Scientific Software Development and Data Science

## Project Description

Data for this project are from the European Court of Human Rights.(https://hudoc.echr.coe.int/)

The aim of this project was to use a script to automatically extract the IDs of each case and produce a plot of the distribution/count of different IDs in a sorted form.

### Configuration requirements
Requires python 3.8 or newer and R software version 4.2 or newer.

You can install R software from https://cloud.r-project.org

Also you should install tidyverse package in R console with command `install.packages("tidyverse")`

### File directory description

```
filetree 
├── README.md
├── analyse_and_visualize.r   # produce a plot of the distribution/count of different IDs in a sorted form
├── print_kpthesaurus.py      # extract the IDs of each case and print the IDs to standard output.
├── scientific_software_management_plan.md   # Software Management Plan
├── scripts.sh  # Automation scripts for bash
├── /data
│  ├── backend.txt
│  ├── ...
│  └── frontend.txt
├── result.dat    # semicolon-separated file
└── result.pdf    # result plot

```

## Usage

In terminal

(1) `git clone https://github.com/Stwyb/sci-sw-dev.git`

(2) `cd sci-sw-dev`

(3) `bash scripts.sh`

The results of the bash script command execution will be saved in a `result.dat` file and a `result.pdf` file.

### Acknowledgements

Thanks to Thomas Arildsen for providing data and support

### Version control

The project uses Git for versioning. You can see the current available version in the repository.

### How to get involved in open source projects

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request
