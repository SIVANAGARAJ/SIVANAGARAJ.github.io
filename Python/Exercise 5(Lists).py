# -*- coding: utf-8 -*-
"""
Created on Thu May 23 14:11:20 2019

@author: Training29
"""

######1.#################
def sum(items):
    sum_numbers = 0
    for x in items:
        sum_numbers += x
    return sum_numbers
print(sum([7,4,-6]))

######2. Write a Python program to multiplies all the items in a list #################
def multiply(items):
    tot = 1
    for x in items:
        tot *= x
    return tot
print(multiply([4,3,-7]))

###3. Write a Python program to get the largest number from a list.######
def max_num_in_list( list ):
    max = list[ 0 ]
    for a in list:
        if a > max:
            max = a
    return max
print(max_num_in_list([7, 2, -25, 0]))

###4.Write a Python program to get the smallest number from a list #####
def smallest_num_in_list( list ):
    min = list[ 0 ]
    for a in list:
        if a < min:
            min = a
    return min
print(smallest_num_in_list([7, 2, -25, 0]))

####5.Write a Python program to remove duplicates from a list.#######
a = [10,20,30,20,10,50,60,40,80,50,40]

dup_items = set()
uniq_items = []
for x in a:
    if x not in dup_items:
        uniq_items.append(x)
        dup_items.add(x)

print(dup_items)

####6.Write a Python program to check a list is empty or not. ####
v = []
if not v:
  print("List is empty")
  
  #####7.Write a Python program to clone or copy a list.###############
  original_list = [7, 24, 34, 25, 2]
new_list = list(original_list)
print(original_list)
print(new_list)

######8.Write a Python program to print a specied list after removing the 0th, 4th and
##### 5th elements.##############
name = ['vijay', 'raj', 'mani', 'kumar', 'siva', 'ravi']
name = [x for (i,x) in enumerate(name) if i not in (0,4,5)]
print(name)

######9. Write a Python program to get the difference between the two lists.####
list1 = [16, 22, 34, 4]
list2 = [22, 4]
print(list(set(list1) - set(list2)))

#####10. Write a Python program to nd all the values in a list are greater than a
### specied number.####
l1 = [150, 225, 675]
l2 = [35, 71, 84]
print(all(a >= 175 for a in l1))
print(all(a >= 94 for a in l2))


###11.Write a Python program to find a tuple, the smallest second index value from a
#### list of tuples.#######
a = [(2, 5), (1, 4), (5, 3),(3,1),(4,2)]
print(min(a, key=lambda n: (n[1], -n[0])))

###12. Write a Python program to check if the n-th element exists in a given list ##    
x = [1, 3, 4, 102,]
xlen = len(x)-1
print(x[xlen])

###13. Write a Python program to replace the last element in a list with another list.##
n1 = [11, 3, 45, 77, 69 ]
n2 = [22, 4, 66, 8,1,0 ]
n1[-1:] = n2
print(n1)

###14. Write a Python program to check if all items of a list is equal to a given string ##
a = ['vijay', 'ajay', 'mani', 'raj']
b = [ 2, 2, 2, 2, 2, 2 ]

print(all(c == 'mani' for c in a))
print(all(c == 2 for c in b))

###15. Write a Python program to convert a string to a list ######
import ast
name = "['vijay', 'raj', 'mani', 'kumar' ]"
print(ast.literal_eval(name))

####16. Write a Python program to concatenate elements of a list #####
name = ['vijay', 'raj', 'mani', 'ravi' ]
print('-'.join(name))
print(''.join(name))

###17. Write a Python program to create multiple lists ####
a = {}
for i in range(1, 6):
    a[str(i)] = [2,3,4]
print(a)

###18. Write a Python program to find common items from two lists ###
a = "vijay", "ajay", "mani", "raj"
b = "ajay", "ravi", "sanjay", "vijay"
print(set(a) & set(b))

###19.Write a Python program to generate all sublists of a list ####
from itertools import combinations
def sub_lists(my_list):
	subs = []
	for i in range(0, len(my_list)+1):
	  temp = [list(x) for x in combinations(my_list, i)]
	  if len(temp)>0:
	    subs.extend(temp)
	return subs


l1 = [10, 20, 30, 40]
l2 = ['X', 'Y', 'Z']
print("Original list:")
print(l1)
print("S")
print(sub_lists(l1))
print("Sublists of the said list:")
print(sub_lists(l1))
print("\nOriginal list:")
print(l2)
print("Sublists of the said list:")
print(sub_lists(l2))

###20. Write a Python program to get unique values from a list ###
a = [7, 22, 4, 40, 22, 66, 7, 4]
print("Original List : ",a)
b = set(a)
c = list(b)
print("List of unique numbers : ",c)




    





    