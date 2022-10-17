#!/bin/bash

while getopts n:f: flag 
do
    case "${flag}" in
        n) nCases=${OPTARG};;   # use flag -n to set a maximum
                                # number of cases to inspect
        f) filename=${OPTARG};; # use -f to set a filename 
                                # for the  outputs
        ?) 
        echo "usage: `basename "$0"` [-f output file] [-n integer] " >&2
        exit 1
        ;;  
    esac
done

if [[ -z $filename ]]; then # if no filename is set
    filename=kpthesaurus    # use "kpthesaurus"
fi

touch ./out/dat/$filename.dat   # touch new file
> ./out/dat/$filename.dat       # clear file

i=0

for entry in ../data/*.json 
    do  
        # get filename and remove extension
        casefile="${entry##*/}"; casefile="${casefile%.*}" 

        # run python script
        output=$((python3 scripts/print_kpthesaurus.py "$entry") 2>&1)

        # combine this case's filename name with the extracted IDs
        echo "$casefile;$output" >> out/dat/$filename.dat

        ((i++))

        if [[ $i -eq $nCases ]] ; then # reached no. of requested cases
            break                      # stop iterating
        fi
    done

# run the R script to produce the plot
Rscript scripts/analyse_and_visualize.r out/dat/$filename.dat

# move the pdf file to the appropriate directory
mv out/dat/$filename.pdf out/pdf/$filename.pdf