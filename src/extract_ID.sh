
# use flag -f to set a filename for the outputs
while getopts f: flag 
do
    case "${flag}" in
        f) filename=${OPTARG};;
    esac
done

if [[ -z $filename ]]; then # if no filename is set
    filename=kpthesaurus    # use "kpthesaurus"
fi

touch ./out/dat/$filename.dat   # touch new file
> ./out/dat/$filename.dat       # clear file

for entry in ../data/*.json
    do  
        # get filename and remove extension
        casefile="${entry##*/}"; casefile="${casefile%.*}" 

        # run python script
        output=$((python3 scripts/print_kpthesaurus.py "$entry") 2>&1)

        # combine this case's filename name with the extracted IDs
        echo "$casefile;$output" >> out/dat/$filename.dat
    done

# run the R script to produce the plot
Rscript scripts/analyse_and_visualize.r out/dat/$filename.dat

# move the pdf file to the appropriate directory
mv out/dat/$filename.pdf out/pdf/$filename.pdf