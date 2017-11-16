private helpers
takeOutDigit: aDict digit: aString
	aString
		do: [ :c | 
			aDict at: c put: (aDict at: c) - 1.
			(aDict at: c) = 0
				ifTrue: [ aDict removeKey: c ] ]