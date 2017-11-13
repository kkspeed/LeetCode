private helpers
validateCells: aSudoku
	^(self cells: aSudoku) noneSatisfy: [ :cell | self hasDuplicates: cell cond: [ :array | array select: [ :x | (x = '.') not ] ] ]