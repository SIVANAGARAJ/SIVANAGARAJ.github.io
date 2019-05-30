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

s.loc[pd.IndexSlice[:'B',5:]]

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










































