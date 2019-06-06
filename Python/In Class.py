# -*- coding: utf-8 -*-
"""
Created on Thu May 23 14:44:37 2019

@author: Training29
"""

import numpy
import numpy as np
import sys
print(np.__version__)
print(sys.version)

np.array([1,2,3])

np.random.randint(1,10,3)
np.linspace(1,10,4)

np.random.random((0,1))

np.array([[1,2,3],
          [4,5,6],
          [7,8,9]])

a = np.array([1,2,3])
b = np.random.randint(0,10,(3,4))
print(a)
print(b)

a = np.append(a,4)
print(np.shape(a))
print(np.shape(b))
print(np.ndim(a))
print(np.ndim(b))

print(np.size(a))
print(np.size(b))

print(a[0])
print(a[-4])

print(b[2])
print(b[2,:])

print(b[1,1])

x = np.array(['a','b','c'])
y = np.array([['d','e','f'],
             ['g','h','k']])
print(x)
print(y)

ind = [2]
x[ind]

ind2 = [[0,1],[1]]
y[ind2]

x = np.arange(1,11,dtype=int)

x[:2]

Y = np.arange(1,10).reshape(3,3)

###get the first and second row
Y[:2,:]

Y[:,1:]

Y[1,1:]

np.max(x)
np.mean(x)
np.power(x,4)

print(np.sin(x))
print(np.tan(x))

x2 + y2 = 1
np.square(np.sin(x)) + (np.cos(x))

np.multiply(Y,2)

np.split(Y,3)

a = np.array([[0.0,0.0,0.0],[10.0,10.0,10.0],[20.0,20.0,20.0],[30.0,30.0,30.0]])
b = np.array([1.0,2.0,3.0]) 

print (a+b)











