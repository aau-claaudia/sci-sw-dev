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
    file_name = args.filename # list all files  
# file_name = 'C:\\Users\\BC51JO\\sci-sw-dev\\data\\001-64730.json'
    if os.path.isdir(file_name):
        filename = os.listdir(file_name)
    elif os.path.isfile(file_name):
        filename = os.path.dirname(__file__) 
    # print(filename)
    ID_mat = []
    for file in filename:
        path =  file_name + file 
        ID = process(path)
        ID_mat = ID_mat + ID
    
    ID_mat = list(filter(None, ID_mat))
    ID_mat = [int(ID) for ID in ID_mat]
    # print(ID_mat)
    result = Counter(ID_mat)
    # print(result)
    results = sorted(result.items())
    x = result.keys()
    y = result.values()
    # print(results)
        # print('IDs:' + () + ',' +  'frequency:' + y)
        
        
      
    
    
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
    # plt.rcParams['figure.figsize'] = (8.0, 4.0)
    






    
