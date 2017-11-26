tests
testRun
	self assert: (LeetCodeSolution solve617MergeBinaryTrees: (TreeNode fromArray: #(1 3 2 5)) with: (TreeNode fromArray: #(2 1 3 nil 4 nil 7))) toArray equals: #(3 4 5 5 4 nil 7) asOrderedCollection.
	self assert: (LeetCodeSolution solve617MergeBinaryTrees: (TreeNode fromArray: #()) with: (TreeNode fromArray: #())) equals: nil