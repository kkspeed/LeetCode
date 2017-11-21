tests
testCases
	self assert: (LeetCodeSolution solve538ConvertBstToGreaterTree: nil) equals: nil.
	self assert: (LeetCodeSolution solve538ConvertBstToGreaterTree: (TreeNode fromArray: #(5 2 13))) equals: (TreeNode fromArray: #(18 20 13)).