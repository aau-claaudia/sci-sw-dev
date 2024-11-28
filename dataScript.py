import os
import json

def process(filename, pfield='kpthesaurus'):
    """Process the JSON file and return the IDs."""
    with open(filename, 'r') as f:
        jsondata = json.load(f)
        return jsondata.get(pfield, [])

def main():
    data_folder = 'data'
    output_file = 'data.dat'
    
    # List all .json files in the data folder
    json_files = [f for f in os.listdir(data_folder) if f.endswith('.json')]
    
    with open(output_file, 'w') as outfile:
        for json_file in json_files:
            file_path = os.path.join(data_folder, json_file)
            ids = process(file_path)
            # Format the output as required
            outfile.write(f"{json_file[:-5]};{';'.join(map(str, ids))}\n")  # Remove .json from filename

if __name__ == '__main__':
    main()
