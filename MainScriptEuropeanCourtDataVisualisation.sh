# This is the main bash script for the data visualisation of the European Court for Human Rights cases 
#!/bin/bash

# ------ 0. Definitions 
# ------ 0.1 filename / path definitions 
filepathVar="XY" # option tbd, go to folder from somewhere
dataPath="dataTest/"

# ------ 0.2 variables
pfield="kpthesaurus" # needed for python file

# ----- 1. read data -------------------------------------------------------------------------------------
# ----- 1.1 get list of .json file names 

# error: if data folder does not exist or is empty
# Check if the folder exists
if [ ! -d "$dataPath" ]; then
    echo "Folder '$dataPath' does not exist. Aborting script."
    exit 1
fi

# Continue with the rest of your script
echo "Folder '$dataPath' exists. Continuing script..."


# create an array with all the filenames in folder data
    # Change to the dataPath directory
cd $dataPath
    # Get an array of .json filenames without the path or .json extension
DataFiles=($(ls *.json | sed 's/\.json$//'))
    # Change back to the original directory 
cd ..

#### debugging snippet >
# iterate through array using a counter 
for ((i=0; i<${#DataFiles[@]}; i++)); do 
    #do something to each element of array
    echo "${DataFiles[$i]}"
done
#### debugging snippet <

# ----- 1.2 prepare for data extraction
    # Define the directory and filename
directory="ResultFolder"
filenameSummary="dataSummary.json"
filepath="$directory/$filenameSummary"

    # Create the directory if it doesn't exist
mkdir -p "$directory"

# Check if the file exists
if [ -f "$filepath" ]; then
    # Prompt the user for action
    read -p "The file '$filenameSummary' already exists in '$directory'. Do you want to replace it (Y) or stop the script (N)? " choice
    case "$choice" in
        Y|y )
            echo "Replacing the existing file..."
            > "$filepath"  # This will empty the file
            ;;
        N|n )
            echo "Stopping the script."
            exit 1
            ;;
        * )
            echo "Invalid choice. Stopping the script."
            exit 1
            ;;
    esac
else
    # Create a new file if it doesn't exist
    echo "Creating a new file..."
    touch "$filepath"
fi

echo "File is ready for use."
echo "$PWD"

# ----- 1.3 data extraction
echo "Starting Data Extraction"
for ((i=0; i<${#DataFiles[@]}; i++)); do 
    # echo "$i"
    filename=${DataFiles[$i]} 
    # echo "$filename"
    # extract case IDs from .json files 
    #./print_kpthesaurus.py data/001-100865.json
    #result=$(python3 print_kpthesaurus.py "$filename" "$pfield")
    filenPath="${dataPath}${filename}.json"
    result=$(python3 print_kpthesaurus.py "$filenPath")
    FullResult="${filename};${result}"
    echo "${FullResult}" >> $filepath
    ##### todo write results from python script to end of dataSummary.json file 
done 
echo "Finished Data Extraction"



# ----- 2. Visualisation ---------------------------------------------------------------------------------
#echo "Starting Visualisation"
# ----- 2.1 Calling .r script
# Rscript analyse_and_visualize.r $filepath
# ----- 2.2 


#echo "Visualisation Results saved in $filepath"