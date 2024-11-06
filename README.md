# sci-sw-dev
# Repository for projects in the PhD course Tools for Scientific Software Development and Data Science
This is the repository for Emil Korsgaard from the course project in PhD course Tools for Scientific Software Development and Data Science.

This project aims to analyze the distribution of case IDs from the European Court of Human Rights (ECHR) data files. The project pipeline processes `.json` case files, extracts case IDs, compiles them, and visualizes the distribution in a plot.

## Project Structure
The project includes the following key components:

### 1. `data` folder
Contains `.json` files with data from the European Court of Human Rights. Each file is named with a document ID and includes one or more case IDs. It is these case IDs we are interested in extracting and analyze the distribution og these case IDs.

### 2. `scientific_software_management_plan.md`
A documentation file that provides the software management plan for the entire project, detailing the approach, tools, and workflows used also with focus on the FAIR principles.

### 3. `print_kpthesaurus.py`
A Python script that reads a `.json` file from the `/data` folder. Based on the file, the python script extracts the case IDs, and outputs the document ID (filename) along with the extracted case IDs in a semicolon-separated string format. 
This script is used as a helper tool to gather case IDs from each file.

#### Usage (bash format)
python print_kpthesaurus.py <input_json_file>

### 4. `analyse_and_visualize.r`
An R script that takes a .dat file as input and generates a plot showing the distribution of case IDs. The output is saved as a .pdf file.

#### Usage (bash format)
Rscript analyse_and_visualize.r <input_dat_file>

### 5. `course_project_main_bash.sh`
A Bash script that orchestrates the entire process, from extracting case IDs from the .json files to generating the final plot.

#### Workflow:
1. Iterates over each .json file in the data folder
2. For each file do:
    - Use print_kpthesaurus.py script to extract case IDs from file
    - Writes the filename for extracted case IDs to .dat file (semicolon separated as the R script needs that as input)
3. Once all case IDs are compiled in the .dat file, the script invokes analyse_and_visualize.r to generate a .pdf plot showing the distribution of case IDs.

#### Usage (bash format)
Make sure all scripts have executable permissions:
chmod +x course_project_main_bash.sh
Then run code:
./course_project_main_bash.sh

#### Output 
- .dat file: A semicolon-separated text file with each line containing a filename and its corresponding case IDs.
- .pdf file: A visual representation of the distribution of case IDs across all files in /data.

### Prerequisites
#### Software
- Python 3.x: Required to run print_kpthesaurus.py.
- R: Required to run analyse_and_visualize.r.
- Bash script environment (MobaXterm, Git Bash or similar): To execute course_project_main_bash.sh.

### Example workflow
1. Run the bash script with the command ./course_project_main_bash.sh to execute the whole pipeline 
2. Check the generated .dat file to confirm the case IDs were extracted.
3. View the .pdf file to analyze the distribution of case IDs.
