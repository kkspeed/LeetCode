tests
testRun
	self assert: (LeetCodeSolution solve520ValidCapital: 'Hello') equals: true.
	self assert: (LeetCodeSolution solve520ValidCapital: 'hEllo') equals: false.
	self assert: (LeetCodeSolution solve520ValidCapital: 'hello') equals: true.
	self assert: (LeetCodeSolution solve520ValidCapital: '') equals: true