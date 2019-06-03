# -*- coding: utf-8 -*-
"""
Created on Mon Jun  3 09:46:34 2019

@author: Training29
"""

# -*- coding: utf-8 -*-
"""
Created on Sun Jun  2 18:12:46 2019
@author: hzhou
"""

###1 a) Write a Python script to display the Current date and time
import datetime
now = datetime.datetime.now()
print ("Current date and time : ")
print (now.strftime("%Y-%m-%d %H:%M:%S"))

#### b) Write a Python script to display the  Current year
print("Current year: ", datetime.date.today().strftime("%Y"))

###### c) Write a Python script to display the  Month of year
print("Month of year: ", datetime.date.today().strftime("%B"))

###### d) Write a Python script to display the  Week number of the year
print("Week number of the year: ", datetime.date.today().strftime("%W"))

#### e) Write a Python script to display the Weekday of the week
print("Weekday of the week: ", datetime.date.today().strftime("%w"))

#### f)  Write a Python script to display the  Day of year

print("Day of year: ", datetime.date.today().strftime("%j"))

#### g) Write a Python script to display the   Day of the month
print("Day of the month : ", datetime.date.today().strftime("%d"))

#### h) Write a Python script to display the   Day of week
print("Day of week: ", datetime.date.today().strftime("%A"))

### 2. Write a Python program to determine whether a given year is a leap year.

def leap_year(y):
    if y % 400 == 0:
        return True
    if y % 100 == 0:
        return False
    if y % 4 == 0:
        return True
    else:
        return False
print(leap_year(1900))
print(leap_year(2004))

#### 3. Write a Python program to convert a string to datetime.

from datetime import datetime
date_object = datetime.strptime('Jul 1 2014 2:43PM', '%b %d %Y %I:%M%p')
print(date_object)

### 4. Write a Python program to get the current time in Python

import time
print()
print(time.ctime())
print()

### 5. Write a Python program to subtract five days from current date.

from datetime import date, timedelta
dt = date.today() - timedelta(5)
print('Current Date :',date.today())
print('5 days before Current Date :',dt)

### 6. Write a Python program to convert unix timestamp string to readable date

import datetime
print(
    datetime.datetime.fromtimestamp(
        int("1284105682")
    ).strftime('%Y-%m-%d %H:%M:%S')
)
    
### 7. Write a Python program to print yesterday, today, tomorrow.
    
import datetime 
today = datetime.date.today()
yesterday = today - datetime.timedelta(days = 1)
tomorrow = today + datetime.timedelta(days = 1) 
print('Yesterday : ',yesterday)
print('Today : ',today)
print('Tomorrow : ',tomorrow)

### 8.  Write a Python program to convert the date to datetime (midnight of the
### date) in Python

from datetime import date
from datetime import datetime
dt = date.today()
print(datetime.combine(dt, datetime.min.time()))

### 9.  Write a Python program to print next 5 days starting from today.

import datetime
base = datetime.datetime.today()
for x in range(0, 5):
      print(base + datetime.timedelta(days=x))
      
### 10.  Write a Python program to add 5 seconds with the current time
      
import datetime
x= datetime.datetime.now()
y = x + datetime.timedelta(0,5)
print(x.time())
print(y.time())

#### 11. Write a Python program to convert Year/Month/Day to Day of Year in
### Python.

import datetime
today = datetime.datetime.now()
day_of_year = (today - datetime.datetime(today.year, 1, 1)).days + 1
print(day_of_year)

### 12.  Write a Python program to get current time in milliseconds in Python
import time
milli_sec = int(round(time.time() * 1000))
print(milli_sec)

#### 13.  Write a Python program to get week number.
import datetime
print(datetime.date(2015, 6, 16).isocalendar()[1])

#### 14.  Write a Python program to find the date of the first Monday of a given week

import time
print(time.asctime(time.strptime('2015 50 1', '%Y %W %w')))

### 15. Write a Python program to select all the Sundays of a specified year.

from datetime import date, timedelta

def all_sundays(year):
# January 1st of the given year
       dt = date(year, 1, 1)
# First Sunday of the given year       
       dt += timedelta(days = 6 - dt.weekday())  
       while dt.year == year:
          yield dt
          dt += timedelta(days = 7)
          
for s in all_sundays(2020):
   print(s)
   
#### 16.  Write a Python program to get days between two dates
   
from datetime import date
f_date = date(2014, 7, 2)
l_date = date(2014, 7, 11)
delta = l_date - f_date
print(delta.days)

### 17. Write a Python program to get the date of the last Tuesday.

from datetime import date
from datetime import timedelta
today = date.today()
offset = (today.weekday() - 1) % 7
last_tuesday = today - timedelta(days=offset)
print(last_tuesday)

#### 18. Write a Python program to get the last day of a specified year and month

import calendar
year = 2015
month = 2
print(calendar.monthrange(year, month)[1])

#### 19. Write a Python program to get the number of days of a given month and year

from calendar import monthrange
year = 2016
month = 2
print(monthrange(year, month))

#### 20. Write a Python program to convert a date to the timestamp.

import time
import datetime
now = datetime.datetime.now()
print()
print(time.mktime(now.timetuple()))
print()

#### 21. Write a Python program to convert a string date to the timestamp.

import time
import datetime
s = "01/10/2016"
print()
print(time.mktime(datetime.datetime.strptime(s, "%d/%m/%Y").timetuple()))
print()

#### 22. Write a Python program to convert two date difference in days, hours,
 ### minutes, seconds.
 
from datetime import datetime, time

def date_diff_in_seconds(dt2, dt1):
  timedelta = dt2 - dt1
  return timedelta.days * 24 * 3600 + timedelta.seconds

def dhms_from_seconds(seconds):
	minutes, seconds = divmod(seconds, 60)
	hours, minutes = divmod(minutes, 60)
	days, hours = divmod(hours, 24)
	return (days, hours, minutes, seconds)

#Specified date
date1 = datetime.strptime('2015-01-01 01:00:00', '%Y-%m-%d %H:%M:%S')

#Current date
date2 = datetime.now()

print("\n%d days, %d hours, %d minutes, %d seconds" % dhms_from_seconds(date_diff_in_seconds(date2, date1)))
print()


