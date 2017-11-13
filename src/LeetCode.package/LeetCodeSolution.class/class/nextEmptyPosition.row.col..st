private helpers
nextEmptyPosition: sudoku row: y col: x
	"Find next position in sudoku that is empty"

	^(x > sudoku size or: [ y > sudoku size ])
		ifTrue: nil
		ifFalse: [ ((sudoku at: x) at: y) = '.'
				ifTrue: x @ y
				ifFalse: [ x + 1 > sudoku size
						ifTrue: [ self nextEmptyPosition: sudoku row: y + 1 col: 1 ]
						ifFalse: [ self nextEmptyPosition: sudoku row: y col: x + 1 ] ] ]