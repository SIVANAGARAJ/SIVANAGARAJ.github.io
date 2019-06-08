# -*- coding: utf-8 -*-
"""
Created on Sat Jun  8 19:37:14 2019

@author: hzhou
"""


def NumberOfOccur(test_str,letter):
    count = 0
    for i in test_str: 
        if i == letter: 
            count = count + 1
    return count;

NumberOfOccur('siva','a')


dict={}
word='lateral bootcamp'
for i in word: 
   dict[i]=NumberOfOccur(word,i)
print(dict)