private helpers
markSize: aTreeNode
	| sz |
	^ aTreeNode
		ifNil: [ 0 ]
		ifNotNil: [ sz := (self markSize: aTreeNode left) + (self markSize: aTreeNode right) + 1.
			aTreeNode val: aTreeNode val @ sz.
			sz ]