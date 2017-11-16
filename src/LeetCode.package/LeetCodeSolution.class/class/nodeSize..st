private helpers
nodeSize: aTreeNode
	^ aTreeNode left ifNil: [ 0 ] ifNotNil: [ aTreeNode left val x ]