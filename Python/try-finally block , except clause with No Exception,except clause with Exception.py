# -*- coding: utf-8 -*-
"""
Created on Mon Jun  3 10:04:36 2019

@author: Training29
"""

### 1. Write the syntax for try-finally block.
try:  
    # block of code   
    # this may throw an exception  
finally:  
    # block of code  
    # this will always be executed
### or
try:
   f = open(' ')
   # perform file operations
finally:
   f.close()
   
### 2. Write a python program for except clause with exception.

try:  
    #this will throw an exception if the file doesn't exist.   
    fileptr = open("file.txt","r")  
except IOError:  
    print("File not found")  
else:  
    print("The file opened successfully")  
    fileptr.close()
    
### 3.  Write a python program for except clause with multiple exception
    
try:    
    a=3/0;    
except (ZeroDivisionError, ArithmeticError):    
    print ("Arithmetic Exception")    
else:    
    print ("Successfully Done")
    
## 4.  Write a python program for raising an exception using raise clause.
    
try:  
    age = int(input("Enter the age?"))  
    if age<18:  
        raise ValueError;  
    else:  
        print("the age is valid")  
except ValueError:  
    print("The age is not valid")
    
## 5. . Write a python program for user defined exceptions.
    
class BFoundEx(Exception):
    
   def __init__(self, value):
       self.par = value
   
   def __str__(self):
       return "BFoundEx: b character found at position {0}".format(self.par)
       
string = "There are beautiful trees in the forest."

pos = 0

for i in string:
    try:
    
        if i == 'b':
            raise BFoundEx(pos)
        pos = pos + 1
    
    except BFoundEx as e:
        print(e)
        
### 6.  Write a python program for custom exceptions.

class ErrorInCode(Exception):    
    def __init__(self, data):    
        self.data = data    
    def __str__(self):    
        return repr(self.data)
try:    
    raise ErrorInCode(2000)    
except ErrorInCode as ae:    
    print("Received error:", ae.data)
