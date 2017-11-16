tests
testKthSmallestBST
	| bst |
	bst := TreeNode new
		val: 3;
		left: nil;
		right: nil.
	self assert: (LeetCodeSolution solve230KthSmallestBST: bst kth: 1) val equals: 3.
	bst := TreeNode new
		val: 3;
		left:
			(TreeNode new
				val: 2;
				left: nil;
				right: nil);
		right:
			(TreeNode new
				val: 4;
				left: nil;
				right: nil).
	self assert: (LeetCodeSolution solve230KthSmallestBST: bst kth: 1) val equals: 2.
	self assert: (LeetCodeSolution solve230KthSmallestBST: bst kth: 3) val equals: 4