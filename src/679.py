import itertools
import sys


def can_calculate_24(lst, allowed, current):
    if current >= len(lst):
        try:
            return int(eval(''.join(lst))) == 24
        except:
            return False
    if current in allowed:
        for sym in allowed[current]:
            lst[current] = sym
            if can_calculate_24(lst, allowed, current + 1):
                return True
            lst[current] = ''
    else:
        if can_calculate_24(lst, allowed, current + 1):
            return True
    return False


def solve(input):
    adjusted = ['', str(input[0]), '', '',
                '', str(input[1]), '', '',
                '', str(input[2]), '', '',
                '', str(input[3]), '']
    allowed = {0: ['(', ' '],
               2: [')', ' '],
               3: ['+', '-', '*', '/'],
               4: ['(', ' '],
               6: [')', ' '],
               7: ['+', '-', '*', '/'],
               8: ['(', ' '],
               10: [')', ' '],
               11: ['+', '-', '*', '/'],
               12: ['(', ' '],
               14: [')', ' ']}
    return can_calculate_24(adjusted, allowed, 0)


if __name__ == '__main__':
    print(any(map(solve, itertools.permutations(sys.argv[1]))))
