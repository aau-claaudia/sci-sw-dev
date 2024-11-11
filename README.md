# sci-sw-dev

# Workflow/pipeline:

## Use:
The scripts found herein can be used to process the IDs of documents/cases from the European Court of Human Rights. The aim is to find out how often different IDs are mentioned in the documents.
The data is is stored in JSON files in the `data` directory, where each file contains a document/case and its respective IDs.
The Python script `print_kpthesaurus.py` is used to process each JSON file and extract the IDs.
The output is saved in a single file `all_ids.txt`, where each line contains the file ID and its respective output.
Finally, an R script `analyse_and_visualize.r` is used to analyze and visualize the aggregated results.

## How to run:
1. Clone the repository to your local machine.
2. Open a terminal and navigate to the repository directory.
3. Run the `run.sh` script

## Requirements:
The code is written in Bash, Python, and R. The following are required to run the code:
- Bash
- Python 3.x
- R with the `tidyverse` package installed


# Scientific Software Management Plan:

A Scientific Software Mangement Plan is included in the `scientific_software_management_plan.md` file. The plan describes the mangement of the Vitrum python package currently in development by Rasmus Christensen.