# -*- coding: utf-8 -*-
"""
Created on Thu May 30 10:42:14 2019

@author: Training29
"""

###1.a Import pandas under the name pd.#####
import pandas as pd

###1.b.Print the version of pandas that has been imported.  #####
pd.__version__

###1.c.Print out all the version information of the libraries that are required by the pandas library.#####
pd.show_versions()

###2.Consider the following Python dictionary data and Python list labels:
import numpy as np
data = {'animal': ['cat', 'cat', 'snake', 'dog', 'dog', 'cat', 'snake', 'cat', 'dog', 'dog'],
 'age': [2.5, 3, 0.5, np.nan, 5, 2, 4.5, np.nan, 7,3],
 'visits': [1, 3, 2, 3, 2, 3, 1, 1, 2, 1],
 'priority': ['yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no','no']}

labels = ['l', 'a', 'v', 'w', 'e', 'd', 's', 'v', 'i', 'j']

###.a) Create a DataFrame df from this dictionary data which has the index labels.
df = pd.DataFrame(data, index = labels)
print(df)

###.b) Display a summary of the basic information about this DataFrame and its data

df.info()

###..or...##

df.describe()

### c.) Return the first 3 rows of the DataFrame df.
df.iloc[:3]

#### or equivalently

df.head(3)

#### d.)Select just the 'animal' and 'age' columns from the DataFrame df.
df.loc[:,['animal','age']]

###or

df[['animal','age']]

### e.)Select the data in rows [3, 4, 8] and in columns ['animal', 'age'].

df.loc[df.index[[3,4,8]],['animal','age']]

### f.)Select only the rows where the number of visits is greater than 3.
df[df['visits']>3]
### g.)Select the rows where the age is missing, i.e. is NaN.
df[df['age'].isnull()]

### h.)Select the rows the age is between 2 and 4 (inclusive).
df[df['age'].between(2,4)]

### i) Calculate the sum of all visits (the total number of visits).
df['visits'].sum()

### j) Append a new row 'k' to df with your choice of values for each column. Then delete that row to return the original DataFrame.

df.loc['k'] = [5.5,'dog','no',2]

# and then deleting the new row...

df=df.drop('k')

### k)The 'priority' column contains the values 'yes' and 'no'. Replace this column with a column of
boolean values: 'yes' should be Trueand 'no' should be False.

df['priority'] = df['priority'].map({'yes': True, 'no': False})

####3.You have a DataFrame df with a column 'A' of integers. For example:
 df = pd.DataFrame({'A': [1, 2, 2, 3, 4, 5, 5, 5, 6, 7, 7]})
 print(df)
##### How do you subtract the row mean from each element in the row?
 
df.sub(df.mean(axis=1), axis=0)

#####4.a) Create a DatetimeIndex that contains each business day of 2015 and use it to index a Series of random numbers. Let's call this Series s

dti = pd.date_range(start='2015-01-01', end='2015-12-31', freq='B') 
s = pd.Series(np.random.rand(len(dti)), index=dti)
print(s)

#### b.)Find the sum of the values in s for every Wednesday.
a = s[s.index.weekday == 2].sum()
print(a) 

#### c.)For each calendar month in s, find the mean of values.###

x=s.resample('M').mean()
print(x)

### d.)Create a DateTimeIndex consisting of the third Thursday in each month for the years 2015 and 2016.

x=pd.date_range('2015-01-01', '2016-12-31', freq='WOM-3THU')
print(x)

####5.a.)Some values in the Flight Number column are missing. These numbers are meant to
### increase by 10 with each row so 10055 and 10075 need to be put in place. Fill in these
## missing numbers and make the column an integer column ######

df = pd.DataFrame({'From_To': ['LoNDon_paris', 'MAdrid_miLAN', 'londON_StockhOlm',
 'Budapest_PaRis', 'Brussels_londOn'],
 'FlightNumber': [10045, np.nan, 10065, np.nan, 10085],
 'RecentDelays': [[23, 47], [], [24, 43, 87], [13], [67, 32]],
 'Airline': ['KLM(!)', '<Air France> (12)', '(British Airways. )',
 '12. Air France', '"Swiss Air"']})

df['FlightNumber'] = df['FlightNumber'].interpolate().astype(int)

### b.)The From_To column would be better as two separate columns! Split each string on the
### underscore delimiter _ to give a new temporary Data Frame with the correct values. Assign
### the correct column names to this temporary Data Frame.

temp = df.From_To.str.split('_', expand=True)
temp.columns = ['From', 'To']
print(temp)

### c.) n the Airline column, you can see some extra punctuation and symbols have appeared
### around the airline names. Pull out just the airline name. E.g. '(British Airways.
### )' should become 'British Airways'.

df['Airline'] = df['Airline'].str.extract('([a-zA-Z\s]+)', expand=False).str.strip()
print(df['Airline'])


##### Doubt #######

### 6. Given the lists letters = ['A', 'B', 'C'] and numbers = list(range(10)), construct
### a Multi Index object from the product of the two lists. Use it to index a Series of random numbers.
### Call this Series s.

## a.) Select the labels 1, 3 and 6 from the second level of the Multi Indexed Series

letters = ['A', 'B', 'C']
numbers = list(range(10))

mi = pd.MultiIndex.from_product([letters, numbers])
s = pd.Series(np.random.rand(30), index=mi)
print(s)

s.loc[:,[1,3,6]]

## b.)Slice the Series s; slice up to label 'B' for the first level and from label 5 onwards for the second level.

s.loc[pd.IndexSlice[:'B',:5]]

# or equivalently without IndexSlice...

s.loc[slice(None,'B'),slice(5,None)]

### c.) Sum the values in s for each label in the first level (you should have Series giving you a total for labels A, B and C).

s.sum(level=0)


### 7.Create a pandas series from: a list, numpy and a dictionary ###

### Create a pandas series from: dictionary
import pandas as pd
dict = {'A' : 50, 'B' : 10, 'C' : 80}
series = pd.Series(dict, index =['B', 'C', 'D', 'A'])
print(series)

### Create a pandas series from: list
import pandas as pd
x = pd.Series([10, 20, 30, 40, 50], index =['a', 'b', 'c', 'd', 'e'])
print(x)

### Create a pandas series from: numpy
np_array = np.array([10, 20, 30, 40, 50])
print("NumPy array:")
print(np_array)
series = pd.Series(np_array)
print("Converted Pandas series:")
print(series)

### 8.How to combine many series to form a data frame?

s1=pd.Series([100,200,'vijay',450,500])
s2=pd.Series([10,20,'raj',40,50,])
s3=pd.Series([35,45,'siva',65,75])
s4=pd.Series([150,250,'mani',300,350])
print("Data Series:")
print(s1)
print(s2)
print(s3)
print(s4)
df=pd.concat([s1,s2,s3,s4],axis=1)
print("New DataFrame:")
print(df)

#### 9.How to get the items of series A not present in series B?

s1 = pd.Series([1,4,7,2,5,8])
s2 = pd.Series([2,6,8,9,4,12])
op = s1[~s1.isin(s2)]
print(op)

###10. How to get the items not common to both series A and series B?

s1 = pd.Series([1,4,7,2,5,8])
s2 = pd.Series([2,6,8,9,4,12])
s_u = pd.Series(np.union1d(s1,s2))
s_i = pd.Series(np.intersect1d(s1,s2))
op = s_u[~s_u.isin(s_i)]
print(s_u)

###11.How to get frequency counts of unique items of a series?

series = pd.Series(np.take(list('vijayakumar'), np.random.randint(5, size=20)))

series.value_counts()

####12. How to bin a numeric series to 10 groups of equal size?
series = pd.Series(np.random.random(40))
print(series.head())

pd.qcut(series, q=[0, .10, .20, .3, .4, .5, .6, .7, .8, .9, 1], 
labels=['1st', '2nd', '3rd', '4th', '5th', '6th', '7th', '8th', '9th', '10th']).head()

### 13. How to stack two series vertically and horizontally ?
s1 = pd.Series(range(5))
s2 = pd.Series(list('vijay'))
s1.append(s2)
df = pd.concat([s1,s2], axis=1)
print(df)

### 14. How to convert the first character of each element in a series to uppercase?

s = pd.Series(['vijay','ajay','ravi','sanjay','siva'])
pd.Series([i.title() for i in s])

####15. . How to compute difference of differences between consecutive numbers of a series?

s = pd.Series([1,4,7,2,5,8,3,6,9,12])
print(s.diff().tolist())
print(s.diff().diff().tolist())    

###16. Use this dataset

## a.) Rename the column Type as CarType in df and replace the ‘.’ in column names with ‘_’.

df = pd.read_csv('https://raw.githubusercontent.com/selva86/datasets/master/Cars93_miss.csv')

df = df.rename(columns = {'Type': 'CarType'})

###or

df.columns.values[2] = "CarType"

df.columns = df.columns.map(lambda x: x.replace('.','_'))
print(df.columns)

### b.)Check if a data frame has any missing values

df = pd.read_csv('https://raw.githubusercontent.com/selva86/datasets/master/Cars93_miss.csv')

df.isnull().values.any()

## c.) Count the number of missing values in each column

df = pd.read_csv('https://raw.githubusercontent.com/selva86/datasets/master/Cars93_miss.csv')

n_missings_each_col = df.apply(lambda x: x.isnull().sum())
print(n_missings_each_col)

## d.) Replace missing values of multiple numeric columns with the mean

df = pd.read_csv('https://raw.githubusercontent.com/selva86/datasets/master/Cars93_miss.csv')

df_out = df[['Price', 'Length']] = df[['Price', 'Length']].apply(lambda x: x.fillna(x.mean()))

print(df_out.head())

### otherwise can use columns 'Min.Price' & 'Max.Price' ###

### e.) Select a specific column from a data frame as a data frame instead of a series

df = pd.DataFrame(np.arange(20).reshape(-1, 5), columns=list('vijay'))

type(df[['a']])
type(df.loc[:, ['a']])
type(df.iloc[:, [3]])

type(df.a)
type(df['a'])
type(df.loc[:, 'a'])
type(df.iloc[:, 4])

### f.) Change the order of columns of a data frame

df = pd.DataFrame(np.arange(20).reshape(-1, 5), columns=list('vijay'))

df[list('jivay')]

def switch_columns(df, col1=None, col2=None):
    colnames = df.columns.tolist()
    i1, i2 = colnames.index(col1), colnames.index(col2)
    colnames[i2], colnames[i1] = colnames[i1], colnames[i2]
    return df[colnames]
df1 = switch_columns(df, 'v', 'j')

df[sorted(df.columns)]

### g.) Set the number of rows and columns displayed in the output

df = pd.read_csv('https://raw.githubusercontent.com/selva86/datasets/master/Cars93_miss.csv')
pd.set_option('display.max_columns', 10)
pd.set_option('display.max_rows', 10)
df

## h.) Format all the values in a data frame as percentages

df = pd.DataFrame(np.random.random(5), columns=['random'])
df
df['random'].map(lambda n:'{:.2%}'.format(n))


##i.) Reverse the rows of a data frame

df = pd.DataFrame(np.arange(25).reshape(5, -1))

df.iloc[::-1, :]

### 17. Replace both values in both diagonals of df with 0.

df = pd.DataFrame(np.random.randint(1,100, 100).reshape(10, -1))
df
for i in range(df.shape[0]):
    df.iat[i, i] = 0
    df.iat[df.shape[0]-i-1, i] = 0
    print(df)

18.Use Iris dataset 
import pandas as pd
import numpy as np
colnames=['sepal_length', 'sepal_width', 'petal_length', 'petal_width', 'species']
iris = pd.read_csv(r'C:\Users\Training28/IRIS.csv',names=colnames)
 
a) Set the values of the rows 10 to 29 of the column 'petal_length' to NaN & substitute the NaN values to 1.0 

iris.describe()
iris.head(3)
pd.Index(iris)
iris['petal_length'].loc[10:29]=np.nan
iris['petal_length'].loc[10:29]=float(1.0)
iris['petal_length'].loc[10:29]

    
    
b) delete the column class, Set the first 3 rows as NaN , Delete the rows that have NaN , Reset the index so it begins with 0 again
iris.reindex=(['a','b','c'])

    
    
    
19. Create the 3 Data Frames based on the following raw data
raw_data_1 = { 'subject_id': ['1', '2', '3', '4', '5'], 'first_name': ['Alex', 'Amy', 'Allen', 'Alice', 'Ayoung'], 'last_name': ['Anderson', 'Ackerman', 'Ali', 'Aoni', 'Atiches']}
raw_data_2 = { 'subject_id': ['4', '5', '6', '7', '8'], 'first_name': ['Billy', 'Brian', 'Bran', 'Bryce', 'Betty'], 'last_name': ['Bonder', 'Black', 'Balwner', 'Brice', 'Btisan']}
raw_data_3 = { 'subject_id': ['1', '2', '3', '4', '5', '7', '8', '9', '10', '11'], 'test_id': [51, 15, 15, 61, 16, 14, 15, 1, 61, 16]}


a) Join the two data frames along rows and assign all_data 

# we cannot directly join,merge or concat using a dictionary data. 
# have to converte to dataframe then only we can do that

raw1=pd.DataFrame(raw_data_1)    
print(raw1)

raw2=pd.DataFrame(raw_data_2)
raw3=pd.DataFrame(raw_data_3)

all_data = pd.merge(left=raw1, right=raw2,
how='outer', left_index=False,
right_index=False)

result1 = pd.merge(raw1, raw2, on='subject_id') #Displays merged data which is matching only 
print(result1)

all_data = raw1.append(raw2, ignore_index=True)

# without using the pd values - from dictionary and output dictionary    
z = {**raw_data_1, **raw_data_2}    
print(z)    

from collections import defaultdict

all_data = defaultdict(list)

for all_data in (raw_data_1, raw_data_2):
    for key, value in all_data.items():
        all_data[key].append(value)   

print(all_data)    

b) Join the two data frames along columns and assing to all_data_col 
    


all_data_col = pd.merge(left=raw1, right=raw2,
how='left', left_on='subject_id',
right_on='subject_id')

df_new = raw1.join(other=raw2, on='subject_id',
how='outer')    

df = raw1.append([raw1, raw2])
    
c) Merge all data and data3 along the subject_id value 

df_new = pd.merge(left=raw1, right=raw3,
how='right', left_on='subject_id',
right_on='subject_id')


d) Merge only the data that has the same 'subject_id' on both data1 and data2

df1_new = pd.merge(left=raw1, right=raw2,
how='inner', left_on='subject_id',
right_on='subject_id')



e) Merge all values in data1 and data2, with matching records from both sides where available.
    
from sklearn.datasets import load_iris
iris = load_iris()
iris.keys()
iris.feature_names

   




















