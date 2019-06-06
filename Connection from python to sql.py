# -*- coding: utf-8 -*-
"""
Created on Thu Jun  6 11:26:16 2019

@author: Training29
"""

import pyodbc
import pandas as pd
connection=pyodbc.connect('Driver={SQL Server Native Client 11.0};'
                'Server=SSINTR02;'
                'Database=T5_Vijayakumar;'
                'uid=T5_Vijayakumar;'
                'pwd=vijay207$;')
sql='select * from customer'
df=pd.read_sql(sql,connection)
print(df)
td=pd.DataFrame(df)
print(td)

#df.to_sql('test6',con=engine,if_exists='replace',index=False)