# -*- coding: utf-8 -*-
"""
Created on Mon Jun  3 09:48:09 2019

@author: Training29
"""

### 1. Write a python program for matching a pattern

import re

pattern = '^a...s$'
test_string = 'abyss'
result = re.match(pattern, test_string)

if result:
  print("Search successful.")
else:
  print("Search unsuccessful.")
  
### 2. Write a python program for matching a string.
  
import re
patterns = 'software testing' 
text = "software testing is a fun"
if re.search(patterns,text):
    	print('found')
else:
    	print('not found')
        
### 3. Write a python program for matching flags.
        
import re
xx = """guru99 
careerguru99	
selenium"""
k1 = re.findall(r"^\w", xx)
k2 = re.findall(r"^\w", xx, re.MULTILINE)
print(k1)
print(k2)

### 4. Write a python program for searching a string.

import re

string = "Python is fun"

# check if 'Python' is at the beginning
match = re.search('\APython', string)

if match:
  print("pattern found inside the string")
else:
  print("pattern not found")  
  
### 5. Write a python program for searching a pattern.
  
pattern = 'a...s$'
test_string = 'abyss'
result = re.search(pattern, test_string)

if result:
  print("Search successful.")
else:
  print("Search unsuccessful.")	
  
### 6. Write a python program for searching flags.
  
import re

x1 = re.search(r"\w+", u"♥αβγ!", re.U)
x2 = re.search(r"\w+", u"♥αβγ!")

if x1:
    print (x1.group().encode("utf8"))
else:
    print ("no match")
    
### 7. Write a python program for searching and replacing a string.
    
import re	
	
text = "The film Pulp Fiction was released in year 1994"  
result = re.sub(r"Pulp Fiction", "Forrest Gump", text)  
print (result)

### 8. Write a python program for searching and replacing a pattern

import re

bold = re.compile(r'\*{2}(.*?)\*{2}', re.UNICODE)

text = 'Make this **bold**.  This **too**.'

print ('Text:', text)
print ('Bold:', bold.sub(r'<b>\1</b>', text))

### 9. Write a python program for searching and replacing flags.

import re
insensitive_hippo = re.compile(re.escape('hippo'), re.IGNORECASE)
insensitive_hippo.sub('giraffe', 'I want a hIPpo for my birthday')

### 10. Write the syntax and a simple program for regular expression pattern in python.

import re

exampleString = "Jessica is 15 years old, and Daniel is 27 years old.Edward is 97 years old, and his grandfather, Oscar, is 10888824"
ages = re.findall(r'\d{1,3}',exampleString)
names = re.findall(r'[A-Z][a-z]*',exampleString)

print(ages)
print(names)

### output --maximuam 1 to 3 digit number displated and it will split into next number for morethan 3 digit ####
 



