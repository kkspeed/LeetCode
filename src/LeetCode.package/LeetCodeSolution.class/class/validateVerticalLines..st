private helpers
validateVerticalLines: aSudoku
	| cols |
	cols := (1 to: (aSudoku at: 1) size)
		collect: [ :col | (1 to: aSudoku size) collect: [ :row | (aSudoku at: row) at: col ] ].
	^ (1 to: (aSudoku at: 1) size)
		noneSatisfy: [ :i | self hasDuplicates: (cols at: i) cond: [ :array | array select: [ :x | (x = '.') not ] ] ]