private helpers
opPrecedence: op
	| prec |
	prec := 1.
	op = '*'
		ifTrue: [ prec := 2 ].
	op = '/'
		ifTrue: [ prec := 2 ].
	^ prec