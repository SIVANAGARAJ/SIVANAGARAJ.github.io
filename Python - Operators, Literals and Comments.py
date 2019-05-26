# -*- coding: utf-8 -*-
"""
Created on Sat May 25 16:13:18 2019

@author: hzhou
"""

####1. Write python programs using Arithmetic Operators ######

num1 = int(input('Enter First Number: '))
num2 = int(input('Enter Second Number: '))
add = num1 + num2
dif = num1 - num2
mul = num1 * num2
div = num1 / num2
floor_div = num1 // num2
power = num1 ** num2
modulus = num1 % num2
print('Sum of:', add)
print('Difference of:', dif)
print('Multiply of:', mul)
print('Division of:', div)
print('Floor Division of:', floor_div)
print('Exponent of:', power)
print('Modulus of:', modulus)


####2. Write python programs using Assignment Operators ######

num1 = int(input('Enter First Number: '))
num2 = int(input('Enter Second Number: '))
num1+=num2
print(num1)
num1-=num2
print(num1)
num1*=num2
print(num1)
num1/=num2
print(num1)
num1%=num2
print(num1)
num1**=num2
print(num1)
num1//=num2
print(num1)

####3.Write python programs using Comparison (Relational) Operators  ######

num1 = int(input('Enter First Number: '))
num2 = int(input('Enter Second Number: '))
num1==num2
num1!=num2
num1>num2
num1<num2
num1>=num2
num1<=num2

####4.Write python programs using Logical Operators  ######
num1 = int(input('Enter First Number: '))
num2 = int(input('Enter Second Number: '))
num1>7 and num2>8
num1>7 or num2>8
not(num1>7 and num2>18)
not(num1>17 or num2>17)

####5.Write python programs using Identity Operators  ######
num1 = int(input('Enter First Number: '))
num2 = int(input('Enter Second Number: '))
a = [1,2,3]
b = [1,2,3]
print(num1 is not num2)
print(num1 is num2)
print(num1 is num2)

####6.Write python programs using Bitwise Operators  ######

num1 = int(input('Enter First Number: '))
num2 = int(input('Enter Second Number: '))

num1&num2
num1|num2
~num1
num1^num2
num1>>3
num1<<num2

####7.Write python programs using Membership Operators  ######

a = 'Ajay Vijay'
b = {'name':'vijay',2:'c'}

print('A' in a)
print('vijay' in a)
print('c' in b)
print('name' in b)
print('c' not in b)

####2.1. Write python programs using String literals  ######

### a. Single line String ####

text = 'hello'
print(text)

####b).Multi line String #####

text = 'hello\
user'
print(text)

### c. Using triple quotation marks:- #####

text = '''welcome
to
vijay'''
print(text)

### d. Using escape quotes:- #####

name = '\"Vijay\"'
name1 = "\"Ajay\""
print(name)
print(name1)

address = "\'\"sssssssssssss\"\'"
print(address)

### e. automatically concatenated.
x = "Vi" "jay"
print(x)


####2.2. Write python programs using Numeric literals  ######

x = 4564
print(x)
y = 454.54
print(y)
z = 45+54j
print(z)

####2.3. Write python programs using Boolean Literals  ######

a = (1==True)
b = (1==False)

x = True + 4
y = False + 10

print("a is:",a)
print("b is:",b)
print("x is:",x)
print("y is:",y)

####2.4. Write python programs using Special literals  ######

def print_s(n=None):
	if n is not None:
		for i in range(1,n+1):
			print(i)
	else:
		print("value of n is required !!")

print_s(5)
print_s()

####2.5. Write python programs using Literal collections  ######

name=['vijay','ajay','sanjay','ravi','siva']
print(name)
numbers=(1,5,4,8,7,6)
print(numbers)
country={'a':'america','s':'singapore','i':'italy','j':'japan'}
print(country)
letters={'a','g','h','k','l'}
print(letters)

####3.Write the symbol used for commenting in python and also write a simple
##### python program with the heading of the program commented.  ########

# Print “Hello, World!” to console
print("Hello, World!")

# Define sharks variable as a list of strings
sharks = ['hammerhead', 'great white', 'dogfish', 'frilled', 'bullhead', 'requiem']
for shark in sharks:
    print(shark)
