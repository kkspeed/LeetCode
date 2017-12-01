def findComplement(num):
    """
    solution to #476 Number Complement:
    https://leetcode.com/problems/number-complement/description/
    """
    return ~(-1 << num.bit_length()) & ~num
