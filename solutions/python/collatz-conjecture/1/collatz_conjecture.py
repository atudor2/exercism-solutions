def steps(number):
    if number < 1:
        raise ValueError("Only positive integers are allowed")

    steps = 0
    n = number
    while n != 1:
        if n % 2 == 0:
            n = n / 2
        else:
            n = (n * 3) + 1
        steps += 1
        
    return steps