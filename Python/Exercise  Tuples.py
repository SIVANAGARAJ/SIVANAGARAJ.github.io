# -*- coding: utf-8 -*-
"""
Created on Fri May 24 09:32:26 2019

@author: Training29
"""

####1.Write a Python program to create a tuple. ####
x = (4,6,7)
print(x)

###2. Write a Python program to create a tuple with different data types ###
tuple = ("vijay", True, 7.5, 1)
print(tuple)

###3. Write a Python program to add an item in a tuple ###
#### To add 3 methods #######
tuple = (4, 6, 2, 8, 3, 1) 
print(tuple)

### Method 1 Using + Operator
tuple = tuple + (9,10,52)
print(tuple)

### Method 2 adding specific index ####
tuple = tuple[:4] + (22,15,41) + tuple[:3]
print(tuple)

### Method 3 converting the tuple to list  ####
list = list[(tuple)]
list.append(25)
tuple = tuple(list)
print(tuple)

##### Pending #############


####4. Write a Python program to convert a tuple to a string. #####
a = ('v', 'i', 'j', 'a', 'y', 'a', 'k', 'u', 'm','a','r')
str =  ''.join(a)
print(str)

###5. Write a Python program to check whether an element exists within a tuple ####
a = ("v", "i", "j", "a", "y", "a", "k", "u", "m", "a","r",5,4)
print("r" in a)
print(2 in a)

####6. Write a Python program to convert a list to a tuple #######
a = [4, 8, 2, 42, 11]
print(a)
tuple = tuple(a)
print(a)

####7. Write a Python program to remove an item from a tuple  #######
a = ("v", "i", "j", "a", "y", "a", "k", "u", "m","a","r",8,4)
print(a)

### Method 1 Using + Operator remove an item #####
a = a[:4] + a[5:]
print(a)

#converting the tuple to list  ######
listx = list(a) 
listx.remove("i")
a = tuple(listx)
print(a)

########## PENDING #################

###8. Write a Python program to find the length of a tuple ####
a = tuple("vijayakumar")
print(a)
print(len(a))

########## PENDING ###############

###9. Write a Python program to convert a tuple to a dictionary ***
tuple = (('vijay','name'),('raj','name'))
print(dict((a,b) for a,b in tuple))


###10. Write a Python program to reverse a tuple ######
a = ("vijay")
b = reversed(a)
print(tuple(b))

####### PENDING ####################3





