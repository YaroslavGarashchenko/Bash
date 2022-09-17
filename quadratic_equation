# The function, that should find the roots of quadratic equation need to be implemented. 
# Quadratic equation should be in classic form: ax^2+bx+c=0, so 
# a,b,c will be entered from user input.

import sys
from asyncore import read

def is_num(n):
    if isinstance(n, int):
        return True
    if isinstance(n, float):
        return True
    return False

def ask_value(message):
    '''Function should ask user for input, and then return variable. Good to have additional input validation here.'''
    print(message)
    try:
        a = float(input('a = '))
        b = float(input('b = '))
        c = float(input('c = '))
        if not (is_num(a) and is_num(b) and is_num(c)):
            print("Data type problem")
        return (a, b, c)
    except:
        print("Something went wrong. Data type problem")
        sys.exit()
        
def discriminant(a,b,c):
    discr_num = b**2 - (4 * a * c)
    if discr_num < 0 :
        print("discriminant value less zero")
        sys.exit()
    return discr_num**(0.5)

def main():
    '''Program will be started, and all required data asked.'''
    message="Solving a quadratic equation aX^2+bX+c=0. Enter Equation Coefficients:"
    (a, b, c) = ask_value(message)
    solv_square(a,b,c)

def roots(d,a,b,c):
    x1 = (-b + d) / (2*a)
    x2 = (-b - d) / (2*a)
    if d == 0:
        print("x1 = ", x1)
    else:
        print("x1 = ", x1, "; x2 = ", x2)

def solv_square(a,b,c):
    d = discriminant(a,b,c)
    roots(d,a,b,c)
    
main()
