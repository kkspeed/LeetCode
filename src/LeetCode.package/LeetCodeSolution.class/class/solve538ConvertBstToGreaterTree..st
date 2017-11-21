solve
solve538ConvertBstToGreaterTree: aTreeNode
	self convertBstToGreaterWithSum: aTreeNode sum: 0.
	^ aTreeNode