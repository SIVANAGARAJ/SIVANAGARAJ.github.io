try:
    x=int(input('n= '))
except ValueError:
    print('Invalid Number')
else:
    print('The number is ',x)
finally:
    print('Thank You')
    
def Division(x,y):
    try:
        result=x/y
    except ZeroDivisionError:
        print('Division by Zero!')
    else:
        print('The result is',result)
        
Division(5,0)
Division(5,2)

try:
    f=open('C:\\Users\\CAIA24\\Documents\\sample.txt')
except IOError:
    print('Cannot Open')
else:
    print(len(f.readlines()))
finally:
    print('Thank You')

class Error(Exception):
    pass

class ValueTooSmallError(Error):
    pass

class ValueTooLargeError(Error):
    pass

x=int(input('n= '))
if x<5:
    raise ValueTooSmallError
elif x>5:
    raise ValueTooLargeError


try:
    x=int(input('n= '))
    if x<5:
        raise ValueTooSmallError
    elif x>5:
        raise ValueTooLargeError
except ValueTooSmallError:
    print('The value is too small')
except ValueTooLargeError:
    print('The value is too large')
else:
    print(x)

help('except')
help('EXCEPTIONS')
help(Exception)

