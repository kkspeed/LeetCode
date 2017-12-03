def guessNumber(n):
    """
    LeetCode #374
    https://leetcode.com/problems/guess-number-higher-or-lower/description/ 
    :type n: int
    :rtype: int
    """
    low = 1
    high = n
    current = (n + 1) // 2
    g = guess(current)
    while g != 0:
        if g == 1:
            if low == current:
                current += 1
            low = current
        if g == -1:
            if high == current:
                current -= 1
            high = current
        current = (low + high)  // 2
        g = guess(current)
    return current
