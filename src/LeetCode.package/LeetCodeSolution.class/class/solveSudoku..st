solve
solveSudoku: aSudoku
	| position solution tmp |
	position := self nextEmptyPosition: aSudoku row: 1 col: 1.
	^ position
		ifNil: [ aSudoku deepCopy ]
		ifNotNil: [ solution := nil.
			1 to: 9 do: [ :x | 
				self fillLocation: aSudoku pos: position value: x.
				tmp := (self validSudoku: aSudoku)
					ifTrue: [ self solveSudoku: aSudoku ].
				tmp ifNotNil: [ solution := tmp ] ].
			   self fillLocation: aSudoku pos: position value: '.'.
			solution ]