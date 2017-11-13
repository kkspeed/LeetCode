private helpers
cells: aSudoku
	| result oneCell |
	result := OrderedCollection new.
	#(2 5 8)
		do: [ :row | 
			#(2 5 8)
				do: [ :col | 
					oneCell := OrderedCollection new.
					oneCell add: ((aSudoku at: row - 1) at: col - 1).
					oneCell add: ((aSudoku at: row - 1) at: col).
					oneCell add: ((aSudoku at: row - 1) at: col + 1).
					oneCell add: ((aSudoku at: row) at: col - 1).
					oneCell add: ((aSudoku at: row) at: col).
					oneCell add: ((aSudoku at: row) at: col + 1).
					oneCell add: ((aSudoku at: row + 1) at: col - 1).
					oneCell add: ((aSudoku at: row + 1) at: col).
					oneCell add: ((aSudoku at: row + 1) at: col + 1).
					result add: oneCell ] ].
	^ result