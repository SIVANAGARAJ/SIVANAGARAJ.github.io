# -*- coding: utf-8 -*-
"""
Created on Tue May 28 12:11:45 2019

@author: Training29
"""

###1.ELSE##

age = 17
if age > 18:
    print (" Driving licence issued")
else:
    print (" Driving licence not permitted")
    
    ###2. Class ##
    
    class rectangle():
        def __init__(self,breadth,length):
             self.breadth=breadth
             self.length=length
        def area(self):
            return self.breadth*self.length
a=int(input("Enter length of rectangle: "))
b=int(input("Enter breadth of rectangle: "))
obj=rectangle(a,b)
print("Area of rectangle:",obj.area())
 
print()

###3. Finally ###
f = None

try:

   f = open('films', 'r')
   
   for i in f:
   
      print(i, end="")
      
except IOError:

   print("Error reading file")

finally:

   if f:
       f.close()
       
       ###4. Is ###
       
      x = [1,2,5,8,45,12,36]

y = x

print(x is y)
###################
x = [1,2,5,8,45,12,36]

y = [23,52,4,15,36,89]

print(x is y)

#####5.RETURN ############
def func_return():
    a = 10
    return a

def no_return():
    a = 10

print(func_return())
print(no_return())

######6.NONE #########

print("type of None: ", type(None))

a = None
print("a: ", a)

if a == None:
    print("variable \'a\' contains None")
else:
    print("variable \'a\' does not contain None")
        
        a = 100
        if a == None:
            print("variable \'a\' contains None")
        else:
            print("variable \'a\' does not contain None")
            
            ####7.CONTINUE #########
           
           
            num = 0

while (num < 1000):

   num = num + 1
   
   if (num % 2) == 0:
      continue
      
   print(num, end=" ")
   
   ####8.FOR ######
   
names = ['John','Monica','Steven','Robin']
for i in names:
    print('Hello '+i)

#####9.LAMBDA ###########

    a = lambda x: x * x

for i in (1, 2, 3, 4, 5):

   print(a(i), end=" ")
   
print() 

###10.try ###########    
        
def reciprocal(num):
    try:
        r = 1/num
    except:
        print('Exception caught')
        return
    return r

print(reciprocal(10))
print(reciprocal(0))

###11. True #########

print(5 < 6)

print(2 in [1,2,3])

print(5 == 5 and 7 == 7)

###12. def #######

def root(x):
    return x * x
a = root(2)
b = root(15)

print(a,b)

###13.from ####

from datetime import time

a = time(hour=15)
print(a)

###14.nonlocal #####

def outer_fun():
    a=5
    def inner_fun():
        nonlocal a
        a=10
        print("Inner function:",a)
    inner_fun()
    print("Outer function:",a)
outer_fun()

###15.while  ############

i=5
while(i):
    print(i)
    i=i-1
    
###16.and #####

if 17 > 13 and 15 < 30:
  print("Both statements are True")
else:
  print("At least one of the statements are False")
  
####17. del ########
  
  a = [12,54,36,74]
  del a[2]
  print(a)
  
###18.global #######
  
a=10
def read():
    print(a)
def write1():
    global a
    a=2
def write2():
    a=5
read()
write1()
read()
write2()
read()

###19.not #############

grades = ['A','B','C','D','E','F']
grade = 'L'
if grade not in grades:
    print('Unknown Grade')
    
###20.with ###########
    
    with open('example.txt', 'w') as my_file:
         my_file.write('Hello world!')
         
###21.as ############

import calendar as c
print(c.month_name[3])

###22.elif ###########

for i in range(-5,5):
    if i >0:
        print("YES")
    elif i ==0:
        print("WHATEVER")
    else:
        print("NO")
        
###23.if #################
        
a = 5
if a>2:
    print("yes")
    
####24 or  ################
    
if 25 > 32 or 45 > 20:
  print("At least one of the statements are True")
else:
  print("None of the statements are True")
  
#### 25 yield ################
  
def generator():
    for i in range(6):
        yield i*i
g=generator()
for i in g:
    print(i)
    
###26.assert #######
    
a = 4
assert a<5
assert a>5,"The value of a is too small"

###27.else ###############

a=12
if a>52:
    print("Yes")
else:
    print("No")
    
###28.import ##########
    
import datetime

a=datetime.datetime.now()
print(a)

###29.pass ############

def function(args):
    pass

####30.break ############
    
for i in range(1,11):
    if i ==5:
        break
    print(i)
    
###31.except ############
    
a = 'hello'
try:
    a>5
except NameError:
    print("You have a variable that is not defined.")
except TypeError:
    print("You are comparing values of different type")
    
###32. in ############
    
a = [4,5,2,6,8]
if 9 in a:
    print("yes")
else:
    print("No")
    
other method

a = [4,5,2,6,8]

for b in a:
    print(b)

###33.raise ##############
a = 'Vijay'
if not type(a) is int:
    raise TypeError("Only integers are allowed")
    
#####2.Write the rules for writing identiers.##############
    
1. Identifiers can be a combination of letters in lowercase (a to z) or uppercase (A to Z) or digits (0 to 9) or an underscore _. Names like myClass, var_1 and print_this_to_screen, all are valid example.

2. An identifier cannot start with a digit. 1variable is invalid, but variable1 is perfectly fine.

3. Keywords cannot be used as identifiers.

ex: global = 1

4. We cannot use special symbols like !, @, #, $, % etc. in our identifier.

ex: a@ = 0

5. Identifier can be of any length.
    

    
    
