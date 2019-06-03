import pandas as pd
import numpy as np

data=np.array(['a','b','c','d','e'])
s=pd.Series(data)
print(s)

pd.__version__

data=np.array(['a','b','c','d'])
s=pd.Series(data,index=[100,101,102,103])
s

data={'a':0.1,'b':1.,'c':2}
s=pd.Series(data)
s

s=pd.Series(5,index=[0,1,2,3])
s

s=pd.Series(['a','b','c','d'],index=[0,1,2,3])
s
s[3] #index value
s[:2] #index range
s[-2:]
print(s[[1,2,3]]) #list of index value

data=[1,2,3,4,5]
df=pd.DataFrame(data)
df

data=[['python',21],['spyder',19]]
df=pd.DataFrame(data,columns=['Name','Age'])
df

data=[['python',21],['spyder',19]]
df=pd.DataFrame(data,columns=['Name','Age'],dtype=float)
df

data={'Name':['python','spyder'],'Age':[21,19]}
df=pd.DataFrame(data,index=['rank1','rank2'])
df

data=[{'a':1,'b':2,'c':3},{'a':1,'b':2,'c':3}]
df=pd.DataFrame(data)
df

data=[{'a':1,'b':2,'c':3},{'d':1,'e':2,'f':3}]
df=pd.DataFrame(data)
df

data=[{'a':1,'b':2},{'a':5,'b':6,'c':7}]
df=pd.DataFrame(data)
df

d={'one':pd.Series([1,2,3],index=['a','b','c']),'two':pd.Series([1,2,3,4],index=['a','b','c','d'])}
df=pd.DataFrame(d)
df
df['three']=pd.Series([10,20,30],index=['a','b','c'])
df
df['four']=df['one']+df['three']
df

d={'one':pd.Series([1,2,3],index=['a','b','c']),
   'two':pd.Series([1,2,3,4],index=['a','b','c','d']),
   'three':pd.Series([10,20,30],index=['a','b','c'])}
df=pd.DataFrame(d)
df
df['one']
df[['one','two','three']]
del df['three']
df
df.pop('two')
df
df.loc['b']
df.iloc[2]
df.iloc[0]
df[2:4]

df1=pd.DataFrame([[1,2],[3,4]],columns=['a','b'])
df2=pd.DataFrame([[5,2],[3,4]],columns=['a','b'])
df3=df1.append(df2)
df3
df3.loc[0]
df3=df1.append(df2, ignore_index=True)
df3
df3=df3.drop(0)
df3

np.random.randn(6,3)

df1=pd.DataFrame(np.random.randn(6,3),columns=['c1','c2','c3'])
df1
df1.rename(columns={'c1':'col1','c2':'col2','c3':'col3'},
           index={0:'apple',1:'banana',2:'cabbage'})


df1=pd.DataFrame(np.random.randn(6,3),columns=['c1','c2','c3'])
df1
s=pd.Series(['spyder','python pandas','S@J',np.nan,1234,'spyder anaconda'])
s

s.str.lower()
s.str.capitalize()
s.str.upper()
s.str.len()
s.str.get_dummies()
s.str.replace('@','&')
s.str.repeat(2)
s.str.count('a')
s.str.find('e')
s.str.find('S')
s.str.find('a',2)

df1=pd.DataFrame(np.random.randn(10,3),index=pd.date_range('12-05-1997',periods=10),columns=['c1','c2','c3'])
df1
df1=pd.DataFrame(np.random.randn(10,3),index=pd.date_range('1997-12-05',periods=10),columns=['c1','c2','c3'])
df1
df1=pd.DataFrame(np.random.randn(6,3),index=['a','c','d','f','h','j'],columns=['c1','c2','c3'])
df1
df1=df1.reindex(['a','b','c','d','e','f','h','j'])
df1

df1['c1']
df1['c1'].isnull()
df1['c1'].notnull()
df1['c1'].sum()
df1['c1'].fillna(0)
df1['c1'].dropna()


df=pd.DataFrame({'one':[1000,1,2,3,4],'two':[1,2,3,4,2000]})
df
df.replace({1000:1,2000:2})

left=pd.DataFrame({'id':[1,2,3,4],'name':['python','spyder','pandas','anaconda']})
left
right=pd.DataFrame({'id':[1,2,3,4],'name':['pandas','anaconda','python','spyder']})
right
pd.merge(left,right,on='id')


left=pd.DataFrame({'id':[1,2,3,4,5],'name':['python','spyder','pandas','anaconda','SJ']})
left
right=pd.DataFrame({'id':[1,2,3,4],'name':['pandas','anaconda','python','spyder']})
right
pd.merge(left,right,on='id',how='left')

left=pd.DataFrame({'id':[1,2,3,4,5],'name':['python','spyder','pandas','anaconda','SJ']})
right=pd.DataFrame({'id':[1,2,3,4,5],'name':['pandas','anaconda','python','spyder',1]})
pd.merge(left,right,on='id')

left=pd.DataFrame({'id':[1,2,3,4],'name':['python','spyder','pandas','anaconda']})
right=pd.DataFrame({'id':[1,2,3,4],'name':['pandas','anaconda','python','spyder']})
pd.concat([left,right])
pd.concat([left,right],ignore_index=True)
pd.concat([left,right],keys=['s1','s2'])
pd.concat([left,right],keys=['s1','s2'],names=['Series name', 'Row ID'])

pd.datetime.now()
pd.Series(['Jul 31 2009','2010-01-10',None])
pd.to_datetime(pd.Series(['Jul 31 2009','2010-01-10',None]))
pd.Series(pd.date_range(start='01-01-2015',end='31-12-2015'))
pd.date_range(start='01-01-2015',end='31-12-2015')


df=pd.DataFrame(np.random.rand(10,4),columns=['A','B','C','D'],index=['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'])
df
df['a':'c']
df.ix[:,['A','C']]
df.iloc[3]
df.loc[:,['A','C']]

df=pd.DataFrame({'one':[1,1,2,3,2],'two':[1,2,3,4,2]})
df
df['one']==1
df[df['one']==1]
df[(df['one']==1) & (df['two']==1)]

df = pd.DataFrame({'Animal' : ['Falcon', 'Falcon',
                               'Parrot', 'Parrot'],
                   'Max Speed' : [380., 370., 24., 26.]})
df
df.groupby(['Animal']).mean()
df.groupby(['Animal']).sum()
df.groupby(['Animal']).count()

df=pd.DataFrame(np.random.rand(10,4),columns=['a','b','c','d'])
df
df.plot.bar()
df.plot.bar(stacked=True)
df.plot.area()
df=pd.DataFrame(3*np.random.rand(4),index=['a','b','c','d'],columns=['x'])
df
df.plot.pie(subplots=True)
df=pd.DataFrame(np.random.rand(10,4),columns=['a','b','c','d'])
df
df.plot.pie(subplots=True)

df=pd.read_excel('C:\\Users\\CAIA24\\Documents\\Python - Understanding Document.xls',sheet_name='Sheet1')
df

df=pd.read_csv('C:\\Users\\CAIA24\\Documents\\sample.csv')
df
df=pd.read_csv('C:\\Users\\CAIA24\\Documents\\sample.csv',skiprows=2)
df

df=pd.read_csv('C:\\Users\\CAIA24\\Documents\\sample1.csv')
df
df=pd.read_csv('C:\\Users\\CAIA24\\Documents\\sample1.csv',names=['f','g','s','q','a'],header=0)
df
df=pd.read_csv('C:\\Users\\CAIA24\\Documents\\sample1.csv',skiprows=2)
df
