# -*- coding: utf-8 -*-
"""
Created on Mon May 20 16:43:45 2019

@author: Training29
"""
###1.

import random
print("Random number between 0 and 100 : ", random.randrange(0, 100,3))
            
###2.

def GenerateFibonaci(x):

 if(x == 0):
  return 0

 elif(x == 1):
  return 1

 else:
  return GenerateFibonaci(x-1) + GenerateFibonaci(x-2)

#main 

x = int(input("Enter the term till which you wnat to generate fibonacci sequence: "))

for i in range(x):
 print(GenerateFibonaci(i))
           
     ###3
     
     ###to add two complex numbers###
     a=1+2j
     b=2+4j
     print('Addition =',a+b)
     
     ###4 write a function without using def keyword ###
     
     g = lambda x: x*x*x 
print(g(7)) 
### OR Return ODD Number ###

li = [5, 7, 22, 97, 54, 62, 77, 23, 73, 61] 
final_list = list(filter(lambda x: (x%2 != 0) , li)) 
print(final_list) 


        