# -*- coding: utf-8 -*-
"""
Created on Thu Jun 13 09:33:09 2019

@author: CAIA101
"""

import psycopg2
import pandas as pd
import sqlalchemy


engine=sqlalchemy.create_engine('postgresql://awsuser:HelloWorld12@redshift-cluster-1.cavewu1.us-west-1.redshift.amazonaws.com:5439/dev')

sql='select * from employees'
df=pd.read_sql(sql,engine)
df

df.to_sql('test1', engine, index=False, if_exists='replace')



engine.execute('INSERT INTO recipes (recipe_id, recipe_name) VALUES (1,\'Tacos\'),(2,\'Tomato Soup\')')