tests
testRun
	self assert: (LeetCodeSolution solve508MostFrequentSubtreeSum: (TreeNode fromArray: #())) isEmpty.
	self assert: (LeetCodeSolution solve508MostFrequentSubtreeSum: (TreeNode fromArray: #(5 1 2))) asSet equals: #(1 2 8) asSet.
	self assert: (LeetCodeSolution solve508MostFrequentSubtreeSum: (TreeNode fromArray: #(5 2 -5))) asSet equals: #(2) asSet