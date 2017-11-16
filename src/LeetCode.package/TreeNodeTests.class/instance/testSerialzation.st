tests
testSerialzation
	self
		assert: (TreeNode fromArray: #(1 2 3))
		equals:
			(TreeNode new
				val: 1;
				left: (TreeNode new val: 2);
				right: (TreeNode new val: 3)).
	self assert: (TreeNode fromArray: #()) equals: nil.
	self assert: (TreeNode fromArray: #(1 2 nil 3)) toArray equals: #(1 2 nil 3) asOrderedCollection.
	self
		assert: (TreeNode fromArray: #(6 4 8 3 5 7 nil 1 2))
		equals:
			(TreeNode new
				val: 6;
				left:
					(TreeNode new
						val: 4;
						left:
							(TreeNode new
								val: 3;
								left: (TreeNode new val: 1);
								right: (TreeNode new val: 2));
						right: (TreeNode new val: 5));
				right:
					(TreeNode new
						val: 8;
						left: (TreeNode new val: 7)))