# This is a replacement for the .r file. This was created to make the setup for other users mmore feasable and easier. I spent 3-4hrs trying to 
# intall R 4.4.1 so it could work with VS Code - bash but I cant find the solution. I hope this deviation from the task is outweight 
# by the implementation of KISS and FAIR :)

import pandas as pd
import matplotlib.pyplot as plt
import sys

def process_file(filename):
    # Read the data from the file
    with open(filename, 'r') as file:
        data = file.readlines()
    
    # Parse the data into a list of dictionaries
    parsed_data = []
    for line in data:
        parts = line.strip().split(';')
        docid = parts[0]
        kpts = parts[1:]
        parsed_data.append([docid] + kpts + [None] * (20 - len(kpts)))
    
    # Convert the parsed data to a DataFrame
    df = pd.DataFrame(parsed_data, columns=['docid'] + [f'kpt{i}' for i in range(1, 21)])
    
    # Transform the data using melt and dropna
    dftidy = df.melt(id_vars=['docid'], value_vars=[f'kpt{i}' for i in range(1, 21)], var_name='kpt', value_name='id').dropna(subset=['id'])
    
    # Group by 'id' and summarize the count
    summary = dftidy.groupby('id').size().reset_index(name='Count')
    
    # Sort by 'Count' in descending order and add 'idx' column
    summary = summary.sort_values(by='Count', ascending=False).reset_index(drop=True)
    summary['idx'] = summary.index + 1
    
    # Generate the plot
    plt.figure(figsize=(10, 6))
    plt.plot(summary['idx'], summary['Count'])
    plt.yscale('log')
    plt.xlabel('Sequentially ordered')
    plt.ylabel('Kpthesaurus Count (log-scale)')
    plt.title('Kpthesaurus Count Plot')
    plt.grid(True)
    
    # Save the plot as a .pdf file
    plot_filename = filename.split('.')[0] + '.pdf'
    plt.savefig(plot_filename)
    print(f"Plot saved as {plot_filename}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("You must include a .dat file to process")
        sys.exit(1)
    
    filename = sys.argv[1]
    process_file(filename)