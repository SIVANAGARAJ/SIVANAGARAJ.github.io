# -*- coding: utf-8 -*-
"""
Created on Thu May 30 10:20:00 2019

@author: Training29
"""

#### 1. Write python program using math.ceil(x), math.copysign(x, y), math.fabs(x). #####

### math.ceil(x)###
import math
x = 53.8
print("The ceil of 53.8: ",end ='')
print(math.ceil(x))

###math.copysign(x, y) ###
import math
a = 5
b = -7
c = math.copysign(a,b)
print(c)

### math.fabs(x)
import math
a = -42.3
print ("The fabs of -42.3 is : ", end ="")
print (math.fabs(a)) 

### 2.a. Write python program using class fractions.Fraction(numerator=0, denominator=1)

from fractions import Fraction
a = 42
b = 7
print (Fraction(a, b))

### 2.b.Write python program using class fractions.Fraction(other_fraction)
                                                                              
This requires that other_fraction is instance of numbers.Rational and a fraction instance with same value is returned.

### 2.c.Write python program using class fractions.Fraction(float)
from fractions import Fraction
a = 2.15
print (Fraction(a))

### 2. d. Write python program using class fractions.Fraction(decimal)

from fractions import Fraction
a = '2.15'
print (Fraction(a))

### 2.Write python program using class fractions.Fraction(string)

from fractions import Fraction
print (Fraction('8/25'))

###3.a.) Write python program using operator.lt(a, b)

import operator

a = 3
b = 3
if(operator.lt(a,b)):
    print ("3 is less than 3")
else : print ("3 is not less than 3")

### 3.b Write python program using operator.le(a, b)
a = 3
b = 3
if(operator.le(a,b)):
    print ("3 is less than or equal to 3")
else : print ("3 is not less than or equal to 3")

###3.c Write python program using operator.eq(a, b)
a = 3
b = 3
if (operator.eq(a,b)):
    print ("3 is equal to 3")
else : print ("3 is not equal to 3")

### 3.d Write python program using operator.ne(a, b)
a = 4
b = 3
if (operator.ne(a,b)):
    print ("4 is not equal to 3")
else : print ("4 is equal to 3")

###3.e Write python program using operator.ge(a, b)
a = 4
b = 3
if (operator.ge(a,b)):
    print ("4 is greater than or equal to 3")
else : print ("4 is not greater than or equal to 3")

###3. f) Write python program using operator.gt(a, b)
a = 4
b = 3
if (operator.gt(a,b)):
    print ("4 is greater than 3")
else : print ("4 is not greater than 3")

###3. g) Write python program using operator.__lt__(a, b)

  
class A: 
    def __init__(self, a): 
        self.a = a 
    def __lt__(self, other): 
        if(self.a<other.a): 
            return "ob1 is lessthan ob2"
        else: 
            return "ob2 is less than ob1"
    
ob1 = A(2) 
ob2 = A(3) 
print(ob1 < ob2) 

###3. h) Write python program using operator.__le__(a, b)
class A: 
    def __init__(self, a): 
        self.a = a 
    def __le__(self, other): 
        if(self.a<=other.a): 
            return "ob1 is less than or equal to ob2"
        else: 
            return "ob2 is not less than or equal ob1"            
ob1 = A(6) 
ob2 = A(4) 
print(ob1 <= ob2) 

###3. i) Write python program using operator.__eq__(a, b)
class A: 
    def __init__(self, a): 
        self.a = a 
    def __eq__(self, other): 
        if(self.a == other.a): 
            return "Both are equal"
        else: 
            return "Not equal"
ob1 = A(4) 
ob2 = A(4) 
print(ob1 == ob2)

###3. j) Write python program using operator.__ne__(a, b)
class A: 
    def __init__(self, a): 
        self.a = a 
    def __ne__(self, other): 
        if(self.a != other.a): 
            return "Not equal"
        else: 
            return "Both are equal"
ob1 = A(4) 
ob2 = A(5) 
print(ob1 != ob2)

###3. k)  Write python program using operator.__ge__(a, b)
class A: 
    def __init__(self, a): 
        self.a = a 
    def __ge__(self, other): 
        if(self.a>=other.a): 
            return True
        else: 
            return False
ob1 = A(2) 
ob2 = A(3) 
if(ob1>=ob2): 
    print("ob1 is greater than or equal ob2") 
else: 
    print("ob2 is not greater than or equal ob1")
    
###3. l.) Write python program using operator.__gt__(a, b)
    
class A: 
    def __init__(self, a): 
        self.a = a 
    def __gt__(self, other): 
        if(self.a>other.a): 
            return True
        else: 
            return False
ob1 = A(2) 
ob2 = A(3) 
if(ob1>ob2): 
    print("ob1 is greater than ob2") 
else: 
    print("ob2 is not greater than ob1")
