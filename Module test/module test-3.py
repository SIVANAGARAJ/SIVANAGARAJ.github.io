# -*- coding: utf-8 -*-
"""
Created on Sat Jun  8 00:08:57 2019

@author: hzhou
"""
import csv
import pyodbc
import sqlalchemy
conn = pyodbc.connect('Driver={SQL Server Native Client 11.0};''Server=VTCTZHOU;''Database=mydb;''Trusted_Connection=yes;')
engine=sqlalchemy.create_engine('mssql+pyodbc:///?odbc_connect={}'.format(conn))
cursor = conn.cursor()
csv.register_dialect('myDialect', delimiter=',', quoting=csv.QUOTE_NONE)
data=[]
#groupby={'':[]}
i=0;
with open('group score.csv', newline='') as myFile:  
   reader = csv.reader(myFile, dialect='myDialect')
   for row in reader:      
       if i!=0:
           print(row[1])
           status='low' if float(row[1])<25 else 'high'
           #groupby[str(row[0])].append([row[0],row[1],status])
           data.append([row[0],row[1],status])
       i=i+1
 
less_than_zero = list(filter(lambda x: x[2] =='high', data))
#print(less_than_zero) 
from itertools import groupby
tablename='tables_'

j=0;
for key, group in groupby(less_than_zero, lambda x:(x[0]) ):
    actualtable=tablename+str(j)
    try:
        cursor.execute('drop TABLE %s'%actualtable)
        cursor.execute('create TABLE %s(group_id varchar(max),score varchar(max),status varchar(max))'%actualtable) 
        array=[]
    
          
        for thing in group:
            cursor.execute("INSERT INTO  %s(group_id,score,status) VALUES (?,?,?)"%actualtable , thing[0],thing[1],thing[2])    

    except:
        
        cursor.execute('create TABLE %s(group_id varchar(max),score varchar(max),status varchar(max))'%actualtable) 
        array=[]
    
          
        for thing in group:
            cursor.execute("INSERT INTO  %s(group_id,score,status) VALUES (?,?,?)"%actualtable , thing[0],thing[1],thing[2])    
           
    j=j+1
 
conn.commit()
conn.close()
        