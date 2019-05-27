# -*- coding: utf-8 -*-
"""
Created on Mon May 27 09:59:19 2019

@author: hzhou
"""

##### Python - Control Statements #########
1-if-else and nested if
2-Loop(for, while, do-while)
3-break and continue
4-pass statement

####1. Write the syntax for if else statement  ######

if test expression:
    Body of if
else:
    Body of else
    
##### 2. Write a python program using if-else statement #######

a=int(input("Enter the number:"))
if a >= 0:
    print("Positive or Zero")
else:
    print("Negative number")    
    
##### 3. Write a python program using for loop. #######
    a=[5,6,7,8,4,12]
    sum=0
    for val in a:
        sum=sum+val
        print(sum)

##### 4. Write the syntax for loop #######
        for variable_name in sequence :
            statement_1
            statement_2
            .........

##### 5. Write the syntax for while statement #######
            while (expression) :
                statement_1 
                statement_2
                
                ............
                
##### 6.  Write a python program using while statement ######
                
a = 0
while(a<5):
    print(a)
    a += 1
    
##### 7.  Write the syntax for do while ######
    
    Python doesn't have do-while loop.
    
    General Do While Loop Syntax
    
    do {  
     //statement  
} while (condition);  
        
        
##### 8.  Write a python program using do while  ######
    
        Python doesn't have do-while loop. But we can create a program like this.
        
i=1
while True:
    print(i)
    i=i+1
    if(i>5):
        break
    
##### 9.  Wrte the syntax for break and continue  ######
        
    Syntax using while for break
    
    while (expression1) :
        statement_1
        statement_2
        .......
         if expression2 :
             break
    
    Syntax using for loop for break

for variable_name in sequence :
    statement_1 
    statement_2
    if expression3 :
        break
    
   Syntax using while for Continue
   
   while (expression1) :
        statement_1
        statement_2
        .......
         if expression2 :
             continue
     
    Syntax using for loop for continue

for variable_name in sequence :
    statement_1 
    statement_2
    if expression3 :
        continue  
    
##### 10. Write a python program using break and continue  ######
    Using for loop for break    
    
    str = 'python'
        for i in str:
            if i == 'o':
                break
            print(i)
            
     Using while loop for break
 
    i = 0
    while 1:
        print(i)
        i = i+1
        if i == 10:
            break
        
        
Using for loop for continue

i = 1
for i in range(1,11):
    if i == 5:
        continue
    print(i)
    
Using while loop for continue

i=10
while i > 0:
    i=i-1
    if i==5:
        continue
    print(i)


  ##### 11. Wrte a python program using pass statement  ######

num = [1,4,7,2,5,8,3,6,9,10]
for n in num:
    if n%2==0:
        pass
    else:
        print(n)

            
            
    
                    
    
    

        
        
    
