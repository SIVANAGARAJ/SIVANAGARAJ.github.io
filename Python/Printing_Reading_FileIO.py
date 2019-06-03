# -*- coding: utf-8 -*-
"""
Created on Wed May 22 18:15:49 2019

@author: Training28
"""
### 1. Write a python program using csv.reader(csvfile, dialect='excel', **fmtparams)

import csv

with open('example7.csv', newline='') as myFile:  
    reader = csv.reader(myFile)
    for row in reader:
        print(row)


### 2. Write a python program using csv.writer(csvfile, dialect='excel', **fmtparams)
        
import csv

myData = [[5, 8, 9], ['vijay', 'ajay', 'ravi']]  
myFile = open('example7.csv', 'w')  
with myFile:  
   writer = csv.writer(myFile)
   writer.writerows(myData)
    
### 3. Write a python program using csv.register_dialect(name, [dialect, ]**fmtparams)
   
import csv

csv.register_dialect('myDialect', delimiter='/', quoting=csv.QUOTE_NONE)

with open('example7.csv', newline='') as myFile:  
   reader = csv.reader(myFile, dialect='myDialect')
   for row in reader:
       print(row


### 4. Write a python program using csv.unregister_dialect(name)
       
import csv
 
csv.register_dialect("comma", delimiter=",")
csv.unregister_dialect('comma')

### 5.Write a python program using csv.get_dialect

csv.get_dialect('mydialect')

### 6.Write a python program using csv.list_dialects()

csv.list_dialects() ## returns a list of all the dialects its a direct program in itself

### 7.Write a python program using csv.field_size_limit([new_limit])

csv.field_size_limit(200)

### 8.Write a python program using csv.QUOTE_ALL
csv.register_dialect('mydialect',delimiter=',',quoting=csv.QUOTE_ALL,skipinitialspace=True) # used in registering of dialect
## does the following - csv.QUOTE_MINIMAL means only when required, for example, when a
        #        field contains either the quotechar or the delimiter
        #    csv.QUOTE_ALL means that quotes are always placed around fields.
        #    csv.QUOTE_NONNUMERIC means that quotes are always placed around
        #        fields which do not parse as integers or floating point
         #       numbers.
         #   csv.QUOTE_NONE means that quotes are never placed around fields.

### 9.Write a python program using csv.QUOTE_MINIMAL.

csv.register_dialect('mydialect',delimiter=',',quoting=csv.QUOTE_MINIMAL,skipinitialspace=True)


## 10.Write a Python program to read an entire text file

txtfile=open ('vijay.txt','w')
line='this is a text file which, \n is created for the first time'
txtfile.write('hello\n')
txtfile.writelines(line)
txtfile.close()
txtfile=open('vijay.txt','r+')
print('the output of the txt file')
print (txtfile.read())
txtfile.close()


### 11.Write a Python program to read first n lines of a file.
txtfile=open('vijay.txt','r+')
txtfile.seek(0) # takes the index of txtfile to beginning
print (txtfile.readline())
print (txtfile.readlines())
txtfile.close()


## 12.Write a Python program to append text to a file and display the text

txtfile=open('vijay.txt','a')
txtfile.write('The second written \n')
txtfile.close()
txtfile=open('vijay.txt','r')
print(txtfile.readlines())
txtfile.close()

### 13.Write a Python program to read last n lines of a file.


### 14.Write a Python program to read a file line by line and store it into a list.

def read_line(txtfile):
    with open (txtfile) as txt:
        txt_block=txt.readlines()
        print(txt_block)
read_line('vijay.txt')


### 15.Write a Python program to read a file line by line store it into a variable

def read_line1(txtfile):
    with open (txtfile,'r') as txt:
        txt_block=txt.readlines()
        print(txt_block)
read_line1('vijay.txt')



## 16.Write a Python program to read a file line by line store it into an array.

def array_read(txtfile):
    array=[]
    with open(txtfile) as txt:
        for line in txt:
            array.append(line)
    print(array.append)
        
array_read('vijay.txt')

## 17.Write a python program to find the longest words
def longwords(name):
    with open(name,'r') as txt:
        words=txt.read().split()
    max_len=len(max(words,key=len))
    return [word for word in words if len(word)==max_len]
print(longwords('vijay.txt'))



### 18.Write a Python program to count the number of lines in a text file

def linesintxt(txt):
    with open (txt) as txt:
        for i,l in enumerate(txt):
            pass
    return i + 1
print('the no of lines in text',linesintxt('vijay.txt'))
            

### 19.Write a Python program to count the frequency of words in a file
from collections import Counter
def word_count(fname):
        with open(fname) as f:
                return Counter(f.read().split())
print('the no of wrds in a file',word_count('vijay.txt'))

## 20.Write a Python program to get the file size of a plain file
import os
filesize=os.stat('vijay.txt')
print(filesize.st_size)



### 21.Write a Python program to write a list to a file.

list=['abc','dcf','res','qwe']
with open('vijaynew.txt','w') as txt:
    for l in list:
        txt.write('%s\n'% l)
check=open('vijaynew.txt')
print(check.read())      

### 22.Write a Python program to copy the contents of a file to another file

import os
os.popen('abc.csv dca.csv')


### 23.Write a Python program to combine each line from first file with the corresponding line in
### second file.
with open('vijay.txt') as txt1, open('vijaynew.txt') as txt2:
    for line1, line2 in zip(txt1, txt2):
        print(line1+line2)


### 24.Write a Python program to read a random line from a file

import random
def ran_line(file):
    lines=open(file).read().splitlines()
    return random.choice(lines)
print(ran_line('vijay.txt'))

### 25.Write a Python program to assess if a file is closed or not.

file=open('vijay.txt','r')
print(file.closed)
file.close()
print(file.closed)


### 26.Write a Python program to remove newline characters from a file

def remove_lines(file):
    f=open(file).readlines()
    return [s.rstrip('\n') for s in f]

print(remove_lines('vijay.txt'))
