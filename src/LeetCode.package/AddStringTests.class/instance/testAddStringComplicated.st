tests
testAddStringComplicated
	self assert: (LeetCodeSolution solve415AddStrings: '98765' with: '323') equals: '99088'.
	self assert: (LeetCodeSolution solve415AddStrings: '999' with: '1') equals: '1000'