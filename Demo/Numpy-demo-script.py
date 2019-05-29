############numpy

import numpy as np
a = np.arange(15).reshape(3, 5)
a
a.shape
a.ndim
a.dtype.name
a.itemsize
a.size
type(a)
b = np.array([6, 7, 8])
b
type(b)
np.zeros( (3,4) )
np.ones( (2,3,4), dtype=np.int16 )                # dtype can also be specified
np.arange( 10, 30, 5 )
a = np.arange(6)                         # 1d array
print(a)
b = np.arange(12).reshape(4,3)           # 2d array
c = np.arange(24).reshape(2,3,4)         # 3d array
print(c[0][0][2])
print(c[1][1][0])
A = np.array( [[1,1],
             [0,1]] )
B = np.array( [[2,0],
            [3,4]] )
##########Basic Operations
A*B                         # elementwise product
A.dot(B)                    # matrix product
np.dot(A, B)                # another matrix product
a = np.random.random((2,3))
a
a.sum()
a.min()
a.max()
b = np.arange(12).reshape(3,4)
b
b.sum(axis=0)  # sum of each column
b.min(axis=1)       # min of each row
array([0, 4, 8])
b.cumsum(axis=1)  # cumulative sum along each row
b.cumsum(axis=1)  # cumulative sum along each row
B = np.arange(3)
B
np.exp(B)
np.sqrt(B)
C = np.array([2., -1., 4.])
np.add(B, C)
np.subtract(B,C)
###Indexing, Slicing and Iterating
b = np.arange(12).reshape(4,3)
b
b[2:]
b[1:]
b[0:,]
a = np.arange(10)**3
a
a[2:5]
a[:6:2] = -1000
a
a = np.arange(10) 
print (a[2:5])
###Shape Manipulation
a = np.floor(10*np.random.random((3,4)))
a
a.shape
a.ravel()
a.reshape(6,2)
a.T
a.resize((2,6))
######Stacking together different arrays
a = np.floor(10*np.random.random((2,2)))
a
b = np.floor(10*np.random.random((2,2)))
b
np.vstack((a,b))
np.hstack((a,b))
a = np.floor(10*np.random.random((2,12)))
a
np.hsplit(a,3)   # Split a into 3
