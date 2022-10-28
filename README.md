# sci-sw-dev
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science


What this can be used for 

This is for the project of the European Court of Human Rights.
The purpose is to extract the IDs from lots of file automatically and plot the IDs distribution.




How this is accomplished

1. Read the data from each '.json' file under the 'data' folder, and get the IDs of each '.json' file.  
2. Create a matrix to store the IDs from all '.json' file. 
3. Sort the ID in ascending order.
4. Get the frequency of appearance of each ID. 
5. Write the results into 'result.txt'.
5. Plot a bar chart of frequency with ID. 




How to run

1. Clone the repository. (https://coderefinery.github.io/git-collaborative/centralized/)
2. run bash script 'bash.sh'.(The default input is all '.json' file under the 'data'folder.)


