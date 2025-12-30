import math 

def _get_digit(n, digit):
    return (n // pow(10, digit)) % 10

def is_armstrong_number(n):
    if n == 0: return True
        
    digits = int(math.log10(n) + 1)

    rng = range(0, digits) # end exclusive

    t = sum([pow(_get_digit(n, i), digits) for i in rng])

    return t == n
