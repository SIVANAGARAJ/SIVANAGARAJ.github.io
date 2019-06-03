# -*- coding: utf-8 -*-
"""
Created on Wed May 29 11:53:38 2019

@author: Training29
"""

###1. Write a Python program to read an entire text file. ###

def file_read(fname):
    txt = open(fname)
    print(txt.read())
file_read('vijay.txt')

###2. Write a Python program to read first n lines of a file. #####

def file_read(fname,nlines):
    from itertools import islice
    with open (fname) as f:
        for line in islice(f,nlines):
            print(line)
file_read('vijay.txt',3)

###3. Write a Python program to append text to a file and display the text ####

def file(fname):
       from itertools import islice
       with open(fname,'w') as update:
            update.write("Vijayakumar\n")
            update.write("Ajay and Kumar")
       txt = open(fname)
       print(txt.read())
file('vijay.txt')

###4. Write a Python program to read last n lines of a file. #####

def read_last_lines(filename, no_of_lines=1):
	file = open(filename,'r')
	lines = file.readlines()
	last_lines = lines[-no_of_lines:]
	for line in last_lines:
		print(line)
	file.close()
 
 
if __name__ == "__main__":
	filename = "vijay.txt"
	read_last_lines(filename,2)
    
    
    


