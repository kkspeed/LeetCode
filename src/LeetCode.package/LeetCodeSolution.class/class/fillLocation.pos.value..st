private helpers
fillLocation: aSudoku pos: position value: v
	(aSudoku at: position x) at: position y put: v.
	^aSudoku