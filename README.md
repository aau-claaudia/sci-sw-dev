# sci-sw-dev
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

Disclaimer regarding additional .py file: 
# This is a replacement for the .r file. This was created to make the setup for other users mmore feasable and easier. I spent 3-4hrs trying to intall R 4.4.1 so it could work with VS Code - bash but I cant find the solution. I hope this deviation from the task is outweight by the implementation of KISS and FAIR :)

License:
    Please consider the licenses of the used files and libraries. The bash script may be changed to allow for usage of RScript. 

Setting up script:
    Explanation of general Repo-set up, folder structure etc. 
    There are different options to excecute this analysis of the court data. In the following one possible way is explained. 
    First Run: 
    1. download the entire repository to your local machine. 
    2. install Visual Studio Code (during development 1.94.2 was used)
    3. install pandas, matplotlib (e.g. using pip)
    4. make MainScriptEuropeanCourtDataVisualisation.sh excecutable:
        a. navigate to your downloaded folder. Then use cd sci-sw-dev
        b. chmod +x MainScriptEuropeanCourtDataVisualisation.sh
    5. do a testrun with the attached data folder. This might take a while while.
    6. you can follow the progress in prompts in the terminal. After the script is finished a file named dataSummary.pdf will be created in a folder caled ResultFolder.

Other input data:
    If you want to repeat the operation with further or other data: 
    1. add / delete in folder named "data"
    2. consider the requirements for the files. 
        a. "CASE_ID".json eg. 009-111111.json - other file formats will not be considered 
        b. file content: ...;...;
        c. stored in a folder called data