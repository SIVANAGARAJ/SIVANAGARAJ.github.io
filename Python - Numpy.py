# -*- coding: utf-8 -*-
"""
Created on Mon May 27 14:34:13 2019

@author: hzhou
"""

##### 1. Write a Python code to import NumPy. ####

import numpy as np
a=[1,2,5,4,3]
print(a)

#### 2. Write a Python program to create 3x3 matrix with values ranging from 5 to 13. ###

### cannot reshape array of size 8 into shape (3,3) ranging from 5 to 13.###

import numpy as np
a =  np.arange(4, 13).reshape(3,3)
print(a)


###3. Write a Python program to create a null vector of size 10 and update sixth value to 11. ###

import numpy as np
a = np.zeros(10)
print(a)
a[6]=11
print(a)

###4.Write a Python program to create a array with values ranging from 12 to 38. ###

import numpy as np
a = np.arange(12,38)
print(a)

####6.Write a Python program to reverse an array so that first element becomes last.####

import numpy as np
a = np.arange(5,13)
print("Original Array:")
print(a)
print("Reverse Array:")
a=a[::-1]
print(a)

###7.Write a Python program to an array converted to a float type. #####

import numpy as np
a = np.arange(1,5)
print("Original Array:")
print(a)
print("Converted to float type:")
b=np.asfarray(a)
print(b)

####8.Write a Python program to create a 2d array with 1 on the border and 0 inside. ####

import numpy as np
a = np.ones((8,6),dtype=int)
print("Original Array:")
print(a)
print("Array with 1 on the border and 0 inside:")
a[1:-1,1:-1]=0
print(a)

###9.Write a Python program to create a 8x8 matrix and fill it with a checkerboard pattern. ##

import numpy as np
a=np.ones((3,3))
print("Checkerboard pattern:")
a=np.zeros((8,8),dtype=int)
a[1::2,::2]=1
a[::2,1::2]=1
print(a)

###10.Write a Python program to convert a list and tuple into arrays.

import numpy as np
list=[1,4,7,2],[5,8,3,6]
print("List to array: ")
print(np.asarray(list))
tuple=([6,4,5],[7,5,6])
print("Tuple to array: ")
print(np.asarray(tuple))

###11.Write a Python program to append values to the end of an array.

import numpy as np
a=[12,45,36]
print("Original array:")
print(a)
a=np.append(a,[[21,45,36],[40,50,60]])
print("After append values to the end of the array:")
print(a)

###12.Write a Python program to create an empty and a full array.

import numpy as np
a=np.empty((3,4),dtype=int)
print(a)
b=np.full((3,3),6)
print(b)

###13.Write a Python program to convert the values of Centigrade degrees into Fahrenheit degrees. Centigrade values are stored into a NumPy array.

import numpy as np
fvalues = [0, 12, 45.21, 34, 99.91]
F = np.array(fvalues)
print("Values in Fahrenheit degrees:")
print(F)
print("Values in  Centigrade degrees:") 
print(5*F/9 - 5*32/9)

##14.Write a Python program to find the real and imaginary parts of an array of complex numbers.

import numpy as np
a = np.sqrt([2+1j])
b = np.sqrt([1+2j])
print("Original array:x ",a)
print("Original array:y ",b)
print("Real part of the array:")
print(a.real)
print(b.real)
print("Imaginary part of the array:")
print(a.imag)
print(b.imag)

###15.Write a Python program to test whether each element of a 1-D array is also present in a second array.

import numpy as np
a1 = np.array([22, 12, 30, 42, 70,85])
print("Array1: ",a1)
a2 = [12, 70]
print("Array2: ",a2)
print("Compare each element of array1 and array2")
print(np.in1d(a1, a2))

###16.Write a Python program to find common values between two arrays.

import numpy as np
a1=np.array([22,12,30,42,70,85])
print("Array1:",a1)
a2=[30,85,26,1]
print("Array2:",a2)
print("Common values between two arrays:")
print(np.intersect1d(a1,a2))

####17. Write a Python program to get the unique elements of an array.

import numpy as np
a1=np.array([15,25,35,25,15,60,35])
print("Original array:")
print(a1)
print("Unique elements of the above array:")
print(np.unique(a1))

##other type

import numpy as np
a1=np.array([[3,4],[3,2]])
print("Original array:")
print(a1)
print("Unique elements of the above array:")
print(np.unique(a1))

###18.Write a Python program to test if all elements in an array evaluate to True.
import numpy as np
print(np.all([[True,False],[True,True]]))
print(np.all([[True,True],[True,True]]))
print(np.all([15,22,0,-74]))
print(np.all([14,26,-50]))

###19. Write a Python program to test whether any array element along a given axis evaluates to True.

import numpy as np
print(np.any([[False,False],[False,False]]))
print(np.any([[True,True],[True,True]]))
print(np.any([14, 16, 0, -46]))
print(np.any([10, 20, -50]))

###20.Write a Python program to repeat elements of an array.

import numpy as np
a=np.repeat(4,5)
print(a)

##another type

a=np.array([[1,2],[4,5]])
print(np.repeat(a,3))

###21.Write a Python program to find the indices of the maximum and minimum values along the given axis of an array.

import numpy as np
a=np.array([7,8,15,23,65])
print("Original array: ",a)
print("Maximum Values: ",np.argmax(a))
print("Minimum Values: ",np.argmin(a))

###22.Write a Python program compare two arrays using numpy.

import numpy as np
a = np.array([1, 2])
b = np.array([4, 5])
print("Array a: ",a)
print("Array b: ",b)
print("a > b")
print(np.greater(a, b))
print("a >= b")
print(np.greater_equal(a, b))
print("a < b")
print(np.less(a, b))
print("a <= b")
print(np.less_equal(a, b))

###23.Write a Python program to save a NumPy array to a text file.

import numpy as np
a = np.arange(1.0, 2.0, 36.2)
np.savetxt('file.out', a, delimiter=',')

###24.Write a Python program to create a contiguous flattened array

import numpy as np
a = np.array([[10, 20, 30], [20, 40, 50]])
print("Original array:")
print(a)
y = np.ravel(a)
print("New flattened array:")
print(y)

###25.Write a program to perform addition,minimum and maximum values from a 3D array.

