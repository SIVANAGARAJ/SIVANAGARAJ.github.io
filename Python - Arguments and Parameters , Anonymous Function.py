# -*- coding: utf-8 -*-
"""
Created on Tue May 28 12:52:56 2019

@author: Training29
"""

###1. List the scope of variables in python. #######

The global and nonlocal keywords, closures and the LEGB rule.

####2. Write the difference between local and global variables. #######

Local Variable:
             A local variable is a type of variable declared within programming block or subroutines. It can only be used only inside that subroutine or code block in which they were declared. The local variable exists until the block of the function is in under execution. After that, it will be destroyed automatically.
             
Global Variable:
             Global variables are defined outside of a subroutine or function. The global variable will hold its value throughout the lifetime of a program. They can be accessed within any function defined for the program.
             
###3. Where does the scope of the following program lies.########
             def f():
               print s
             s = "I love Geeksforgeeks"
             f()
             
    Ans: Missing parentheses in call to 'print'.
    
###4. Write a program using Lambda in python. #############
    
L = [1,4,7,2,5,8,3,6,9,10]
N = list(filter(lambda x:(x%2==0),L))
print(N)

####5. Write python program using Positional parameters or required parameters or
Positional parameters:

def log(message,*values):
    if not values:
        print(message)
    else:
        values_str=', '.join(str(x) for x in values)
        print('%s: %s' %(message,values_str))
log('My numbers are', 3, 4)
log('Hello World')

required parameters:
    
    def reqper(empname):
        print("Emp name:",empname)
        return
    print("Not passing required arg value")
    reqper()
    print("Now passing required arg value")
    reqper('Vijay')
    
####6. Write python program using positional only #############
    
    
    
    
####7.Write python program using Keyword Parameters or 

Keyword Parameters:

    def func(name,message):
        print("printing the message with",name,"and ",message)
    func(name='vijay',message='hello')
    
default parameters:
    def default(name,age=26):
        print("My name is",name,"and age is",age)
    default(name='vijay')
    
###8.Write python program using variable length positional parameter ######
    
def variable(*names):
    print("type of passed argument is",type(names))
    print("printing the passed arguments...")
    for name in names:
        print(name)
variable('vijay','ajay','sanjay','siva','ravi')
variable('v','a','s','s','r')

####9.Write python program using Variable length keyword parameter #########

def intro(**data):
    print("\n Data type of argument:",type(data))
    for key,value in data.items():
        print("{} is {}".format(key,value))
intro(Firstname="vijay", Lastname="kumar", Age=26, Phone=8939667801)
intro(Firstname="siva", Lastname="kumar", Email="siva@nomail.com", City="chennai", Age=25, Phone=9876543210)

#####10.Write python program using keyword parameter #######

def simple_interest(p,t,r):
    return(p*t*r)/100
print("Simple Interest:",simple_interest(t=15,r=15,p=2000))

####11.Write a program for command line arguments in python #####

import sys
print('Arguments:',len(sys.argv))
print('List:',str(sys.argv))
if sys.argv<2:
    print('To few arguments, please specify a filename')
    filename=sys.argv[1]
    print('Filename:', filename)


    
    

    