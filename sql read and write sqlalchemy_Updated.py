import pandas as pd
import sqlalchemy
import urllib
quoted = urllib.parse.quote_plus('Driver={SQL Server Native Client 11.0};'
                'Server=SSINTR02;'
                'Database=T5_Vijayakumar;'
                'uid=T5_Vijayakumar;'
                'pwd=vijay207$;')
engine=sqlalchemy.create_engine('mssql+pyodbc:///?odbc_connect={}'.format(quoted))

sql='select * from customer'
df=pd.read_sql(sql,engine)
print(df)
df.to_sql('test6',con=engine,if_exists='replace',index=False) #/replace or append

