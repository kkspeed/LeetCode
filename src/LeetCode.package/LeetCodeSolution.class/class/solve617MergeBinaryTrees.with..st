solve
solve617MergeBinaryTrees: n1 with: n2
	^ n1
		ifNil: [ n2 ]
		ifNotNil: [ n2
				ifNil: [ n1 ]
				ifNotNil: [ TreeNode new
						val: n1 val + n2 val;
						left: (self solve617MergeBinaryTrees: n1 left with: n2 left);
						right: (self solve617MergeBinaryTrees: n1 right with: n2 right) ] ]