# -*- coding: utf-8 -*-
"""
Created on Fri Jun  7 22:45:46 2019

@author: hzhou
"""

 
 
import csv    
from xml.etree import ElementTree
from datetime import datetime, time
from dateutil import relativedelta
today =   datetime.today()
 
tree = ElementTree.parse("Employees_xml.txt")
root = tree.getroot()    
olp = root.findall("row")
data=[['emp_id','first_name','last_name','hire_date','experience']]
 
 
for child in olp:
    mylist = [t.text for t in child]
    array=[];
    diff = relativedelta.relativedelta(datetime.strptime(str(today), '%Y-%m-%d %H:%M:%S.%f').date(), datetime.strptime(mylist[3], '%d-%m-%Y').date())
    years = diff.years
    months = diff.months
    days = diff.days
    data.append([mylist[0],mylist[1],mylist[2],mylist[3],'{} years, {} months, {} days'.format(years, months, days)])
    print(data)
myFile = open('Employees.csv', 'w')  
with myFile:  
   writer = csv.writer(myFile,lineterminator='\n' )
   writer.writerows(data)    