touch all_ids.dat
echo Running Script

for file in data/*.json
do
	id=$(python print_kpthesaurus.py $file)
	file_name=$(basename $file)
	start_txt="${file_name%.*}" 
	echo "$start_txt;$id" >> all_ids.dat
done

echo Done Script
