# -*- coding: utf-8 -*-
"""
Created on Sat Jun  8 13:59:33 2019

@author: hzhou
"""
#a
array=[1,6,4,9,1,5,4]
OuArray=[]
for elem,next_elem in zip(array, array[1:]+[array[0]]):
    temp=elem
    OuArray.append(temp)
    #print(OuArray)
    block=True
    while block:         
        if ((temp+1) % 3 == 0):
            OuArray.append(temp+1)
            block=False;
        temp=temp+1
    
    
print(OuArray) 

#b
import numpy as np
tempArray=[]
temp=''
for elem,next_elem in zip(OuArray, OuArray[1:]+[OuArray[0]]):
    if temp!=elem:
        tempArray.append([elem,next_elem])
        temp=next_elem
 
nparray=np.array(tempArray)
print(nparray)

#c
import numpy as np
import pandas as pd
dataset = pd.DataFrame({'A':nparray[:,0],'B':nparray[:,1]},)
print(dataset)