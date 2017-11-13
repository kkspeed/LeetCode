tests
testLineWrap
	self assert: (LeetCodeSolution nextEmptyPosition: #(#('1' '2' '3') #('.' '2' '3')) row: 1 col: 1) equals: 2@1