def equilateral(sides):
    if sides == [0,0,0]: return False
        
    return sides[0] == sides [1] == sides[2]
    
def isosceles(sides):
    if sides == [0,0,0]: return False
    a, b, c = sides

    return _is_triangle(sides) and (a == b or a == c or b == c)


def scalene(sides):
    return _is_triangle(sides) and len(set(sides)) == 3

def _is_triangle(sides):
    a, b, c = sides

    return (a+b) >= c and (b+c) >= a and (a+c) >= b