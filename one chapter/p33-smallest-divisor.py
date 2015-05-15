def smallest_divisor(n):
    return find_divisor(n, 2)

def find_divisor(n, test_divisor):
    if (test_divisor ** 2) > n:
        return n
    elif n % test_divisor == 0:
        return test_divisor
    else:
        return find_divisor(n, test_divisor + 1)

if __name__ == '__main__':
    print smallest_divisor(199)
    print smallest_divisor(1999)
    print smallest_divisor(19999)
