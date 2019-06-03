# -*- coding: utf-8 -*-
"""
Created on Fri May 24 14:31:36 2019

@author: Training29
"""

#### 1. Write a python program to create a Dictionary.  #########

string = 'vijayakumar' 
my_dict = {}
for letter in string:
    my_dict[letter] = my_dict.get(letter, 0) + 1
print(my_dict)

### 2. Write a python program to access the values in the Dictionary. ###
dict = {'name': 'vijay', 'age': 27}
print(dict['name'])
print(dict.get('age'))

### 3. Write a python program to update the above created dictionary. ####
a = {'name': 'vijay','age': 27}
b = {'name': 'raj','address': 'ssss'}
a.update(b)
print(a)

###4. Write a python program to delete the above created dictionary. ####
a = {'name': 'vijay','age': 27,'address': 'ssss'}
del a['name']
del a['address']
del a['age']
print(a)
#### OTHER METHOD #####
a = {'name': 'vijay','age': 27,'address': 'ssss'}
a.clear()
print(a)

### 5. Write a python code to copy the entire dictionary into a new dictionary.#####

a = {'name': 'vijay','age': 27,'address': 'ssss'}
b = a.copy()
print(b)

###6. Write a python code to delete keys from the dictionary.#########

a = {'name': 'vijay','age': 27,'address': 'ssss'}
del a['age']
print(a)

#### OTHER METHOD #####
a = {'name': 'vijay','age': 27,'address': 'ssss'}

if 'age' in a:
    del a['age']
    print(a)
    
    #####  7. Write a python code to sort the elements in the dictionary. #####
    a = {'vijay': 27,'ajay': 25,'ravi': 22, 'siva': 26}
    for n in sorted(a):
        print(n, a[n])
    



