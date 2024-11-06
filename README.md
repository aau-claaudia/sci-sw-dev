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



#### Usage
```bash
python print_kpthesaurus.py <input_json_file>