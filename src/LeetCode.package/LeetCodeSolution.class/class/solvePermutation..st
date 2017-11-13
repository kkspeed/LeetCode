solve
solvePermutation: aNumber
	"generate permutation of 1 - n"
	^self doPermutation: aNumber result: OrderedCollection new