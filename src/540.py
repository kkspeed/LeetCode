#!/usr/bin/python3
from functools import reduce


def singleNonDuplicate(nums):
    """
    Solution to LeetCode #540.
    See: https://leetcode.com/problems/single-element-in-a-sorted-array/description/
    """
    start_index = 0
    end_index = len(nums) - 1
    length = len(nums)

    while length > 3:
        mid = (start_index + end_index) // 2
        if nums[mid] == nums[mid + 1]:
            mid += 1
        left_length = mid - start_index + 1
        if nums[mid] == nums[mid-1] and left_length % 2 == 0:
            start_index = mid + 1
        else:
            end_index = mid
        length = end_index - start_index + 1

    return reduce(lambda x, y: x ^ y, nums[start_index:end_index + 1])
