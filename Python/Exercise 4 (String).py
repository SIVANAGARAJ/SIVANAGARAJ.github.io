# -*- coding: utf-8 -*-
"""
Created on Thu May 23 09:56:46 2019

@author: Training29
"""

####1. WITHOUT USING LEN() FUNCTION ########

str = input("Enter a String: ")
Counter = 0
for s in str:
        Counter = Counter + 1
print("Length of a Sring: ", Counter)

######OR USING LIBRARY FUNCTION ######

str = input("Enter a String: ")
a = len(str)
print("Length of a String: ", a)

######2. ###########

def char_frequency(str1):
    dict = {}
    for n in str1:
        keys = dict.keys()
        if n in keys:
            dict[n] += 1
        else:
            dict[n] = 1
    return dict
print(char_frequency('Vijayakumar'))

######3.###############
def string_both_ends(str):
  if len(str) < 2:
    return ''

  return str[0:2] + str[-2:]

print(string_both_ends('Vijayakumar'))
print(string_both_ends('Vi'))
print(string_both_ends('V'))

#######4.##############
def change_char(str1):
  char = str1[0]
  str1 = str1.replace(char, '$')
  str1 = char + str1[1:]

  return str1

print(change_char('ajay'))


#######5.##############
def chars_mix_up(a, b):
  new_a = b[:2] + a[2:]
  new_b = a[:2] + b[2:]

  return new_a + ' ' + new_b
print(chars_mix_up('vijay', 'ajay'))

######6.################
def add_string(str1):
  length = len(str1)

  if length > 2:
    if str1[-3:] == 'ing':
      str1 += 'ly'
    else:
      str1 += 'ing'

  return str1
print(add_string('vi'))
print(add_string('vij'))
print(add_string('vijing'))
#######7.################
def not_poor(str1):
  snot = str1.find('not')
  spoor = str1.find('poor')
  

  if spoor > snot and snot>0 and spoor>0:
    str1 = str1.replace(str1[snot:(spoor+4)], 'good')
    return str1
  else:
    return str1
print(not_poor('Vijay is not that poor!'))
print(not_poor('Ajay is poor!'))

######8. ################
def longestword(words_list):
    word_len = []
    for n in words_list:
        word_len.append((len(n), n))
    word_len.sort()
    return word_len[-1][1]

print(longestword(["Ajay", "Vijayakumar", "Manimaran"]))

######9.################
def remove_char(str, n):
      first_part = str[:n] 
      last_part = str[n+1:]
      return first_part + last_part
print(remove_char('Vijayakumar', 0))
print(remove_char('Vijayakumar', 3))
print(remove_char('Vijayakumar', 5))

######10.################
def change_sring(str1):
      return str1[-1:] + str1[1:-1] + str1[:1]
	  
print(change_sring('vijay'))
print(change_sring('8974'))

#######11. ##############
def odd_values_string(str):
  result = "" 
  for i in range(len(str)):
    if i % 2 == 0:
      result = result + str[i]
  return result

print(odd_values_string('vijay'))
print(odd_values_string('ajay kumar'))

#####12. ###############
def word_count(str):
    counts = dict()
    words = str.split()

    for word in words:
        if word in counts:
            counts[word] += 1
        else:
            counts[word] = 1

    return counts

print( word_count('Hope for the best, prepare for the worst'))

########13. ###############
user_input = input("Enter the String: ")
print("My favourite language is ", user_input.upper())
print("My favourite language is ", user_input.lower())

#######14. ####################
items = input("Input comma separated sequence of words: ")
words = [word for word in items.split(",")]
print(",".join(sorted(list(set(words)))))

########15. #################
def add_tags(tag, word):
	return "<%s>%s</%s>" % (tag, word, tag)
print(add_tags('v', 'Vijaya kumar'))
print(add_tags('a', 'Ajay'))

######16. ####################
def insert_sting_middle(str, word):
	return str[:7] + word + str[7:]

print(insert_sting_middle('Python  Language', 'Easiest'))

########17. ##############
def String_made(str):
	sub_str = str[-2:]
	return sub_str * 4

print(String_made('Vijayakumar'))
print(String_made('Aj'))

########18.Divide of 4 ###############
def reverse_string(str1):
    if len(str1) % 4 == 0:
       return ''.join(reversed(str1))
    return str1

print(reverse_string('ajay'))
print(reverse_string('vijayakumar'))

########19. #######################
def uppercase(str1):
    num_upper = 0
    for letter in str1[:4]: 
        if letter.upper() == letter:
            num_upper += 1
    if num_upper >= 2:
        return str1.upper()
    return str1

print(uppercase('Vijay'))
print(uppercase('AjaYkumar'))

#######20. ###############
string = "Vijayakumar"
print(string.startswith("Vi"))



