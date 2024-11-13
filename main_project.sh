
#!/bin/bash


# Loop over each JSON file in the directory
for json_file in data/*.json; do
  filename=$(basename "$json_file" .json)
  
  echo "Processing $json_file..."
  # Step 1: Run the Python script with the JSON file as input and append the output to the consolidated file
  output=$(python print_kpthesaurus.py "$json_file")

  echo "$filename;$output" >> output_file.dat
done

# Step 2: Run the R script, passing the consolidated output file as an argument
Rscript analyse_and_visualize.R output_file.dat

