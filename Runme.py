# -*- coding: utf-8 -*-
"""
Created on Fri Oct 28 14:31:41 2022

@author: Ming Yao
"""




import argparse
import json
import os
from collections import Counter
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker

def process(filename, pfield='kpthesaurus'):
    with open(filename, 'r') as f:
        jsondata = json.load(f)
        # print(jsondata[pfield])
        ID = str(jsondata[pfield]).split(';')
        return ID 





    
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Process ECHR file and get the distributions.')
    parser.add_argument('filename', type=str,
                    help='filename')

    args = parser.parse_args()
    file_name = args.filename # input 'data' file
    
    # get all '.json' file under 'data' folder. 
    if os.path.isdir(file_name):
        filename = os.listdir(file_name) 
    elif os.path.isfile(file_name):
        filename = os.path.dirname(__file__) 
    # print(filename)
    # create matrix to store IDs
    ID_mat = []
    for file in filename:
        path =  file_name + file 
        ID = process(path)
        ID_mat = ID_mat + ID
        
    
    ID_mat = list(filter(None, ID_mat)) #delete the ID which is empty
    ID_mat = [int(ID) for ID in ID_mat] # transform the ID type to int 
    result = Counter(ID_mat)  # get the frequency of each ID
    results = sorted(result.items()) # sort the IDs in ascending order
    
    
    
    fw = open("./result.txt", 'a')  # create .txt and store the results
    fw.write("ID: Frequency of  appearance")  
    fw.write("\n")   

    x = [] # used to plot
    y = [] # used to plot
    for i in results:
        x.append(i[0]) # ID
        y.append(i[1])  # frequency
        a = str(i[0]) + ": " + str(i[1]) # results to .txt file. 
        fw.write(a)  # write into .txt file. 
        fw.write("\n") 
    fw.close()
    
    
    # plot the distributions of IDs    
    plt.figure(figsize=(6, 4), dpi=100)
    plt.tight_layout()
    plt.gca().xaxis.set_major_locator(ticker.MultipleLocator(50))  
    plt.xlabel('kpthesaurus IDs')
    plt.ylabel('Frequency')
    plt.bar(x, y) 
    
    figname = 'fig_kpthesaurus_distribution.pdf'
    figname2 = 'fig_kpthesaurus_distribution.png'
    
    plt.savefig(figname, format='pdf',dpi=900,bbox_inches='tight', pad_inches=0)
    plt.savefig(figname2, format='png',dpi=900,bbox_inches='tight', pad_inches=0)
    plt.show()
    






    
