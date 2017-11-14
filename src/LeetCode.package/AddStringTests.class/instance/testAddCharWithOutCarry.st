tests
testAddCharWithOutCarry
	self assert: (LeetCodeSolution addChar: '1' with: '3' carry: 1) equals: 0 @ '5'.
	self assert: (LeetCodeSolution addChar: '1' with: '3' carry: 0) equals: 0 @ '4'.