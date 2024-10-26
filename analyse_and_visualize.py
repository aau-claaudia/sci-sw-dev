# This is a replacement for the .r file. This was created to make the setup for other users mmore feasable and easier. I spent 3-4hrs trying to 
# intall R 4.4.1 so it could work with VS Code - bash but I cant find the solution. I hope this deviation from the task is outweight 
# by the implementation of KISS and FAIR :)

import sys
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Check if there is at least one argument
if len(sys.argv) < 2:
    print("You must include a .dat file to process")
    sys.exit(1)
else:
    filename = sys.argv[1]

# Read the data from the file
df = pd.read_csv(filename, sep=';', header=None, names=['docid'] + [f'kpt{i}' for i in range(1, 21)], engine='python')

# Reshape the dataframe to a long format and drop NaN values
dftidy = df.melt(id_vars=['docid'], value_vars=[f'kpt{i}' for i in range(1, 21)], var_name='kpt', value_name='id').dropna(subset=['id'])

# Group by 'id' and count occurrences
count_df = dftidy.groupby('id').size().reset_index(name='Count')

# Sort by 'Count' in descending order and add an index column
count_df = count_df.sort_values(by='Count', ascending=False).reset_index(drop=True)
count_df['idx'] = np.arange(1, len(count_df) + 1)

# Plot the data
plt.figure(figsize=(10, 6))
plt.plot(count_df['idx'], count_df['Count'], marker='o')
plt.yscale('log')
plt.xlabel('Sequentially ordered')
plt.ylabel('Kpthesaurus Count (log-scale)')
plt.title('Kpthesaurus Number Occurrences')
plt.grid(True)
plt.tight_layout()

# Save the plot to a PDF file
plot_filename = f"{filename.split('.')[0]}.pdf"
plt.savefig(plot_filename)

