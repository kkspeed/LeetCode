tests
testNewStartingPosition
	self assert: (LeetCodeSolution nextEmptyPosition: #(#('1' '2' '.') #('3' '.' '4')) row:  2 col: 1) equals: 2@2