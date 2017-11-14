tests
testAverage
	self assert: (LeetCodeSolution solve643MaximumSubarrayI: #(1 12 -5 -6 50 3) subsize: 4) equals: 12.75.
	self assert: (LeetCodeSolution solve643MaximumSubarrayI: #(1 12 3 4) subsize: 4) equals: 5.