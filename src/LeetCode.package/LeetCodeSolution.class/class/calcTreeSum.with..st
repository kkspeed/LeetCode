private helpers
calcTreeSum: aNode with: aDict
	"comment stating purpose of message"

	| sum |
	^ aNode
		ifNil: [ 0 ]
		ifNotNil: [ sum := self calcTreeSum: aNode left with: aDict.
			sum := sum + (self calcTreeSum: aNode right with: aDict).
			sum := sum + aNode val.
			aDict at: sum put: (aDict at: sum ifAbsent: 0) + 1.
			sum ]