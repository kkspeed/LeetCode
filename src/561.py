"""
LeetCode #561:
https://leetcode.com/problems/array-partition-i/description/
"""
class Solution(object):
    def arrayPairSum(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        return sum(sorted(nums)[::2])
