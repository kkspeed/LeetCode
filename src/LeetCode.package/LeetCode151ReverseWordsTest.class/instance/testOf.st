tests
testOf
	self assert: (LeetCodeSolution solve151ReverseWords: 'hello world') equals: 'world hello'.
	self assert: (LeetCodeSolution solve151ReverseWords: '') equals: ''