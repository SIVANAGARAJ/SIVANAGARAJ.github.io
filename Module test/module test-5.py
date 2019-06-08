# -*- coding: utf-8 -*-
"""
Created on Sat Jun  8 12:39:10 2019

@author: hzhou
"""
def isStepNumber(n):
    N = str(n).rstrip();
    flag = 1;
  
    for i in range(len(N)-1):
        if(abs(int(N[i]) - int(N[i+1])) != 1):
            return False;
             
    if(flag == 1):
        return True;
    else:
        return False;

     
    

def findNextStepNumber(n):
     if (isStepNumber(n)) :
         print(n)
     else:
          findNextStepNumber(n+1)
      
      
findNextStepNumber(132)
 