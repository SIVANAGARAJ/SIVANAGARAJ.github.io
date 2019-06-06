# -*- coding: utf-8 -*-
"""
Created on Thu Jun  6 11:26:16 2019

@author: Training29
"""

import pyodbc
import sqlalchemy
import pandas as pd
connection=pyodbc.connect('Driver={SQL Server Native Client 11.0};'
                'Server=SSINTR02;'
                'Database=T5_Vijayakumar;'
                'uid=T5_Vijayakumar;'
                'pwd=vijay207$;')

engine=sqlalchemy.create_engine('mssql+pyodbc:///?odbc_connect={}'.format(connection))

sql='select * from test101'
df=pd.read_sql(sql,connection)
print(df)


td=pd.DataFrame(df)
print(td)

df.to_sql('test101',con=engine,if_exists='replace',index=False)

