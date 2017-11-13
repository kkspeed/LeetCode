private helpers
validateHorizontalLines: aSudoku
	^(1 to: aSudoku size) noneSatisfy: [ :i |
		self hasDuplicates: (aSudoku at: i) cond: [ :array | array select: [ :x | (x = '.') not ] ]
	]