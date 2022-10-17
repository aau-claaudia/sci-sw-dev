
while getopts f: flag
do
    case "${flag}" in
        f) filename=${OPTARG};;
    esac
done

if [[ -z $filename ]]; then
    filename=id-list.dat
fi

touch ./out/dat/$filename.dat
> ./out/dat/$filename.dat

for entry in ./data/*.json
    do  
        # get filename and remove extension
        casefile="${entry##*/}"; casefile="${casefile%.*}" 

        # run python script
        output=$((python3 ./src/scripts/print_kpthesaurus.py "$entry") 2>&1)

 
        echo "$casefile;$output" >> ./out/dat/$filename.dat
    done

Rscript ./src/scripts/analyse_and_visualize.r ./out/dat/$filename.dat
mv .pdf ./out/pdf/$filename.pdf