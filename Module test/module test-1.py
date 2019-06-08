# -*- coding: utf-8 -*-
"""
Created on Fri Jun  7 21:57:53 2019

@author: hzhou
"""
 

import pandas as pd
def vowels_find(string):
    vowels='aeiouAEIOUU'
    count=0
    for s in string:
        if s in vowels:
            count=count+1
    return count
            
sr = pd.Series(['Spyder', 'Anaconda', 'Pycharm', 'Python', 'Jupiter']) 
for items in sr.iteritems():     
   if vowels_find(items[1])>1:
       print(items[0],items[1])
  