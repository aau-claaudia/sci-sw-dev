#!/bin/bash

# Get inputs:

while getopts "f:o:" opt
do
   case "$opt" in
      f ) filename="$OPTARG" ;;
      o ) overwrite="$OPTARG" ;;
      #? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# If no inputs were received, set them to default values:
if [[ -z $filename ]]; then
   echo "Filename is by default set to tmp.txt, as no input was provided."
   echo "This can be set using flag -f."
   filename="tmp.txt"
fi

if [[ -z $overwrite ]]; then
   echo "Overwrite is by default set to 1, as no input was provided."
   echo "This can be set using flag -o. (Use 0 or 1 as input)."
   overwrite=1
fi




# Create file for containing filenames and IDs of data
# This is to be used for the R script analyse_and_print.r
# If overwrite == 0, then the existing file denoted in filename is used as is.
if [[ $overwrite != 0 ]];then
  # Overwrite existing content - if any:
  > $filename
  echo "Overwriting content in $filename" 

  

#echo "Creating data file called $filename"

   # Used to shorten run time during development:
  i=0
  max_count=100


  for file in data/*.json
  do 
    ((i=i+1))
    #echo "$i"

    if [[ $i -gt $max_count ]]; then 
       echo "STOP"
       break
    fi
   # echo $file
    
    ids=`python3 print_kpthesaurus.py $file`
    
    echo "${file};${ids}" >> $filename 

    #echo $ids 
  done
else
  # Use existing file
  echo "Using existing content in $filename"
fi
echo "------------------------------"
echo "Running analyse_and_visualize.r"

Rscript analyse_and_visualize.r $filename


echo '------ DONE ------ '


