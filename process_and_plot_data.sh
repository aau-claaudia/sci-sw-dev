#! /usr/bin/bash
#
# A BASH script for processing the json data files and plotting the distribution.
# 

# Check if python is installed
if [ x"$(which python)" == x ]; then
	echo "python is not installed."
	exit 1
fi

# Check if R is installed
if [ x"$(which Rscript)" == x ]; then
	echo "Rscript is not installed."
	exit 1
fi

# Check if print_kpthesaurus.py exists
if [ ! -f print_kpthesaurus.py ]; then
	echo "print_kpthesaurus.py does not exists."
	exit 1
fi

# Check if analyse_and_visualise.r exists
if [ ! -f analyse_and_visualize.r ]; then
	echo "analyse_and_visualize.r does not exists."
	exit 1
fi

# Check if data dir exists
if [ ! -d data ]; then
	echo "data directory does not exists."
	exit 1
fi

# if file with case IDs exists, empty it
cat /dev/null > case_ids.dat

# Process the json files and create the dat file.
echo "Processing JSON files."
for file in data/*; do 
	# Extract the case id's from the json file
	ids="$(python print_kpthesaurus.py $file)"

	# Get the filename without .json
	filename="$(basename $file  | cut -d'.' -f1)"

	# Add the filename and case id's to the dat file
	echo "filename;ids" >> case_ids.dat
done

# Plot the distribution using R
echo "Plotting distribution."
Rscript analyse_and_visualize.r case_ids.dat

exit 0
