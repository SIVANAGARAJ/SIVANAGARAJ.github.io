# -*- coding: utf-8 -*-
"""
Created on Mon Jun 10 11:17:27 2019

@author: Training29
"""

## 1. 

def reverse_string_words(text):
    for line in text.split('\n'):
        return(' '.join(line.split()[::-1]))
print(reverse_string_words("I have won the game'"))



##2.

def oddoneout(n): 
  
    res = '1 1 8 7 5'
      
    for element in n: 
        res = res ^ element 
    return res 



## 3.
import sqlalchemy
import pandas as pd
import urllib
quoted=urllib.parse.quote_plus('Driver={SQL Server native Client 11.0};'
                               'Server=ssintr02;'
                               'Database=Northwind;'
                               'uid=T5_Vijayakumar;'
                               'pwd=vijay207$;')
engine=sqlalchemy.create_engine('mssql+pyodbc:///?odbc_connect={}'.format(quoted))
sql='select productname,Unitprice from products'
df=pd.read_sql(sql,engine)
print(df)
product=str(input('Enter the product name:'))
quantity=int(input('Enter the quantity:'))
amount=0
for i in df['productname']:
    
    if i==product:
       amount = quantity*(df.loc[df['productname']==i].values)[0][1]
       print("the amount to be paid:" , amount)
       break
    else:
        print("the entered product name is not in the db")
        
        
###4.
   
class Employee(object): 
       
   def __init__(self, emp_detail): 
        self.name = emp_detail 
        self.dob  = emp_detail
        self.salary = emp_detail
        self.hiredate  = emp_detail
   
   def get_experience(self): 
        return self.emp_detail
        
    
   
   
   

    
## 6.
   
import xml.etree.ElementTree as et 
import pandas as pd
import xmltodict
with open(r'C:\Users\Training29\python\Books xml version.txt') as fd:
    doc = xmltodict.parse(fd.read())

print(xmltodict.unparse(doc,encoding='utf-8', full_document=True))

xml_dt=list(dt['firstname']['lastname'])
dt.set_value('firstname','lastname')
dt


import re
dt['bookid']=dt['bookid'].replace(regex=['-'], value='')
type(dt['bookid'])
pd.to_numeric(dt['bookid'])
dt

 
##8.

for i in range(10):
    print(str(i) * i)
      
   
   
##9.
   
    import re
    s='AAA111'
a=re.split('(\d+)',s)
print(a)


###10.

from collections import Counter

N = [4,6,2,8,2,2,5,7,8]
C = Counter(N)

print ([ [k,]*v for k,v in C.items()])



    
    
    
    
    
    
    
