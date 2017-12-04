solve
solve224BasicCalculator: aString
	"Sol to LeetCode #224: https://leetcode.com/problems/basic-calculator/description"

	^ self evalRPN: (self convertToRPN: aString)