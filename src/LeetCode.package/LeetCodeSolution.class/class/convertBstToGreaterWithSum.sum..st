private helpers
convertBstToGreaterWithSum: aTreeNode sum: sum
	| tmp |
	^ aTreeNode
		ifNil: [ sum ]
		ifNotNil: [ tmp := (self convertBstToGreaterWithSum: aTreeNode right sum: sum) + aTreeNode val.
			aTreeNode val: tmp.
			tmp := self convertBstToGreaterWithSum: aTreeNode left sum: tmp.
			tmp ]