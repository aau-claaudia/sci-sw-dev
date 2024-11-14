#!/bin/bash

cd /work/T4SSDProject/T4SSD_Course
git config --global user.email “vogo@energy.aau.dk”
git config --global user.name “VicenteOlguínGodoy”
echo “IdentityFile /work/T4SSDProject/.ssh/id_rsa” >> $HOME/.ssh/config

out="processed_data.dat" # creates file to be read by R

if [ -f "$out" ]; then # checks if there was a processed file already there
    rm "$out" # it it existed, it is removed to avoid writing on it
fi

for file in data/*.json; do
    echo "Processing $file" 
    filename=$(basename -- "$file") # separates the file name
    filename="${file%.*}" # removes the extension
    filename="${filename##*/}" # removes elements before a "/" in case it took the path as well
    id=$(python print_kpthesaurus.py $file) # runs the python scripts and stores the IDs in the "id" variable
    echo "$filename;$id" >> $out # writes the filename, a ";" and the variable "id" in the out file
    
done

Rscript analyse_and_visualize.r $out

echo "Done"