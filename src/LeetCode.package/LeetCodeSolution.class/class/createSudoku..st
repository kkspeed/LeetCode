private helpers
createSudoku: anArray
	^(anArray collect: [ :x | x asOrderedCollection ]) asOrderedCollection 