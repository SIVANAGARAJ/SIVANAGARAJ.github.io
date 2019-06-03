# -*- coding: utf-8 -*-
"""
Created on Sun May 20 22:13:54 2018

@author: user
"""

class empty:
    pass
obj= empty()
##########class#####
class MyClass:
	"This is my second class"
	a = 10
	def func(self):
		print('Hello')
print(MyClass.a)
##########class&object#########
class MyClass:
	"This is my second class"
	a = 10
	def func(self):
		print('Hello')

ob = MyClass()
print(MyClass.func)
ob.func()
#########

############class###########
class Parrot:
    species = "bird"
    def __init__(self, name, age):
        self.name = name
        self.age = age
        print(name)
        print(age)
blu = Parrot("Blu", 10)
woo = Parrot("Woo", 15)
##########class-method#######
class Parrot:
    def __init__(self, name, age):
        self.name = name
        self.age = age  
    def sing(self, song):
        return "{} sings {}".format(self.name, song)
    def dance(self):
        return "{} is now dancing".format(self.name)
blu = Parrot("Blu", 10)
print(blu.sing("'Happy'"))
print(blu.dance())
############inheritance#########
class ComplexNumber:
    def __init__(self,r = 0,i = 0):
        self.real = r
        self.imag = i

    def getData(self):
        print("{0}+{1}j".format(self.real,self.imag))
c1 = ComplexNumber(2,3)

c1.getData()

# Create another ComplexNumber object
# and create a new attribute 'attr'
c2 = ComplexNumber(5)
c2.attr = 10

# Output: (5, 0, 10)
print((c2.real, c2.imag, c2.attr))

################
class Bird:
    
    def __init__(self):
        print("Bird is ready")

    def whoisThis(self):
        print("Bird")

    def swim(self):
        print("Swim faster")

class Penguin(Bird):

    def __init__(self):
        # call super() function
        super().__init__()
        print("Penguin is ready")

    def whoisThis(self):
        print("Penguin")

    def run(self):
        print("Run faster")

peggy = Penguin()
peggy.whoisThis()
peggy.swim()
peggy.run()

isinstance(peggy,Penguin)
isinstance(peggy,Bird)
issubclass(Penguin,Bird)

############# multilevel inheritance########33
class Base:
    pass

class Derived1(Base):
    pass

class Derived2(Derived1):
    pass

##############multiple#########
class Base:
    pass

class Derived1:
    pass

class Derived2(Base,Derived1):
    pass