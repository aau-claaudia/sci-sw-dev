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





    
# if __name__ == '__main__':
#     parser = argparse.ArgumentParser(description='Process ECHR file and get the distributions.')
#     parser.add_argument('filename', type=str,
#                     help='filename')

#     args = parser.parse_args()

    # ID = process(args.filename)
    
file_name = os.listdir('C:/Users/BC51JO/sci-sw-dev/data') # list all files 
ID_mat = []
for file in file_name:
    path = 'data/' + file # path of all files        
    # ID = process(args.filename)
    ID = (process(path)) 
    ID_mat = ID_mat + ID

ID_mat = list(filter(None, ID_mat))
ID_mat = [int(ID) for ID in ID_mat]
print(ID_mat)
result = Counter(ID_mat)
# print(result)
results = sorted(result.items())
# print(results)

fw = open("./result.txt", 'a')  # create .txt and store the results
fw.write("ID: Frequency of  appearance")  
fw.write("\n")   

x = []
y = []
for i in results:
    x.append(i[0])
    y.append(i[1]) 
    a = str(i[0]) + ": " + str(i[1]) 
    fw.write(a)  
    fw.write("\n") 
fw.close()
# x = result.keys()
# y = result.values()
     

# for i,j in zip(x,y):
    


# fw.close()

# plt.figure(figsize=(11, 7), dpi=900)
# plt.tight_layout()
# plt.gca().xaxis.set_major_locator(ticker.MultipleLocator(50))  
# plt.xlabel('kpthesaurus IDs')
# plt.ylabel('Frequency')
# plt.bar(x, y) 

# figname = 'fig_kpthesaurus_distribution.pdf'
# figname2 = 'fig_kpthesaurus_distribution.png'

# plt.savefig(figname, format='pdf',dpi=900,bbox_inches='tight', pad_inches=0)
# plt.savefig(figname2, format='png',dpi=900,bbox_inches='tight', pad_inches=0)







    
