# -*- coding: utf-8 -*-
"""
Created on Thu Jun  6 12:25:39 2019

@author: Training28
"""
import pandas as pd
import datetime
import time
import calendar
import numpy as np
df=pd.read_excel(io=r'C:\Users\Training28\Workshop\Q1.xlsx')
print(df)
df=pd.DataFrame(df)
df.head()
# New Columns Duration
start=pd.to_datetime(df['Start Time'])
end=pd.to_datetime(df['End Time'])
df['Duration']= end - start
df['Duration']= df['Duration'] /np.timedelta64(1,'s')
df
# IS Weekend based on the start time 

df['WEEKDAY'] = ((pd.DatetimeIndex(df['Start Time']).dayofweek) // 5 == 1).astype(float)
df

#Hours of the day based on the start time 
df['Hour_of_day']= pd.DatetimeIndex(df['Start Time']).hour
df

# Distance between start and end coordinates (latitude and longitute)

import geopy.distance
st_lat=df['Start Latitude'].astype(float)
st_lat
start_lat=list(st_lat)
start_lat
st_long=df['Start Longitude'].astype(float)
start_long=list(st_long)
ed_lat=df['End Latitude'].astype(float)
end_lat=list(ed_lat)
ed_long=df['End Longitude'].astype(float)
end_long=list(ed_long)


#coords_1 = (st_lat,st_long)
#coords_2 = (ed_lat,ed_long)

from math import radians, sin, cos, sqrt, asin
dis_list=[]
for i,j,k,l in zip(df['Start Latitude'],df['Start Longitude'],df['End Latitude'],df['End Longitude']):
    R=6372.8 #Earth Radius in Kiliometers
    dlat=radians(k-i)
    dLon=radians(l-j)
    lat1=radians(i)
    lat2=radians(k)
    a = sin(dlat / 2)**2 + cos(lat1) * cos(lat2) * sin(dLon / 2)**2
    c = 2 * asin(sqrt(a))
    dis_list.append(R*c)
df['Distance(KM)']=dis_list
df    
import pandas as pd
import sqlalchemy
import urllib
quoted = urllib.parse.quote_plus('Driver={SQL Server Native Client 11.0};'
                'Server=ssintr02;'
                'Database=T5_Padmanabh;'
                'uid=T5_Padmanabh;'
                'pwd=Bills@275;')
engine=sqlalchemy.create_engine('mssql+pyodbc:///?odbc_connect={}'.format(quoted))
df.to_sql('Workshop_Python',con=engine,if_exists='replace',index=False)


#Q2 - Read the file Q2.xml
#- Remove all the ‘-’ in contact and change the column type to numeric
#- Add ‘Mr. ’ in the beginning of all names
#- Replace null with ‘UNK’ for strings and ‘-1’ for numerics
#Get the output as a CSV file



import xml.etree.ElementTree as et 
import pandas as pd
import xmltodict, json
with open(r'C:\Users\Training28\Workshop\ex.txt') as fd:
    doc = xmltodict.parse(fd.read())

print(xmltodict.unparse(doc,encoding='utf-8', full_document=True))
j=json.dumps(doc)
s=str(j)
s
new_j=s[s.find('['):s.rfind(']')+1]
pd.read_json(new_j)
dt=pd.DataFrame(pd.read_json(new_j))
dt
xml_dt=list(dt['dept'][3:])
import numpy as np
for key,value in xml_dt[0].items():
    print(key,value)
dt.set_value(3,key,value)
dt['dept'][3:]=np.nan
dt

#- Remove all the ‘-’ in contact and change the column type to numeric
import re
dt['contact']=dt['contact'].replace(regex=['-'], value='')
type(dt['contact'])
pd.to_numeric(dt['contact'])
dt
#- Add ‘Mr. ’ in the beginning of all names
dt['@name']='Mr.'+ dt['@name'].astype(str)
dt
#- Replace null with ‘UNK’ for strings and ‘-1’ for numerics

dt['contact'].fillna(-1, inplace=True)
dt
dt['email_id'].fillna('UNK', inplace=True)
dt
dt['role'].fillna('UNK', inplace=True)
dt
dt['dept'].fillna('UNK', inplace=True)
dt

#Read from SQL Server
#Database: Northwind
#Tables: Orders, Order_details
#Read the two tables and join them in python using proper joining conditions

import sqlalchemy
import urllib
quoted = urllib.parse.quote_plus('Driver={SQL Server Native Client 11.0};'
                'Server=ssintr02;'
                'Database=T5_Padmanabh;'
                'uid=T5_Padmanabh;'
                'pwd=Bills@275;')
engine=sqlalchemy.create_engine('mssql+pyodbc:///?odbc_connect={}'.format(quoted))
sql='select * from python_ord '
order=pd.read_sql(sql,engine)
sql='select * from python_ord_det'
order_det=pd.read_sql(sql,engine)
order
order_det
import pandas as pd
import numpy as np
order.head()
order_det.head()
dt_merged=pd.merge(order, order_det,how='inner', on='OrderID')
dt_merged

#Input list: [9,4,4,7,1,8,4,7,3,0,2,5,7,3,7,2,6,8,4,6,7,1,3,2]
#- Expected Output: [0,1,2,3,4,5,6,7,8,9,1,2,3,4,6,7,8,2,3,4,7,4,7,7]
#Hint: Sorted format of the list
#- Convert the output list to a 6x4 numpy array
#- Convert the array to a pandas dataframe with index names from ‘a’ to ‘f’ and column names from ‘A’ to ‘D’


list1=[9,4,4,7,1,8,4,7,3,0,2,5,7,3,7,2,6,8,4,6,7,1,3,2]
list2=(sorted(list1))
dictt=dict()
for i in list2:
    if i in dictt:
        dictt[i]=dictt[i]+1
    else:
        dictt[i]=1
a=max(dictt.values())
list3=list()    
for i in range(a):
    for j in dictt:
        if(dictt[j]==0):
            pass
        else:
            list3.append(j)
            dictt[j]=dictt[j]-1
list3
        
array=np.array([list3]).reshape(6,4)
array
name=['a','b','c','d','e','f']
colnames=['A','B','C','D']
dx=pd.DataFrame(array,index=name,columns=colnames)
dx
