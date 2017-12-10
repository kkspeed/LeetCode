def findTheDifference(s, t):
    """
    Solution for LeetCode #389:
    https://leetcode.com/problems/find-the-difference/description/
    """
    s = sorted(s)
    t = sorted(t)
    
    for i in xrange(len(s)):
        if s[i] != t[i]:
            return t[i]
        
    return t[-1]
        
