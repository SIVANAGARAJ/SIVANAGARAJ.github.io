import pandas as pd
import sqlalchemy
import urllib
quoted = urllib.parse.quote_plus('Driver={SQL Server Native Client 11.0};'
                'Server=;'
                'Database=;'
                'uid=;'
                'pwd=;')
engine=sqlalchemy.create_engine('mssql+pyodbc:///?odbc_connect={}'.format(quoted))

sql='select * from table'
df=pd.read_sql(sql,engine)

df.to_sql('test2',con=engine,if_exists='replace',index=False) #/replace

