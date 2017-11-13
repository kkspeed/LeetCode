private helpers
doPermutation: aNumber result: currentResult
	"Helper function to recursively generation permutation"

	| tmpResult |
	tmpResult := OrderedCollection new.
	currentResult size < aNumber
		ifTrue: [ 1 to: aNumber do: [ :x | 
				(currentResult select: [ :n | n == x ]) isEmpty
					ifTrue: [ currentResult add: x.
						tmpResult addAll: (self doPermutation: aNumber result: currentResult).
						"Transcript show: tmpResult; cr."
						currentResult removeLast ] ].
			Transcript
				show: tmpResult;
				cr ]
		ifFalse: [ "Transcript show: currentResult; cr." tmpResult add: currentResult copy ].
	^ tmpResult