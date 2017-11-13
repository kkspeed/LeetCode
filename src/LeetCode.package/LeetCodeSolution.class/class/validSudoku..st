private helpers
validSudoku: aSudoku
	^((self validateHorizontalLines: aSudoku) and: [ self validateVerticalLines: aSudoku ]) and: [ self validateCells: aSudoku ]