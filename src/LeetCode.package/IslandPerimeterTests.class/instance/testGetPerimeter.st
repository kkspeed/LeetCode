tests
testGetPerimeter
	self assert: (LeetCodeSolution getPerimeterCell: #(#(1 0 0)) at: 1 @ 1 dimen: 1 @ 3) equals: 4.
	self assert: (LeetCodeSolution getPerimeterCell: #(#(1 1 1)) at: 1 @ 2 dimen: 1 @ 3) equals: 2.
	self assert: (LeetCodeSolution getPerimeterCell: #(#(1 1 1) #(1 1 1) #(1 1 1)) at: 2 @ 2 dimen: 3 @ 3) equals: 0