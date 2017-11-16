tests
testInorderTraversal
	self assert: (TreeNode fromArray: #(1 2 3)) inOrder equals: #(2 1 3) asOrderedCollection.
	self assert: (TreeNode fromArray: #(1 nil 2 3)) inOrder equals: #(1 3 2) asOrderedCollection.